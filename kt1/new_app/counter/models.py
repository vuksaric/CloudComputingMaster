from django.db import models

# Create your models here.

class Counter(models.Model):
    counter = models.PositiveIntegerField(default=0)
