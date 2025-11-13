.class public final Lcom/android/systemui/edgelighting/EdgeLightingService$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/EdgeLightingService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getUIController(Z)Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mDispatcher:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createEdgeLightingDialog make dispatcher "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EdgeLightingService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-boolean v1, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_AOD:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/4 v3, -0x2

    const-string v4, "edge_lighting_show_condition"

    invoke-static {v0, v4, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    :goto_0
    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    new-instance v0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v2, :cond_3

    const/16 v3, 0x8b3

    goto :goto_2

    :cond_3
    const/16 v3, 0x8b4

    :goto_2
    invoke-direct {v0, v1, v3, p1}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mDispatcher:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    new-instance p1, Lcom/android/systemui/edgelighting/EdgeLightingService$5;

    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/EdgeLightingService$5;-><init>(Lcom/android/systemui/edgelighting/EdgeLightingService;)V

    invoke-virtual {v0, p1}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->registerEdgeWindowCallback(Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;)V

    iget-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mDispatcher:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    if-eqz p1, :cond_4

    iput-boolean v2, p1, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDozeDraw:Z

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mDispatcher:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    return-object p0
.end method

.method public final isAppLockEnabled()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;->isAppLockEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-boolean v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->sConfigured:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Remote exception in isAppLockEnabled "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "EdgeLightingService"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method

.method public final isNeedToSanitized(IILjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;->isNeedToSanitize(IILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-boolean p1, Lcom/android/systemui/edgelighting/EdgeLightingService;->sConfigured:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Remote exception in isNeedToSanitized "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EdgeLightingService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method

.method public final isScreenOn()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    return p0
.end method

.method public final isSensitiveStateActive()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;->isSensitiveStateActive()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-boolean v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->sConfigured:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Remote exception in isSensitiveStateActive "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "EdgeLightingService"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method

.method public final isSupportAppLock()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;->isSupportAppLock()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-boolean v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->sConfigured:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Remote exception in isSupportAppLock "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "EdgeLightingService"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method

.method public final isUIControllerExist()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mDispatcher:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final requestDozeStateSubScreen(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    :try_start_0
    iget-object v1, v0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->isScreenOn()Z

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, v0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    invoke-interface {p0, p1}, Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;->requestDozeStateSubScreen(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    :goto_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final requestStopService()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    const-string v0, "requestStopService"

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final sendClickEvent(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;->sendClickEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-boolean p1, Lcom/android/systemui/edgelighting/EdgeLightingService;->sConfigured:Z

    const-string p1, "EdgeLightingService"

    const-string v0, "Remote exception "

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final shouldHideNotiForAppLockByPackage(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;->shouldHideNotiForAppLockByPackage(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-boolean p1, Lcom/android/systemui/edgelighting/EdgeLightingService;->sConfigured:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Remote exception in shouldHideNotiForAppLock "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EdgeLightingService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method
