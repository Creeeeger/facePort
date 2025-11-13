.class public final Landroidx/glance/appwidget/GlanceAppWidgetManager$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, Lkotlin/jvm/internal/PropertyReference2Impl;

    sget-object v1, Lkotlin/jvm/internal/CallableReference;->NO_RECEIVER:Ljava/lang/Object;

    const-class v2, Landroidx/glance/appwidget/GlanceAppWidgetManager$Companion;

    const-string v3, "appManagerDataStore"

    const-string v4, "getAppManagerDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;"

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/PropertyReference;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, v6}, Lkotlin/jvm/internal/ReflectionFactory;->property2(Lkotlin/jvm/internal/PropertyReference2;)Lkotlin/reflect/KProperty2;

    move-result-object v0

    filled-new-array {v0}, [Lkotlin/reflect/KProperty;

    move-result-object v0

    sput-object v0, Landroidx/glance/appwidget/GlanceAppWidgetManager$Companion;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public static getAppManagerDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;
    .locals 3

    sget-object v0, Landroidx/glance/appwidget/GlanceAppWidgetManager;->appManagerDataStore$delegate:Lkotlin/properties/ReadOnlyProperty;

    sget-object v1, Landroidx/glance/appwidget/GlanceAppWidgetManager$Companion;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadOnlyProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/datastore/core/DataStore;

    return-object p0
.end method

.method public static providerKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    const-string v0, "provider:"

    invoke-static {v0, p0}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/datastore/preferences/core/PreferencesKeys;->stringKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object p0

    return-object p0
.end method
