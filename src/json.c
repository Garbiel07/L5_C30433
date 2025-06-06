// src/json.c
#include <stdio.h>
#include <stdlib.h>
#include "json.h"
#include <cjson/cJSON.h>

void generar_json(const char *nombre_archivo) {
    // Crear objeto raíz
    cJSON *root = cJSON_CreateObject();

    // Agregar datos personales
    cJSON_AddStringToObject(root, "nombre", "Héctor Bonifacio Echevarría Cervantes de la Cruz Arroyo Rojas");
    cJSON_AddNumberToObject(root, "edad", 19);
    cJSON_AddStringToObject(root, "carnet", "C12345");
    cJSON_AddBoolToObject(root, "estudiante activo", 1);

    // Convertir a string
    char *json_string = cJSON_Print(root);

    // Guardar en archivo
    FILE *archivo = fopen(nombre_archivo, "w");
    if (archivo) {
        fputs(json_string, archivo);
        fclose(archivo);
    } else {
        perror("No se pudo abrir el archivo");
    }

    // Liberar memoria
    cJSON_Delete(root);
    free(json_string);
}
