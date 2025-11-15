@cds.external
@m.IsDefaultEntityContainer: 'true'
service PersonalInformation {
  @cds.external
  @cds.persistence.skip
  @sap.creatable : 'false'
  @sap.deletable : 'false'
  @sap.label     : 'Primary Emergency Contact'
  @sap.updatable : 'false'
  @sap.upsertable: 'true'
  entity PerEmergencyContacts {
    key name                 : String(256)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Name'
                               @sap.required      : 'true'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
    key personIdExternal     : String(100)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Person ID External'
                               @sap.required      : 'true'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
    key relationship         : String(50)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Relationship'
                               @sap.picklist      : 'relation'
                               @sap.required      : 'true'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        addressAddress1      : String(256)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'false'
                               @sap.label         : 'addressAddress1'
                               @sap.required      : 'false'
                               @sap.sortable      : 'false'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'false';
        addressAddress2      : String(256)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'false'
                               @sap.label         : 'addressAddress2'
                               @sap.required      : 'false'
                               @sap.sortable      : 'false'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'false';
        addressAddress3      : String(256)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'false'
                               @sap.label         : 'addressAddress3'
                               @sap.required      : 'false'
                               @sap.sortable      : 'false'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'false';
        addressCity          : String(256)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'false'
                               @sap.label         : 'addressCity'
                               @sap.required      : 'false'
                               @sap.sortable      : 'false'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'false';
        addressCountry       : String(256)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'false'
                               @sap.label         : 'addressCountry'
                               @sap.required      : 'true'
                               @sap.sortable      : 'false'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'false';
        addressCounty        : String(256)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'false'
                               @sap.label         : 'addressCounty'
                               @sap.required      : 'false'
                               @sap.sortable      : 'false'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'false';
        addressProvince      : String(256)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'false'
                               @sap.label         : 'addressProvince'
                               @sap.required      : 'false'
                               @sap.sortable      : 'false'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'false';
        addressState         : String(256)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'false'
                               @sap.label         : 'addressState'
                               @sap.required      : 'false'
                               @sap.sortable      : 'false'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'false';
        addressZipCode       : String(256)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'false'
                               @sap.label         : 'addressZipCode'
                               @sap.required      : 'false'
                               @sap.sortable      : 'false'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'false';
        createdBy            : String(100)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Created By'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        createdDateTime      : DateTime
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Created Date Time'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        createdOn            : Date
                               @sap.creatable     : 'false'
                               @sap.display.format: 'Date'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Created On'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        email                : String(100)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'false'
                               @sap.label         : 'eMail'
                               @sap.required      : 'false'
                               @sap.sortable      : 'false'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        isAddSameAsEmployee  : Boolean
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'false'
                               @sap.label         : 'Copy Address from Employee'
                               @sap.required      : 'false'
                               @sap.sortable      : 'false'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'false';
        lastModifiedBy       : String(100)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Last Modified By'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        lastModifiedDateTime : DateTime
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Last Modified Date Time'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        lastModifiedOn       : Date
                               @sap.creatable     : 'false'
                               @sap.display.format: 'Date'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Last Modified On'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        operation            : String
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'false'
                               @sap.label         : 'operation'
                               @sap.required      : 'false'
                               @sap.sortable      : 'false'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'false';
        phone                : String(256)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Phone'
                               @sap.required      : 'true'
                               @sap.sortable      : 'false'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        primaryFlag          : String(1)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'primaryFlag'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        secondPhone          : String(256)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Alt Phone'
                               @sap.required      : 'false'
                               @sap.sortable      : 'false'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        addressNavDEFLT      : Association to one HrisEmergencyContactAddressDEFLT
                               @sap.filterable    : 'true'
                               @sap.label         : 'addressNavDEFLT'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        personNav            : Association to one PerPerson
                               @sap.filterable    : 'true'
                               @sap.label         : 'personNav'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
  }

  @cds.external
  @cds.persistence.skip
  @sap.creatable : 'false'
  @sap.deletable : 'false'
  @sap.label     : 'Phone Information'
  @sap.updatable : 'false'
  @sap.upsertable: 'true'
  entity PerPhone {
    key personIdExternal     : String(100)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Person ID External'
                               @sap.required      : 'true'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
    key phoneType            : String(100)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Phone Type'
                               @sap.picklist      : 'ecPhoneType'
                               @sap.required      : 'true'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        areaCode             : String(32)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Area Code'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        countryCode          : String(32)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Country Code'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        createdBy            : String(100)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Created By'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        createdDateTime      : DateTime
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Created Date Time'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        createdOn            : Date
                               @sap.creatable     : 'false'
                               @sap.display.format: 'Date'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Created On'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        extension            : String(32)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'false'
                               @sap.label         : 'Extension'
                               @sap.required      : 'false'
                               @sap.sortable      : 'false'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        includeAllRecords    : Boolean
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Include All Records'
                               @sap.required      : 'false'
                               @sap.sortable      : 'false'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'false';
        isPrimary            : Boolean
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Is Primary'
                               @sap.required      : 'true'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        lastModifiedBy       : String(100)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Last Modified By'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        lastModifiedDateTime : DateTime
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Last Modified Date Time'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        lastModifiedOn       : Date
                               @sap.creatable     : 'false'
                               @sap.display.format: 'Date'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Last Modified On'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        operation            : String
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'false'
                               @sap.label         : 'operation'
                               @sap.required      : 'false'
                               @sap.sortable      : 'false'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'false';
        phoneNumber          : String(100)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Phone Number'
                               @sap.required      : 'true'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        personNav            : Association to one PerPerson
                               @sap.filterable    : 'true'
                               @sap.label         : 'personNav'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
  }

  @cds.external
  @cds.persistence.skip
  @sap.creatable : 'false'
  @sap.deletable : 'false'
  @sap.label     : 'Biographical Information'
  @sap.updatable : 'false'
  @sap.upsertable: 'false'
  entity PersonKey {
    key personIdExternal : String(32)
        @sap.creatable : 'false'
        @sap.filterable: 'true'
        @sap.label     : 'Person Id'
        @sap.required  : 'true'
        @sap.sortable  : 'true'
        @sap.updatable : 'false'
        @sap.upsertable: 'false'
        @sap.visible   : 'true';
        perPersonUuid    : String(32)
        @sap.creatable : 'false'
        @sap.filterable: 'true'
        @sap.label     : 'Person UUID'
        @sap.required  : 'false'
        @sap.sortable  : 'true'
        @sap.updatable : 'false'
        @sap.upsertable: 'false'
        @sap.visible   : 'true';
        personId         : Integer64
        @sap.creatable : 'false'
        @sap.filterable: 'true'
        @sap.label     : 'Person ID Internal'
        @sap.required  : 'false'
        @sap.sortable  : 'true'
        @sap.updatable : 'false'
        @sap.upsertable: 'false'
        @sap.visible   : 'true';
  }

  @cds.external
  @cds.persistence.skip
  @sap.creatable : 'false'
  @sap.deletable : 'false'
  @sap.label     : 'Personal Information'
  @sap.updatable : 'false'
  @sap.upsertable: 'true'
  entity PerPersonal {
    key personIdExternal     : String(100)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Person ID External'
                               @sap.required      : 'true'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
    key startDate            : Date
                               @sap.creatable     : 'false'
                               @sap.display.format: 'Date'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Start Date'
                               @sap.required      : 'true'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        attachmentId         : String
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'false'
                               @sap.label         : 'Attachment'
                               @sap.required      : 'false'
                               @sap.sortable      : 'false'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        businessFirstName    : String(128)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'false'
                               @sap.label         : 'Business First Name'
                               @sap.required      : 'false'
                               @sap.sortable      : 'false'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        businessLastName     : String(128)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'false'
                               @sap.label         : 'Business Last Name'
                               @sap.required      : 'false'
                               @sap.sortable      : 'false'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        createdBy            : String(100)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Created By'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        createdDateTime      : DateTime
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Created Date Time'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        createdOn            : Date
                               @sap.creatable     : 'false'
                               @sap.display.format: 'Date'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Created On'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        displayName          : String(128)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Display Name'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        endDate              : Date
                               @sap.creatable     : 'false'
                               @sap.display.format: 'Date'
                               @sap.filterable    : 'true'
                               @sap.label         : 'End Date'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        firstName            : String(128)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'First Name'
                               @sap.required      : 'true'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        gender               : String(2)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Gender'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        includeAllRecords    : Boolean
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Include All Records'
                               @sap.required      : 'false'
                               @sap.sortable      : 'false'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'false';
        initials             : String(128)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'false'
                               @sap.label         : 'Initials'
                               @sap.required      : 'false'
                               @sap.sortable      : 'false'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        lastModifiedBy       : String(100)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Last Modified By'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        lastModifiedDateTime : DateTime
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Last Modified Date Time'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        lastModifiedOn       : Date
                               @sap.creatable     : 'false'
                               @sap.display.format: 'Date'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Last Modified On'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        lastName             : String(128)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Last Name'
                               @sap.required      : 'true'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        maritalStatus        : String(50)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Marital Status'
                               @sap.picklist      : 'ecMaritalStatus'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        middleName           : String(128)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Middle Name'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        nationality          : String(128)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Nationality'
                               @sap.required      : 'true'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        nativePreferredLang  : String(256)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Preferred Language'
                               @sap.picklist      : 'language'
                               @sap.required      : 'true'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        operation            : String
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'false'
                               @sap.label         : 'operation'
                               @sap.required      : 'false'
                               @sap.sortable      : 'false'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'false';
        preferredName        : String(128)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'false'
                               @sap.label         : 'Preferred Name'
                               @sap.required      : 'false'
                               @sap.sortable      : 'false'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        salutation           : String(128)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'false'
                               @sap.label         : 'Salutation'
                               @sap.picklist      : 'salutation'
                               @sap.required      : 'false'
                               @sap.sortable      : 'false'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        script               : String(32)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'false'
                               @sap.label         : 'Language Script'
                               @sap.required      : 'false'
                               @sap.sortable      : 'false'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        title                : String(128)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'false'
                               @sap.label         : 'Title'
                               @sap.picklist      : 'customTitle'
                               @sap.required      : 'false'
                               @sap.sortable      : 'false'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        personNav            : Association to one PerPerson
                               @sap.filterable    : 'true'
                               @sap.label         : 'personNav'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
  }

  @cds.external
  @cds.persistence.skip
  @sap.creatable : 'false'
  @sap.deletable : 'false'
  @sap.label     : 'Social Accounts Information'
  @sap.updatable : 'false'
  @sap.upsertable: 'true'
  entity PerSocialAccount {
    key domain               : String(100)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Domain'
                               @sap.picklist      : 'imdomain'
                               @sap.required      : 'true'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
    key personIdExternal     : String(100)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Person ID External'
                               @sap.required      : 'true'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        createdBy            : String(100)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Created By'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        createdDateTime      : DateTime
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Created Date Time'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        createdOn            : Date
                               @sap.creatable     : 'false'
                               @sap.display.format: 'Date'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Created On'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        imId                 : String(100)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Instant Messaging ID'
                               @sap.required      : 'true'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        lastModifiedBy       : String(100)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Last Modified By'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        lastModifiedDateTime : DateTime
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Last Modified Date Time'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        lastModifiedOn       : Date
                               @sap.creatable     : 'false'
                               @sap.display.format: 'Date'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Last Modified On'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        operation            : String
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'false'
                               @sap.label         : 'operation'
                               @sap.required      : 'false'
                               @sap.sortable      : 'false'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'false';
        url                  : String(256)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'URL'
                               @sap.required      : 'true'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        personNav            : Association to one PerPerson
                               @sap.filterable    : 'true'
                               @sap.label         : 'personNav'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
  }

  @cds.external
  @cds.persistence.skip
  @sap.creatable : 'false'
  @sap.deletable : 'false'
  @sap.label     : 'Biographical Information'
  @sap.updatable : 'false'
  @sap.upsertable: 'true'
  entity PerPerson {
    key personIdExternal       : String(32)
                                 @sap.creatable     : 'false'
                                 @sap.filterable    : 'true'
                                 @sap.label         : 'Person Id'
                                 @sap.required      : 'true'
                                 @sap.sortable      : 'true'
                                 @sap.updatable     : 'false'
                                 @sap.upsertable    : 'true'
                                 @sap.visible       : 'true';
        birthName              : String(128)
                                 @sap.creatable     : 'false'
                                 @sap.filterable    : 'false'
                                 @sap.label         : 'Birth Name'
                                 @sap.required      : 'false'
                                 @sap.sortable      : 'false'
                                 @sap.updatable     : 'false'
                                 @sap.upsertable    : 'true'
                                 @sap.visible       : 'true';
        countryOfBirth         : String(100)
                                 @sap.creatable     : 'false'
                                 @sap.filterable    : 'true'
                                 @sap.label         : 'Country Of Birth'
                                 @sap.required      : 'true'
                                 @sap.sortable      : 'true'
                                 @sap.updatable     : 'false'
                                 @sap.upsertable    : 'true'
                                 @sap.visible       : 'true';
        createdBy              : String(100)
                                 @sap.creatable     : 'false'
                                 @sap.filterable    : 'true'
                                 @sap.label         : 'Created By'
                                 @sap.required      : 'false'
                                 @sap.sortable      : 'true'
                                 @sap.updatable     : 'false'
                                 @sap.upsertable    : 'false'
                                 @sap.visible       : 'true';
        createdDateTime        : DateTime
                                 @sap.creatable     : 'false'
                                 @sap.filterable    : 'true'
                                 @sap.label         : 'Created Date Time'
                                 @sap.required      : 'false'
                                 @sap.sortable      : 'true'
                                 @sap.updatable     : 'false'
                                 @sap.upsertable    : 'false'
                                 @sap.visible       : 'true';
        createdOn              : Date
                                 @sap.creatable     : 'false'
                                 @sap.display.format: 'Date'
                                 @sap.filterable    : 'true'
                                 @sap.label         : 'Created On'
                                 @sap.required      : 'false'
                                 @sap.sortable      : 'true'
                                 @sap.updatable     : 'false'
                                 @sap.upsertable    : 'false'
                                 @sap.visible       : 'true';
        dateOfBirth            : Date
                                 @sap.creatable     : 'false'
                                 @sap.display.format: 'Date'
                                 @sap.filterable    : 'true'
                                 @sap.label         : 'Date Of Birth'
                                 @sap.required      : 'true'
                                 @sap.sortable      : 'true'
                                 @sap.updatable     : 'false'
                                 @sap.upsertable    : 'true'
                                 @sap.visible       : 'true';
        includeAllRecords      : Boolean
                                 @sap.creatable     : 'false'
                                 @sap.filterable    : 'true'
                                 @sap.label         : 'Include All Records'
                                 @sap.required      : 'false'
                                 @sap.sortable      : 'false'
                                 @sap.updatable     : 'false'
                                 @sap.upsertable    : 'false'
                                 @sap.visible       : 'false';
        lastModifiedBy         : String(100)
                                 @sap.creatable     : 'false'
                                 @sap.filterable    : 'true'
                                 @sap.label         : 'Last Modified By'
                                 @sap.required      : 'false'
                                 @sap.sortable      : 'true'
                                 @sap.updatable     : 'false'
                                 @sap.upsertable    : 'false'
                                 @sap.visible       : 'true';
        lastModifiedDateTime   : DateTime
                                 @sap.creatable     : 'false'
                                 @sap.filterable    : 'true'
                                 @sap.label         : 'Last Modified Date Time'
                                 @sap.required      : 'false'
                                 @sap.sortable      : 'true'
                                 @sap.updatable     : 'false'
                                 @sap.upsertable    : 'false'
                                 @sap.visible       : 'true';
        lastModifiedOn         : Date
                                 @sap.creatable     : 'false'
                                 @sap.display.format: 'Date'
                                 @sap.filterable    : 'true'
                                 @sap.label         : 'Last Modified On'
                                 @sap.required      : 'false'
                                 @sap.sortable      : 'true'
                                 @sap.updatable     : 'false'
                                 @sap.upsertable    : 'false'
                                 @sap.visible       : 'true';
        perPersonUuid          : String(32)
                                 @sap.creatable     : 'false'
                                 @sap.filterable    : 'true'
                                 @sap.label         : 'perPersonUuid'
                                 @sap.required      : 'false'
                                 @sap.sortable      : 'true'
                                 @sap.updatable     : 'false'
                                 @sap.upsertable    : 'false'
                                 @sap.visible       : 'true';
        personId               : Integer64
                                 @sap.creatable     : 'false'
                                 @sap.filterable    : 'true'
                                 @sap.label         : 'personId'
                                 @sap.required      : 'false'
                                 @sap.sortable      : 'true'
                                 @sap.updatable     : 'false'
                                 @sap.upsertable    : 'false'
                                 @sap.visible       : 'true';
        regionOfBirth          : String(100)
                                 @sap.creatable     : 'false'
                                 @sap.filterable    : 'false'
                                 @sap.label         : 'Region Of Birth'
                                 @sap.required      : 'false'
                                 @sap.sortable      : 'false'
                                 @sap.updatable     : 'false'
                                 @sap.upsertable    : 'true'
                                 @sap.visible       : 'true';
        userId                 : String(100)
                                 @sap.creatable     : 'false'
                                 @sap.filterable    : 'false'
                                 @sap.label         : 'User Id'
                                 @sap.required      : 'false'
                                 @sap.sortable      : 'false'
                                 @sap.updatable     : 'false'
                                 @sap.upsertable    : 'true'
                                 @sap.visible       : 'false';
        emailNav               : Association to many PerEmail
                                 @sap.creatable     : 'false'
                                 @sap.filterable    : 'true'
                                 @sap.label         : 'emailNav'
                                 @sap.required      : 'false'
                                 @sap.sortable      : 'true'
                                 @sap.updatable     : 'false'
                                 @sap.upsertable    : 'false'
                                 @sap.visible       : 'true';
        emergencyContactNav    : Association to many PerEmergencyContacts
                                 @sap.creatable     : 'false'
                                 @sap.filterable    : 'true'
                                 @sap.label         : 'emergencyContactNav'
                                 @sap.required      : 'false'
                                 @sap.sortable      : 'true'
                                 @sap.updatable     : 'false'
                                 @sap.upsertable    : 'false'
                                 @sap.visible       : 'true';
        homeAddressNavDEFLT    : Association to many PerAddressDEFLT
                                 @sap.creatable     : 'false'
                                 @sap.filterable    : 'true'
                                 @sap.label         : 'homeAddressNavDEFLT'
                                 @sap.required      : 'false'
                                 @sap.sortable      : 'true'
                                 @sap.updatable     : 'false'
                                 @sap.upsertable    : 'false'
                                 @sap.visible       : 'true';
        nationalIdNav          : Association to many PerNationalId
                                 @sap.creatable     : 'false'
                                 @sap.filterable    : 'true'
                                 @sap.label         : 'nationalIdNav'
                                 @sap.required      : 'false'
                                 @sap.sortable      : 'true'
                                 @sap.updatable     : 'false'
                                 @sap.upsertable    : 'false'
                                 @sap.visible       : 'true';
        personRerlationshipNav : Association to many PerPersonRelationship
                                 @sap.creatable     : 'false'
                                 @sap.filterable    : 'true'
                                 @sap.label         : 'personRerlationshipNav'
                                 @sap.required      : 'false'
                                 @sap.sortable      : 'true'
                                 @sap.updatable     : 'false'
                                 @sap.upsertable    : 'false'
                                 @sap.visible       : 'true';
        personalInfoNav        : Association to many PerPersonal
                                 @sap.creatable     : 'false'
                                 @sap.filterable    : 'true'
                                 @sap.label         : 'personalInfoNav'
                                 @sap.required      : 'false'
                                 @sap.sortable      : 'true'
                                 @sap.updatable     : 'false'
                                 @sap.upsertable    : 'false'
                                 @sap.visible       : 'true';
        phoneNav               : Association to many PerPhone
                                 @sap.creatable     : 'false'
                                 @sap.filterable    : 'true'
                                 @sap.label         : 'phoneNav'
                                 @sap.required      : 'false'
                                 @sap.sortable      : 'true'
                                 @sap.updatable     : 'false'
                                 @sap.upsertable    : 'false'
                                 @sap.visible       : 'true';
        socialAccountNav       : Association to many PerSocialAccount
                                 @sap.creatable     : 'false'
                                 @sap.filterable    : 'true'
                                 @sap.label         : 'socialAccountNav'
                                 @sap.required      : 'false'
                                 @sap.sortable      : 'true'
                                 @sap.updatable     : 'false'
                                 @sap.upsertable    : 'false'
                                 @sap.visible       : 'true';
  }

  @cds.external
  @cds.persistence.skip
  @sap.creatable : 'false'
  @sap.deletable : 'false'
  @sap.label     : 'Dependents'
  @sap.updatable : 'false'
  @sap.upsertable: 'true'
  entity PerPersonRelationship {
    key personIdExternal        : String(100)
                                  @sap.creatable     : 'false'
                                  @sap.filterable    : 'true'
                                  @sap.label         : 'Person ID External'
                                  @sap.required      : 'true'
                                  @sap.sortable      : 'true'
                                  @sap.updatable     : 'false'
                                  @sap.upsertable    : 'true'
                                  @sap.visible       : 'true';
    key relatedPersonIdExternal : String(100)
                                  @sap.creatable     : 'false'
                                  @sap.filterable    : 'true'
                                  @sap.label         : 'Related Person ID External'
                                  @sap.required      : 'true'
                                  @sap.sortable      : 'true'
                                  @sap.updatable     : 'false'
                                  @sap.upsertable    : 'true'
                                  @sap.visible       : 'true';
    key startDate               : Date
                                  @sap.creatable     : 'false'
                                  @sap.display.format: 'Date'
                                  @sap.filterable    : 'true'
                                  @sap.label         : 'Start Date'
                                  @sap.required      : 'true'
                                  @sap.sortable      : 'true'
                                  @sap.updatable     : 'false'
                                  @sap.upsertable    : 'true'
                                  @sap.visible       : 'true';
        addressAddress1         : String(256)
                                  @sap.creatable     : 'false'
                                  @sap.filterable    : 'false'
                                  @sap.label         : 'addressAddress1'
                                  @sap.required      : 'false'
                                  @sap.sortable      : 'false'
                                  @sap.updatable     : 'false'
                                  @sap.upsertable    : 'true'
                                  @sap.visible       : 'false';
        addressAddress2         : String(256)
                                  @sap.creatable     : 'false'
                                  @sap.filterable    : 'false'
                                  @sap.label         : 'addressAddress2'
                                  @sap.required      : 'false'
                                  @sap.sortable      : 'false'
                                  @sap.updatable     : 'false'
                                  @sap.upsertable    : 'true'
                                  @sap.visible       : 'false';
        addressAddress3         : String(256)
                                  @sap.creatable     : 'false'
                                  @sap.filterable    : 'false'
                                  @sap.label         : 'addressAddress3'
                                  @sap.required      : 'false'
                                  @sap.sortable      : 'false'
                                  @sap.updatable     : 'false'
                                  @sap.upsertable    : 'true'
                                  @sap.visible       : 'false';
        addressCity             : String(256)
                                  @sap.creatable     : 'false'
                                  @sap.filterable    : 'false'
                                  @sap.label         : 'addressCity'
                                  @sap.required      : 'false'
                                  @sap.sortable      : 'false'
                                  @sap.updatable     : 'false'
                                  @sap.upsertable    : 'true'
                                  @sap.visible       : 'false';
        addressCountry          : String(256)
                                  @sap.creatable     : 'false'
                                  @sap.filterable    : 'false'
                                  @sap.label         : 'addressCountry'
                                  @sap.required      : 'true'
                                  @sap.sortable      : 'false'
                                  @sap.updatable     : 'false'
                                  @sap.upsertable    : 'true'
                                  @sap.visible       : 'false';
        addressCounty           : String(256)
                                  @sap.creatable     : 'false'
                                  @sap.filterable    : 'false'
                                  @sap.label         : 'addressCounty'
                                  @sap.required      : 'false'
                                  @sap.sortable      : 'false'
                                  @sap.updatable     : 'false'
                                  @sap.upsertable    : 'true'
                                  @sap.visible       : 'false';
        addressProvince         : String(256)
                                  @sap.creatable     : 'false'
                                  @sap.filterable    : 'false'
                                  @sap.label         : 'addressProvince'
                                  @sap.required      : 'false'
                                  @sap.sortable      : 'false'
                                  @sap.updatable     : 'false'
                                  @sap.upsertable    : 'true'
                                  @sap.visible       : 'false';
        addressState            : String(256)
                                  @sap.creatable     : 'false'
                                  @sap.filterable    : 'false'
                                  @sap.label         : 'addressState'
                                  @sap.required      : 'false'
                                  @sap.sortable      : 'false'
                                  @sap.updatable     : 'false'
                                  @sap.upsertable    : 'true'
                                  @sap.visible       : 'false';
        addressZipCode          : String(256)
                                  @sap.creatable     : 'false'
                                  @sap.filterable    : 'false'
                                  @sap.label         : 'addressZipCode'
                                  @sap.required      : 'false'
                                  @sap.sortable      : 'false'
                                  @sap.updatable     : 'false'
                                  @sap.upsertable    : 'true'
                                  @sap.visible       : 'false';
        attachmentId            : String
                                  @sap.creatable     : 'false'
                                  @sap.filterable    : 'false'
                                  @sap.label         : 'Attachments'
                                  @sap.required      : 'false'
                                  @sap.sortable      : 'false'
                                  @sap.updatable     : 'false'
                                  @sap.upsertable    : 'true'
                                  @sap.visible       : 'true';
        createdBy               : String(100)
                                  @sap.creatable     : 'false'
                                  @sap.filterable    : 'true'
                                  @sap.label         : 'Created By'
                                  @sap.required      : 'false'
                                  @sap.sortable      : 'true'
                                  @sap.updatable     : 'false'
                                  @sap.upsertable    : 'false'
                                  @sap.visible       : 'true';
        createdDateTime         : DateTime
                                  @sap.creatable     : 'false'
                                  @sap.filterable    : 'true'
                                  @sap.label         : 'Created Date Time'
                                  @sap.required      : 'false'
                                  @sap.sortable      : 'true'
                                  @sap.updatable     : 'false'
                                  @sap.upsertable    : 'false'
                                  @sap.visible       : 'true';
        createdOn               : Date
                                  @sap.creatable     : 'false'
                                  @sap.display.format: 'Date'
                                  @sap.filterable    : 'true'
                                  @sap.label         : 'Created On'
                                  @sap.required      : 'false'
                                  @sap.sortable      : 'true'
                                  @sap.updatable     : 'false'
                                  @sap.upsertable    : 'false'
                                  @sap.visible       : 'true';
        endDate                 : Date
                                  @sap.creatable     : 'false'
                                  @sap.display.format: 'Date'
                                  @sap.filterable    : 'true'
                                  @sap.label         : 'End Date'
                                  @sap.required      : 'false'
                                  @sap.sortable      : 'true'
                                  @sap.updatable     : 'false'
                                  @sap.upsertable    : 'false'
                                  @sap.visible       : 'true';
        firstName               : String(128)
                                  @sap.creatable     : 'false'
                                  @sap.filterable    : 'true'
                                  @sap.label         : 'First Name'
                                  @sap.required      : 'true'
                                  @sap.sortable      : 'true'
                                  @sap.updatable     : 'false'
                                  @sap.upsertable    : 'false'
                                  @sap.visible       : 'true';
        isAccompanyingDependent : Boolean
                                  @sap.creatable     : 'false'
                                  @sap.filterable    : 'false'
                                  @sap.label         : 'Accompanying'
                                  @sap.required      : 'false'
                                  @sap.sortable      : 'false'
                                  @sap.updatable     : 'false'
                                  @sap.upsertable    : 'true'
                                  @sap.visible       : 'true';
        isAddressSameAsPerson   : Boolean
                                  @sap.creatable     : 'false'
                                  @sap.filterable    : 'false'
                                  @sap.label         : 'Copy Address from Employee'
                                  @sap.required      : 'false'
                                  @sap.sortable      : 'false'
                                  @sap.updatable     : 'false'
                                  @sap.upsertable    : 'true'
                                  @sap.visible       : 'false';
        isBeneficiary           : Boolean
                                  @sap.creatable     : 'false'
                                  @sap.filterable    : 'false'
                                  @sap.label         : 'Is Beneficiary'
                                  @sap.required      : 'false'
                                  @sap.sortable      : 'false'
                                  @sap.updatable     : 'false'
                                  @sap.upsertable    : 'true'
                                  @sap.visible       : 'true';
        lastModifiedBy          : String(100)
                                  @sap.creatable     : 'false'
                                  @sap.filterable    : 'true'
                                  @sap.label         : 'Last Modified By'
                                  @sap.required      : 'false'
                                  @sap.sortable      : 'true'
                                  @sap.updatable     : 'false'
                                  @sap.upsertable    : 'false'
                                  @sap.visible       : 'true';
        lastModifiedDateTime    : DateTime
                                  @sap.creatable     : 'false'
                                  @sap.filterable    : 'true'
                                  @sap.label         : 'Last Modified Date Time'
                                  @sap.required      : 'false'
                                  @sap.sortable      : 'true'
                                  @sap.updatable     : 'false'
                                  @sap.upsertable    : 'false'
                                  @sap.visible       : 'true';
        lastModifiedOn          : Date
                                  @sap.creatable     : 'false'
                                  @sap.display.format: 'Date'
                                  @sap.filterable    : 'true'
                                  @sap.label         : 'Last Modified On'
                                  @sap.required      : 'false'
                                  @sap.sortable      : 'true'
                                  @sap.updatable     : 'false'
                                  @sap.upsertable    : 'false'
                                  @sap.visible       : 'true';
        lastName                : String(128)
                                  @sap.creatable     : 'false'
                                  @sap.filterable    : 'true'
                                  @sap.label         : 'Last Name'
                                  @sap.required      : 'true'
                                  @sap.sortable      : 'true'
                                  @sap.updatable     : 'false'
                                  @sap.upsertable    : 'false'
                                  @sap.visible       : 'true';
        operation               : String
                                  @sap.creatable     : 'false'
                                  @sap.filterable    : 'false'
                                  @sap.label         : 'operation'
                                  @sap.required      : 'false'
                                  @sap.sortable      : 'false'
                                  @sap.updatable     : 'false'
                                  @sap.upsertable    : 'true'
                                  @sap.visible       : 'false';
        relationshipType        : String(30)
                                  @sap.creatable     : 'false'
                                  @sap.filterable    : 'false'
                                  @sap.label         : 'Relationship'
                                  @sap.picklist      : 'personRelationshipType'
                                  @sap.required      : 'true'
                                  @sap.sortable      : 'false'
                                  @sap.updatable     : 'false'
                                  @sap.upsertable    : 'true'
                                  @sap.visible       : 'true';
        personNav               : Association to one PerPerson
                                  @sap.filterable    : 'true'
                                  @sap.label         : 'personNav'
                                  @sap.required      : 'false'
                                  @sap.sortable      : 'true'
                                  @sap.upsertable    : 'false'
                                  @sap.visible       : 'true';
        relNationalIdNav        : Association to one PerNationalId
                                  @sap.filterable    : 'true'
                                  @sap.label         : 'relNationalIdNav'
                                  @sap.required      : 'false'
                                  @sap.sortable      : 'true'
                                  @sap.upsertable    : 'false'
                                  @sap.visible       : 'true';
        relPersonNav            : Association to one PerPerson
                                  @sap.filterable    : 'true'
                                  @sap.label         : 'relPersonNav'
                                  @sap.required      : 'false'
                                  @sap.sortable      : 'true'
                                  @sap.upsertable    : 'false'
                                  @sap.visible       : 'true';
        relPersonalNav          : Association to one PerPersonal
                                  @sap.filterable    : 'true'
                                  @sap.label         : 'relPersonalNav'
                                  @sap.required      : 'false'
                                  @sap.sortable      : 'true'
                                  @sap.upsertable    : 'false'
                                  @sap.visible       : 'true';
  }

  @cds.external
  @cds.persistence.skip
  @sap.creatable : 'false'
  @sap.deletable : 'false'
  @sap.label     : 'Email Information'
  @sap.updatable : 'false'
  @sap.upsertable: 'true'
  entity PerEmail {
    key emailType            : String(38)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Email Type'
                               @sap.picklist      : 'ecEmailType'
                               @sap.required      : 'true'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
    key personIdExternal     : String(100)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Person ID External'
                               @sap.required      : 'true'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        createdBy            : String(100)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Created By'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        createdDateTime      : DateTime
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Created Date Time'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        createdOn            : Date
                               @sap.creatable     : 'false'
                               @sap.display.format: 'Date'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Created On'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        emailAddress         : String(100)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Email Address'
                               @sap.required      : 'true'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        includeAllRecords    : Boolean
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Include All Records'
                               @sap.required      : 'false'
                               @sap.sortable      : 'false'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'false';
        isPrimary            : Boolean
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Is Primary'
                               @sap.required      : 'true'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        lastModifiedBy       : String(100)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Last Modified By'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        lastModifiedDateTime : DateTime
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Last Modified Date Time'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        lastModifiedOn       : Date
                               @sap.creatable     : 'false'
                               @sap.display.format: 'Date'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Last Modified On'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        operation            : String
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'false'
                               @sap.label         : 'operation'
                               @sap.required      : 'false'
                               @sap.sortable      : 'false'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'false';
        personNav            : Association to one PerPerson
                               @sap.filterable    : 'true'
                               @sap.label         : 'personNav'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
  }

  @cds.external
  @cds.persistence.skip
  @sap.creatable : 'false'
  @sap.deletable : 'false'
  @sap.label     : 'Addresses'
  @sap.updatable : 'false'
  @sap.upsertable: 'true'
  entity HrisEmergencyContactAddressDEFLT {
    key addressId            : Decimal
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'Address ID'
        @sap.required      : 'true'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        address1             : String(256)
        @sap.creatable     : 'false'
        @sap.filterable    : 'false'
        @sap.label         : 'address1'
        @sap.required      : 'false'
        @sap.sortable      : 'false'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        address2             : String(256)
        @sap.creatable     : 'false'
        @sap.filterable    : 'false'
        @sap.label         : 'address2'
        @sap.required      : 'false'
        @sap.sortable      : 'false'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        address3             : String(256)
        @sap.creatable     : 'false'
        @sap.filterable    : 'false'
        @sap.label         : 'address3'
        @sap.required      : 'false'
        @sap.sortable      : 'false'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        address4             : String(256)
        @sap.creatable     : 'false'
        @sap.filterable    : 'false'
        @sap.label         : 'Neighborhood'
        @sap.required      : 'false'
        @sap.sortable      : 'false'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        address5             : String(256)
        @sap.creatable     : 'false'
        @sap.filterable    : 'false'
        @sap.label         : 'Municipality Name'
        @sap.required      : 'false'
        @sap.sortable      : 'false'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        addressType          : String(30)
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'Address Type'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        city                 : String(256)
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'city'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        country              : String(256)
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'country'
        @sap.required      : 'true'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        county               : String(256)
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'County'
        @sap.picklist      : 'COUNTY_GBR'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        createdBy            : String(100)
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'Created By'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        createdDateTime      : DateTime
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'Created Date Time'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        createdOn            : Date
        @sap.creatable     : 'false'
        @sap.display.format: 'Date'
        @sap.filterable    : 'true'
        @sap.label         : 'Created On'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        endDate              : Date
        @sap.creatable     : 'false'
        @sap.display.format: 'Date'
        @sap.filterable    : 'true'
        @sap.label         : 'End Date'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        lastModifiedBy       : String(100)
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'Last Modified By'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        lastModifiedDateTime : DateTime
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'Last Modified Date Time'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        lastModifiedOn       : Date
        @sap.creatable     : 'false'
        @sap.display.format: 'Date'
        @sap.filterable    : 'true'
        @sap.label         : 'Last Modified On'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        notes                : String(4000)
        @sap.creatable     : 'false'
        @sap.filterable    : 'false'
        @sap.label         : 'notes'
        @sap.required      : 'false'
        @sap.sortable      : 'false'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        province             : String(256)
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'province'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        startDate            : Date
        @sap.creatable     : 'false'
        @sap.display.format: 'Date'
        @sap.filterable    : 'true'
        @sap.label         : 'Start Date'
        @sap.required      : 'true'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        state                : String(256)
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'State'
        @sap.picklist      : 'STATE_USA'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        zipCode              : String(256)
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'zipCode'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
  }

  @cds.external
  @cds.persistence.skip
  @sap.creatable : 'false'
  @sap.deletable : 'false'
  @sap.label     : 'National ID Information'
  @sap.updatable : 'false'
  @sap.upsertable: 'true'
  entity PerNationalId {
    key cardType             : String(256)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'National Id Card Type'
                               @sap.required      : 'true'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
    key country              : String(100)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Country'
                               @sap.required      : 'true'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
    key personIdExternal     : String(100)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Person ID External'
                               @sap.required      : 'true'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        createdBy            : String(100)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Created By'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        createdDateTime      : DateTime
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Created Date Time'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        createdOn            : Date
                               @sap.creatable     : 'false'
                               @sap.display.format: 'Date'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Created On'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        isPrimary            : Boolean
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Is Primary'
                               @sap.required      : 'true'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        lastModifiedBy       : String(100)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Last Modified By'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        lastModifiedDateTime : DateTime
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Last Modified Date Time'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        lastModifiedOn       : Date
                               @sap.creatable     : 'false'
                               @sap.display.format: 'Date'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Last Modified On'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        nationalId           : String(256)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'National Id'
                               @sap.required      : 'true'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        notes                : String(4000)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'false'
                               @sap.label         : 'notes'
                               @sap.required      : 'false'
                               @sap.sortable      : 'false'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        operation            : String
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'false'
                               @sap.label         : 'operation'
                               @sap.required      : 'false'
                               @sap.sortable      : 'false'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'false';
        personNav            : Association to one PerPerson
                               @sap.filterable    : 'true'
                               @sap.label         : 'personNav'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
  }

  @cds.external
  @cds.persistence.skip
  @sap.creatable : 'false'
  @sap.deletable : 'false'
  @sap.label     : 'National Id Card'
  @sap.updatable : 'false'
  @sap.upsertable: 'true'
  entity PerNationalIdWithValidityPeriod {
    key personIdExternal     : String(100)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Person ID External'
                               @sap.required      : 'true'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
    key recordId             : String(36)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Record Id'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        cardType             : String(256) not null
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'National Id Card Type'
                               @sap.required      : 'true'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        country              : String(100) not null
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Country'
                               @sap.required      : 'true'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        createdBy            : String(100)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Created By'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        createdDateTime      : DateTime
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Created Date Time'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        createdOn            : Date
                               @sap.creatable     : 'false'
                               @sap.display.format: 'Date'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Created On'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        isPrimary            : Boolean
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Is Primary'
                               @sap.required      : 'true'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        lastModifiedBy       : String(100)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Last Modified By'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        lastModifiedDateTime : DateTime
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Last Modified Date Time'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        lastModifiedOn       : Date
                               @sap.creatable     : 'false'
                               @sap.display.format: 'Date'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Last Modified On'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        nationalId           : String(256)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'National Id'
                               @sap.required      : 'true'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        notes                : String(4000)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'false'
                               @sap.label         : 'notes'
                               @sap.required      : 'false'
                               @sap.sortable      : 'false'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        operation            : String
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'false'
                               @sap.label         : 'operation'
                               @sap.required      : 'false'
                               @sap.sortable      : 'false'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'false';
        validFrom            : Date
                               @sap.creatable     : 'false'
                               @sap.display.format: 'Date'
                               @sap.filterable    : 'false'
                               @sap.label         : 'Valid From'
                               @sap.required      : 'false'
                               @sap.sortable      : 'false'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        validTo              : Date
                               @sap.creatable     : 'false'
                               @sap.display.format: 'Date'
                               @sap.filterable    : 'false'
                               @sap.label         : 'Valid To'
                               @sap.required      : 'false'
                               @sap.sortable      : 'false'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        personNav            : Association to one PerPerson
                               @sap.filterable    : 'true'
                               @sap.label         : 'personNav'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
  }

  @cds.external
  @cds.persistence.skip
  @sap.creatable : 'false'
  @sap.deletable : 'false'
  @sap.label     : 'Addresses'
  @sap.updatable : 'false'
  @sap.upsertable: 'true'
  entity PerAddressDEFLT {
    key addressType          : String(30)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Address Type'
                               @sap.required      : 'true'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
    key personIdExternal     : String(100)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Person ID External'
                               @sap.required      : 'true'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
    key startDate            : Date
                               @sap.creatable     : 'false'
                               @sap.display.format: 'Date'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Start Date'
                               @sap.required      : 'true'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        address1             : String(256)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'false'
                               @sap.label         : 'address1'
                               @sap.required      : 'false'
                               @sap.sortable      : 'false'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        address2             : String(256)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'false'
                               @sap.label         : 'address2'
                               @sap.required      : 'false'
                               @sap.sortable      : 'false'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        address3             : String(256)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'false'
                               @sap.label         : 'address3'
                               @sap.required      : 'false'
                               @sap.sortable      : 'false'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        address4             : String(256)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'false'
                               @sap.label         : 'Neighborhood'
                               @sap.required      : 'false'
                               @sap.sortable      : 'false'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        address5             : String(256)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'false'
                               @sap.label         : 'Municipality Name'
                               @sap.required      : 'false'
                               @sap.sortable      : 'false'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        city                 : String(256)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'city'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        country              : String(256)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'country'
                               @sap.required      : 'true'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        county               : String(256)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'County'
                               @sap.picklist      : 'COUNTY_GBR'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        createdBy            : String(100)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Created By'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        createdDateTime      : DateTime
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Created Date Time'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        createdOn            : Date
                               @sap.creatable     : 'false'
                               @sap.display.format: 'Date'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Created On'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        empUsersSysId        : String(256)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'false'
                               @sap.label         : 'Employee User Id Field'
                               @sap.required      : 'false'
                               @sap.sortable      : 'false'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        endDate              : Date
                               @sap.creatable     : 'false'
                               @sap.display.format: 'Date'
                               @sap.filterable    : 'true'
                               @sap.label         : 'End Date'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        includeAllRecords    : Boolean
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Include All Records'
                               @sap.required      : 'false'
                               @sap.sortable      : 'false'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'false';
        lastModifiedBy       : String(100)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Last Modified By'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        lastModifiedDateTime : DateTime
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Last Modified Date Time'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        lastModifiedOn       : Date
                               @sap.creatable     : 'false'
                               @sap.display.format: 'Date'
                               @sap.filterable    : 'true'
                               @sap.label         : 'Last Modified On'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
        notes                : String(4000)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'false'
                               @sap.label         : 'notes'
                               @sap.required      : 'false'
                               @sap.sortable      : 'false'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        operation            : String
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'false'
                               @sap.label         : 'operation'
                               @sap.required      : 'false'
                               @sap.sortable      : 'false'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'false';
        province             : String(256)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'province'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        state                : String(256)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'State'
                               @sap.picklist      : 'STATE_USA'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        zipCode              : String(256)
                               @sap.creatable     : 'false'
                               @sap.filterable    : 'true'
                               @sap.label         : 'zipCode'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.updatable     : 'false'
                               @sap.upsertable    : 'true'
                               @sap.visible       : 'true';
        personNav            : Association to one PerPerson
                               @sap.filterable    : 'true'
                               @sap.label         : 'personNav'
                               @sap.required      : 'false'
                               @sap.sortable      : 'true'
                               @sap.upsertable    : 'false'
                               @sap.visible       : 'true';
  }

  @cds.external
  @cds.persistence.skip
  @sap.creatable : 'false'
  @sap.deletable : 'false'
  @sap.label     : 'Name Format'
  @sap.updatable : 'false'
  @sap.upsertable: 'false'
  entity NameFormatGO {
    key externalCode                    : String(128)
                                          @sap.creatable     : 'false'
                                          @sap.filterable    : 'true'
                                          @sap.label         : 'Name Format Code'
                                          @sap.required      : 'true'
                                          @sap.sortable      : 'true'
                                          @sap.updatable     : 'false'
                                          @sap.upsertable    : 'false'
                                          @sap.visible       : 'true';
        createdBy                       : String(255)
                                          @sap.creatable     : 'false'
                                          @sap.filterable    : 'true'
                                          @sap.label         : 'mdfSystemCreatedBy'
                                          @sap.required      : 'false'
                                          @sap.sortable      : 'true'
                                          @sap.updatable     : 'false'
                                          @sap.upsertable    : 'false'
                                          @sap.visible       : 'true';
        createdDateTime                 : DateTime
                                          @sap.creatable     : 'false'
                                          @sap.filterable    : 'true'
                                          @sap.label         : 'mdfSystemCreatedDate'
                                          @sap.required      : 'false'
                                          @sap.sortable      : 'true'
                                          @sap.updatable     : 'false'
                                          @sap.upsertable    : 'false'
                                          @sap.visible       : 'true';
        externalName                    : String(128)
                                          @sap.creatable     : 'false'
                                          @sap.filterable    : 'true'
                                          @sap.label         : 'Name Format Description'
                                          @sap.required      : 'true'
                                          @sap.sortable      : 'true'
                                          @sap.updatable     : 'false'
                                          @sap.upsertable    : 'false'
                                          @sap.visible       : 'true';
        lastModifiedBy                  : String(255)
                                          @sap.creatable     : 'false'
                                          @sap.filterable    : 'true'
                                          @sap.label         : 'mdfSystemLastModifiedBy'
                                          @sap.required      : 'false'
                                          @sap.sortable      : 'true'
                                          @sap.updatable     : 'false'
                                          @sap.upsertable    : 'false'
                                          @sap.visible       : 'true';
        lastModifiedDateTime            : DateTime
                                          @sap.creatable     : 'false'
                                          @sap.filterable    : 'true'
                                          @sap.label         : 'mdfSystemLastModifiedDate'
                                          @sap.required      : 'false'
                                          @sap.sortable      : 'true'
                                          @sap.updatable     : 'false'
                                          @sap.upsertable    : 'false'
                                          @sap.visible       : 'true';
        mdfSystemCreatedBy              : String(255)
                                          @sap.creatable     : 'false'
                                          @sap.filterable    : 'true'
                                          @sap.label         : 'mdfSystemCreatedBy'
                                          @sap.required      : 'false'
                                          @sap.sortable      : 'true'
                                          @sap.updatable     : 'false'
                                          @sap.upsertable    : 'false'
                                          @sap.visible       : 'true';
        mdfSystemCreatedDate            : Date
                                          @sap.creatable     : 'false'
                                          @sap.display.format: 'Date'
                                          @sap.filterable    : 'true'
                                          @sap.label         : 'mdfSystemCreatedDate'
                                          @sap.required      : 'false'
                                          @sap.sortable      : 'true'
                                          @sap.updatable     : 'false'
                                          @sap.upsertable    : 'false'
                                          @sap.visible       : 'true';
        mdfSystemEffectiveEndDate       : Date
                                          @sap.creatable     : 'false'
                                          @sap.display.format: 'Date'
                                          @sap.filterable    : 'true'
                                          @sap.label         : 'mdfSystemEffectiveEndDate'
                                          @sap.required      : 'false'
                                          @sap.sortable      : 'true'
                                          @sap.updatable     : 'false'
                                          @sap.upsertable    : 'false'
                                          @sap.visible       : 'true';
        mdfSystemEffectiveStartDate     : Date
                                          @sap.creatable     : 'false'
                                          @sap.display.format: 'Date'
                                          @sap.filterable    : 'true'
                                          @sap.label         : 'mdfSystemEffectiveStartDate'
                                          @sap.required      : 'false'
                                          @sap.sortable      : 'true'
                                          @sap.updatable     : 'false'
                                          @sap.upsertable    : 'false'
                                          @sap.visible       : 'true';
        mdfSystemEntityId               : String(255)
                                          @sap.creatable     : 'false'
                                          @sap.filterable    : 'true'
                                          @sap.label         : 'mdfSystemEntityId'
                                          @sap.required      : 'false'
                                          @sap.sortable      : 'true'
                                          @sap.updatable     : 'false'
                                          @sap.upsertable    : 'false'
                                          @sap.visible       : 'true';
        mdfSystemLastModifiedBy         : String(255)
                                          @sap.creatable     : 'false'
                                          @sap.filterable    : 'true'
                                          @sap.label         : 'mdfSystemLastModifiedBy'
                                          @sap.required      : 'false'
                                          @sap.sortable      : 'true'
                                          @sap.updatable     : 'false'
                                          @sap.upsertable    : 'false'
                                          @sap.visible       : 'true';
        mdfSystemLastModifiedDate       : Date
                                          @sap.creatable     : 'false'
                                          @sap.display.format: 'Date'
                                          @sap.filterable    : 'true'
                                          @sap.label         : 'mdfSystemLastModifiedDate'
                                          @sap.required      : 'false'
                                          @sap.sortable      : 'true'
                                          @sap.updatable     : 'false'
                                          @sap.upsertable    : 'false'
                                          @sap.visible       : 'true';
        mdfSystemLastModifiedDateWithTZ : DateTime
                                          @sap.creatable     : 'false'
                                          @sap.filterable    : 'true'
                                          @sap.label         : 'mdfSystemLastModifiedDate'
                                          @sap.required      : 'false'
                                          @sap.sortable      : 'true'
                                          @sap.updatable     : 'false'
                                          @sap.upsertable    : 'false'
                                          @sap.visible       : 'true';
        mdfSystemObjectType             : String(255)
                                          @sap.creatable     : 'false'
                                          @sap.filterable    : 'true'
                                          @sap.label         : 'mdfSystemObjectType'
                                          @sap.required      : 'false'
                                          @sap.sortable      : 'true'
                                          @sap.updatable     : 'false'
                                          @sap.upsertable    : 'false'
                                          @sap.visible       : 'true';
        mdfSystemRecordId               : String(255)
                                          @sap.creatable     : 'false'
                                          @sap.filterable    : 'true'
                                          @sap.label         : 'mdfSystemRecordId'
                                          @sap.required      : 'false'
                                          @sap.sortable      : 'true'
                                          @sap.updatable     : 'false'
                                          @sap.upsertable    : 'false'
                                          @sap.visible       : 'true';
        mdfSystemRecordStatus           : String(255)
                                          @sap.creatable     : 'false'
                                          @sap.filterable    : 'true'
                                          @sap.label         : 'mdfSystemRecordStatus'
                                          @sap.required      : 'false'
                                          @sap.sortable      : 'true'
                                          @sap.updatable     : 'false'
                                          @sap.upsertable    : 'false'
                                          @sap.visible       : 'true';
        mdfSystemStatus                 : String(255)
                                          @sap.creatable     : 'false'
                                          @sap.filterable    : 'true'
                                          @sap.label         : 'mdfSystemStatus'
                                          @sap.required      : 'false'
                                          @sap.sortable      : 'true'
                                          @sap.updatable     : 'false'
                                          @sap.upsertable    : 'false'
                                          @sap.visible       : 'true';
        mdfSystemTransactionSequence    : Integer64
                                          @sap.creatable     : 'false'
                                          @sap.filterable    : 'true'
                                          @sap.label         : 'mdfSystemTransactionSequence'
                                          @sap.required      : 'false'
                                          @sap.sortable      : 'true'
                                          @sap.updatable     : 'false'
                                          @sap.upsertable    : 'false'
                                          @sap.visible       : 'true';
        mdfSystemVersionId              : Integer64
                                          @sap.creatable     : 'false'
                                          @sap.filterable    : 'true'
                                          @sap.label         : 'mdfSystemVersionId'
                                          @sap.required      : 'false'
                                          @sap.sortable      : 'true'
                                          @sap.updatable     : 'false'
                                          @sap.upsertable    : 'false'
                                          @sap.visible       : 'true';
        sample                          : String(255)
                                          @sap.creatable     : 'false'
                                          @sap.filterable    : 'true'
                                          @sap.label         : 'Preview'
                                          @sap.required      : 'false'
                                          @sap.sortable      : 'true'
                                          @sap.updatable     : 'false'
                                          @sap.upsertable    : 'false'
                                          @sap.visible       : 'true';
        nameElements                    : Association to many NameElementGO
                                          @sap.creatable     : 'false'
                                          @sap.field.control : 'NameFormatGOFieldControlsNav/nameElements'
                                          @sap.filterable    : 'true'
                                          @sap.label         : 'Name Elements'
                                          @sap.required      : 'false'
                                          @sap.sortable      : 'true'
                                          @sap.updatable     : 'false'
                                          @sap.upsertable    : 'false'
                                          @sap.visible       : 'true';
  }

  @cds.external
  @cds.persistence.skip
  @sap.creatable : 'false'
  @sap.deletable : 'false'
  @sap.label     : 'NameElementGO'
  @sap.updatable : 'false'
  @sap.upsertable: 'false'
  entity NameElementGO {
    key NameFormatGO_externalCode    : String(128)
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'Name Format_Name Format Code'
        @sap.required      : 'true'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
    key externalCode                 : String(128)
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'externalCode'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        createdBy                    : String(255)
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'createdBy'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        createdDate                  : Date
        @sap.creatable     : 'false'
        @sap.display.format: 'Date'
        @sap.filterable    : 'true'
        @sap.label         : 'createdDate'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        createdDateTime              : DateTime
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'createdDate'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        lastModifiedBy               : String(255)
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'lastModifiedBy'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        lastModifiedDate             : Date
        @sap.creatable     : 'false'
        @sap.display.format: 'Date'
        @sap.filterable    : 'true'
        @sap.label         : 'lastModifiedDate'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        lastModifiedDateTime         : DateTime
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'lastModifiedDate'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        lastModifiedDateWithTZ       : DateTime
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'lastModifiedDate'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        mdfSystemEffectiveEndDate    : Date
        @sap.creatable     : 'false'
        @sap.display.format: 'Date'
        @sap.filterable    : 'true'
        @sap.label         : 'mdfSystemEffectiveEndDate'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        mdfSystemEffectiveStartDate  : Date
        @sap.creatable     : 'false'
        @sap.display.format: 'Date'
        @sap.filterable    : 'true'
        @sap.label         : 'mdfSystemEffectiveStartDate'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        mdfSystemEntityId            : String(255)
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'mdfSystemEntityId'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        mdfSystemObjectType          : String(255)
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'mdfSystemObjectType'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        mdfSystemRecordId            : String(255)
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'mdfSystemRecordId'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        mdfSystemRecordStatus        : String(255)
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'mdfSystemRecordStatus'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        mdfSystemStatus              : String(255)
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'mdfSystemStatus'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        mdfSystemTransactionSequence : Integer64
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'mdfSystemTransactionSequence'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        mdfSystemVersionId           : Integer64
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'mdfSystemVersionId'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        nameArtifactEnum             : String(255)
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'Name Element'
        @sap.required      : 'true'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        sampleData                   : String(255)
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'Value'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        separator                    : String(255)
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'Separator'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
  }

  @cds.external
  @cds.persistence.skip
  @sap.creatable : 'false'
  @sap.deletable : 'false'
  @sap.label     : 'Localized Biographical Info'
  @sap.updatable : 'false'
  @sap.upsertable: 'true'
  entity PerBiographicalInfoLocBRA {
    key country              : String
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'country'
        @sap.required      : 'true'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'true'
        @sap.visible       : 'true';
    key personIdExternal     : String(100)
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'Person ID External'
        @sap.required      : 'true'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'true'
        @sap.visible       : 'true';
        createdBy            : String(100)
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'Created By'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        createdDateTime      : DateTime
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'Created Date Time'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        createdOn            : Date
        @sap.creatable     : 'false'
        @sap.display.format: 'Date'
        @sap.filterable    : 'true'
        @sap.label         : 'Created On'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        customString1        : String(256)
        @sap.creatable     : 'false'
        @sap.filterable    : 'false'
        @sap.label         : 'TEST'
        @sap.required      : 'false'
        @sap.sortable      : 'false'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'true'
        @sap.visible       : 'true';
        lastModifiedBy       : String(100)
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'Last Modified By'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        lastModifiedDateTime : DateTime
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'Last Modified Date Time'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        lastModifiedOn       : Date
        @sap.creatable     : 'false'
        @sap.display.format: 'Date'
        @sap.filterable    : 'true'
        @sap.label         : 'Last Modified On'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        operation            : String
        @sap.creatable     : 'false'
        @sap.filterable    : 'false'
        @sap.label         : 'operation'
        @sap.required      : 'false'
        @sap.sortable      : 'false'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'true'
        @sap.visible       : 'false';
        placeOfBirth         : String(100)
        @sap.creatable     : 'false'
        @sap.filterable    : 'false'
        @sap.label         : 'Place Of Birth'
        @sap.required      : 'false'
        @sap.sortable      : 'false'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'true'
        @sap.visible       : 'false';
        regionOfBirth        : String(100)
        @sap.creatable     : 'false'
        @sap.filterable    : 'false'
        @sap.label         : 'Region Of Birth'
        @sap.required      : 'false'
        @sap.sortable      : 'false'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'true'
        @sap.visible       : 'false';
  }

  @cds.external
  @cds.persistence.skip
  @sap.creatable : 'false'
  @sap.deletable : 'false'
  @sap.label     : 'Localized Biographical Info'
  @sap.updatable : 'false'
  @sap.upsertable: 'true'
  entity PerBiographicalInfoLocCHL {
    key country              : String
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'country'
        @sap.required      : 'true'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'true'
        @sap.visible       : 'true';
    key personIdExternal     : String(100)
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'Person ID External'
        @sap.required      : 'true'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'true'
        @sap.visible       : 'true';
        createdBy            : String(100)
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'Created By'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        createdDateTime      : DateTime
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'Created Date Time'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        createdOn            : Date
        @sap.creatable     : 'false'
        @sap.display.format: 'Date'
        @sap.filterable    : 'true'
        @sap.label         : 'Created On'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        customString1        : String(256)
        @sap.creatable     : 'false'
        @sap.filterable    : 'false'
        @sap.label         : 'TEST'
        @sap.required      : 'false'
        @sap.sortable      : 'false'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'true'
        @sap.visible       : 'false';
        lastModifiedBy       : String(100)
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'Last Modified By'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        lastModifiedDateTime : DateTime
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'Last Modified Date Time'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        lastModifiedOn       : Date
        @sap.creatable     : 'false'
        @sap.display.format: 'Date'
        @sap.filterable    : 'true'
        @sap.label         : 'Last Modified On'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        operation            : String
        @sap.creatable     : 'false'
        @sap.filterable    : 'false'
        @sap.label         : 'operation'
        @sap.required      : 'false'
        @sap.sortable      : 'false'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'true'
        @sap.visible       : 'false';
        placeOfBirth         : String(100)
        @sap.creatable     : 'false'
        @sap.filterable    : 'false'
        @sap.label         : 'Place Of Birth'
        @sap.required      : 'false'
        @sap.sortable      : 'false'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'true'
        @sap.visible       : 'false';
        regionOfBirth        : String(100)
        @sap.creatable     : 'false'
        @sap.filterable    : 'false'
        @sap.label         : 'Region Of Birth'
        @sap.required      : 'false'
        @sap.sortable      : 'false'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'true'
        @sap.visible       : 'false';
  }

  @cds.external
  @cds.persistence.skip
  @sap.creatable : 'false'
  @sap.deletable : 'false'
  @sap.label     : 'Localized Biographical Info'
  @sap.updatable : 'false'
  @sap.upsertable: 'true'
  entity PerBiographicalInfoLocFRA {
    key country              : String
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'country'
        @sap.required      : 'true'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'true'
        @sap.visible       : 'true';
    key personIdExternal     : String(100)
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'Person ID External'
        @sap.required      : 'true'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'true'
        @sap.visible       : 'true';
        createdBy            : String(100)
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'Created By'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        createdDateTime      : DateTime
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'Created Date Time'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        createdOn            : Date
        @sap.creatable     : 'false'
        @sap.display.format: 'Date'
        @sap.filterable    : 'true'
        @sap.label         : 'Created On'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        customString1        : String(256)
        @sap.creatable     : 'false'
        @sap.filterable    : 'false'
        @sap.label         : 'TEST'
        @sap.required      : 'false'
        @sap.sortable      : 'false'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'true'
        @sap.visible       : 'false';
        lastModifiedBy       : String(100)
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'Last Modified By'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        lastModifiedDateTime : DateTime
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'Last Modified Date Time'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        lastModifiedOn       : Date
        @sap.creatable     : 'false'
        @sap.display.format: 'Date'
        @sap.filterable    : 'true'
        @sap.label         : 'Last Modified On'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        operation            : String
        @sap.creatable     : 'false'
        @sap.filterable    : 'false'
        @sap.label         : 'operation'
        @sap.required      : 'false'
        @sap.sortable      : 'false'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'true'
        @sap.visible       : 'false';
        placeOfBirth         : String(100)
        @sap.creatable     : 'false'
        @sap.filterable    : 'false'
        @sap.label         : 'Place Of Birth'
        @sap.required      : 'false'
        @sap.sortable      : 'false'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'true'
        @sap.visible       : 'false';
        regionOfBirth        : String(100)
        @sap.creatable     : 'false'
        @sap.filterable    : 'false'
        @sap.label         : 'Region Of Birth'
        @sap.required      : 'false'
        @sap.sortable      : 'false'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'true'
        @sap.visible       : 'false';
  }

  @cds.external
  @cds.persistence.skip
  @sap.creatable : 'false'
  @sap.deletable : 'false'
  @sap.label     : 'Localized Biographical Info'
  @sap.updatable : 'false'
  @sap.upsertable: 'true'
  entity PerBiographicalInfoLocITA {
    key country              : String
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'country'
        @sap.required      : 'true'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'true'
        @sap.visible       : 'true';
    key personIdExternal     : String(100)
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'Person ID External'
        @sap.required      : 'true'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'true'
        @sap.visible       : 'true';
        createdBy            : String(100)
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'Created By'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        createdDateTime      : DateTime
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'Created Date Time'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        createdOn            : Date
        @sap.creatable     : 'false'
        @sap.display.format: 'Date'
        @sap.filterable    : 'true'
        @sap.label         : 'Created On'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        customString1        : String(256)
        @sap.creatable     : 'false'
        @sap.filterable    : 'false'
        @sap.label         : 'TEST'
        @sap.required      : 'false'
        @sap.sortable      : 'false'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'true'
        @sap.visible       : 'false';
        lastModifiedBy       : String(100)
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'Last Modified By'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        lastModifiedDateTime : DateTime
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'Last Modified Date Time'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        lastModifiedOn       : Date
        @sap.creatable     : 'false'
        @sap.display.format: 'Date'
        @sap.filterable    : 'true'
        @sap.label         : 'Last Modified On'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        operation            : String
        @sap.creatable     : 'false'
        @sap.filterable    : 'false'
        @sap.label         : 'operation'
        @sap.required      : 'false'
        @sap.sortable      : 'false'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'true'
        @sap.visible       : 'false';
        placeOfBirth         : String(100)
        @sap.creatable     : 'false'
        @sap.filterable    : 'false'
        @sap.label         : 'Place Of Birth'
        @sap.required      : 'false'
        @sap.sortable      : 'false'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'true'
        @sap.visible       : 'false';
        regionOfBirth        : String(100)
        @sap.creatable     : 'false'
        @sap.filterable    : 'false'
        @sap.label         : 'Region Of Birth'
        @sap.required      : 'false'
        @sap.sortable      : 'false'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'true'
        @sap.visible       : 'false';
  }

  @cds.external
  @cds.persistence.skip
  @sap.creatable : 'false'
  @sap.deletable : 'false'
  @sap.label     : 'Localized Biographical Info'
  @sap.updatable : 'false'
  @sap.upsertable: 'true'
  entity PerBiographicalInfoLocVEN {
    key country              : String
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'country'
        @sap.required      : 'true'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'true'
        @sap.visible       : 'true';
    key personIdExternal     : String(100)
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'Person ID External'
        @sap.required      : 'true'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'true'
        @sap.visible       : 'true';
        createdBy            : String(100)
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'Created By'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        createdDateTime      : DateTime
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'Created Date Time'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        createdOn            : Date
        @sap.creatable     : 'false'
        @sap.display.format: 'Date'
        @sap.filterable    : 'true'
        @sap.label         : 'Created On'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        customString1        : String(256)
        @sap.creatable     : 'false'
        @sap.filterable    : 'false'
        @sap.label         : 'TEST'
        @sap.required      : 'false'
        @sap.sortable      : 'false'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'true'
        @sap.visible       : 'false';
        lastModifiedBy       : String(100)
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'Last Modified By'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        lastModifiedDateTime : DateTime
        @sap.creatable     : 'false'
        @sap.filterable    : 'true'
        @sap.label         : 'Last Modified Date Time'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        lastModifiedOn       : Date
        @sap.creatable     : 'false'
        @sap.display.format: 'Date'
        @sap.filterable    : 'true'
        @sap.label         : 'Last Modified On'
        @sap.required      : 'false'
        @sap.sortable      : 'true'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'false'
        @sap.visible       : 'true';
        operation            : String
        @sap.creatable     : 'false'
        @sap.filterable    : 'false'
        @sap.label         : 'operation'
        @sap.required      : 'false'
        @sap.sortable      : 'false'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'true'
        @sap.visible       : 'false';
        placeOfBirth         : String(100)
        @sap.creatable     : 'false'
        @sap.filterable    : 'false'
        @sap.label         : 'Place Of Birth'
        @sap.required      : 'false'
        @sap.sortable      : 'false'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'true'
        @sap.visible       : 'false';
        regionOfBirth        : String(100)
        @sap.creatable     : 'false'
        @sap.filterable    : 'false'
        @sap.label         : 'Region Of Birth'
        @sap.required      : 'false'
        @sap.sortable      : 'false'
        @sap.updatable     : 'false'
        @sap.upsertable    : 'true'
        @sap.visible       : 'false';
  }

  @cds.external
  type GenerateNextPersonIDResponse {
    personID : String
    @sap.creatable : 'true'
    @sap.filterable: 'false'
    @sap.label     : 'personID'
    @sap.required  : 'false'
    @sap.sortable  : 'false'
    @sap.updatable : 'true'
    @sap.upsertable: 'true'
    @sap.visible   : 'true';
  }

  @cds.external
  action generateNextPersonID() returns GenerateNextPersonIDResponse;
}
