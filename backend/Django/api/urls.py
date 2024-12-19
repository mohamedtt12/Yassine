from django.urls import path
from .views import RegisterUserView
from django.http import JsonResponse

def test_view(request):
    return JsonResponse({"message": "Hello from Django!"})

urlpatterns = [
    path('register/', RegisterUserView.as_view(), name='register'),
    path('api/test/', test_view),
]
