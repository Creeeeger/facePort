.class public interface abstract Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/animation/TransitionAnimator$Controller;


# static fields
.field public static final Companion:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller$Companion;->$$INSTANCE:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller$Companion;

    sput-object v0, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;->Companion:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller$Companion;

    return-void
.end method

.method public static synthetic onTransitionAnimationCancelled$default(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;->onTransitionAnimationCancelled(Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public getTransitionCookie()Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionCookie;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isBelowAnimatingWindow()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDialogLaunch()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onIntentStarted(Z)V
    .locals 0

    return-void
.end method

.method public onTransitionAnimationCancelled(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method
