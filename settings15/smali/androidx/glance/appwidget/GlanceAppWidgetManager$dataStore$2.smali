.class final Landroidx/glance/appwidget/GlanceAppWidgetManager$dataStore$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/datastore/core/DataStore;",
        "Landroidx/datastore/preferences/core/Preferences;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/glance/appwidget/GlanceAppWidgetManager;


# direct methods
.method public constructor <init>(Landroidx/glance/appwidget/GlanceAppWidgetManager;)V
    .locals 0

    iput-object p1, p0, Landroidx/glance/appwidget/GlanceAppWidgetManager$dataStore$2;->this$0:Landroidx/glance/appwidget/GlanceAppWidgetManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Landroidx/glance/appwidget/GlanceAppWidgetManager$dataStore$2;->this$0:Landroidx/glance/appwidget/GlanceAppWidgetManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/glance/appwidget/GlanceAppWidgetManager;->Companion:Landroidx/glance/appwidget/GlanceAppWidgetManager$Companion;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/glance/appwidget/GlanceAppWidgetManager;->dataStoreSingleton:Landroidx/datastore/core/DataStore;

    if-nez v1, :cond_0

    iget-object p0, p0, Landroidx/glance/appwidget/GlanceAppWidgetManager;->context:Landroid/content/Context;

    invoke-static {p0}, Landroidx/glance/appwidget/GlanceAppWidgetManager$Companion;->getAppManagerDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object v1

    sput-object v1, Landroidx/glance/appwidget/GlanceAppWidgetManager;->dataStoreSingleton:Landroidx/datastore/core/DataStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw p0
.end method
