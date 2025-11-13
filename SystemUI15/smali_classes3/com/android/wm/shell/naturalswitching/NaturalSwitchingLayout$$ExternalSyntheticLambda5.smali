.class public final synthetic Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda5;->f$0:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda5;->f$0:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    iget-object v0, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mMainView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method
