import {inject, lifeCycleObserver, LifeCycleObserver} from '@loopback/core';
import {juggler} from '@loopback/repository';

const config = {
  name: 'Cole',
  connector: 'mssql',
  url: 'mssql://ingeniero:ingeniero@DESKTOP-TRONBLH/Colegio',
  host: 'DESKTOP-TRONBLH',
  port: 1433,
  user: 'ingeniero',
  password: 'ingeniero',
  database: 'Colegio'
};

// Observe application's life cycle to disconnect the datasource when
// application is stopped. This allows the application to be shut down
// gracefully. The `stop()` method is inherited from `juggler.DataSource`.
// Learn more at https://loopback.io/doc/en/lb4/Life-cycle.html
@lifeCycleObserver('datasource')
export class ColeDataSource extends juggler.DataSource
  implements LifeCycleObserver {
  static dataSourceName = 'Cole';
  static readonly defaultConfig = config;

  constructor(
    @inject('datasources.config.Cole', {optional: true})
    dsConfig: object = config,
  ) {
    super(dsConfig);
  }
}
