import {DefaultCrudRepository} from '@loopback/repository';
import {Materias, MateriasRelations} from '../models';
import {ColeDataSource} from '../datasources';
import {inject} from '@loopback/core';

export class MateriasRepository extends DefaultCrudRepository<
  Materias,
  typeof Materias.prototype.idMaterias,
  MateriasRelations
> {
  constructor(
    @inject('datasources.Cole') dataSource: ColeDataSource,
  ) {
    super(Materias, dataSource);
  }
}
