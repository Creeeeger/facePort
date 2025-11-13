.class public interface abstract Lcom/android/systemui/shade/ShadeSurface;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shade/ShadeViewController;
.implements Lcom/android/systemui/shade/domain/interactor/ShadeBackActionInteractor;
.implements Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;
.implements Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;


# virtual methods
.method public abstract cancelAnimation()V
.end method

.method public abstract cancelPendingCollapse(Z)V
.end method

.method public expandQSForOpenDetail()V
    .locals 0

    return-void
.end method

.method public abstract getTouchAnimator()Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;
.end method

.method public abstract initDependencies(Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda29;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
.end method

.method public abstract onAffordanceLaunchEnded()V
.end method

.method public abstract onScreenTurningOn()V
.end method

.method public abstract onThemeChanged()V
.end method

.method public abstract resetAlpha()V
.end method

.method public abstract resetTranslation()V
.end method

.method public abstract setBouncerShowing(Z)V
.end method

.method public abstract setDozing(ZZ)V
.end method

.method public abstract setImportantForAccessibility(I)V
.end method

.method public abstract setTouchAndAnimationDisabled(Z)V
.end method

.method public abstract setUserSetupComplete$1(Z)V
.end method

.method public abstract setWillPlayDelayedDozeAmountAnimation(Z)V
.end method

.method public abstract updateExpansionAndVisibility()V
.end method

.method public abstract updateResources$1()V
.end method
