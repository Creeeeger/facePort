.class public final synthetic Lcom/android/wm/shell/bubbles/BubbleFlyoutView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

.field public final synthetic f$1:Landroid/graphics/PointF;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleFlyoutView;Landroid/graphics/PointF;ZLcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/PointF;

    iput-boolean p3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView$$ExternalSyntheticLambda0;->f$2:Z

    iput-object p4, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleFlyoutView;Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;Landroid/graphics/PointF;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/PointF;

    iput-boolean p4, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/PointF;

    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView$$ExternalSyntheticLambda0;->f$2:Z

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->updateFlyoutMessage(Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;)V

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleFlyoutView$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, v2, p0}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/bubbles/BubbleFlyoutView;Landroid/graphics/PointF;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/PointF;

    iget-boolean v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView$$ExternalSyntheticLambda0;->f$2:Z

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v1, Landroid/graphics/PointF;->y:F

    iget v4, v0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBubbleSize:I

    iget-object v5, v0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutTextContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v4, v3

    iput v4, v0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutY:F

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget v3, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v3}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->updateFlyoutX(F)V

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->updateDot(Landroid/graphics/PointF;Z)V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
