.class public final synthetic Lcom/android/wm/shell/bubbles/BubbleExpandedView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleExpandedView;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mOverflowView:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->show()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskView;->mTaskViewTaskController:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->setWindowBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void

    :pswitch_1
    sget-object v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->BOTTOM_CLIP_PROPERTY:Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070170

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mManageButton:Lcom/android/wm/shell/common/AlphaOptimizedButton;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    new-instance v0, Landroid/view/TouchDelegate;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mManageButton:Lcom/android/wm/shell/common/AlphaOptimizedButton;

    invoke-direct {v0, v1, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
