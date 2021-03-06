USE [db_BestMart]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Ventas_tbl_Tipo_Pago]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Ventas]'))
ALTER TABLE [dbo].[tbl_Ventas] DROP CONSTRAINT [FK_tbl_Ventas_tbl_Tipo_Pago]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Ventas_tbl_Personas]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Ventas]'))
ALTER TABLE [dbo].[tbl_Ventas] DROP CONSTRAINT [FK_tbl_Ventas_tbl_Personas]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Ventas_tbl_Colaboradores]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Ventas]'))
ALTER TABLE [dbo].[tbl_Ventas] DROP CONSTRAINT [FK_tbl_Ventas_tbl_Colaboradores]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Usuarios_tbl_Roles]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Usuarios]'))
ALTER TABLE [dbo].[tbl_Usuarios] DROP CONSTRAINT [FK_tbl_Usuarios_tbl_Roles]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Usuarios_tbl_Colaboradores]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Usuarios]'))
ALTER TABLE [dbo].[tbl_Usuarios] DROP CONSTRAINT [FK_tbl_Usuarios_tbl_Colaboradores]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Usuario_Permisos_relations_tbl_Tipo_permiso]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Usuario_Permisos_relations]'))
ALTER TABLE [dbo].[tbl_Usuario_Permisos_relations] DROP CONSTRAINT [FK_tbl_Usuario_Permisos_relations_tbl_Tipo_permiso]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Usuario_Permisos_relations_tbl_Submodulos]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Usuario_Permisos_relations]'))
ALTER TABLE [dbo].[tbl_Usuario_Permisos_relations] DROP CONSTRAINT [FK_tbl_Usuario_Permisos_relations_tbl_Submodulos]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Usuario_Permisos_relations_tbl_Roles]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Usuario_Permisos_relations]'))
ALTER TABLE [dbo].[tbl_Usuario_Permisos_relations] DROP CONSTRAINT [FK_tbl_Usuario_Permisos_relations_tbl_Roles]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Submodulos_tbl_Modulos]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Submodulos]'))
ALTER TABLE [dbo].[tbl_Submodulos] DROP CONSTRAINT [FK_tbl_Submodulos_tbl_Modulos]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Proveedor_tbl_PersonaContacto]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Proveedores]'))
ALTER TABLE [dbo].[tbl_Proveedores] DROP CONSTRAINT [FK_tbl_Proveedor_tbl_PersonaContacto]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Proveedor_tbl_Persona]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Proveedores]'))
ALTER TABLE [dbo].[tbl_Proveedores] DROP CONSTRAINT [FK_tbl_Proveedor_tbl_Persona]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Productos_Proveedores_Relations_tbl_Proveedores]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Productos_Proveedores_Relations]'))
ALTER TABLE [dbo].[tbl_Productos_Proveedores_Relations] DROP CONSTRAINT [FK_tbl_Productos_Proveedores_Relations_tbl_Proveedores]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Productos_Proveedores_Relations_tbl_Productos]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Productos_Proveedores_Relations]'))
ALTER TABLE [dbo].[tbl_Productos_Proveedores_Relations] DROP CONSTRAINT [FK_tbl_Productos_Proveedores_Relations_tbl_Productos]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Productos_tbl_Modelos]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Productos]'))
ALTER TABLE [dbo].[tbl_Productos] DROP CONSTRAINT [FK_tbl_Productos_tbl_Modelos]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Productos_tbl_Empresas]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Productos]'))
ALTER TABLE [dbo].[tbl_Productos] DROP CONSTRAINT [FK_tbl_Productos_tbl_Empresas]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Productos_tbl_Categorias]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Productos]'))
ALTER TABLE [dbo].[tbl_Productos] DROP CONSTRAINT [FK_tbl_Productos_tbl_Categorias]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Notas_Debito_tbl_Usuarios]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Notas_Debito]'))
ALTER TABLE [dbo].[tbl_Notas_Debito] DROP CONSTRAINT [FK_tbl_Notas_Debito_tbl_Usuarios]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Notas_Debito_tbl_Clientes]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Notas_Debito]'))
ALTER TABLE [dbo].[tbl_Notas_Debito] DROP CONSTRAINT [FK_tbl_Notas_Debito_tbl_Clientes]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Modelos_tbl_Marcas]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Modelos]'))
ALTER TABLE [dbo].[tbl_Modelos] DROP CONSTRAINT [FK_tbl_Modelos_tbl_Marcas]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Marcaje_Entrada_Salida_tbl_Tipo_Marca]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Marcaje_Entrada_Salida]'))
ALTER TABLE [dbo].[tbl_Marcaje_Entrada_Salida] DROP CONSTRAINT [FK_tbl_Marcaje_Entrada_Salida_tbl_Tipo_Marca]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Marcaje_Entrada_Salida_tbl_Colaboradores]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Marcaje_Entrada_Salida]'))
ALTER TABLE [dbo].[tbl_Marcaje_Entrada_Salida] DROP CONSTRAINT [FK_tbl_Marcaje_Entrada_Salida_tbl_Colaboradores]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Inventario_tbl_Productos]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Inventario]'))
ALTER TABLE [dbo].[tbl_Inventario] DROP CONSTRAINT [FK_tbl_Inventario_tbl_Productos]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Inventario_tbl_Localizaciones]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Inventario]'))
ALTER TABLE [dbo].[tbl_Inventario] DROP CONSTRAINT [FK_tbl_Inventario_tbl_Localizaciones]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Inventario_tbl_Estado_Stock]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Inventario]'))
ALTER TABLE [dbo].[tbl_Inventario] DROP CONSTRAINT [FK_tbl_Inventario_tbl_Estado_Stock]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Inventario_tbl_Bodegas]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Inventario]'))
ALTER TABLE [dbo].[tbl_Inventario] DROP CONSTRAINT [FK_tbl_Inventario_tbl_Bodegas]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Empresa_tbl_Persona]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Empresas]'))
ALTER TABLE [dbo].[tbl_Empresas] DROP CONSTRAINT [FK_tbl_Empresa_tbl_Persona]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Compras_Productos_Relations_tbl_Productos]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Compras_Productos_Relations]'))
ALTER TABLE [dbo].[tbl_Compras_Productos_Relations] DROP CONSTRAINT [FK_tbl_Compras_Productos_Relations_tbl_Productos]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Compras_Productos_Relations_tbl_Compras]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Compras_Productos_Relations]'))
ALTER TABLE [dbo].[tbl_Compras_Productos_Relations] DROP CONSTRAINT [FK_tbl_Compras_Productos_Relations_tbl_Compras]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Compras_tbl_Usuarios]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Compras]'))
ALTER TABLE [dbo].[tbl_Compras] DROP CONSTRAINT [FK_tbl_Compras_tbl_Usuarios]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Compras_tbl_Tipo_Pago_Compras]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Compras]'))
ALTER TABLE [dbo].[tbl_Compras] DROP CONSTRAINT [FK_tbl_Compras_tbl_Tipo_Pago_Compras]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Compras_tbl_Proveedores]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Compras]'))
ALTER TABLE [dbo].[tbl_Compras] DROP CONSTRAINT [FK_tbl_Compras_tbl_Proveedores]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Compras_tbl_Estado_Compras]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Compras]'))
ALTER TABLE [dbo].[tbl_Compras] DROP CONSTRAINT [FK_tbl_Compras_tbl_Estado_Compras]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Compras_tbl_Colaboradores]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Compras]'))
ALTER TABLE [dbo].[tbl_Compras] DROP CONSTRAINT [FK_tbl_Compras_tbl_Colaboradores]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Comisiones_tbl_Colaboradores]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Comisiones]'))
ALTER TABLE [dbo].[tbl_Comisiones] DROP CONSTRAINT [FK_tbl_Comisiones_tbl_Colaboradores]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Colaboradores_tbl_Personas]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Colaboradores]'))
ALTER TABLE [dbo].[tbl_Colaboradores] DROP CONSTRAINT [FK_tbl_Colaboradores_tbl_Personas]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Colaboradores_tbl_Estados_Colaborador]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Colaboradores]'))
ALTER TABLE [dbo].[tbl_Colaboradores] DROP CONSTRAINT [FK_tbl_Colaboradores_tbl_Estados_Colaborador]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Colaboradores_tbl_Empresas]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Colaboradores]'))
ALTER TABLE [dbo].[tbl_Colaboradores] DROP CONSTRAINT [FK_tbl_Colaboradores_tbl_Empresas]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Cliente_tbl_Persona]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Clientes]'))
ALTER TABLE [dbo].[tbl_Clientes] DROP CONSTRAINT [FK_tbl_Cliente_tbl_Persona]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Cliente_tbl_Grupo]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Clientes]'))
ALTER TABLE [dbo].[tbl_Clientes] DROP CONSTRAINT [FK_tbl_Cliente_tbl_Grupo]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Calendario_Pagos_tbl_Ventas]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Calendario_Pagos]'))
ALTER TABLE [dbo].[tbl_Calendario_Pagos] DROP CONSTRAINT [FK_tbl_Calendario_Pagos_tbl_Ventas]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Articulos_Venta_Relations_tbl_Ventas]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Articulos_Venta_Relations]'))
ALTER TABLE [dbo].[tbl_Articulos_Venta_Relations] DROP CONSTRAINT [FK_tbl_Articulos_Venta_Relations_tbl_Ventas]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Articulos_Venta_Relations_tbl_Productos]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Articulos_Venta_Relations]'))
ALTER TABLE [dbo].[tbl_Articulos_Venta_Relations] DROP CONSTRAINT [FK_tbl_Articulos_Venta_Relations_tbl_Productos]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Ventas_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Ventas] DROP CONSTRAINT [DF_tbl_Ventas_PK_id]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Usuarios_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Usuarios] DROP CONSTRAINT [DF_tbl_Usuarios_PK_id]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Tipos_Permiso_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Tipos_Permiso] DROP CONSTRAINT [DF_tbl_Tipos_Permiso_PK_id]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Tipo_Marca_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Tipo_Marca] DROP CONSTRAINT [DF_tbl_Tipo_Marca_PK_id]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Submodulos_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Submodulos] DROP CONSTRAINT [DF_tbl_Submodulos_PK_id]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Roles_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Roles] DROP CONSTRAINT [DF_tbl_Roles_PK_id]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Proveedor_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Proveedores] DROP CONSTRAINT [DF_tbl_Proveedor_PK_id]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Productos_perecedero]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Productos] DROP CONSTRAINT [DF_tbl_Productos_perecedero]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Productos_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Productos] DROP CONSTRAINT [DF_tbl_Productos_PK_id]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Persona_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Personas] DROP CONSTRAINT [DF_tbl_Persona_PK_id]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Modulos_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Modulos] DROP CONSTRAINT [DF_tbl_Modulos_PK_id]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Modelos_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Modelos] DROP CONSTRAINT [DF_tbl_Modelos_PK_id]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Marcas_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Marcas] DROP CONSTRAINT [DF_tbl_Marcas_PK_id]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Localizaciones_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Localizaciones] DROP CONSTRAINT [DF_tbl_Localizaciones_PK_id]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Inventario_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Inventario] DROP CONSTRAINT [DF_tbl_Inventario_PK_id]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Grupo_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Grupos] DROP CONSTRAINT [DF_tbl_Grupo_PK_id]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Estados_Colaborador_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Estados_Colaborador] DROP CONSTRAINT [DF_tbl_Estados_Colaborador_PK_id]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Estado_Stock_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Estado_Stock] DROP CONSTRAINT [DF_tbl_Estado_Stock_PK_id]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Estado_Compras_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Estado_Compras] DROP CONSTRAINT [DF_tbl_Estado_Compras_PK_id]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Empresa_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Empresas] DROP CONSTRAINT [DF_tbl_Empresa_PK_id]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Compras_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Compras] DROP CONSTRAINT [DF_tbl_Compras_PK_id]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Comisiones_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Comisiones] DROP CONSTRAINT [DF_tbl_Comisiones_PK_id]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Colaboradores_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Colaboradores] DROP CONSTRAINT [DF_tbl_Colaboradores_PK_id]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Cliente_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Clientes] DROP CONSTRAINT [DF_tbl_Cliente_PK_id]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Categorias_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Categorias] DROP CONSTRAINT [DF_tbl_Categorias_PK_id]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Articulos_Venta_Relations_cantidad]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Articulos_Venta_Relations] DROP CONSTRAINT [DF_tbl_Articulos_Venta_Relations_cantidad]
END

