from django.urls import path
from rest_framework.routers import DefaultRouter
from .views import (
    # Views for physical data
    ProjectViewSet,
    WellViewSet,
    AquiferPropertiesViewSet,
    FieldMeasurementViewSet,
    ComponentViewSet,  
    # Views for simulation data
    SimulationProjectViewSet,
    SimulationModelViewSet,
    SimulationResultViewSet,
)

# Namespace for the hydro_sim app URLs
app_name = 'hydro_sim'

# Router for handling model viewsets
router = DefaultRouter()

# Register all viewsets
router.register(r'projects', ProjectViewSet, basename='project')
router.register(r'wells', WellViewSet, basename='well')
router.register(r'aquifer-properties', AquiferPropertiesViewSet, basename='aquifer-properties')
router.register(r'field-measurements', FieldMeasurementViewSet, basename='field-measurement')
router.register(r'components', ComponentViewSet, basename='component')  # Add this
router.register(r'simulation-projects', SimulationProjectViewSet, basename='simulation-project')
router.register(r'simulation-models', SimulationModelViewSet, basename='simulation-model')
router.register(r'simulation-results', SimulationResultViewSet, basename='simulation-result')

urlpatterns = router.urls