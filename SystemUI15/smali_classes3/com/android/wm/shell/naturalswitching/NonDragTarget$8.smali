.class public final Lcom/android/wm/shell/naturalswitching/NonDragTarget$8;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

.field public final synthetic val$fromScaleX:F

.field public final synthetic val$fromScaleY:F

.field public final synthetic val$toScaleX:F

.field public final synthetic val$toScaleY:F


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/naturalswitching/NonDragTarget;FFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$8;->this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    iput p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$8;->val$fromScaleX:F

    iput p3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$8;->val$toScaleX:F

    iput p4, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$8;->val$fromScaleY:F

    iput p5, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$8;->val$toScaleY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$8;->val$fromScaleX:F

    iget v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$8;->val$toScaleX:F

    invoke-static {v1, v0, p1, v0}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result v0

    iget v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$8;->val$fromScaleY:F

    iget v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$8;->val$toScaleY:F

    invoke-static {v2, v1, p1, v1}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result p1

    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$8;->this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    iget-object v1, v1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$8;->this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    iget-object v1, v1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$8;->this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    iget-object v1, v1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$8;->this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    iget-object v0, v0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$8;->this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    iget-object p1, p1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidateOutline()V

    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$8;->this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidateOutline()V

    return-void
.end method
