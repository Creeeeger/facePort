.class public final Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetLockManager;


# instance fields
.field public final mCallbackMap:Ljava/util/HashMap;

.field public final mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

.field public final mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/lockstar/PluginLockStarManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;->mCallbackMap:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    iput-object p2, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    return-void
.end method


# virtual methods
.method public final addLockStarStateCallback(Lcom/android/systemui/plugins/keyguardstatusview/PluginLockStarStateCallback;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper$FaceWidgetLockStarStateCallbackWrapper;

    invoke-direct {v0, p1}, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper$FaceWidgetLockStarStateCallbackWrapper;-><init>(Lcom/android/systemui/plugins/keyguardstatusview/PluginLockStarStateCallback;)V

    iget-object v1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v1, v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->registerStateCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public final getModifier(Ljava/lang/String;)Ljava/util/function/Consumer;
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getModifier(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getSupplier(Ljava/lang/String;)Ljava/util/function/Supplier;
    .locals 3

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getSupplier(Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSupplier "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LStar|PluginLockStarManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method public final onSendExtraData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    if-nez p0, :cond_0

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->requestExtraData(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    goto :goto_1

    :cond_2
    :goto_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    :goto_1
    return-object p0
.end method

.method public final removeLockStarStateCallback(Lcom/android/systemui/plugins/keyguardstatusview/PluginLockStarStateCallback;)V
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper$FaceWidgetLockStarStateCallbackWrapper;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper$FaceWidgetLockStarStateCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginLockStarStateCallback;

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method
