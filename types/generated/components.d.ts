import type { Schema, Attribute } from '@strapi/strapi';

export interface CoreZakaz extends Schema.Component {
  collectionName: 'components_core_zakazs';
  info: {
    displayName: 'Zakaz';
    description: '';
  };
  attributes: {
    Name: Attribute.String;
    cost: Attribute.Decimal;
  };
}

declare module '@strapi/types' {
  export module Shared {
    export interface Components {
      'core.zakaz': CoreZakaz;
    }
  }
}
