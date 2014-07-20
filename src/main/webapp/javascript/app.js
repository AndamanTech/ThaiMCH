Ext.application({
    name   : 'MyApp',

    launch : function() {

       Ext.create('Ext.Panel', {
            renderTo     : Ext.getBody(),
            width        : 500,
            height       : 800,
            bodyPadding  : 5,
            title        : 'Hello World',
            html         : 'Hello <b>World</b>...'
        });

    }
});