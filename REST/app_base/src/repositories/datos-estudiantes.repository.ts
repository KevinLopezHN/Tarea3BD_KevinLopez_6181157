import {DefaultCrudRepository} from '@loopback/repository';
import {DatosEstudiantes, DatosEstudiantesRelations} from '../models';
import {ColeDataSource} from '../datasources';
import {inject} from '@loopback/core';

export class DatosEstudiantesRepository extends DefaultCrudRepository<
  DatosEstudiantes,
  typeof DatosEstudiantes.prototype.idEstudiante,
  DatosEstudiantesRelations
> {
  constructor(
    @inject('datasources.Cole') dataSource: ColeDataSource,
  ) {
    super(DatosEstudiantes, dataSource);
  }
}
