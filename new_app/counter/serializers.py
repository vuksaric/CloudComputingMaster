from rest_framework import serializers
from .models import Counter


class CounterSerializers(serializers.ModelSerializer):
     class Meta:
         model = Counter
         fields = ['id','counter']