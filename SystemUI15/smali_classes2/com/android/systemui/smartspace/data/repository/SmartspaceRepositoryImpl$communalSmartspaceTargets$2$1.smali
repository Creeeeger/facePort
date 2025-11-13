.class public final Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl$communalSmartspaceTargets$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl$communalSmartspaceTargets$2$1;->this$0:Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl$communalSmartspaceTargets$2$1;->this$0:Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl;

    iget-object v0, p0, Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl;->communalSmartspaceController:Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;

    iget-object v1, v0, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;->execution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v1}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    iget-object v2, v0, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;->plugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    if-eqz v2, :cond_0

    invoke-interface {v2, p0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->unregisterListener(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;)V

    :cond_0
    iget-object v3, v0, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;->listeners:Ljava/util/Set;

    invoke-interface {v3, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p0, v0, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;->listeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    iget-object p0, v0, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;->session:Landroid/app/smartspace/SmartspaceSession;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;->sessionListener:Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController$sessionListener$1;

    invoke-virtual {p0, v1}, Landroid/app/smartspace/SmartspaceSession;->removeOnTargetsAvailableListener(Landroid/app/smartspace/SmartspaceSession$OnTargetsAvailableListener;)V

    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceSession;->close()V

    const/4 p0, 0x0

    iput-object p0, v0, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;->session:Landroid/app/smartspace/SmartspaceSession;

    if-eqz v2, :cond_3

    invoke-interface {v2, p0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->registerSmartspaceEventNotifier(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;)V

    :cond_3
    if-eqz v2, :cond_4

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-interface {v2, p0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->onTargetsAvailable(Ljava/util/List;)V

    :cond_4
    const-string p0, "CommunalSmartspaceCtrlr"

    const-string v0, "Ending smartspace session for communal"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
