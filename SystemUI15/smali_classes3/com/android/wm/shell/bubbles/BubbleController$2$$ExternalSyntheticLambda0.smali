.class public final synthetic Lcom/android/wm/shell/bubbles/BubbleController$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/BubbleController$2;

.field public final synthetic f$1:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController$2;Landroid/graphics/Rect;I)V
    .locals 0

    iput p3, p0, Lcom/android/wm/shell/bubbles/BubbleController$2$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/bubbles/BubbleController$2;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleController$2$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$2$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/bubbles/BubbleController$2;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$2$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleController$2;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    if-eqz v0, :cond_1

    iget p0, p0, Landroid/graphics/Rect;->top:I

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/common/bubbles/DismissView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/common/bubbles/DismissView;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMagneticTarget:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

    iput p0, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;->screenVerticalOffset:I

    iget-object p0, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;->targetView:Landroid/view/View;

    new-instance v1, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget$updateLocationOnScreen$1;

    invoke-direct {v1, v0}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget$updateLocationOnScreen$1;-><init>(Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/bubbles/BubbleController$2;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$2$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleController$2;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    if-eqz v0, :cond_3

    iget p0, p0, Landroid/graphics/Rect;->top:I

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/common/bubbles/DismissView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_2

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/common/bubbles/DismissView;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMagneticTarget:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

    iput p0, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;->screenVerticalOffset:I

    iget-object p0, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;->targetView:Landroid/view/View;

    new-instance v1, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget$updateLocationOnScreen$1;

    invoke-direct {v1, v0}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget$updateLocationOnScreen$1;-><init>(Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
