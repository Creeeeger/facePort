.class public final synthetic Lcom/android/systemui/qs/buttons/QSPowerButton$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/buttons/QSPowerButton;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/buttons/QSPowerButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSPowerButton$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/buttons/QSPowerButton;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSPowerButton$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/buttons/QSPowerButton;

    sget p1, Lcom/android/systemui/qs/buttons/QSPowerButton;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "QSPowerButton"

    const-string v0, "!@[Shutdown] Click power off button."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/FactoryTest;->isLongPressOnPowerOffEnabled()Z

    move-result v0

    const-class v1, Lcom/android/systemui/globalactions/GlobalActionsComponent;

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSPowerButton;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget p0, Lcom/android/systemui/globalactions/presentation/view/SamsungGlobalActionsDialog;->$r8$clinit:I

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsComponent;->handleShowGlobalActionsMenu(I)V

    sget-boolean p0, Lcom/android/systemui/BasicRune;->GLOBALACTIONS_BLUR:Z

    if-eqz p0, :cond_3

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p1, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    invoke-virtual {p0, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    invoke-interface {p0}, Lcom/android/systemui/shade/ShadeViewController;->closeQsIfPossible()V

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p1, Lcom/android/systemui/shade/ShadeController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shade/ShadeController;

    invoke-interface {p0}, Lcom/android/systemui/shade/ShadeController;->animateCollapseShadeForcedDelayed()V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p0, "!@long press power shutdown by power icon of quickpanel"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsComponent;->shutdown()V

    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QPPE1002"

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
