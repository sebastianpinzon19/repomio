USE [DB_Fundacion]
GO
INSERT [dbo].[Rol] ([IdRol], [NombreRol]) VALUES (1, N'Administrador')
INSERT [dbo].[Rol] ([IdRol], [NombreRol]) VALUES (2, N'Instructor')
GO
INSERT [dbo].[Administrador] ([IdRol], [IdAdministrador]) VALUES (1, 1)
INSERT [dbo].[Administrador] ([IdRol], [IdAdministrador]) VALUES (1, 2)
GO
INSERT [dbo].[fundacion] ([IdFundacion], [NombreFundacion]) VALUES (1, N'FUSDEC')
GO
INSERT [dbo].[colegio] ([IdColegio], [NombreCol], [CodigoCol], [CalleCol], [ZonaDistritoCol], [NumeroCol], [CiudadCol], [CorreoElectronicoCol], [fundacion_IdFundacion]) VALUES (1, N'Colegio Nacional', N'CN001', N'Calle 1', N'Zona 1', N'10', N'Bogotá', N'colegionacional@gmail.com', 1)
INSERT [dbo].[colegio] ([IdColegio], [NombreCol], [CodigoCol], [CalleCol], [ZonaDistritoCol], [NumeroCol], [CiudadCol], [CorreoElectronicoCol], [fundacion_IdFundacion]) VALUES (2, N'Colegio Republica', N'CR002', N'Calle 2', N'Zona 2', N'20', N'Medellín', N'colegiorepublica@gmail.com', 1)
INSERT [dbo].[colegio] ([IdColegio], [NombreCol], [CodigoCol], [CalleCol], [ZonaDistritoCol], [NumeroCol], [CiudadCol], [CorreoElectronicoCol], [fundacion_IdFundacion]) VALUES (3, N'Colegio Libertador', N'CL003', N'Calle 3', N'Zona 3', N'30', N'Cali', N'colegiodelibertador@gmail.com', 1)
INSERT [dbo].[colegio] ([IdColegio], [NombreCol], [CodigoCol], [CalleCol], [ZonaDistritoCol], [NumeroCol], [CiudadCol], [CorreoElectronicoCol], [fundacion_IdFundacion]) VALUES (4, N'Colegio Santander', N'CS004', N'Calle 4', N'Zona 4', N'40', N'Barranquilla', N'colegiosantander@gmail.com', 1)
INSERT [dbo].[colegio] ([IdColegio], [NombreCol], [CodigoCol], [CalleCol], [ZonaDistritoCol], [NumeroCol], [CiudadCol], [CorreoElectronicoCol], [fundacion_IdFundacion]) VALUES (5, N'Colegio Simón Bolívar', N'CSB005', N'Calle 5', N'Zona 5', N'50', N'Cartagena', N'colegiosimonbolivar@gmail.com', 1)
GO
INSERT [dbo].[Administrador_Colegio] ([Administrador_IdRol], [colegio_IdColegio], [Administrador_IdAdministrador]) VALUES (1, 1, 1)
INSERT [dbo].[Administrador_Colegio] ([Administrador_IdRol], [colegio_IdColegio], [Administrador_IdAdministrador]) VALUES (1, 2, 1)
INSERT [dbo].[Administrador_Colegio] ([Administrador_IdRol], [colegio_IdColegio], [Administrador_IdAdministrador]) VALUES (1, 3, 2)
INSERT [dbo].[Administrador_Colegio] ([Administrador_IdRol], [colegio_IdColegio], [Administrador_IdAdministrador]) VALUES (1, 4, 2)
INSERT [dbo].[Administrador_Colegio] ([Administrador_IdRol], [colegio_IdColegio], [Administrador_IdAdministrador]) VALUES (1, 5, 1)
GO
INSERT [dbo].[Instructor] ([IdRol], [IdInstructor]) VALUES (2, 3)
INSERT [dbo].[Instructor] ([IdRol], [IdInstructor]) VALUES (2, 4)
INSERT [dbo].[Instructor] ([IdRol], [IdInstructor]) VALUES (2, 5)
GO
INSERT [dbo].[Reporte] ([IdReporte], [NombreReporte], [Instructor_IdInstructor]) VALUES (1, N'Reporte Calificación 1', 3)
INSERT [dbo].[Reporte] ([IdReporte], [NombreReporte], [Instructor_IdInstructor]) VALUES (2, N'Reporte Calificación 2', 4)
INSERT [dbo].[Reporte] ([IdReporte], [NombreReporte], [Instructor_IdInstructor]) VALUES (3, N'Reporte Calificación 3', 5)
INSERT [dbo].[Reporte] ([IdReporte], [NombreReporte], [Instructor_IdInstructor]) VALUES (4, N'Reporte Inasistencia 1', 3)
INSERT [dbo].[Reporte] ([IdReporte], [NombreReporte], [Instructor_IdInstructor]) VALUES (5, N'Reporte Inasistencia 2', 4)
INSERT [dbo].[Reporte] ([IdReporte], [NombreReporte], [Instructor_IdInstructor]) VALUES (6, N'Reporte Inasistencia 3', 5)
GO
INSERT [dbo].[Inasistencia] ([IdReporte], [IdInasistencia], [NombrePersona], [ApellidoPersona], [NombreColegio]) VALUES (4, 1, N'Juan', N'Pérez', N'Colegio Nacional')
INSERT [dbo].[Inasistencia] ([IdReporte], [IdInasistencia], [NombrePersona], [ApellidoPersona], [NombreColegio]) VALUES (5, 2, N'María', N'Gómez', N'Colegio Republica')
INSERT [dbo].[Inasistencia] ([IdReporte], [IdInasistencia], [NombrePersona], [ApellidoPersona], [NombreColegio]) VALUES (6, 3, N'Carlos', N'Rodríguez', N'Colegio Libertador')
GO
INSERT [dbo].[AsignacionReporteIn] ([Inasistencia_IdInasistencia], [colegio_IdColegio]) VALUES (1, 1)
INSERT [dbo].[AsignacionReporteIn] ([Inasistencia_IdInasistencia], [colegio_IdColegio]) VALUES (2, 2)
INSERT [dbo].[AsignacionReporteIn] ([Inasistencia_IdInasistencia], [colegio_IdColegio]) VALUES (3, 3)
GO
INSERT [dbo].[SuperAdministrador] ([IdSA], [NombreUsuario], [Contraseña]) VALUES (1, N'superadmin', N'contraseña1')
GO
INSERT [dbo].[Usuario] ([IdUsuario], [NombreUsuario], [contraseñaUsuario], [UltimaFechaDeAccesoU], [FechaDeCreacionU], [EstadoUsuario], [SuperAdministrador_IdSA]) VALUES (1, N'admin1', N'contraseña1', CAST(N'2023-01-01' AS Date), CAST(N'2022-01-01' AS Date), 1, 1)
INSERT [dbo].[Usuario] ([IdUsuario], [NombreUsuario], [contraseñaUsuario], [UltimaFechaDeAccesoU], [FechaDeCreacionU], [EstadoUsuario], [SuperAdministrador_IdSA]) VALUES (2, N'admin2', N'contraseña2', CAST(N'2023-01-01' AS Date), CAST(N'2022-01-01' AS Date), 1, 1)
INSERT [dbo].[Usuario] ([IdUsuario], [NombreUsuario], [contraseñaUsuario], [UltimaFechaDeAccesoU], [FechaDeCreacionU], [EstadoUsuario], [SuperAdministrador_IdSA]) VALUES (3, N'instructor1', N'contraseña3', CAST(N'2023-01-01' AS Date), CAST(N'2022-01-01' AS Date), 1, 1)
INSERT [dbo].[Usuario] ([IdUsuario], [NombreUsuario], [contraseñaUsuario], [UltimaFechaDeAccesoU], [FechaDeCreacionU], [EstadoUsuario], [SuperAdministrador_IdSA]) VALUES (4, N'instructor2', N'contraseña4', CAST(N'2023-01-01' AS Date), CAST(N'2022-01-01' AS Date), 1, 1)
INSERT [dbo].[Usuario] ([IdUsuario], [NombreUsuario], [contraseñaUsuario], [UltimaFechaDeAccesoU], [FechaDeCreacionU], [EstadoUsuario], [SuperAdministrador_IdSA]) VALUES (5, N'instructor3', N'contraseña5', CAST(N'2023-01-01' AS Date), CAST(N'2022-01-01' AS Date), 1, 1)
GO
INSERT [dbo].[AsignacionRol] ([Usuario_IdUsuario], [Rol_IdRol]) VALUES (1, 1)
INSERT [dbo].[AsignacionRol] ([Usuario_IdUsuario], [Rol_IdRol]) VALUES (2, 1)
INSERT [dbo].[AsignacionRol] ([Usuario_IdUsuario], [Rol_IdRol]) VALUES (3, 2)
INSERT [dbo].[AsignacionRol] ([Usuario_IdUsuario], [Rol_IdRol]) VALUES (4, 2)
INSERT [dbo].[AsignacionRol] ([Usuario_IdUsuario], [Rol_IdRol]) VALUES (5, 2)
GO
INSERT [dbo].[Calificacion] ([IdReporte], [IdCalificacion], [NotaCalificacion], [Administrador_IdAdministrador]) VALUES (1, 1, 1, 1)
INSERT [dbo].[Calificacion] ([IdReporte], [IdCalificacion], [NotaCalificacion], [Administrador_IdAdministrador]) VALUES (2, 2, 0, 1)
INSERT [dbo].[Calificacion] ([IdReporte], [IdCalificacion], [NotaCalificacion], [Administrador_IdAdministrador]) VALUES (3, 3, 1, 2)
GO
INSERT [dbo].[Comando] ([IdComando], [Estado], [NombreComando], [UbicacionComando], [fundacion_IdFundacion]) VALUES (1, 1, N'Comando 3', N'Bogota', 1)
GO
INSERT [dbo].[brigada] ([IdBrigada], [NombreBrigada], [Comando_IdComando], [UbicacionBrigada], [EstadoBrigada]) VALUES (1, N'Brigada Perdomo', 1, N'Bogota', 1)
INSERT [dbo].[brigada] ([IdBrigada], [NombreBrigada], [Comando_IdComando], [UbicacionBrigada], [EstadoBrigada]) VALUES (2, N'Brigada Ensueño', 1, N'Bogota', 1)
INSERT [dbo].[brigada] ([IdBrigada], [NombreBrigada], [Comando_IdComando], [UbicacionBrigada], [EstadoBrigada]) VALUES (3, N'Brigada Paraíso', 1, N'Bogota', 1)
GO
INSERT [dbo].[Unidad] ([IdUnidad], [NombreUnidad], [EstadoUnidad], [brigada_IdBrigada], [UbicacionUnidad]) VALUES (1, N'Unidad 1', 1, 1, N'Bogota')
INSERT [dbo].[Unidad] ([IdUnidad], [NombreUnidad], [EstadoUnidad], [brigada_IdBrigada], [UbicacionUnidad]) VALUES (2, N'Unidad 2', 1, 1, N'Bogota')
INSERT [dbo].[Unidad] ([IdUnidad], [NombreUnidad], [EstadoUnidad], [brigada_IdBrigada], [UbicacionUnidad]) VALUES (3, N'Unidad 3', 1, 1, N'Bogota')
INSERT [dbo].[Unidad] ([IdUnidad], [NombreUnidad], [EstadoUnidad], [brigada_IdBrigada], [UbicacionUnidad]) VALUES (4, N'Unidad 4', 1, 1, N'Bogota')
INSERT [dbo].[Unidad] ([IdUnidad], [NombreUnidad], [EstadoUnidad], [brigada_IdBrigada], [UbicacionUnidad]) VALUES (5, N'Unidad 5', 1, 1, N'Bogota')
GO
INSERT [dbo].[persona] ([IdPersona], [nombrePer], [apellidosPer], [TipoDocumentoPer], [NumeroDocumentoPer], [CorreoElectronico], [GeneroPer], [FechaNacimientoPer], [colegio_IdColegio], [Unidad_IdUnidad]) VALUES (1, N'Juan', N'Pérez', N'CC', N'1234567890', N'juanperez@gmail.com', N'M', CAST(N'2000-01-01' AS Date), 1, 1)
INSERT [dbo].[persona] ([IdPersona], [nombrePer], [apellidosPer], [TipoDocumentoPer], [NumeroDocumentoPer], [CorreoElectronico], [GeneroPer], [FechaNacimientoPer], [colegio_IdColegio], [Unidad_IdUnidad]) VALUES (2, N'María', N'Gómez', N'CC', N'2345678901', N'mariagomez@gmail.com', N'F', CAST(N'1999-02-01' AS Date), 2, 1)
INSERT [dbo].[persona] ([IdPersona], [nombrePer], [apellidosPer], [TipoDocumentoPer], [NumeroDocumentoPer], [CorreoElectronico], [GeneroPer], [FechaNacimientoPer], [colegio_IdColegio], [Unidad_IdUnidad]) VALUES (3, N'Carlos', N'Rodríguez', N'CC', N'3456789012', N'carlosrodriguez@gmail.com', N'M', CAST(N'1998-03-01' AS Date), 3, 1)
INSERT [dbo].[persona] ([IdPersona], [nombrePer], [apellidosPer], [TipoDocumentoPer], [NumeroDocumentoPer], [CorreoElectronico], [GeneroPer], [FechaNacimientoPer], [colegio_IdColegio], [Unidad_IdUnidad]) VALUES (4, N'Ana', N'López', N'CC', N'4567890123', N'analopez@gmail.com', N'F', CAST(N'1997-04-01' AS Date), 4, 1)
INSERT [dbo].[persona] ([IdPersona], [nombrePer], [apellidosPer], [TipoDocumentoPer], [NumeroDocumentoPer], [CorreoElectronico], [GeneroPer], [FechaNacimientoPer], [colegio_IdColegio], [Unidad_IdUnidad]) VALUES (5, N'Luis', N'Martínez', N'CC', N'5678901234', N'luismartinez@gmail.com', N'M', CAST(N'1996-05-01' AS Date), 5, 1)
GO
INSERT [dbo].[Curso] ([IdCurso], [NombreCurso], [DescripcionCurso], [IntensidadHorariaCurso], [fundacion_IdFundacion]) VALUES (1, N'Servicio Social', N'Curso de Servicio Social', N'120', 1)
GO
INSERT [dbo].[Edicion] ([IdEdicion], [FechaInicioEdicion], [FechaFinEdicion], [Curso_IdCurso]) VALUES (1, CAST(N'2023-01-01' AS Date), CAST(N'2023-06-01' AS Date), 1)
INSERT [dbo].[Edicion] ([IdEdicion], [FechaInicioEdicion], [FechaFinEdicion], [Curso_IdCurso]) VALUES (2, CAST(N'2023-07-01' AS Date), CAST(N'2023-12-01' AS Date), 1)
GO
INSERT [dbo].[Registro] ([IdRegistro], [FechaRegistro], [persona_IdPersona], [Edicion_IdEdicion], [Administrador_IdAdministrador]) VALUES (1, CAST(N'2023-01-10' AS Date), 1, 1, 1)
INSERT [dbo].[Registro] ([IdRegistro], [FechaRegistro], [persona_IdPersona], [Edicion_IdEdicion], [Administrador_IdAdministrador]) VALUES (2, CAST(N'2023-01-15' AS Date), 2, 1, 2)
INSERT [dbo].[Registro] ([IdRegistro], [FechaRegistro], [persona_IdPersona], [Edicion_IdEdicion], [Administrador_IdAdministrador]) VALUES (3, CAST(N'2023-01-20' AS Date), 3, 1, 1)
INSERT [dbo].[Registro] ([IdRegistro], [FechaRegistro], [persona_IdPersona], [Edicion_IdEdicion], [Administrador_IdAdministrador]) VALUES (4, CAST(N'2023-07-10' AS Date), 4, 2, 2)
INSERT [dbo].[Registro] ([IdRegistro], [FechaRegistro], [persona_IdPersona], [Edicion_IdEdicion], [Administrador_IdAdministrador]) VALUES (5, CAST(N'2023-07-15' AS Date), 5, 2, 1)
GO
INSERT [dbo].[AsignarCalificacion] ([Calificacion_IdCalificacion], [Registro_IdRegistro]) VALUES (1, 1)
INSERT [dbo].[AsignarCalificacion] ([Calificacion_IdCalificacion], [Registro_IdRegistro]) VALUES (2, 2)
INSERT [dbo].[AsignarCalificacion] ([Calificacion_IdCalificacion], [Registro_IdRegistro]) VALUES (3, 3)
GO
INSERT [dbo].[Certificado] ([IdCertificado], [Nombres], [Apellidos], [CodigoVerificador], [QuienExpidio], [NumeroDocumentoUsuario], [persona_IdPersona], [Administrador_IdAdministrador], [Curso_IdCurso]) VALUES (1, N'Juan', N'Pérez', N'CV001', N'admin1', N'1234567890', 1, 1, 1)
INSERT [dbo].[Certificado] ([IdCertificado], [Nombres], [Apellidos], [CodigoVerificador], [QuienExpidio], [NumeroDocumentoUsuario], [persona_IdPersona], [Administrador_IdAdministrador], [Curso_IdCurso]) VALUES (2, N'María', N'Gómez', N'CV002', N'admin2', N'2345678901', 2, 2, 1)
INSERT [dbo].[Certificado] ([IdCertificado], [Nombres], [Apellidos], [CodigoVerificador], [QuienExpidio], [NumeroDocumentoUsuario], [persona_IdPersona], [Administrador_IdAdministrador], [Curso_IdCurso]) VALUES (3, N'Carlos', N'Rodríguez', N'CV003', N'admin1', N'3456789012', 3, 1, 1)
GO
INSERT [dbo].[Auditoria] ([IdAuditoria], [FechaAuditoria], [NombreQuienExpidio], [Certificado_IdCertificado]) VALUES (1, CAST(N'2023-01-01' AS Date), N'Carlos Lopez', 1)
INSERT [dbo].[Auditoria] ([IdAuditoria], [FechaAuditoria], [NombreQuienExpidio], [Certificado_IdCertificado]) VALUES (2, CAST(N'2023-01-02' AS Date), N'Juan Prez', 2)
INSERT [dbo].[Auditoria] ([IdAuditoria], [FechaAuditoria], [NombreQuienExpidio], [Certificado_IdCertificado]) VALUES (3, CAST(N'2023-01-03' AS Date), N'Carlos Lopez', 3)
GO
INSERT [dbo].[Curso_Administrador] ([Curso_IdCurso], [Administrador_IdRol], [Administrador_IdAdministrador]) VALUES (1, 1, 1)
GO
INSERT [dbo].[Funcion] ([IdFunciones], [NombreFuncion], [DescripcionFuncion], [SuperAdministrador_IdSA]) VALUES (1, N'Función 1', N'Administrar usuarios', 1)
INSERT [dbo].[Funcion] ([IdFunciones], [NombreFuncion], [DescripcionFuncion], [SuperAdministrador_IdSA]) VALUES (2, N'Función 2', N'Administrar cursos', 1)
INSERT [dbo].[Funcion] ([IdFunciones], [NombreFuncion], [DescripcionFuncion], [SuperAdministrador_IdSA]) VALUES (3, N'Función 3', N'Gestionar reportes', 1)
INSERT [dbo].[Funcion] ([IdFunciones], [NombreFuncion], [DescripcionFuncion], [SuperAdministrador_IdSA]) VALUES (4, N'Función 4', N'Administrar Horarios', 1)
INSERT [dbo].[Funcion] ([IdFunciones], [NombreFuncion], [DescripcionFuncion], [SuperAdministrador_IdSA]) VALUES (5, N'Función 5', N'Generar Reportes', 1)
GO
INSERT [dbo].[Funciones_Rol] ([Funcion_IdFunciones], [Rol_IdRol]) VALUES (1, 1)
INSERT [dbo].[Funciones_Rol] ([Funcion_IdFunciones], [Rol_IdRol]) VALUES (2, 1)
INSERT [dbo].[Funciones_Rol] ([Funcion_IdFunciones], [Rol_IdRol]) VALUES (3, 2)
INSERT [dbo].[Funciones_Rol] ([Funcion_IdFunciones], [Rol_IdRol]) VALUES (4, 2)
INSERT [dbo].[Funciones_Rol] ([Funcion_IdFunciones], [Rol_IdRol]) VALUES (5, 2)
GO
INSERT [dbo].[perfil] ([IdPerfil], [Nombres], [Apellidos], [TipoDocumento], [NumeroDocumentoUsuario], [Usuario_IdUsuario]) VALUES (1, N'Carlos', N'Lopez', N'CC', N'1234567890', 1)
INSERT [dbo].[perfil] ([IdPerfil], [Nombres], [Apellidos], [TipoDocumento], [NumeroDocumentoUsuario], [Usuario_IdUsuario]) VALUES (2, N'Juan', N'Perez', N'CC', N'2345678901', 2)
INSERT [dbo].[perfil] ([IdPerfil], [Nombres], [Apellidos], [TipoDocumento], [NumeroDocumentoUsuario], [Usuario_IdUsuario]) VALUES (3, N'Ana', N'Beltran', N'CC', N'3456789012', 3)
INSERT [dbo].[perfil] ([IdPerfil], [Nombres], [Apellidos], [TipoDocumento], [NumeroDocumentoUsuario], [Usuario_IdUsuario]) VALUES (4, N'Sergio', N'Ramos', N'CC', N'4567890123', 4)
INSERT [dbo].[perfil] ([IdPerfil], [Nombres], [Apellidos], [TipoDocumento], [NumeroDocumentoUsuario], [Usuario_IdUsuario]) VALUES (5, N'Juan', N'Valdez', N'CC', N'5678901234', 5)
GO
INSERT [dbo].[Persona_Calificacion] ([persona_IdPersona], [Calificacion_IdReporte], [Calificacion_IdCalificacion]) VALUES (1, 1, 1)
INSERT [dbo].[Persona_Calificacion] ([persona_IdPersona], [Calificacion_IdReporte], [Calificacion_IdCalificacion]) VALUES (2, 2, 2)
INSERT [dbo].[Persona_Calificacion] ([persona_IdPersona], [Calificacion_IdReporte], [Calificacion_IdCalificacion]) VALUES (3, 3, 3)
GO
INSERT [dbo].[Horario] ([IdHorario], [FechaInicioHorario], [FechaFinHorario]) VALUES (1, CAST(N'2023-01-01T08:00:00.000' AS DateTime), CAST(N'2023-01-01T10:00:00.000' AS DateTime))
INSERT [dbo].[Horario] ([IdHorario], [FechaInicioHorario], [FechaFinHorario]) VALUES (2, CAST(N'2023-01-01T10:00:00.000' AS DateTime), CAST(N'2023-01-01T12:00:00.000' AS DateTime))
GO
INSERT [dbo].[Persona_Horario] ([persona_IdPersona], [Horario_IdHorario], [Fecha]) VALUES (1, 1, CAST(N'2023-01-01' AS Date))
INSERT [dbo].[Persona_Horario] ([persona_IdPersona], [Horario_IdHorario], [Fecha]) VALUES (2, 1, CAST(N'2023-01-01' AS Date))
INSERT [dbo].[Persona_Horario] ([persona_IdPersona], [Horario_IdHorario], [Fecha]) VALUES (3, 2, CAST(N'2023-01-01' AS Date))
INSERT [dbo].[Persona_Horario] ([persona_IdPersona], [Horario_IdHorario], [Fecha]) VALUES (4, 2, CAST(N'2023-01-01' AS Date))
INSERT [dbo].[Persona_Horario] ([persona_IdPersona], [Horario_IdHorario], [Fecha]) VALUES (5, 2, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Persona_Inasistencia] ([persona_IdPersona], [Inasistencia_IdReporte], [Inasistencia_IdInasistencia]) VALUES (1, 4, 1)
INSERT [dbo].[Persona_Inasistencia] ([persona_IdPersona], [Inasistencia_IdReporte], [Inasistencia_IdInasistencia]) VALUES (2, 5, 2)
INSERT [dbo].[Persona_Inasistencia] ([persona_IdPersona], [Inasistencia_IdReporte], [Inasistencia_IdInasistencia]) VALUES (3, 6, 3)
GO
