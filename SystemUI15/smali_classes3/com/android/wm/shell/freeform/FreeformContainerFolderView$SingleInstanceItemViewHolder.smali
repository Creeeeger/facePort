.class public final Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;
.super Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewItemViewHolder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mButtonHoverListener:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$$ExternalSyntheticLambda1;

.field public final mDismissPreview:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder$2;

.field public final mIconView:Landroid/widget/ImageView;

.field public mIsVisiblePreview:Z

.field public final mShowPreview:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder$1;

.field public final synthetic this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewItemViewHolder;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;Landroid/view/View;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;->mIsVisiblePreview:Z

    new-instance v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder$1;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;)V

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;->mShowPreview:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder$1;

    new-instance v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder$2;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder$2;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;)V

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;->mDismissPreview:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder$2;

    new-instance v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewItemViewHolder;I)V

    const v1, 0x7f0a0478

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setHapticFeedbackEnabled(Z)V

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZED_PREVIEW:Z

    if-eqz p0, :cond_0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const-string v1, ")"

    const-string v2, "[FolderView] onTouch("

    const-string v3, "FreeformContainer"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p2, :cond_4

    if-eq p2, v5, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v1, v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;

    invoke-virtual {v1}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;->getItemCount()I

    move-result v1

    iget-object v6, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget v7, v6, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mVisibleIconMaxCount:I

    if-ge v1, v7, :cond_1

    iget v1, v6, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLastPositionX:F

    sub-float/2addr p1, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget v1, v6, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLastPositionY:F

    sub-float/2addr v0, v1

    iget-object v1, v6, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    iget-object v6, v6, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-static {v6, v1}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->getDraggingViewBounds(Landroid/graphics/Rect;Landroid/view/View;)V

    float-to-double v6, p1

    float-to-double v0, v0

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float p1, v0

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mThresholdToMove:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_5

    iget-object p1, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->isDismissButtonShowing()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->isSpringAnimating()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->createOrUpdateDismissButton()V

    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDismissButtonView:Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->show(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->finishDraggingAppIcon()V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;->mIconView:Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTargetIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewItemViewHolder;->mItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    iput-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTargetItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    invoke-static {p1}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->-$$Nest$mstartDraggingAppIcon(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;)V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;->mIconView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mEmptySlotIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): Ready to move"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewItemViewHolder;->mItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p2, p2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    const/16 v0, 0x1e

    invoke-virtual {p2, v0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->sendMessage(ILjava/lang/Object;)V

    :cond_3
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    invoke-virtual {p0, v4, v5, v5}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->updateContainerState(IZZ)V

    return v4

    :cond_4
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iput p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLastPositionX:F

    iput v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLastPositionY:F

    iput-boolean v4, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mHasIconMoved:Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return v5
.end method
