.class public final Lcom/android/systemui/animation/Expandable$Companion$fromView$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/animation/Expandable;


# instance fields
.field public final synthetic $view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/animation/Expandable$Companion$fromView$1;->$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final activityTransitionController(Ljava/lang/Integer;)Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;
    .locals 1

    sget-object v0, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;->Companion:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller$Companion;

    iget-object p0, p0, Lcom/android/systemui/animation/Expandable$Companion$fromView$1;->$view:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, v0}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller$Companion;->fromView(Landroid/view/View;Ljava/lang/Integer;Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionCookie;Landroid/content/ComponentName;Ljava/lang/Integer;)Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;

    move-result-object p0

    return-object p0
.end method

.method public final dialogTransitionController(Lcom/android/systemui/animation/DialogCuj;)Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;
    .locals 1

    sget-object v0, Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;->Companion:Lcom/android/systemui/animation/DialogTransitionAnimator$Controller$Companion;

    iget-object p0, p0, Lcom/android/systemui/animation/Expandable$Companion$fromView$1;->$view:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lcom/android/systemui/animation/DialogTransitionAnimator$Controller$Companion;->fromView(Landroid/view/View;Lcom/android/systemui/animation/DialogCuj;)Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController;

    move-result-object p0

    return-object p0
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/Expandable$Companion$fromView$1;->$view:Landroid/view/View;

    return-object p0
.end method
