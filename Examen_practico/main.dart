import 'dart:io';

void main() {
  // Lista para almacenar productos
  List<Map<String, dynamic>> productos = [];
  
  while (true) {
    // Menú principal
    print('----- Menú -----');
    print('1. Agregar producto');
    print('2. Listar productos');
    print('3. Actualizar producto');
    print('4. Eliminar producto');
    print('5. Salir');
    
    // Solicitar opción del usuario
    String? opcion = stdin.readLineSync();
    
    switch (opcion) {
      case '1':
        // Agregar producto
        agregarProducto(productos);
        break;
        
      case '2':
        // Listar productos
        listarProductos(productos);
        break;
        
      case '3':
        // Actualizar producto
        actualizarProducto(productos);
        break;
        
      case '4':
        // Eliminar producto
        eliminarProducto(productos);
        break;
        
      case '5':
        // Salir
        print('¡Gracias por usar la aplicación!');
        return;
        
      default:
        print('Opción no válida, por favor intente de nuevo.');
    }
  }
}

// Función para agregar un producto
void agregarProducto(List<Map<String, dynamic>> productos) {
  print('Ingrese el nombre del producto:');
  String? nombre = stdin.readLineSync();
  
  print('Ingrese el precio del producto:');
  double precio = double.parse(stdin.readLineSync() ?? '0');
  
  print('Ingrese la cantidad disponible:');
  int cantidad = int.parse(stdin.readLineSync() ?? '0');
  
  // Agregar el producto a la lista
  productos.add({
    'nombre': nombre,
    'precio': precio,
    'cantidad': cantidad,
  });
  
  print('Producto agregado exitosamente.');
}

// Función para listar los productos
void listarProductos(List<Map<String, dynamic>> productos) {
  if (productos.isEmpty) {
    print('No hay productos en el catálogo.');
    return;
  }

  print('Listado de productos:');
  for (int i = 0; i < productos.length; i++) {
    print('[$i] Nombre: ${productos[i]['nombre']}, Precio: \$${productos[i]['precio']}, Cantidad: ${productos[i]['cantidad']}');
  }
}

// Función para actualizar un producto
void actualizarProducto(List<Map<String, dynamic>> productos) {
  print('Ingrese el número del producto a actualizar:');
  int index = int.parse(stdin.readLineSync() ?? '0');
  
  if (index < 0 || index >= productos.length) {
    print('Número de producto no válido.');
    return;
  }
  
  print('Ingrese el nuevo nombre del producto:');
  String? nuevoNombre = stdin.readLineSync();
  
  print('Ingrese el nuevo precio del producto:');
  double nuevoPrecio = double.parse(stdin.readLineSync() ?? '0');
  
  print('Ingrese la nueva cantidad disponible:');
  int nuevaCantidad = int.parse(stdin.readLineSync() ?? '0');
  
  // Actualizar el producto
  productos[index] = {
    'nombre': nuevoNombre,
    'precio': nuevoPrecio,
    'cantidad': nuevaCantidad,
  };
  
  print('Producto actualizado exitosamente.');
}

// Función para eliminar un producto
void eliminarProducto(List<Map<String, dynamic>> productos) {
  print('Ingrese el número del producto a eliminar:');
  int index = int.parse(stdin.readLineSync() ?? '0');
  
  if (index < 0 || index >= productos.length) {
    print('Número de producto no válido.');
    return;
  }
  
  // Eliminar el producto
  productos.removeAt(index);
  
  print('Producto eliminado exitosamente.');
}
