using MainService as service from '../../srv/main-service';
using from '../../db/schema';

annotate service.Feedbacks with @(
    UI.FieldGroup #GeneratedGroup  : {
        $Type: 'UI.FieldGroupType',
        Data : [

        ],
    },
    UI.Facets                      : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>Peoplesection}',
            ID    : 'PeopleSection',
            Target: '@UI.FieldGroup#PeopleSection1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>Corevaluesection}',
            ID    : 'CoreValueSection',
            Target: '@UI.FieldGroup#CoreValueSection',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>Commentsection}',
            ID    : 'CommentSection',
            Target: '@UI.FieldGroup#CommentSection',
        },
    ],
    UI.FieldGroup #PeopleSection   : {
        $Type: 'UI.FieldGroupType',
        Data : [],
    },
    UI.FieldGroup #PeopleSection1  : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Reporterid}',
                Value: reporter_ID,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Subjectid}',
                Value: subject_ID,
            },
        ],
    },
    UI.FieldGroup #CoreValueSection: {
        $Type: 'UI.FieldGroupType',
        Data : [{
            $Type: 'UI.DataField',
            Label: '{i18n>Corevaluecode}',
            Value: coreValue_code,
        }, ],
    },
    UI.FieldGroup #CommentSection  : {
        $Type: 'UI.FieldGroupType',
        Data : [{
            $Type: 'UI.DataField',
            Label: '{i18n>Comment}',
            Value: comment,
        }, ],
    },
    UI.HeaderInfo                  : {
        TypeImageUrl  : 'ext/fragment/img/feedback_icon.svg',
        TypeName      : '',
        TypeNamePlural: '',
        Description   : {
            $Type: 'UI.DataField',
            Value: 'Give your colleagues feedback to recognize their strengths and help them grow',
        },
        Title         : {
            $Type: 'UI.DataField',
            Value: 'Provide Feedback'
        }
    },
);

annotate service.Feedbacks with {
    reporter @(
        Common.ValueList               : {
            $Type         : 'Common.ValueListType',
            CollectionPath: 'Employees',
            Parameters    : [
                {
                    $Type            : 'Common.ValueListParameterInOut',
                    LocalDataProperty: reporter_ID,
                    ValueListProperty: 'ID',
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'firstName',
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'lastName',
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'displayName',
                },
            ],
        },
        Common.Text                    : reporter.displayName,
        Common.Text.@UI.TextArrangement: #TextOnly,
    )
};

annotate service.Feedbacks with {
    subject @(
        Common.ValueList               : {
            $Type         : 'Common.ValueListType',
            CollectionPath: 'Employees',
            Parameters    : [
                {
                    $Type            : 'Common.ValueListParameterInOut',
                    LocalDataProperty: subject_ID,
                    ValueListProperty: 'ID',
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'firstName',
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'lastName',
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'displayName',
                },
            ],
        },
        Common.Text                    : subject.displayName,
        Common.Text.@UI.TextArrangement: #TextOnly,
    )
};

annotate service.Feedbacks with {
    comment @UI.MultiLineText: true
};

annotate service.Feedbacks with {
    coreValue @(
        Common.ValueListWithFixedValues: true,
        Common.Text : coreValue.name,
        Common.Text.@UI.TextArrangement : #TextOnly,
    )
};

annotate service.CoreValues with {
    code @(
        Common.Text                    : name,
        Common.Text.@UI.TextArrangement: #TextOnly,
    )
};
