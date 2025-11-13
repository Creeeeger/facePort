.class public final synthetic Lcom/android/wm/shell/freeform/FreeformContainerFolderView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;Landroid/view/View;I)V
    .locals 0

    iput p3, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iget-boolean v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mIsAppIconMoving:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setY(F)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iget-boolean v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mIsAppIconMoving:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    :cond_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iget-boolean v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mIsAppIconMoving:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
