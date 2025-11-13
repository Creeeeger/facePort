.class public final Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl$communalSmartspaceTargets$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl$communalSmartspaceTargets$1$1;->this$0:Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl$communalSmartspaceTargets$1$1;->this$0:Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl;

    iget-object v0, p0, Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl;->communalSmartspaceController:Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;

    iget-object v1, v0, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;->execution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v1}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    iget-object v1, v0, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;->plugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    if-eqz v1, :cond_0

    invoke-interface {v1, p0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->registerListener(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;)V

    :cond_0
    iget-object v2, v0, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;->listeners:Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p0, v0, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;->smartspaceManager:Landroid/app/smartspace/SmartspaceManager;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, v0, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;->session:Landroid/app/smartspace/SmartspaceSession;

    if-nez p0, :cond_5

    iget-object p0, v0, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;->listeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, v0, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;->precondition:Lcom/android/systemui/smartspace/SmartspacePrecondition;

    check-cast p0, Lcom/android/systemui/smartspace/preconditions/LockscreenPrecondition;

    iget-object v2, p0, Lcom/android/systemui/smartspace/preconditions/LockscreenPrecondition;->execution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v2}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    iget-boolean p0, p0, Lcom/android/systemui/smartspace/preconditions/LockscreenPrecondition;->deviceReady:Z

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    iget-object p0, v0, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;->smartspaceManager:Landroid/app/smartspace/SmartspaceManager;

    new-instance v2, Landroid/app/smartspace/SmartspaceConfig$Builder;

    iget-object v3, v0, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;->context:Landroid/content/Context;

    const-string v4, "glanceable_hub"

    invoke-direct {v2, v3, v4}, Landroid/app/smartspace/SmartspaceConfig$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceConfig$Builder;->build()Landroid/app/smartspace/SmartspaceConfig;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/smartspace/SmartspaceManager;->createSmartspaceSession(Landroid/app/smartspace/SmartspaceConfig;)Landroid/app/smartspace/SmartspaceSession;

    move-result-object p0

    const-string v2, "CommunalSmartspaceCtrlr"

    const-string v3, "Starting smartspace session for communal"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;->uiExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, v0, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;->sessionListener:Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController$sessionListener$1;

    invoke-virtual {p0, v2, v3}, Landroid/app/smartspace/SmartspaceSession;->addOnTargetsAvailableListener(Ljava/util/concurrent/Executor;Landroid/app/smartspace/SmartspaceSession$OnTargetsAvailableListener;)V

    iput-object p0, v0, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;->session:Landroid/app/smartspace/SmartspaceSession;

    new-instance p0, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController$connectSession$1;

    invoke-direct {p0, v0}, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController$connectSession$1;-><init>(Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;)V

    invoke-interface {v1, p0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->registerSmartspaceEventNotifier(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;)V

    iget-object p0, v0, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;->session:Landroid/app/smartspace/SmartspaceSession;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceSession;->requestSmartspaceUpdate()V

    :cond_5
    :goto_0
    return-void
.end method
