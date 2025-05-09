using CatalogService as service from '../../srv/cat-service';
annotate service.Books with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : ID,
            Label : 'ID',
        },
        {
            $Type : 'UI.DataField',
            Value : stock,
            Label : 'Stock',
        },
        {
            $Type : 'UI.DataField',
            Value : title,
            Label : 'Title',
        },
        {
            $Type : 'UI.DataField',
            Value : author.firstname,
            Label : 'Author First Name',
        },
        {
            $Type : 'UI.DataField',
            Value : author.lastname,
            Label : 'Author Last Name',
        },
    ],
    UI.SelectionFields : [
        ID,
        stock,
        title,
    ],
);

annotate service.Books with {
    ID @Common.Label : 'ID'
};

annotate service.Books with {
    stock @Common.Label : 'stock'
};

annotate service.Books with {
    title @Common.Label : 'title'
};

