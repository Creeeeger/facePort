.class public final Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter$Callback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChangedVisibilityOnKeyguard(Z)V
    .locals 1

    sget-object p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1$onChangedVisibilityOnKeyguard$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1$onChangedVisibilityOnKeyguard$1;-><init>(Z)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onNoclearAppListUpdate(Landroid/os/Bundle;)V
    .locals 0

    const-string p0, "NoclearAppList"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/noticenter/NotiCenterPlugin;->INSTANCE:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->noclearAppList:Ljava/util/HashSet;

    sget-object p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->mListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotilusCoordinator;

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->handler:Landroid/os/Handler;

    sget-object p1, Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1$onNoclearAppListUpdate$1;->INSTANCE:Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1$onNoclearAppListUpdate$1;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final onNoclearUpdate(Z)V
    .locals 0

    sget-object p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->INSTANCE:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-boolean p1, Lcom/android/systemui/noticenter/NotiCenterPlugin;->noclearEnabled:Z

    sget-object p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->mListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotilusCoordinator;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->handler:Landroid/os/Handler;

    sget-object p1, Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1$onNoclearUpdate$1;->INSTANCE:Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1$onNoclearUpdate$1;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onNotiCenterPanelUpdate(Landroid/widget/RemoteViews;)V
    .locals 0

    return-void
.end method

.method public final onNotiStarPanelShowOnKeyguard(Z)V
    .locals 1

    const-class p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, p0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchNotiStarState(Z)V

    return-void
.end method

.method public final ongoingDismissableUpdate(Z)V
    .locals 0

    sget-object p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->INSTANCE:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
