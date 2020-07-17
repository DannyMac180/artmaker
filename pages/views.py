from django.http import HttpResponse
from django.shortcuts import render
import tensorflow as tf
import tensorflow_hub as hub

print("TF Version: ", tf.__version__)
# Create your views here.
def home_view(*args, **kwargs):
    return HttpResponse("<h1>No errors</h1>")