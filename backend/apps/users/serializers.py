from django.contrib.auth import get_user_model
from djoser.serializers import UserCreateSerializer as _UserCreateSerializer

User = get_user_model()


class UserCreateSerializer(_UserCreateSerializer):
    class Meta:
        model = User
        fields = ("id", "email", "username")
