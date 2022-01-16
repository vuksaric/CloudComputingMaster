from django.shortcuts import render
from .models import Student
from .serializers import StudentSerializers
from django.http import JsonResponse
# Create your views here.

def students_json(request):
    students = Student.objects.all()
    serializer = StudentSerializers(students, many=True)
    return JsonResponse(serializer.data,safe=False,status=200)
