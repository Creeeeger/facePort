.class public final Lcom/android/systemui/shade/ShadeSurfaceImpl;
.super Lcom/android/systemui/shade/ShadeViewControllerEmptyImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shade/ShadeSurface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/shade/ShadeViewControllerEmptyImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancelAnimation()V
    .locals 0

    return-void
.end method

.method public final cancelPendingCollapse(Z)V
    .locals 0

    return-void
.end method

.method public final closeQsIfPossible()V
    .locals 0

    return-void
.end method

.method public final getNotificationStackScrollLayoutController()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeSurfaceImpl;->getNotificationStackScrollLayoutController()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    move-result-object p0

    return-object p0
.end method

.method public final getTouchAnimator()Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;
    .locals 1

    new-instance p0, Lkotlin/NotImplementedError;

    const-string v0, "An operation is not implemented: Not yet implemented"

    invoke-direct {p0, v0}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final initDependencies(Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda29;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 0

    return-void
.end method

.method public final onAffordanceLaunchEnded()V
    .locals 0

    return-void
.end method

.method public final onScreenTurningOn()V
    .locals 0

    return-void
.end method

.method public final onThemeChanged()V
    .locals 0

    return-void
.end method

.method public final resetAlpha()V
    .locals 0

    return-void
.end method

.method public final resetTranslation()V
    .locals 0

    return-void
.end method

.method public final setBouncerShowing(Z)V
    .locals 0

    return-void
.end method

.method public final setDozing(ZZ)V
    .locals 0

    return-void
.end method

.method public final setImportantForAccessibility(I)V
    .locals 0

    return-void
.end method

.method public final setTouchAndAnimationDisabled(Z)V
    .locals 0

    return-void
.end method

.method public final setUserSetupComplete$1(Z)V
    .locals 0

    return-void
.end method

.method public final setWillPlayDelayedDozeAmountAnimation(Z)V
    .locals 0

    return-void
.end method

.method public final updateExpansionAndVisibility()V
    .locals 0

    return-void
.end method

.method public final updateResources$1()V
    .locals 0

    return-void
.end method
