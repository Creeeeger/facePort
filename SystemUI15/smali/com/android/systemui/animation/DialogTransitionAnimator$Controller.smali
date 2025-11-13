.class public interface abstract Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/animation/DialogTransitionAnimator$Controller$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/systemui/animation/DialogTransitionAnimator$Controller$Companion;->$$INSTANCE:Lcom/android/systemui/animation/DialogTransitionAnimator$Controller$Companion;

    sput-object v0, Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;->Companion:Lcom/android/systemui/animation/DialogTransitionAnimator$Controller$Companion;

    return-void
.end method


# virtual methods
.method public abstract createExitController()Lcom/android/systemui/animation/TransitionAnimator$Controller;
.end method

.method public abstract createTransitionController()Lcom/android/systemui/animation/TransitionAnimator$Controller;
.end method

.method public abstract getCuj()Lcom/android/systemui/animation/DialogCuj;
.end method

.method public abstract getSourceIdentity()Ljava/lang/Object;
.end method

.method public abstract getViewRoot()Landroid/view/ViewRootImpl;
.end method

.method public abstract jankConfigurationBuilder()Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
.end method

.method public abstract onExitAnimationCancelled()V
.end method

.method public abstract shouldAnimateExit()Z
.end method

.method public abstract startDrawingInOverlayOf(Landroid/view/ViewGroup;)V
.end method

.method public abstract stopDrawingInOverlay()V
.end method
