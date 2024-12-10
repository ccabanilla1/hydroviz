# Generated by Django 5.1.3 on 2024-12-06 21:25

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('hydro_sim', '0002_well_screen_top'),
    ]

    operations = [
        migrations.CreateModel(
            name='Component',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('type', models.CharField(choices=[('WELL', 'Well'), ('RIVER', 'River'), ('RECHARGE', 'Recharge'), ('BOUNDARY', 'Boundary')], max_length=50)),
                ('location_x', models.FloatField()),
                ('location_y', models.FloatField()),
                ('created_date', models.DateTimeField(auto_now_add=True)),
                ('last_modified', models.DateTimeField(auto_now=True)),
                ('properties', models.JSONField(blank=True, help_text='Additional component properties', null=True)),
                ('project', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='components', to='hydro_sim.project')),
            ],
            options={
                'indexes': [models.Index(fields=['project', 'type'], name='hydro_sim_c_project_307e13_idx'), models.Index(fields=['location_x', 'location_y'], name='hydro_sim_c_locatio_f866fa_idx')],
            },
        ),
    ]
