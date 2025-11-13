.class public final Lcom/android/systemui/shared/plugins/PluginManagerImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shared/plugins/PluginManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/plugins/PluginManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl$1;->this$0:Lcom/android/systemui/shared/plugins/PluginManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string p1, "android.intent.extra.user_handle"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    sget v0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->$r8$clinit:I

    const-string v0, "PluginManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceive action="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " userId="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl$1;->this$0:Lcom/android/systemui/shared/plugins/PluginManagerImpl;

    iget-object p2, p2, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/plugins/PluginActionManager;

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/shared/plugins/PluginActionManager;->loadAll()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget-boolean v1, v0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mAllowMultipleUsers:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/shared/plugins/PluginActionManager;->loadAll()V

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