GO
/****** Object:  Table [dbo].[tbl_Ventas]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Ventas]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Ventas]
GO
/****** Object:  Table [dbo].[tbl_Usuarios]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Usuarios]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Usuarios]
GO
/****** Object:  Table [dbo].[tbl_Usuario_Permisos_relations]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Usuario_Permisos_relations]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Usuario_Permisos_relations]
GO
/****** Object:  Table [dbo].[tbl_Tipos_Permiso]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Tipos_Permiso]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Tipos_Permiso]
GO
/****** Object:  Table [dbo].[tbl_Tipo_Pago_Compras]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Tipo_Pago_Compras]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Tipo_Pago_Compras]
GO
/****** Object:  Table [dbo].[tbl_Tipo_Pago]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Tipo_Pago]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Tipo_Pago]
GO
/****** Object:  Table [dbo].[tbl_Tipo_Marca]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Tipo_Marca]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Tipo_Marca]
GO
/****** Object:  Table [dbo].[tbl_Submodulos]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Submodulos]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Submodulos]
GO
/****** Object:  Table [dbo].[tbl_Roles]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Roles]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Roles]
GO
/****** Object:  Table [dbo].[tbl_Proveedores]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Proveedores]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Proveedores]
GO
/****** Object:  Table [dbo].[tbl_Productos_Proveedores_Relations]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Productos_Proveedores_Relations]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Productos_Proveedores_Relations]
GO
/****** Object:  Table [dbo].[tbl_Productos]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Productos]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Productos]
GO
/****** Object:  Table [dbo].[tbl_Personas]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Personas]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Personas]
GO
/****** Object:  Table [dbo].[tbl_Notas_Debito]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Notas_Debito]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Notas_Debito]
GO
/****** Object:  Table [dbo].[tbl_Modulos]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Modulos]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Modulos]
GO
/****** Object:  Table [dbo].[tbl_Modelos]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Modelos]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Modelos]
GO
/****** Object:  Table [dbo].[tbl_Marcas]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Marcas]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Marcas]
GO
/****** Object:  Table [dbo].[tbl_Marcaje_Entrada_Salida]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Marcaje_Entrada_Salida]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Marcaje_Entrada_Salida]
GO
/****** Object:  Table [dbo].[tbl_Localizaciones]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Localizaciones]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Localizaciones]
GO
/****** Object:  Table [dbo].[tbl_Inventario]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Inventario]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Inventario]
GO
/****** Object:  Table [dbo].[tbl_Grupos]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Grupos]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Grupos]
GO
/****** Object:  Table [dbo].[tbl_Estados_Colaborador]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Estados_Colaborador]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Estados_Colaborador]
GO
/****** Object:  Table [dbo].[tbl_Estado_Stock]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Estado_Stock]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Estado_Stock]
GO
/****** Object:  Table [dbo].[tbl_Estado_Compras]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Estado_Compras]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Estado_Compras]
GO
/****** Object:  Table [dbo].[tbl_Empresas]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Empresas]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Empresas]
GO
/****** Object:  Table [dbo].[tbl_Compras_Productos_Relations]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Compras_Productos_Relations]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Compras_Productos_Relations]
GO
/****** Object:  Table [dbo].[tbl_Compras]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Compras]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Compras]
GO
/****** Object:  Table [dbo].[tbl_Comisiones]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Comisiones]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Comisiones]
GO
/****** Object:  Table [dbo].[tbl_Colaboradores]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Colaboradores]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Colaboradores]
GO
/****** Object:  Table [dbo].[tbl_Clientes]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Clientes]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Clientes]
GO
/****** Object:  Table [dbo].[tbl_Categorias]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Categorias]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Categorias]
GO
/****** Object:  Table [dbo].[tbl_Calendario_Pagos]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Calendario_Pagos]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Calendario_Pagos]
GO
/****** Object:  Table [dbo].[tbl_Bodegas]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Bodegas]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Bodegas]
GO
/****** Object:  Table [dbo].[tbl_Articulos_Venta_Relations]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Articulos_Venta_Relations]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Articulos_Venta_Relations]
GO
/****** Object:  Table [dbo].[Personas]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Personas]') AND type in (N'U'))
DROP TABLE [dbo].[Personas]
GO
/****** Object:  Table [dbo].[Empresas]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Empresas]') AND type in (N'U'))
DROP TABLE [dbo].[Empresas]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Empleados]') AND type in (N'U'))
DROP TABLE [dbo].[Empleados]
GO
/****** Object:  Table [dbo].[Colaboradores]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Colaboradores]') AND type in (N'U'))
DROP TABLE [dbo].[Colaboradores]
GO
/****** Object:  Table [dbo].[categoria]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[categoria]') AND type in (N'U'))
DROP TABLE [dbo].[categoria]
GO
/****** Object:  UserDefinedFunction [dbo].[VerificaUsuario]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VerificaUsuario]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[VerificaUsuario]
GO
/****** Object:  StoredProcedure [dbo].[spmostrar_Usuarios]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spmostrar_Usuarios]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spmostrar_Usuarios]
GO
/****** Object:  StoredProcedure [dbo].[spmostrar_Usuario_Permisos_relations]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spmostrar_Usuario_Permisos_relations]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spmostrar_Usuario_Permisos_relations]
GO
/****** Object:  StoredProcedure [dbo].[spmostrar_Tipos_Permiso]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spmostrar_Tipos_Permiso]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spmostrar_Tipos_Permiso]
GO
/****** Object:  StoredProcedure [dbo].[spmostrar_Submodulos]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spmostrar_Submodulos]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spmostrar_Submodulos]
GO
/****** Object:  StoredProcedure [dbo].[spmostrar_Roles]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spmostrar_Roles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spmostrar_Roles]
GO
/****** Object:  StoredProcedure [dbo].[spmostrar_Personas]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spmostrar_Personas]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spmostrar_Personas]
GO
/****** Object:  StoredProcedure [dbo].[spmostrar_Modulos]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spmostrar_Modulos]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spmostrar_Modulos]
GO
/****** Object:  StoredProcedure [dbo].[spmostrar_Estados_Colaborador]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spmostrar_Estados_Colaborador]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spmostrar_Estados_Colaborador]
GO
/****** Object:  StoredProcedure [dbo].[spmostrar_Empresas]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spmostrar_Empresas]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spmostrar_Empresas]
GO
/****** Object:  StoredProcedure [dbo].[spmostrar_Colaboradores]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spmostrar_Colaboradores]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spmostrar_Colaboradores]
GO
/****** Object:  StoredProcedure [dbo].[spmostrar_categoria]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spmostrar_categoria]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spmostrar_categoria]
GO
/****** Object:  StoredProcedure [dbo].[spinsertar_Usuarios]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spinsertar_Usuarios]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spinsertar_Usuarios]
GO
/****** Object:  StoredProcedure [dbo].[spinsertar_Usuario_Permisos_relations]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spinsertar_Usuario_Permisos_relations]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spinsertar_Usuario_Permisos_relations]
GO
/****** Object:  StoredProcedure [dbo].[spinsertar_Tipos_Permiso]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spinsertar_Tipos_Permiso]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spinsertar_Tipos_Permiso]
GO
/****** Object:  StoredProcedure [dbo].[spinsertar_Submodulos]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spinsertar_Submodulos]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spinsertar_Submodulos]
GO
/****** Object:  StoredProcedure [dbo].[spinsertar_Roles]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spinsertar_Roles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spinsertar_Roles]
GO
/****** Object:  StoredProcedure [dbo].[spinsertar_Personas]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spinsertar_Personas]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spinsertar_Personas]
GO
/****** Object:  StoredProcedure [dbo].[spinsertar_Modulos]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spinsertar_Modulos]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spinsertar_Modulos]
GO
/****** Object:  StoredProcedure [dbo].[spinsertar_Estados_Colaborador]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spinsertar_Estados_Colaborador]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spinsertar_Estados_Colaborador]
GO
/****** Object:  StoredProcedure [dbo].[spinsertar_Empresas]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spinsertar_Empresas]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spinsertar_Empresas]
GO
/****** Object:  StoredProcedure [dbo].[spinsertar_Colaboradores]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spinsertar_Colaboradores]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spinsertar_Colaboradores]
GO
/****** Object:  StoredProcedure [dbo].[spinsertar_categoria]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spinsertar_categoria]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spinsertar_categoria]
GO
/****** Object:  StoredProcedure [dbo].[speliminar_Usuarios]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[speliminar_Usuarios]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[speliminar_Usuarios]
GO
/****** Object:  StoredProcedure [dbo].[speliminar_Usuario_Permisos_relations]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[speliminar_Usuario_Permisos_relations]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[speliminar_Usuario_Permisos_relations]
GO
/****** Object:  StoredProcedure [dbo].[speliminar_Tipos_Permiso]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[speliminar_Tipos_Permiso]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[speliminar_Tipos_Permiso]
GO
/****** Object:  StoredProcedure [dbo].[speliminar_Submodulos]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[speliminar_Submodulos]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[speliminar_Submodulos]
GO
/****** Object:  StoredProcedure [dbo].[speliminar_Roles]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[speliminar_Roles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[speliminar_Roles]
GO
/****** Object:  StoredProcedure [dbo].[speliminar_Personas]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[speliminar_Personas]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[speliminar_Personas]
GO
/****** Object:  StoredProcedure [dbo].[speliminar_Modulos]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[speliminar_Modulos]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[speliminar_Modulos]
GO
/****** Object:  StoredProcedure [dbo].[speliminar_Estados_Colaborador]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[speliminar_Estados_Colaborador]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[speliminar_Estados_Colaborador]
GO
/****** Object:  StoredProcedure [dbo].[speliminar_Empresas]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[speliminar_Empresas]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[speliminar_Empresas]
GO
/****** Object:  StoredProcedure [dbo].[speliminar_Colaboradores]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[speliminar_Colaboradores]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[speliminar_Colaboradores]
GO
/****** Object:  StoredProcedure [dbo].[speliminar_categoria]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[speliminar_categoria]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[speliminar_categoria]
GO
/****** Object:  StoredProcedure [dbo].[speditar_Usuarios]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[speditar_Usuarios]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[speditar_Usuarios]
GO
/****** Object:  StoredProcedure [dbo].[speditar_Usuario_Permisos_relations]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[speditar_Usuario_Permisos_relations]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[speditar_Usuario_Permisos_relations]
GO
/****** Object:  StoredProcedure [dbo].[speditar_Tipos_Permiso]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[speditar_Tipos_Permiso]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[speditar_Tipos_Permiso]
GO
/****** Object:  StoredProcedure [dbo].[speditar_Submodulos]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[speditar_Submodulos]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[speditar_Submodulos]
GO
/****** Object:  StoredProcedure [dbo].[speditar_Roles]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[speditar_Roles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[speditar_Roles]
GO
/****** Object:  StoredProcedure [dbo].[speditar_Personas]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[speditar_Personas]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[speditar_Personas]
GO
/****** Object:  StoredProcedure [dbo].[speditar_Modulos]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[speditar_Modulos]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[speditar_Modulos]
GO
/****** Object:  StoredProcedure [dbo].[speditar_Estados_Colaborador]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[speditar_Estados_Colaborador]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[speditar_Estados_Colaborador]
GO
/****** Object:  StoredProcedure [dbo].[speditar_Empresas]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[speditar_Empresas]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[speditar_Empresas]
GO
/****** Object:  StoredProcedure [dbo].[speditar_Colaboradores]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[speditar_Colaboradores]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[speditar_Colaboradores]
GO
/****** Object:  StoredProcedure [dbo].[speditar_categoria]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[speditar_categoria]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[speditar_categoria]
GO
/****** Object:  StoredProcedure [dbo].[spbuscar_Usuarios]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spbuscar_Usuarios]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spbuscar_Usuarios]
GO
/****** Object:  StoredProcedure [dbo].[spbuscar_Usuario_Permisos_relations]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spbuscar_Usuario_Permisos_relations]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spbuscar_Usuario_Permisos_relations]
GO
/****** Object:  StoredProcedure [dbo].[spbuscar_Tipos_Permiso]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spbuscar_Tipos_Permiso]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spbuscar_Tipos_Permiso]
GO
/****** Object:  StoredProcedure [dbo].[spbuscar_Submodulos]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spbuscar_Submodulos]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spbuscar_Submodulos]
GO
/****** Object:  StoredProcedure [dbo].[spbuscar_Roles]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spbuscar_Roles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spbuscar_Roles]
GO
/****** Object:  StoredProcedure [dbo].[spbuscar_Personas]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spbuscar_Personas]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spbuscar_Personas]
GO
/****** Object:  StoredProcedure [dbo].[spbuscar_Modulos]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spbuscar_Modulos]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spbuscar_Modulos]
GO
/****** Object:  StoredProcedure [dbo].[spbuscar_Estados_Colaborador]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spbuscar_Estados_Colaborador]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spbuscar_Estados_Colaborador]
GO
/****** Object:  StoredProcedure [dbo].[spbuscar_Empresas]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spbuscar_Empresas]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spbuscar_Empresas]
GO
/****** Object:  StoredProcedure [dbo].[spbuscar_Colaboradores]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spbuscar_Colaboradores]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spbuscar_Colaboradores]
GO
/****** Object:  StoredProcedure [dbo].[spbuscar_categoria]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spbuscar_categoria]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spbuscar_categoria]
GO
USE [master]
GO
/****** Object:  Database [db_BestMart]    Script Date: 19/06/2015 4:13:05 PM ******/
IF  EXISTS (SELECT name FROM sys.databases WHERE name = N'db_BestMart')
DROP DATABASE [db_BestMart]
GO
/****** Object:  Database [db_BestMart]    Script Date: 19/06/2015 4:13:05 PM ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'db_BestMart')
BEGIN
CREATE DATABASE [db_BestMart]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db_BestMart', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\db_BestMart.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'db_BestMart_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\db_BestMart_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END

GO
ALTER DATABASE [db_BestMart] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_BestMart].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_BestMart] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db_BestMart] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db_BestMart] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db_BestMart] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db_BestMart] SET ARITHABORT OFF 
GO
ALTER DATABASE [db_BestMart] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [db_BestMart] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [db_BestMart] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db_BestMart] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db_BestMart] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db_BestMart] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db_BestMart] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db_BestMart] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db_BestMart] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db_BestMart] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db_BestMart] SET  DISABLE_BROKER 
GO
ALTER DATABASE [db_BestMart] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db_BestMart] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db_BestMart] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [db_BestMart] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [db_BestMart] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db_BestMart] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [db_BestMart] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [db_BestMart] SET RECOVERY FULL 
GO
ALTER DATABASE [db_BestMart] SET  MULTI_USER 
GO
ALTER DATABASE [db_BestMart] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [db_BestMart] SET DB_CHAINING OFF 
GO
ALTER DATABASE [db_BestMart] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [db_BestMart] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'db_BestMart', N'ON'
GO
USE [db_BestMart]
GO
/****** Object:  StoredProcedure [dbo].[spbuscar_categoria]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spbuscar_categoria]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create proc [dbo].[spbuscar_categoria]
@textobuscar varchar (50)
as 
select * from categoria 
where nombre like @textobuscar +''%''
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spbuscar_Colaboradores]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spbuscar_Colaboradores]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Buscar
	create proc [dbo].[spbuscar_Colaboradores]
	@id uniqueidentifier
	as 
	select * from [dbo].[tbl_Colaboradores]  
	where PK_id like @id
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spbuscar_Empresas]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spbuscar_Empresas]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Buscar
	create proc [dbo].[spbuscar_Empresas]
	@id uniqueidentifier
	as 
	select * from [dbo].[tbl_Empresas]  
	where PK_id like @id
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spbuscar_Estados_Colaborador]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spbuscar_Estados_Colaborador]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Buscar
	create proc [dbo].[spbuscar_Estados_Colaborador]
	@id uniqueidentifier
	as 
	select * from [dbo].[tbl_Estados_Colaborador]  
	where PK_id like @id
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spbuscar_Modulos]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spbuscar_Modulos]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Buscar
	create proc [dbo].[spbuscar_Modulos]
	@id uniqueidentifier
	as 
	select * from [dbo].[tbl_Modulos]  
	where PK_id like @id
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spbuscar_Personas]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spbuscar_Personas]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Buscar
	create proc [dbo].[spbuscar_Personas]
	@idPersona uniqueidentifier
	as 
	select * from [dbo].[tbl_Personas]  
	where PK_id like @idPersona
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spbuscar_Roles]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spbuscar_Roles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Buscar
	create proc [dbo].[spbuscar_Roles]
	@id uniqueidentifier
	as 
	select * from [dbo].[tbl_Roles]  
	where PK_id like @id
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spbuscar_Submodulos]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spbuscar_Submodulos]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Buscar
	create proc [dbo].[spbuscar_Submodulos]
	@id uniqueidentifier
	as 
	select * from [dbo].[tbl_Submodulos]  
	where PK_id like @id
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spbuscar_Tipos_Permiso]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spbuscar_Tipos_Permiso]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Buscar
	create proc [dbo].[spbuscar_Tipos_Permiso]
	@id uniqueidentifier
	as 
	select * from [dbo].[tbl_Tipos_Permiso]  
	where PK_id like @id
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spbuscar_Usuario_Permisos_relations]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spbuscar_Usuario_Permisos_relations]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Buscar
	create proc [dbo].[spbuscar_Usuario_Permisos_relations]
	@rol uniqueidentifier
	as 
	select * from [dbo].[tbl_Usuario_Permisos_relations]  
	where rol like @rol
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spbuscar_Usuarios]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spbuscar_Usuarios]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Buscar
	create proc [dbo].[spbuscar_Usuarios]
	@id uniqueidentifier
	as 
	select * from [dbo].[tbl_Usuarios]  
	where PK_id like @id
' 
END
GO
/****** Object:  StoredProcedure [dbo].[speditar_categoria]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[speditar_categoria]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create proc [dbo].[speditar_categoria]
@idcategoria int output,
@nombre varchar(50),
@descripcion varchar(256)
as
update categoria set nombre=@nombre,
descripcion=@descripcion 
where idcategoria=idcategoria
' 
END
GO
/****** Object:  StoredProcedure [dbo].[speditar_Colaboradores]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[speditar_Colaboradores]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Editar
	CREATE proc [dbo].[speditar_Colaboradores]
	@persona uniqueidentifier,
	@empleador uniqueidentifier,
	@estado uniqueidentifier
	as
	update [dbo].[tbl_Colaboradores] set persona = @persona, 
									 empleador = @empleador, 
									 estado = @estado
	where persona = @persona
' 
END
GO
/****** Object:  StoredProcedure [dbo].[speditar_Empresas]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[speditar_Empresas]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create proc [dbo].[speditar_Empresas]
	@id uniqueidentifier,
	@persona uniqueidentifier,
	@RUC nchar(54),
	@nombre_comercial nchar(54),
	@slogan nchar(54)
	
	as
	update [dbo].[tbl_Empresas] set persona = @persona, 
									RUC = @RUC, 
									nombre_comercial = @nombre_comercial, 
									slogan = @slogan
									
	where PK_id = @id
' 
END
GO
/****** Object:  StoredProcedure [dbo].[speditar_Estados_Colaborador]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[speditar_Estados_Colaborador]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Editar
	create proc [dbo].[speditar_Estados_Colaborador]
	@id uniqueidentifier,
	@nombre nchar(17)
	as
	update [dbo].[tbl_Estados_Colaborador] set nombre = @nombre
	where PK_id = @id
' 
END
GO
/****** Object:  StoredProcedure [dbo].[speditar_Modulos]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[speditar_Modulos]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Editar
	create proc [dbo].[speditar_Modulos]
	@id uniqueidentifier,
	@nombre nchar(54)
	as
	update [dbo].[tbl_Modulos] set nombre = @nombre
	where PK_id = @id
' 
END
GO
/****** Object:  StoredProcedure [dbo].[speditar_Personas]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[speditar_Personas]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Editar
	create proc [dbo].[speditar_Personas]
	@idPersona uniqueidentifier,
	@isPersonaFisica bit,
	@cedula nchar(15),
	@nombre nchar(54),
	@apellido1 nchar(54),
	@apellido2 nchar(54),
	
	@direccion nchar(54),
	@telefono nchar(15),
	@telefax nchar(15),
	@celular nchar(15),
	@email nchar(54)
	as
	update [dbo].[tbl_Personas] set is_persona_fisica = @isPersonaFisica, 
									cedula = @cedula, 
									nombre = @nombre, 
									apellido1 = @apellido1, 
									apellido2 = @apellido2, 
									 
									direccion = @direccion, 
									telefono = @telefono, 
									telefax = @telefax, 
									celular = @celular, 
									email = @email
	where PK_id = @idPersona
' 
END
GO
/****** Object:  StoredProcedure [dbo].[speditar_Roles]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[speditar_Roles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Editar
	create proc [dbo].[speditar_Roles]
	@id uniqueidentifier,
	@nombre nchar(25)
	as
	update [dbo].[tbl_Roles] set nombre = @nombre
	where PK_id = @id
' 
END
GO
/****** Object:  StoredProcedure [dbo].[speditar_Submodulos]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[speditar_Submodulos]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Editar
	create proc [dbo].[speditar_Submodulos]
	@id uniqueidentifier,
	@nombre nvarchar(50),
	@descripcion ntext,
	@modulo uniqueidentifier
	as
	update [dbo].[tbl_Submodulos] set nombre = @nombre, 
									descripcion = @descripcion, 
									modulo = @modulo
	where PK_id = @id
' 
END
GO
/****** Object:  StoredProcedure [dbo].[speditar_Tipos_Permiso]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[speditar_Tipos_Permiso]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Editar
	create proc [dbo].[speditar_Tipos_Permiso]
	@id uniqueidentifier,
	@nombre nchar(15)
	as
	update [dbo].[tbl_Tipos_Permiso] set nombre = @nombre
	where PK_id = @id
' 
END
GO
/****** Object:  StoredProcedure [dbo].[speditar_Usuario_Permisos_relations]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[speditar_Usuario_Permisos_relations]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Editar
	create proc [dbo].[speditar_Usuario_Permisos_relations]
	@rol uniqueidentifier,
	@submodulo uniqueidentifier,
	@tipo uniqueidentifier
	as
	update [dbo].[tbl_Usuario_Permisos_relations] set submodulo = @submodulo, 
													  tipo = @tipo
	where rol = @rol
' 
END
GO
/****** Object:  StoredProcedure [dbo].[speditar_Usuarios]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[speditar_Usuarios]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Editar
	create proc [dbo].[speditar_Usuarios]
	@id uniqueidentifier,
	@colaborador uniqueidentifier,
	@rol uniqueidentifier,
	@usuario nchar(15),
	@contrasena nchar(15)
	as
	update [dbo].[tbl_Usuarios] set colaborador = @colaborador, 
									rol = @rol, 
									usuario = @usuario,
									contrasena = @contrasena
	where PK_id = @id
' 
END
GO
/****** Object:  StoredProcedure [dbo].[speliminar_categoria]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[speliminar_categoria]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create proc [dbo].[speliminar_categoria]
@idcategoria int
as
delete from categoria
where idcategoria = @idcategoria
' 
END
GO
/****** Object:  StoredProcedure [dbo].[speliminar_Colaboradores]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[speliminar_Colaboradores]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Eliminar
	create proc [dbo].[speliminar_Colaboradores]
	@id uniqueidentifier
	as
	delete from [dbo].[tbl_Colaboradores]
	where PK_id = @id
' 
END
GO
/****** Object:  StoredProcedure [dbo].[speliminar_Empresas]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[speliminar_Empresas]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Eliminar
	CREATE proc [dbo].[speliminar_Empresas]
	@RUC nchar(54)
	as
	delete from [dbo].[tbl_Empresas]
	where RUC = @RUC
' 
END
GO
/****** Object:  StoredProcedure [dbo].[speliminar_Estados_Colaborador]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[speliminar_Estados_Colaborador]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Eliminar
	create proc [dbo].[speliminar_Estados_Colaborador]
	@id uniqueidentifier
	as
	delete from [dbo].[tbl_Estados_Colaborador]
	where PK_id = @id
' 
END
GO
/****** Object:  StoredProcedure [dbo].[speliminar_Modulos]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[speliminar_Modulos]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Eliminar
	create proc [dbo].[speliminar_Modulos]
	@id uniqueidentifier
	as
	delete from [dbo].[tbl_Modulos]
	where PK_id = @id
' 
END
GO
/****** Object:  StoredProcedure [dbo].[speliminar_Personas]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[speliminar_Personas]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Eliminar
	CREATE proc [dbo].[speliminar_Personas]
	@Cedula nchar(15)
	as
	delete from [dbo].[tbl_Personas]
	where cedula = @Cedula
' 
END
GO
/****** Object:  StoredProcedure [dbo].[speliminar_Roles]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[speliminar_Roles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Eliminar
	create proc [dbo].[speliminar_Roles]
	@id uniqueidentifier
	as
	delete from [dbo].[tbl_Roles]
	where PK_id = @id
' 
END
GO
/****** Object:  StoredProcedure [dbo].[speliminar_Submodulos]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[speliminar_Submodulos]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Eliminar
	create proc [dbo].[speliminar_Submodulos]
	@id uniqueidentifier
	as
	delete from [dbo].[tbl_Submodulos]
	where PK_id = @id
' 
END
GO
/****** Object:  StoredProcedure [dbo].[speliminar_Tipos_Permiso]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[speliminar_Tipos_Permiso]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Eliminar
	create proc [dbo].[speliminar_Tipos_Permiso]
	@id uniqueidentifier
	as
	delete from [dbo].[tbl_Tipos_Permiso]
	where PK_id = @id
' 
END
GO
/****** Object:  StoredProcedure [dbo].[speliminar_Usuario_Permisos_relations]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[speliminar_Usuario_Permisos_relations]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Eliminar
	create proc [dbo].[speliminar_Usuario_Permisos_relations]
	@rol uniqueidentifier
	as
	delete from [dbo].[tbl_Usuario_Permisos_relations]
	where rol = @rol
' 
END
GO
/****** Object:  StoredProcedure [dbo].[speliminar_Usuarios]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[speliminar_Usuarios]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Eliminar
	create proc [dbo].[speliminar_Usuarios]
	@id uniqueidentifier
	as
	delete from [dbo].[tbl_Usuarios]
	where PK_id = @id
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spinsertar_categoria]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spinsertar_categoria]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create proc [dbo].[spinsertar_categoria]
@idcategoria int output,
@nombre varchar(50),
@descripcion varchar(256)
as
insert into categoria(nombre,descripcion)
values (@nombre ,@descripcion)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spinsertar_Colaboradores]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spinsertar_Colaboradores]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Insertar
	CREATE proc [dbo].[spinsertar_Colaboradores]
	--@id uniqueidentifier,
	@persona uniqueidentifier,
	@empleador uniqueidentifier,
	@estado uniqueidentifier
	as
	insert into [dbo].[tbl_Colaboradores](persona, empleador, estado)
	values (@persona, @empleador, @estado)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spinsertar_Empresas]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spinsertar_Empresas]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create proc [dbo].[spinsertar_Empresas]
@Id int output,
@Persona nchar(54),
@RUC nchar(54),
@Nombre_Comercial nchar (54),
@Slogan nchar (54)
as
insert into Empresas(Persona,RUC,Nombre_Comercial,Slogan)
values (@Persona,@RUC,@Nombre_Comercial,@Slogan)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spinsertar_Estados_Colaborador]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spinsertar_Estados_Colaborador]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Insertar
	CREATE proc [dbo].[spinsertar_Estados_Colaborador]
	--@id uniqueidentifier,
	@nombre nchar(17)
	as
	insert into [dbo].[tbl_Estados_Colaborador](nombre)
	values (@nombre)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spinsertar_Modulos]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spinsertar_Modulos]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Insertar
	CREATE proc [dbo].[spinsertar_Modulos]
	--@id uniqueidentifier,
	@nombre nchar(54)
	as
	insert into [dbo].[tbl_Modulos](nombre)
	values (@nombre)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spinsertar_Personas]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spinsertar_Personas]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Insertar
	CREATE proc [dbo].[spinsertar_Personas]
	--@idPersona uniqueidentifier,
	@isPersonaFisica bit,
	@cedula nchar(15),
	@nombre nchar(54),
	@apellido1 nchar(54),
	@apellido2 nchar(54),
	@direccion nchar(54),
	@telefono nchar(15),
	@telefax nchar(15),
	@celular nchar(15),
	@email nchar(54)
	as
	insert into [dbo].[tbl_Personas](is_persona_fisica, cedula, nombre, apellido1, apellido2,  direccion, telefono, telefax, celular, email)
	values (@isPersonaFisica, @cedula, @nombre, @apellido1, @apellido2,  @direccion, @telefono, @telefax, @celular, @email)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spinsertar_Roles]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spinsertar_Roles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Insertar
	CREATE proc [dbo].[spinsertar_Roles]
	--@id uniqueidentifier,
	@nombre nchar(25)
	as
	insert into [dbo].[tbl_Roles](nombre)
	values (@nombre)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spinsertar_Submodulos]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spinsertar_Submodulos]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Insertar
	CREATE proc [dbo].[spinsertar_Submodulos]
	--@id uniqueidentifier,
	@nombre nvarchar(50),
	@descripcion ntext,
	@modulo uniqueidentifier
	as
	insert into [dbo].[tbl_Submodulos](nombre, descripcion, modulo)
	values (@nombre, @descripcion, @modulo)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spinsertar_Tipos_Permiso]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spinsertar_Tipos_Permiso]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Insertar
	CREATE proc [dbo].[spinsertar_Tipos_Permiso]
	--@id uniqueidentifier,
	@nombre nchar(15)
	as
	insert into [dbo].[tbl_Tipos_Permiso](nombre)
	values (@nombre)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spinsertar_Usuario_Permisos_relations]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spinsertar_Usuario_Permisos_relations]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Insertar
	create proc [dbo].[spinsertar_Usuario_Permisos_relations]
	@rol uniqueidentifier,
	@submodulo uniqueidentifier,
	@tipo uniqueidentifier
	as
	insert into [dbo].[tbl_Usuario_Permisos_relations](rol, submodulo, tipo)
	values (@rol, @submodulo, @tipo)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spinsertar_Usuarios]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spinsertar_Usuarios]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Insertar
	CREATE proc [dbo].[spinsertar_Usuarios]
	--@id uniqueidentifier,
	@colaborador uniqueidentifier,
	@rol uniqueidentifier,
	@usuario nchar(15),
	@contrasena nchar(15)
	as
	insert into [dbo].[tbl_Usuarios](colaborador, rol, usuario, contrasena)
	values (@colaborador, @rol, @usuario, @contrasena)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spmostrar_categoria]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spmostrar_categoria]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create proc [dbo].[spmostrar_categoria]
as
select top 200 * from categoria 
order by idcategoria desc
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spmostrar_Colaboradores]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spmostrar_Colaboradores]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Colaboradores
	--Mostrar
	create proc [dbo].[spmostrar_Colaboradores]
	as
	select top 200 * from [dbo].[tbl_Colaboradores] 
	order by PK_id desc
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spmostrar_Empresas]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spmostrar_Empresas]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Empresas
	--Mostrar
	create proc [dbo].[spmostrar_Empresas]
	as
	select top 200 * from [dbo].[tbl_Empresas] 
	order by PK_id desc
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spmostrar_Estados_Colaborador]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spmostrar_Estados_Colaborador]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Estado Colaborador
	--Mostrar
	create proc [dbo].[spmostrar_Estados_Colaborador]
	as
	select top 200 * from [dbo].[tbl_Estados_Colaborador] 
	order by PK_id desc
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spmostrar_Modulos]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spmostrar_Modulos]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Modulos
	--Mostrar
	create proc [dbo].[spmostrar_Modulos]
	as
	select top 200 * from [dbo].[tbl_Modulos] 
	order by PK_id desc
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spmostrar_Personas]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spmostrar_Personas]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Personas
	--Mostrar
	create proc [dbo].[spmostrar_Personas]
	as
	select top 200 * from [dbo].[tbl_Personas] 
	order by PK_id desc
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spmostrar_Roles]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spmostrar_Roles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Roles
	--Mostrar
	create proc [dbo].[spmostrar_Roles]
	as
	select top 200 * from [dbo].[tbl_Roles] 
	order by PK_id desc
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spmostrar_Submodulos]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spmostrar_Submodulos]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Sub-Modulos
	--Mostrar
	create proc [dbo].[spmostrar_Submodulos]
	as
	select top 200 * from [dbo].[tbl_Submodulos] 
	order by PK_id desc
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spmostrar_Tipos_Permiso]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spmostrar_Tipos_Permiso]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Tipos de Permiso
	--Mostrar
	create proc [dbo].[spmostrar_Tipos_Permiso]
	as
	select top 200 * from [dbo].[tbl_Tipos_Permiso] 
	order by PK_id desc
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spmostrar_Usuario_Permisos_relations]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spmostrar_Usuario_Permisos_relations]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Usuario Permisos Relations
	--Mostrar
	create proc [dbo].[spmostrar_Usuario_Permisos_relations]
	as
	select top 200 * from [dbo].[tbl_Usuario_Permisos_Relations] 
	order by rol desc
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spmostrar_Usuarios]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spmostrar_Usuarios]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Usuarios
	--Mostrar
	create proc [dbo].[spmostrar_Usuarios]
	as
	select top 200 * from [dbo].[tbl_Usuarios] 
	order by PK_id desc
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[VerificaUsuario]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VerificaUsuario]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[VerificaUsuario] 
(
@Usuario nchar(15))
RETURNS nchar(15)
as
	begin
	declare @Contrasena nchar(15)
	set @Contrasena = (select contrasena from dbo.tbl_Usuarios where usuario = @usuario)
	return RTRIM (@Contrasena)
	end
' 
END

GO
/****** Object:  Table [dbo].[categoria]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[categoria]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[categoria](
	[idcategoria] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[descripcion] [varchar](256) NOT NULL,
 CONSTRAINT [PK_categoria] PRIMARY KEY CLUSTERED 
(
	[idcategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Colaboradores]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Colaboradores]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Colaboradores](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Persona] [nchar](20) NOT NULL,
	[Empleador] [nchar](20) NOT NULL,
	[Estado] [nchar](20) NOT NULL,
 CONSTRAINT [PK_Colaboradores] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Empleados]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Empleados](
	[Cedula] [int] NOT NULL,
	[nombre] [nchar](20) NOT NULL,
	[Apellido1] [nchar](20) NOT NULL,
	[Apellido2] [nchar](20) NOT NULL,
	[Telefono] [nchar](11) NOT NULL,
	[Correo] [nchar](50) NULL,
	[NumeroVentas] [int] NULL,
	[Puesto] [nchar](20) NOT NULL,
 CONSTRAINT [pk_Empleados] PRIMARY KEY CLUSTERED 
(
	[Cedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Empresas]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Empresas]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Empresas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Persona] [nchar](54) NOT NULL,
	[RUC] [nchar](54) NOT NULL,
	[Nombre_Comercial] [nchar](54) NOT NULL,
	[Slogan] [nchar](54) NOT NULL,
 CONSTRAINT [PK_Empresas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Personas]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Personas]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Personas](
	[Cedula] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
	[Apellido1] [nchar](20) NOT NULL,
	[Apellido2] [nchar](20) NOT NULL,
	[Telefono] [nchar](8) NOT NULL,
	[Correo] [nchar](50) NOT NULL,
	[Direccion] [nchar](20) NOT NULL,
 CONSTRAINT [PK_Personas1] PRIMARY KEY CLUSTERED 
(
	[Cedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Articulos_Venta_Relations]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Articulos_Venta_Relations]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Articulos_Venta_Relations](
	[venta] [uniqueidentifier] NOT NULL,
	[articulo] [uniqueidentifier] NOT NULL,
	[num_serie] [nchar](54) NULL,
	[precio] [real] NOT NULL,
	[cantidad] [real] NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_Bodegas]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Bodegas]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Bodegas](
	[PK_id] [uniqueidentifier] NOT NULL,
	[nombre] [nchar](25) NOT NULL,
 CONSTRAINT [PK_tbl_Bodegas] PRIMARY KEY CLUSTERED 
(
	[PK_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_Calendario_Pagos]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Calendario_Pagos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Calendario_Pagos](
	[PK_id] [nchar](10) NOT NULL,
	[venta] [uniqueidentifier] NOT NULL,
	[fecha] [timestamp] NOT NULL,
	[prima] [real] NOT NULL,
	[fecha_pago1] [date] NULL,
	[monto1] [real] NULL,
	[fecha_realizado1] [datetime] NULL,
	[fecha_pago2] [date] NULL,
	[monto2] [real] NULL,
	[fecha_realizado2] [datetime] NULL,
	[fecha_pago3] [date] NULL,
	[monto3] [real] NULL,
	[fecha_realizado3] [datetime] NULL,
 CONSTRAINT [PK_tbl_Calendario_Pagos] PRIMARY KEY CLUSTERED 
(
	[PK_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_Categorias]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Categorias]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Categorias](
	[PK_id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[nombre] [nchar](25) NOT NULL,
	[descripcion] [nchar](256) NULL,
 CONSTRAINT [PK_tbl_Categorias] PRIMARY KEY CLUSTERED 
(
	[PK_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_Clientes]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Clientes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Clientes](
	[PK_id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[persona] [uniqueidentifier] NOT NULL,
	[grupo] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tbl_Cliente] PRIMARY KEY CLUSTERED 
(
	[PK_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_Colaboradores]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Colaboradores]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Colaboradores](
	[PK_id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[persona] [uniqueidentifier] NOT NULL,
	[empleador] [uniqueidentifier] NOT NULL,
	[estado] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tbl_Colaboradores] PRIMARY KEY CLUSTERED 
(
	[PK_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_Comisiones]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Comisiones]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Comisiones](
	[PK_id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[colaborador] [uniqueidentifier] NOT NULL,
	[cantidad] [real] NOT NULL,
	[fecha_pago] [date] NOT NULL,
 CONSTRAINT [PK_tbl_Comisiones] PRIMARY KEY CLUSTERED 
(
	[PK_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_Compras]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Compras]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Compras](
	[PK_id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[consecutivo] [int] NOT NULL,
	[proveedor] [uniqueidentifier] NOT NULL,
	[fecha_solicitud] [datetime] NOT NULL,
	[fecha_recibido] [datetime] NULL,
	[productos] [uniqueidentifier] NOT NULL,
	[usuario] [uniqueidentifier] NOT NULL,
	[aprobacion] [uniqueidentifier] NOT NULL,
	[estado] [uniqueidentifier] NOT NULL,
	[generado] [timestamp] NOT NULL,
	[modificado] [datetime] NOT NULL,
	[total] [real] NOT NULL,
	[tipo_pago] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tbl_Compras] PRIMARY KEY CLUSTERED 
(
	[PK_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_Compras_Productos_Relations]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Compras_Productos_Relations]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Compras_Productos_Relations](
	[compra] [uniqueidentifier] NOT NULL,
	[producto] [uniqueidentifier] NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_Empresas]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Empresas]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Empresas](
	[PK_id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[persona] [uniqueidentifier] NOT NULL,
	[RUC] [nchar](54) NOT NULL,
	[nombre_comercial] [nchar](54) NOT NULL,
	[slogan] [nchar](54) NULL,
 CONSTRAINT [PK_tbl_Empresa] PRIMARY KEY CLUSTERED 
(
	[PK_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_Estado_Compras]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Estado_Compras]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Estado_Compras](
	[PK_id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[nombre] [nchar](15) NOT NULL,
 CONSTRAINT [PK_tbl_Estado_Compras] PRIMARY KEY CLUSTERED 
(
	[PK_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_Estado_Stock]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Estado_Stock]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Estado_Stock](
	[PK_id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[nombre] [nchar](25) NOT NULL,
 CONSTRAINT [PK_tbl_Estado_Stock] PRIMARY KEY CLUSTERED 
(
	[PK_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_Estados_Colaborador]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Estados_Colaborador]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Estados_Colaborador](
	[PK_id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[nombre] [nchar](17) NOT NULL,
 CONSTRAINT [PK_tbl_Estados_Colaborador] PRIMARY KEY CLUSTERED 
(
	[PK_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_Grupos]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Grupos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Grupos](
	[PK_id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[nombre] [nchar](24) NOT NULL,
 CONSTRAINT [PK_tbl_Grupo] PRIMARY KEY CLUSTERED 
(
	[PK_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_Inventario]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Inventario]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Inventario](
	[PK_id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[bodega] [uniqueidentifier] NOT NULL,
	[producto] [uniqueidentifier] NOT NULL,
	[localizacion] [uniqueidentifier] NOT NULL,
	[estado] [uniqueidentifier] NOT NULL,
	[num_serie] [nchar](10) NOT NULL,
 CONSTRAINT [PK_tbl_Inventario] PRIMARY KEY CLUSTERED 
(
	[PK_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_Localizaciones]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Localizaciones]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Localizaciones](
	[PK_id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[nombre] [nchar](25) NOT NULL,
 CONSTRAINT [PK_tbl_Localizaciones] PRIMARY KEY CLUSTERED 
(
	[PK_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_Marcaje_Entrada_Salida]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Marcaje_Entrada_Salida]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Marcaje_Entrada_Salida](
	[colaborador] [uniqueidentifier] NOT NULL,
	[marca] [time](7) NOT NULL,
	[timestamp] [timestamp] NOT NULL,
	[tipo_marca] [uniqueidentifier] NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_Marcas]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Marcas]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Marcas](
	[PK_id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[nombre] [nchar](54) NOT NULL,
 CONSTRAINT [PK_tbl_Marcas] PRIMARY KEY CLUSTERED 
(
	[PK_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_Modelos]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Modelos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Modelos](
	[PK_id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[nombre] [nchar](54) NOT NULL,
	[marca] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tbl_Modelos] PRIMARY KEY CLUSTERED 
(
	[PK_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_Modulos]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Modulos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Modulos](
	[PK_id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[nombre] [nchar](54) NOT NULL,
 CONSTRAINT [PK_tbl_Modulos] PRIMARY KEY CLUSTERED 
(
	[PK_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_Notas_Debito]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Notas_Debito]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Notas_Debito](
	[PK_id] [uniqueidentifier] NOT NULL,
	[cliente] [uniqueidentifier] NOT NULL,
	[monto] [real] NOT NULL,
	[fecha] [date] NOT NULL,
	[generado] [datetime] NOT NULL,
	[usuario] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tbl_Notas_Debito] PRIMARY KEY CLUSTERED 
(
	[PK_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_Personas]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Personas]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Personas](
	[PK_id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[is_persona_fisica] [bit] NOT NULL,
	[cedula] [nchar](15) NOT NULL,
	[nombre] [nchar](54) NOT NULL,
	[apellido1] [nchar](54) NULL,
	[apellido2] [nchar](54) NULL,
	[direccion] [nchar](54) NULL,
	[telefono] [nchar](15) NULL,
	[telefax] [nchar](15) NULL,
	[celular] [nchar](15) NULL,
	[email] [nchar](54) NULL,
 CONSTRAINT [PK_tbl_Persona] PRIMARY KEY CLUSTERED 
(
	[PK_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_Productos]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Productos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Productos](
	[PK_id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[codigo] [nchar](54) NOT NULL,
	[nombre] [nchar](54) NOT NULL,
	[descripcion] [ntext] NOT NULL,
	[modelo] [uniqueidentifier] NOT NULL,
	[categoria] [uniqueidentifier] NOT NULL,
	[garantia] [smallint] NOT NULL,
	[costo] [real] NOT NULL,
	[precio] [real] NOT NULL,
	[cantidad] [real] NOT NULL,
	[empresa] [uniqueidentifier] NOT NULL,
	[Is_perecedero] [bit] NOT NULL,
 CONSTRAINT [PK_tbl_Productos] PRIMARY KEY CLUSTERED 
(
	[PK_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_Productos_Proveedores_Relations]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Productos_Proveedores_Relations]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Productos_Proveedores_Relations](
	[producto] [uniqueidentifier] NOT NULL,
	[proveedor] [uniqueidentifier] NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_Proveedores]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Proveedores]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Proveedores](
	[PK_id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[persona_juridica] [uniqueidentifier] NOT NULL,
	[persona_contacto] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tbl_Proveedor] PRIMARY KEY CLUSTERED 
(
	[PK_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_Roles]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Roles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Roles](
	[PK_id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[nombre] [nchar](25) NOT NULL,
 CONSTRAINT [PK_tbl_Roles_1] PRIMARY KEY CLUSTERED 
(
	[PK_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_Submodulos]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Submodulos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Submodulos](
	[PK_id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[nombre] [nvarchar](50) NOT NULL,
	[descripcion] [ntext] NOT NULL,
	[modulo] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tbl_Submodulos] PRIMARY KEY CLUSTERED 
(
	[PK_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_Tipo_Marca]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Tipo_Marca]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Tipo_Marca](
	[PK_id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[nombre] [nchar](10) NOT NULL,
 CONSTRAINT [PK_tbl_Tipo_Marca] PRIMARY KEY CLUSTERED 
(
	[PK_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_Tipo_Pago]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Tipo_Pago]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Tipo_Pago](
	[PK_id] [uniqueidentifier] NOT NULL,
	[nombre] [nchar](15) NOT NULL,
 CONSTRAINT [PK_tbl_Tipo_Pago] PRIMARY KEY CLUSTERED 
(
	[PK_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_Tipo_Pago_Compras]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Tipo_Pago_Compras]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Tipo_Pago_Compras](
	[PK_id] [uniqueidentifier] NOT NULL,
	[nombre] [nchar](15) NULL,
 CONSTRAINT [PK_tbl_Tipo_Pago_Compras] PRIMARY KEY CLUSTERED 
(
	[PK_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_Tipos_Permiso]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Tipos_Permiso]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Tipos_Permiso](
	[PK_id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[nombre] [nchar](15) NOT NULL,
 CONSTRAINT [PK_tbl_Tipo_permiso] PRIMARY KEY CLUSTERED 
(
	[PK_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_Usuario_Permisos_relations]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Usuario_Permisos_relations]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Usuario_Permisos_relations](
	[rol] [uniqueidentifier] NOT NULL,
	[submodulo] [uniqueidentifier] NOT NULL,
	[tipo] [uniqueidentifier] NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_Usuarios]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Usuarios]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Usuarios](
	[PK_id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[colaborador] [uniqueidentifier] NOT NULL,
	[rol] [uniqueidentifier] NOT NULL,
	[usuario] [nchar](15) NOT NULL,
	[contrasena] [nchar](15) NOT NULL,
 CONSTRAINT [PK_tbl_Usuarios] PRIMARY KEY CLUSTERED 
(
	[PK_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_Ventas]    Script Date: 19/06/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Ventas]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Ventas](
	[PK_id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[consecutivo] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[cliente] [uniqueidentifier] NOT NULL,
	[vendedor] [uniqueidentifier] NOT NULL,
	[tipo_pago] [uniqueidentifier] NOT NULL,
	[num_pago] [nchar](25) NULL,
	[subtotal] [real] NOT NULL,
	[total] [real] NOT NULL,
	[is_cancelado] [bit] NOT NULL,
	[is_entregado] [bit] NOT NULL,
	[monto_cancelado] [real] NOT NULL,
 CONSTRAINT [PK_tbl_Ventas] PRIMARY KEY CLUSTERED 
(
	[PK_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Articulos_Venta_Relations_cantidad]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Articulos_Venta_Relations] ADD  CONSTRAINT [DF_tbl_Articulos_Venta_Relations_cantidad]  DEFAULT ((1)) FOR [cantidad]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Categorias_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Categorias] ADD  CONSTRAINT [DF_tbl_Categorias_PK_id]  DEFAULT (newid()) FOR [PK_id]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Cliente_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Clientes] ADD  CONSTRAINT [DF_tbl_Cliente_PK_id]  DEFAULT (newid()) FOR [PK_id]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Colaboradores_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Colaboradores] ADD  CONSTRAINT [DF_tbl_Colaboradores_PK_id]  DEFAULT (newid()) FOR [PK_id]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Comisiones_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Comisiones] ADD  CONSTRAINT [DF_tbl_Comisiones_PK_id]  DEFAULT (newid()) FOR [PK_id]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Compras_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Compras] ADD  CONSTRAINT [DF_tbl_Compras_PK_id]  DEFAULT (newid()) FOR [PK_id]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Empresa_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Empresas] ADD  CONSTRAINT [DF_tbl_Empresa_PK_id]  DEFAULT (newid()) FOR [PK_id]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Estado_Compras_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Estado_Compras] ADD  CONSTRAINT [DF_tbl_Estado_Compras_PK_id]  DEFAULT (newid()) FOR [PK_id]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Estado_Stock_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Estado_Stock] ADD  CONSTRAINT [DF_tbl_Estado_Stock_PK_id]  DEFAULT (newid()) FOR [PK_id]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Estados_Colaborador_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Estados_Colaborador] ADD  CONSTRAINT [DF_tbl_Estados_Colaborador_PK_id]  DEFAULT (newid()) FOR [PK_id]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Grupo_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Grupos] ADD  CONSTRAINT [DF_tbl_Grupo_PK_id]  DEFAULT (newid()) FOR [PK_id]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Inventario_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Inventario] ADD  CONSTRAINT [DF_tbl_Inventario_PK_id]  DEFAULT (newid()) FOR [PK_id]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Localizaciones_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Localizaciones] ADD  CONSTRAINT [DF_tbl_Localizaciones_PK_id]  DEFAULT (newid()) FOR [PK_id]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Marcas_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Marcas] ADD  CONSTRAINT [DF_tbl_Marcas_PK_id]  DEFAULT (newid()) FOR [PK_id]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Modelos_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Modelos] ADD  CONSTRAINT [DF_tbl_Modelos_PK_id]  DEFAULT (newid()) FOR [PK_id]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Modulos_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Modulos] ADD  CONSTRAINT [DF_tbl_Modulos_PK_id]  DEFAULT (newid()) FOR [PK_id]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Persona_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Personas] ADD  CONSTRAINT [DF_tbl_Persona_PK_id]  DEFAULT (newid()) FOR [PK_id]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Productos_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Productos] ADD  CONSTRAINT [DF_tbl_Productos_PK_id]  DEFAULT (newid()) FOR [PK_id]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Productos_perecedero]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Productos] ADD  CONSTRAINT [DF_tbl_Productos_perecedero]  DEFAULT ((1)) FOR [Is_perecedero]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Proveedor_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Proveedores] ADD  CONSTRAINT [DF_tbl_Proveedor_PK_id]  DEFAULT (newid()) FOR [PK_id]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Roles_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Roles] ADD  CONSTRAINT [DF_tbl_Roles_PK_id]  DEFAULT (newid()) FOR [PK_id]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Submodulos_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Submodulos] ADD  CONSTRAINT [DF_tbl_Submodulos_PK_id]  DEFAULT (newid()) FOR [PK_id]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Tipo_Marca_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Tipo_Marca] ADD  CONSTRAINT [DF_tbl_Tipo_Marca_PK_id]  DEFAULT (newid()) FOR [PK_id]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Tipos_Permiso_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Tipos_Permiso] ADD  CONSTRAINT [DF_tbl_Tipos_Permiso_PK_id]  DEFAULT (newid()) FOR [PK_id]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Usuarios_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Usuarios] ADD  CONSTRAINT [DF_tbl_Usuarios_PK_id]  DEFAULT (newid()) FOR [PK_id]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_tbl_Ventas_PK_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_Ventas] ADD  CONSTRAINT [DF_tbl_Ventas_PK_id]  DEFAULT (newid()) FOR [PK_id]
END

GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Articulos_Venta_Relations_tbl_Productos]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Articulos_Venta_Relations]'))
ALTER TABLE [dbo].[tbl_Articulos_Venta_Relations]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Articulos_Venta_Relations_tbl_Productos] FOREIGN KEY([articulo])
REFERENCES [dbo].[tbl_Productos] ([PK_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Articulos_Venta_Relations_tbl_Productos]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Articulos_Venta_Relations]'))
ALTER TABLE [dbo].[tbl_Articulos_Venta_Relations] CHECK CONSTRAINT [FK_tbl_Articulos_Venta_Relations_tbl_Productos]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Articulos_Venta_Relations_tbl_Ventas]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Articulos_Venta_Relations]'))
ALTER TABLE [dbo].[tbl_Articulos_Venta_Relations]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Articulos_Venta_Relations_tbl_Ventas] FOREIGN KEY([venta])
REFERENCES [dbo].[tbl_Ventas] ([PK_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Articulos_Venta_Relations_tbl_Ventas]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Articulos_Venta_Relations]'))
ALTER TABLE [dbo].[tbl_Articulos_Venta_Relations] CHECK CONSTRAINT [FK_tbl_Articulos_Venta_Relations_tbl_Ventas]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Calendario_Pagos_tbl_Ventas]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Calendario_Pagos]'))
ALTER TABLE [dbo].[tbl_Calendario_Pagos]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Calendario_Pagos_tbl_Ventas] FOREIGN KEY([venta])
REFERENCES [dbo].[tbl_Ventas] ([PK_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Calendario_Pagos_tbl_Ventas]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Calendario_Pagos]'))
ALTER TABLE [dbo].[tbl_Calendario_Pagos] CHECK CONSTRAINT [FK_tbl_Calendario_Pagos_tbl_Ventas]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Cliente_tbl_Grupo]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Clientes]'))
ALTER TABLE [dbo].[tbl_Clientes]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Cliente_tbl_Grupo] FOREIGN KEY([grupo])
REFERENCES [dbo].[tbl_Grupos] ([PK_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Cliente_tbl_Grupo]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Clientes]'))
ALTER TABLE [dbo].[tbl_Clientes] CHECK CONSTRAINT [FK_tbl_Cliente_tbl_Grupo]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Cliente_tbl_Persona]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Clientes]'))
ALTER TABLE [dbo].[tbl_Clientes]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Cliente_tbl_Persona] FOREIGN KEY([persona])
REFERENCES [dbo].[tbl_Personas] ([PK_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Cliente_tbl_Persona]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Clientes]'))
ALTER TABLE [dbo].[tbl_Clientes] CHECK CONSTRAINT [FK_tbl_Cliente_tbl_Persona]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Colaboradores_tbl_Empresas]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Colaboradores]'))
ALTER TABLE [dbo].[tbl_Colaboradores]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Colaboradores_tbl_Empresas] FOREIGN KEY([empleador])
REFERENCES [dbo].[tbl_Empresas] ([PK_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Colaboradores_tbl_Empresas]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Colaboradores]'))
ALTER TABLE [dbo].[tbl_Colaboradores] CHECK CONSTRAINT [FK_tbl_Colaboradores_tbl_Empresas]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Colaboradores_tbl_Estados_Colaborador]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Colaboradores]'))
ALTER TABLE [dbo].[tbl_Colaboradores]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Colaboradores_tbl_Estados_Colaborador] FOREIGN KEY([estado])
REFERENCES [dbo].[tbl_Estados_Colaborador] ([PK_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Colaboradores_tbl_Estados_Colaborador]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Colaboradores]'))
ALTER TABLE [dbo].[tbl_Colaboradores] CHECK CONSTRAINT [FK_tbl_Colaboradores_tbl_Estados_Colaborador]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Colaboradores_tbl_Personas]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Colaboradores]'))
ALTER TABLE [dbo].[tbl_Colaboradores]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Colaboradores_tbl_Personas] FOREIGN KEY([persona])
REFERENCES [dbo].[tbl_Personas] ([PK_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Colaboradores_tbl_Personas]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Colaboradores]'))
ALTER TABLE [dbo].[tbl_Colaboradores] CHECK CONSTRAINT [FK_tbl_Colaboradores_tbl_Personas]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Comisiones_tbl_Colaboradores]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Comisiones]'))
ALTER TABLE [dbo].[tbl_Comisiones]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Comisiones_tbl_Colaboradores] FOREIGN KEY([colaborador])
REFERENCES [dbo].[tbl_Colaboradores] ([PK_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Comisiones_tbl_Colaboradores]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Comisiones]'))
ALTER TABLE [dbo].[tbl_Comisiones] CHECK CONSTRAINT [FK_tbl_Comisiones_tbl_Colaboradores]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Compras_tbl_Colaboradores]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Compras]'))
ALTER TABLE [dbo].[tbl_Compras]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Compras_tbl_Colaboradores] FOREIGN KEY([aprobacion])
REFERENCES [dbo].[tbl_Colaboradores] ([PK_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Compras_tbl_Colaboradores]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Compras]'))
ALTER TABLE [dbo].[tbl_Compras] CHECK CONSTRAINT [FK_tbl_Compras_tbl_Colaboradores]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Compras_tbl_Estado_Compras]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Compras]'))
ALTER TABLE [dbo].[tbl_Compras]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Compras_tbl_Estado_Compras] FOREIGN KEY([estado])
REFERENCES [dbo].[tbl_Estado_Compras] ([PK_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Compras_tbl_Estado_Compras]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Compras]'))
ALTER TABLE [dbo].[tbl_Compras] CHECK CONSTRAINT [FK_tbl_Compras_tbl_Estado_Compras]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Compras_tbl_Proveedores]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Compras]'))
ALTER TABLE [dbo].[tbl_Compras]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Compras_tbl_Proveedores] FOREIGN KEY([proveedor])
REFERENCES [dbo].[tbl_Proveedores] ([PK_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Compras_tbl_Proveedores]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Compras]'))
ALTER TABLE [dbo].[tbl_Compras] CHECK CONSTRAINT [FK_tbl_Compras_tbl_Proveedores]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Compras_tbl_Tipo_Pago_Compras]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Compras]'))
ALTER TABLE [dbo].[tbl_Compras]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Compras_tbl_Tipo_Pago_Compras] FOREIGN KEY([tipo_pago])
REFERENCES [dbo].[tbl_Tipo_Pago_Compras] ([PK_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Compras_tbl_Tipo_Pago_Compras]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Compras]'))
ALTER TABLE [dbo].[tbl_Compras] CHECK CONSTRAINT [FK_tbl_Compras_tbl_Tipo_Pago_Compras]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Compras_tbl_Usuarios]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Compras]'))
ALTER TABLE [dbo].[tbl_Compras]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Compras_tbl_Usuarios] FOREIGN KEY([usuario])
REFERENCES [dbo].[tbl_Usuarios] ([PK_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Compras_tbl_Usuarios]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Compras]'))
ALTER TABLE [dbo].[tbl_Compras] CHECK CONSTRAINT [FK_tbl_Compras_tbl_Usuarios]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Compras_Productos_Relations_tbl_Compras]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Compras_Productos_Relations]'))
ALTER TABLE [dbo].[tbl_Compras_Productos_Relations]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Compras_Productos_Relations_tbl_Compras] FOREIGN KEY([compra])
REFERENCES [dbo].[tbl_Compras] ([PK_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Compras_Productos_Relations_tbl_Compras]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Compras_Productos_Relations]'))
ALTER TABLE [dbo].[tbl_Compras_Productos_Relations] CHECK CONSTRAINT [FK_tbl_Compras_Productos_Relations_tbl_Compras]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Compras_Productos_Relations_tbl_Productos]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Compras_Productos_Relations]'))
ALTER TABLE [dbo].[tbl_Compras_Productos_Relations]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Compras_Productos_Relations_tbl_Productos] FOREIGN KEY([producto])
REFERENCES [dbo].[tbl_Productos] ([PK_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Compras_Productos_Relations_tbl_Productos]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Compras_Productos_Relations]'))
ALTER TABLE [dbo].[tbl_Compras_Productos_Relations] CHECK CONSTRAINT [FK_tbl_Compras_Productos_Relations_tbl_Productos]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Empresa_tbl_Persona]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Empresas]'))
ALTER TABLE [dbo].[tbl_Empresas]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Empresa_tbl_Persona] FOREIGN KEY([persona])
REFERENCES [dbo].[tbl_Personas] ([PK_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Empresa_tbl_Persona]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Empresas]'))
ALTER TABLE [dbo].[tbl_Empresas] CHECK CONSTRAINT [FK_tbl_Empresa_tbl_Persona]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Inventario_tbl_Bodegas]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Inventario]'))
ALTER TABLE [dbo].[tbl_Inventario]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Inventario_tbl_Bodegas] FOREIGN KEY([bodega])
REFERENCES [dbo].[tbl_Bodegas] ([PK_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Inventario_tbl_Bodegas]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Inventario]'))
ALTER TABLE [dbo].[tbl_Inventario] CHECK CONSTRAINT [FK_tbl_Inventario_tbl_Bodegas]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Inventario_tbl_Estado_Stock]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Inventario]'))
ALTER TABLE [dbo].[tbl_Inventario]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Inventario_tbl_Estado_Stock] FOREIGN KEY([estado])
REFERENCES [dbo].[tbl_Estado_Stock] ([PK_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Inventario_tbl_Estado_Stock]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Inventario]'))
ALTER TABLE [dbo].[tbl_Inventario] CHECK CONSTRAINT [FK_tbl_Inventario_tbl_Estado_Stock]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Inventario_tbl_Localizaciones]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Inventario]'))
ALTER TABLE [dbo].[tbl_Inventario]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Inventario_tbl_Localizaciones] FOREIGN KEY([localizacion])
REFERENCES [dbo].[tbl_Localizaciones] ([PK_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Inventario_tbl_Localizaciones]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Inventario]'))
ALTER TABLE [dbo].[tbl_Inventario] CHECK CONSTRAINT [FK_tbl_Inventario_tbl_Localizaciones]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Inventario_tbl_Productos]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Inventario]'))
ALTER TABLE [dbo].[tbl_Inventario]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Inventario_tbl_Productos] FOREIGN KEY([producto])
REFERENCES [dbo].[tbl_Productos] ([PK_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Inventario_tbl_Productos]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Inventario]'))
ALTER TABLE [dbo].[tbl_Inventario] CHECK CONSTRAINT [FK_tbl_Inventario_tbl_Productos]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Marcaje_Entrada_Salida_tbl_Colaboradores]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Marcaje_Entrada_Salida]'))
ALTER TABLE [dbo].[tbl_Marcaje_Entrada_Salida]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Marcaje_Entrada_Salida_tbl_Colaboradores] FOREIGN KEY([colaborador])
REFERENCES [dbo].[tbl_Colaboradores] ([PK_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Marcaje_Entrada_Salida_tbl_Colaboradores]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Marcaje_Entrada_Salida]'))
ALTER TABLE [dbo].[tbl_Marcaje_Entrada_Salida] CHECK CONSTRAINT [FK_tbl_Marcaje_Entrada_Salida_tbl_Colaboradores]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Marcaje_Entrada_Salida_tbl_Tipo_Marca]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Marcaje_Entrada_Salida]'))
ALTER TABLE [dbo].[tbl_Marcaje_Entrada_Salida]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Marcaje_Entrada_Salida_tbl_Tipo_Marca] FOREIGN KEY([tipo_marca])
REFERENCES [dbo].[tbl_Tipo_Marca] ([PK_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Marcaje_Entrada_Salida_tbl_Tipo_Marca]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Marcaje_Entrada_Salida]'))
ALTER TABLE [dbo].[tbl_Marcaje_Entrada_Salida] CHECK CONSTRAINT [FK_tbl_Marcaje_Entrada_Salida_tbl_Tipo_Marca]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Modelos_tbl_Marcas]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Modelos]'))
ALTER TABLE [dbo].[tbl_Modelos]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Modelos_tbl_Marcas] FOREIGN KEY([marca])
REFERENCES [dbo].[tbl_Marcas] ([PK_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Modelos_tbl_Marcas]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Modelos]'))
ALTER TABLE [dbo].[tbl_Modelos] CHECK CONSTRAINT [FK_tbl_Modelos_tbl_Marcas]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Notas_Debito_tbl_Clientes]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Notas_Debito]'))
ALTER TABLE [dbo].[tbl_Notas_Debito]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Notas_Debito_tbl_Clientes] FOREIGN KEY([cliente])
REFERENCES [dbo].[tbl_Clientes] ([PK_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Notas_Debito_tbl_Clientes]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Notas_Debito]'))
ALTER TABLE [dbo].[tbl_Notas_Debito] CHECK CONSTRAINT [FK_tbl_Notas_Debito_tbl_Clientes]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Notas_Debito_tbl_Usuarios]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Notas_Debito]'))
ALTER TABLE [dbo].[tbl_Notas_Debito]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Notas_Debito_tbl_Usuarios] FOREIGN KEY([usuario])
REFERENCES [dbo].[tbl_Usuarios] ([PK_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Notas_Debito_tbl_Usuarios]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Notas_Debito]'))
ALTER TABLE [dbo].[tbl_Notas_Debito] CHECK CONSTRAINT [FK_tbl_Notas_Debito_tbl_Usuarios]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Productos_tbl_Categorias]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Productos]'))
ALTER TABLE [dbo].[tbl_Productos]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Productos_tbl_Categorias] FOREIGN KEY([categoria])
REFERENCES [dbo].[tbl_Categorias] ([PK_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Productos_tbl_Categorias]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Productos]'))
ALTER TABLE [dbo].[tbl_Productos] CHECK CONSTRAINT [FK_tbl_Productos_tbl_Categorias]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Productos_tbl_Empresas]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Productos]'))
ALTER TABLE [dbo].[tbl_Productos]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Productos_tbl_Empresas] FOREIGN KEY([empresa])
REFERENCES [dbo].[tbl_Empresas] ([PK_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Productos_tbl_Empresas]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Productos]'))
ALTER TABLE [dbo].[tbl_Productos] CHECK CONSTRAINT [FK_tbl_Productos_tbl_Empresas]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Productos_tbl_Modelos]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Productos]'))
ALTER TABLE [dbo].[tbl_Productos]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Productos_tbl_Modelos] FOREIGN KEY([modelo])
REFERENCES [dbo].[tbl_Modelos] ([PK_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Productos_tbl_Modelos]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Productos]'))
ALTER TABLE [dbo].[tbl_Productos] CHECK CONSTRAINT [FK_tbl_Productos_tbl_Modelos]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Productos_Proveedores_Relations_tbl_Productos]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Productos_Proveedores_Relations]'))
ALTER TABLE [dbo].[tbl_Productos_Proveedores_Relations]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Productos_Proveedores_Relations_tbl_Productos] FOREIGN KEY([producto])
REFERENCES [dbo].[tbl_Productos] ([PK_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Productos_Proveedores_Relations_tbl_Productos]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Productos_Proveedores_Relations]'))
ALTER TABLE [dbo].[tbl_Productos_Proveedores_Relations] CHECK CONSTRAINT [FK_tbl_Productos_Proveedores_Relations_tbl_Productos]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Productos_Proveedores_Relations_tbl_Proveedores]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Productos_Proveedores_Relations]'))
ALTER TABLE [dbo].[tbl_Productos_Proveedores_Relations]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Productos_Proveedores_Relations_tbl_Proveedores] FOREIGN KEY([proveedor])
REFERENCES [dbo].[tbl_Proveedores] ([PK_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Productos_Proveedores_Relations_tbl_Proveedores]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Productos_Proveedores_Relations]'))
ALTER TABLE [dbo].[tbl_Productos_Proveedores_Relations] CHECK CONSTRAINT [FK_tbl_Productos_Proveedores_Relations_tbl_Proveedores]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Proveedor_tbl_Persona]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Proveedores]'))
ALTER TABLE [dbo].[tbl_Proveedores]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Proveedor_tbl_Persona] FOREIGN KEY([persona_juridica])
REFERENCES [dbo].[tbl_Personas] ([PK_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Proveedor_tbl_Persona]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Proveedores]'))
ALTER TABLE [dbo].[tbl_Proveedores] CHECK CONSTRAINT [FK_tbl_Proveedor_tbl_Persona]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Proveedor_tbl_PersonaContacto]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Proveedores]'))
ALTER TABLE [dbo].[tbl_Proveedores]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Proveedor_tbl_PersonaContacto] FOREIGN KEY([persona_contacto])
REFERENCES [dbo].[tbl_Personas] ([PK_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Proveedor_tbl_PersonaContacto]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Proveedores]'))
ALTER TABLE [dbo].[tbl_Proveedores] CHECK CONSTRAINT [FK_tbl_Proveedor_tbl_PersonaContacto]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Submodulos_tbl_Modulos]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Submodulos]'))
ALTER TABLE [dbo].[tbl_Submodulos]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Submodulos_tbl_Modulos] FOREIGN KEY([modulo])
REFERENCES [dbo].[tbl_Modulos] ([PK_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Submodulos_tbl_Modulos]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Submodulos]'))
ALTER TABLE [dbo].[tbl_Submodulos] CHECK CONSTRAINT [FK_tbl_Submodulos_tbl_Modulos]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Usuario_Permisos_relations_tbl_Roles]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Usuario_Permisos_relations]'))
ALTER TABLE [dbo].[tbl_Usuario_Permisos_relations]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Usuario_Permisos_relations_tbl_Roles] FOREIGN KEY([rol])
REFERENCES [dbo].[tbl_Roles] ([PK_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Usuario_Permisos_relations_tbl_Roles]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Usuario_Permisos_relations]'))
ALTER TABLE [dbo].[tbl_Usuario_Permisos_relations] CHECK CONSTRAINT [FK_tbl_Usuario_Permisos_relations_tbl_Roles]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Usuario_Permisos_relations_tbl_Submodulos]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Usuario_Permisos_relations]'))
ALTER TABLE [dbo].[tbl_Usuario_Permisos_relations]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Usuario_Permisos_relations_tbl_Submodulos] FOREIGN KEY([submodulo])
REFERENCES [dbo].[tbl_Submodulos] ([PK_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Usuario_Permisos_relations_tbl_Submodulos]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Usuario_Permisos_relations]'))
ALTER TABLE [dbo].[tbl_Usuario_Permisos_relations] CHECK CONSTRAINT [FK_tbl_Usuario_Permisos_relations_tbl_Submodulos]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Usuario_Permisos_relations_tbl_Tipo_permiso]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Usuario_Permisos_relations]'))
ALTER TABLE [dbo].[tbl_Usuario_Permisos_relations]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Usuario_Permisos_relations_tbl_Tipo_permiso] FOREIGN KEY([tipo])
REFERENCES [dbo].[tbl_Tipos_Permiso] ([PK_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Usuario_Permisos_relations_tbl_Tipo_permiso]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Usuario_Permisos_relations]'))
ALTER TABLE [dbo].[tbl_Usuario_Permisos_relations] CHECK CONSTRAINT [FK_tbl_Usuario_Permisos_relations_tbl_Tipo_permiso]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Usuarios_tbl_Colaboradores]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Usuarios]'))
ALTER TABLE [dbo].[tbl_Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Usuarios_tbl_Colaboradores] FOREIGN KEY([colaborador])
REFERENCES [dbo].[tbl_Colaboradores] ([PK_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Usuarios_tbl_Colaboradores]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Usuarios]'))
ALTER TABLE [dbo].[tbl_Usuarios] CHECK CONSTRAINT [FK_tbl_Usuarios_tbl_Colaboradores]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Usuarios_tbl_Roles]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Usuarios]'))
ALTER TABLE [dbo].[tbl_Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Usuarios_tbl_Roles] FOREIGN KEY([rol])
REFERENCES [dbo].[tbl_Roles] ([PK_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Usuarios_tbl_Roles]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Usuarios]'))
ALTER TABLE [dbo].[tbl_Usuarios] CHECK CONSTRAINT [FK_tbl_Usuarios_tbl_Roles]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Ventas_tbl_Colaboradores]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Ventas]'))
ALTER TABLE [dbo].[tbl_Ventas]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Ventas_tbl_Colaboradores] FOREIGN KEY([vendedor])
REFERENCES [dbo].[tbl_Colaboradores] ([PK_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Ventas_tbl_Colaboradores]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Ventas]'))
ALTER TABLE [dbo].[tbl_Ventas] CHECK CONSTRAINT [FK_tbl_Ventas_tbl_Colaboradores]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Ventas_tbl_Personas]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Ventas]'))
ALTER TABLE [dbo].[tbl_Ventas]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Ventas_tbl_Personas] FOREIGN KEY([cliente])
REFERENCES [dbo].[tbl_Personas] ([PK_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Ventas_tbl_Personas]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Ventas]'))
ALTER TABLE [dbo].[tbl_Ventas] CHECK CONSTRAINT [FK_tbl_Ventas_tbl_Personas]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Ventas_tbl_Tipo_Pago]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Ventas]'))
ALTER TABLE [dbo].[tbl_Ventas]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Ventas_tbl_Tipo_Pago] FOREIGN KEY([tipo_pago])
REFERENCES [dbo].[tbl_Tipo_Pago] ([PK_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Ventas_tbl_Tipo_Pago]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Ventas]'))
ALTER TABLE [dbo].[tbl_Ventas] CHECK CONSTRAINT [FK_tbl_Ventas_tbl_Tipo_Pago]
GO
USE [master]
GO
ALTER DATABASE [db_BestMart] SET  READ_WRITE 
GO
