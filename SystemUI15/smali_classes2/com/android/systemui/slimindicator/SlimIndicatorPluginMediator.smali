.class public final Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPluginListener;


# instance fields
.field public mIsSPluginConnected:Z

.field public final mManager:Lcom/android/systemui/slimindicator/SlimIndicatorManager;

.field public final mReceiverManager:Lcom/android/systemui/slimindicator/SlimIndicatorReceiverManager;

.field public final mSettingsBackUpManager:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/slimindicator/SlimIndicatorManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    iput-object p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mManager:Lcom/android/systemui/slimindicator/SlimIndicatorManager;

    new-instance p2, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;

    invoke-direct {p2, p1}, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mSettingsBackUpManager:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;

    iget-boolean p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->onPluginDisconnected()V

    :cond_0
    new-instance p1, Lcom/android/systemui/slimindicator/SlimIndicatorReceiverManager;

    invoke-direct {p1, p2}, Lcom/android/systemui/slimindicator/SlimIndicatorReceiverManager;-><init>(Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;)V

    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mReceiverManager:Lcom/android/systemui/slimindicator/SlimIndicatorReceiverManager;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/samsung/systemui/splugins/SPluginManager;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/systemui/splugins/SPluginManager;

    const-class p2, Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;

    invoke-interface {p1, p0, p2}, Lcom/samsung/systemui/splugins/SPluginManager;->addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final onPluginConnected(Lcom/samsung/systemui/splugins/SPlugin;Landroid/content/Context;)V
    .locals 4

    check-cast p1, Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onPluginConnected() mIsSPluginConnected:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", plugin:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "[QuickStar]SlimIndicatorPluginMediator"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mReceiverManager:Lcom/android/systemui/slimindicator/SlimIndicatorReceiverManager;

    iget-boolean v1, p2, Lcom/android/systemui/slimindicator/SlimIndicatorReceiverManager;->mIsRegistered:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2

    iget-object v1, p2, Lcom/android/systemui/slimindicator/SlimIndicatorReceiverManager;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;

    invoke-virtual {v3}, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;->register()V

    goto :goto_0

    :cond_1
    iput-boolean v2, p2, Lcom/android/systemui/slimindicator/SlimIndicatorReceiverManager;->mIsRegistered:Z

    :cond_2
    iget-object p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mSettingsBackUpManager:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;

    iget-object p2, p2, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mSettingsListener:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    iget-object v3, p2, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener;->mSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {v1, p2, v3}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    :cond_3
    iput-boolean v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mManager:Lcom/android/systemui/slimindicator/SlimIndicatorManager;

    check-cast p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    iget-boolean p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mIsAddedTunable:Z

    if-nez p2, :cond_4

    sget-object p2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {p2, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "icon_blacklist"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mUserSwitchListener:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl$UserSwitchListener;

    invoke-virtual {p2, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iput-boolean v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mIsAddedTunable:Z

    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->notifyNewsToSubscribers()V

    :cond_4
    if-eqz p1, :cond_5

    :try_start_0
    invoke-interface {p1}, Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;->onPluginConnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "Please check app version."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return-void
.end method

.method public final onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;I)V
    .locals 3

    check-cast p1, Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPluginDisconnected() mIsSPluginConnected:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", plugin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[QuickStar]SlimIndicatorPluginMediator"

    invoke-static {p2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-boolean p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mReceiverManager:Lcom/android/systemui/slimindicator/SlimIndicatorReceiverManager;

    iget-object v0, p2, Lcom/android/systemui/slimindicator/SlimIndicatorReceiverManager;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;

    invoke-virtual {v2}, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;->unregister()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/android/systemui/slimindicator/SlimIndicatorReceiverManager;->mIsRegistered:Z

    iget-object p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mSettingsBackUpManager:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;

    invoke-virtual {p2}, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->onPluginDisconnected()V

    iput-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mManager:Lcom/android/systemui/slimindicator/SlimIndicatorManager;

    check-cast p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    iget-boolean p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mIsAddedTunable:Z

    if-eqz p2, :cond_2

    sget-object p2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {p2, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {p2, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    iget-object p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mUserSwitchListener:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl$UserSwitchListener;

    invoke-virtual {p2, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iput-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mIsAddedTunable:Z

    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->notifyNewsToSubscribers()V

    :cond_2
    if-eqz p1, :cond_3

    :try_start_0
    invoke-interface {p1}, Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;->onPluginDisconnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "Please check app version."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method
