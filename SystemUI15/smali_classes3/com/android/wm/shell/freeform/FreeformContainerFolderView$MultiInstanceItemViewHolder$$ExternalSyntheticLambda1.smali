.class public final synthetic Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewItemViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewItemViewHolder;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    iget p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewItemViewHolder;

    packed-switch p1, :pswitch_data_0

    check-cast p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mFreeformThumbnailView:Lcom/android/wm/shell/freeform/FreeformThumbnailView;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x7

    if-eq p1, p2, :cond_3

    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p2, p2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;->mDismissPreview:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder$2;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p2, p2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;->mShowPreview:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder$1;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/16 p2, 0x9

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZED_PREVIEW:Z

    if-eqz p2, :cond_1

    iget-object p2, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mFreeformThumbnailView:Lcom/android/wm/shell/freeform/FreeformThumbnailView;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mWindowManager:Landroid/view/WindowManager;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mFreeformThumbnailView:Lcom/android/wm/shell/freeform/FreeformThumbnailView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    const v5, 0x1000338

    const/4 v6, -0x3

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/16 v4, 0xa2c

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const-string v1, "freeform-thumbnail"

    invoke-virtual {v7, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget v1, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v2, 0x20000050

    or-int/2addr v1, v2

    iput v1, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {v7, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/4 v1, 0x1

    iput v1, v7, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const v1, 0x800033

    iput v1, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-interface {p2, p1, v7}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;->mShowPreview:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder$1;

    const-wide/16 v1, 0x190

    invoke-virtual {p1, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;->mDismissPreview:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder$2;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return v0

    :pswitch_0
    check-cast p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mFreeformThumbnailView:Lcom/android/wm/shell/freeform/FreeformThumbnailView;

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x7

    if-eq p1, p2, :cond_9

    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->mHandler:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$MultiInstanceEventHandler;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_1

    :cond_5
    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p2, p2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->mDismissMultiInstancePreviewByHoverExit:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1$$ExternalSyntheticLambda1;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->mHandler:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$MultiInstanceEventHandler;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/16 p2, 0x9

    if-ne p1, p2, :cond_8

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->mHandler:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$MultiInstanceEventHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPopupWindow:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewPopupWindow;

    if-eqz p1, :cond_7

    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewItemViewHolder;->mItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    iget-boolean v1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewPopupWindow;->mOpenedByHoverAction:Z

    if-nez v1, :cond_7

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewPopupWindow;->mItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    if-eqz p1, :cond_7

    if-ne p1, p2, :cond_7

    const-string p0, "FreeformContainer"

    const-string p1, "[FolderView] skip create preview by hover, reason=click_mode"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->mHandler:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$MultiInstanceEventHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->mHandler:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$MultiInstanceEventHandler;

    const-wide/16 v0, 0x190

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_8
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->mDismissMultiInstancePreviewByHoverExit:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1$$ExternalSyntheticLambda1;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_9
    :goto_1
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
