from django.shortcuts import render
from django.db.models import F
from .models import Counter
from .serializers import CounterSerializers
from django.http import JsonResponse

# Create your views here.
def increment(request):
    Counter.objects.get_or_create(id=1)
    Counter.objects.filter(id=1).update(counter=F("counter") + 1)
    counter = Counter.objects.all()
    print(counter[0].counter, "EVO ME")
    serializer = CounterSerializers(counter, many=True)
    return JsonResponse(serializer.data,safe=False,status=200)