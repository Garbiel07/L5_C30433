# Nombre del ejecutable final
TARGET = build/mi_programa

# Directorios
SRC_DIR = src
BUILD_DIR = build

# Archivos fuente propios
SRCS = $(SRC_DIR)/main.c $(SRC_DIR)/json.c

# Archivos objeto (en build/)
OBJS = $(patsubst $(SRC_DIR)/%.c, $(BUILD_DIR)/%.o, $(SRCS))

# Compilador y flags
CC = gcc
CFLAGS = -Wall -I$(SRC_DIR)
LDFLAGS = -lcjson

# Regla por defecto
all: $(TARGET)

# Ejecutable final
$(TARGET): $(OBJS)
	@mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

# Compilar .c -> .o en build/
$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c
	@mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

# Limpiar archivos
clean:
	rm -rf $(BUILD_DIR)/*.o $(TARGET)

.PHONY: all clean
