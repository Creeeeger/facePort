.class public final synthetic Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;

.field public final synthetic f$1:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter$PreviewItemViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter$PreviewItemViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter$PreviewItemViewHolder;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter$PreviewItemViewHolder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const-string v2, "[FolderView] onTouch("

    const-string v3, "FreeformContainer"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p2, :cond_5

    if-eq p2, v5, :cond_4

    const/4 v6, 0x2

    if-eq p2, v6, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v6, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v6, v6, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mMultiInstancePreviewAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;

    iget-object v6, v6, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;->mSnapshotBitmapList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iget-object v7, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget v8, v7, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mVisibleIconMaxCount:I

    if-ge v6, v8, :cond_1

    iget v6, v7, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLastPositionX:F

    sub-float/2addr v0, v6

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v6, v7, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLastPositionY:F

    sub-float/2addr v1, v6

    iget-object v6, v7, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingPreview:Landroid/widget/ImageView;

    iget-object v7, v7, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-static {v7, v6}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->getDraggingViewBounds(Landroid/graphics/Rect;Landroid/view/View;)V

    float-to-double v6, v0

    float-to-double v0, v1

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget v6, v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mThresholdToMove:I

    int-to-float v6, v6

    cmpl-float v0, v0, v6

    if-ltz v0, :cond_6

    iget-object v0, v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    invoke-virtual {v0}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->isDismissButtonShowing()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    invoke-virtual {v0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->isSpringPreviewAnimating()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->createOrUpdateDismissButton()V

    iget-object v1, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDismissButtonView:Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->show(Landroid/graphics/Rect;)V

    iget-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    invoke-virtual {v0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->finishDraggingAppPreview()V

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter$PreviewItemViewHolder;->mPreview:Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTargetPreview:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter$PreviewItemViewHolder;->mItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    iput-object v1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTargetPreviewItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    if-nez v0, :cond_2

    const-string p1, "[FolderView] mTargetPreview is null"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object v1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingPreviewReturnLocation:[I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    iget-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingPreview:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingPreviewReturnLocation:[I

    aget v1, v1, v4

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    iget-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingPreview:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingPreviewReturnLocation:[I

    aget v1, v1, v5

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    iget-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTargetPreview:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->getCloneDrawableFromImageView(Landroid/widget/ImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingPreview:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingPreview:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter$PreviewItemViewHolder;->mPreview:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

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

    goto :goto_3

    :cond_4
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter$PreviewItemViewHolder;->mItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    if-eqz p0, :cond_7

    iget-object p2, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p2, p2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    const/16 v0, 0x1e

    invoke-virtual {p2, v0, p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->sendMessage(ILjava/lang/Object;)V

    iget-object p0, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iput-boolean v5, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mIsCollapsePreview:Z

    goto :goto_3

    :cond_5
    iget-object p0, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iput v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLastPositionX:F

    iput v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLastPositionY:F

    iput-boolean v4, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mHasPreviewMoved:Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    move v4, v5

    :cond_7
    :goto_3
    return v4
.end method
