from rest_framework import generics
from django.contrib.auth.models import User

from users.serializers import UserSerializer


# Create your views here.
class UserCreateAPIView(generics.CreateAPIView):
    queryset = User.objects.all()
    serializer_class = UserSerializer