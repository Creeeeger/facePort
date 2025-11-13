.class public final Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;
.super Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewItemViewHolder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mButtonHoverListener:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$$ExternalSyntheticLambda1;

.field public final mDismissMultiInstancePreviewByHoverExit:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1$$ExternalSyntheticLambda1;

.field public final mHandler:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$MultiInstanceEventHandler;

.field public final mMultiInstancePointerGroupView:Landroid/view/ViewGroup;

.field public final synthetic this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;


# direct methods
.method public static -$$Nest$mcreateMultiInstancePreview(Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;Z)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewItemViewHolder;->mItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    invoke-virtual {v1}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->asMultiInstanceItem()Lcom/android/wm/shell/freeform/MultiInstanceItem;

    move-result-object v1

    const-string v2, "FreeformContainer"

    if-eqz v1, :cond_9

    iget-object v3, v1, Lcom/android/wm/shell/freeform/MultiInstanceItem;->mChildItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v3, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewItemViewHolder;->mItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    invoke-virtual {v3}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->getItemCount()I

    move-result v3

    iget-object v5, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->mMultiInstancePointerGroupView:Landroid/view/ViewGroup;

    sub-int/2addr v3, v4

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "createMultiInstancePreview: cannot find child view, "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const/4 v6, 0x0

    if-ltz v3, :cond_3

    iget-object v7, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewItemViewHolder;->mItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    invoke-virtual {v7}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->getItemList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/wm/shell/freeform/MultiInstanceItem;

    iget-object v8, v7, Lcom/android/wm/shell/freeform/MultiInstanceItem;->mSnapshotBitmap:Landroid/graphics/Bitmap;

    if-nez v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Use dummy bitmap, "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget v8, v7, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPreviewWidth:I

    iget v7, v7, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPreviewHeight:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v7, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v9, -0x1

    invoke-virtual {v7, v9}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_2
    iget-object v7, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget v9, v7, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPreviewWidth:I

    iget v7, v7, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPreviewHeight:I

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-static {v8, v6, v6, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6, v9, v7, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    iget-object v3, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v3, v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mItemDecoration:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;

    iget-object v3, v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewItemViewHolder;->mItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "createMultiInstancePreviewPopup: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    const-string v7, "create_new_popup"

    invoke-virtual {v2, v7}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->dismissMultiInstancePreviewPopup(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v2, v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v7, 0x7f0d02d3

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iget-object v15, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    new-instance v13, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewPopupWindow;

    const/4 v10, -0x2

    const/4 v11, 0x1

    const/4 v9, -0x2

    move-object v7, v13

    move-object v8, v2

    move/from16 v12, p1

    move-object v6, v13

    move-object v13, v14

    invoke-direct/range {v7 .. v13}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewPopupWindow;-><init>(Landroid/view/View;IIZZLcom/android/wm/shell/freeform/FreeformContainerItem;)V

    iput-object v6, v15, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPopupWindow:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewPopupWindow;

    iget-object v6, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v6, v6, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPopupWindow:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewPopupWindow;

    invoke-virtual {v6, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v6, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v6, v6, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPopupWindow:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewPopupWindow;

    iget-boolean v7, v6, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewPopupWindow;->mOpenedByHoverAction:Z

    if-nez v7, :cond_4

    iget-object v7, v6, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewPopupWindow;->mItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    if-eqz v7, :cond_4

    if-ne v7, v14, :cond_4

    invoke-virtual {v6, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    :cond_4
    iget-object v6, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v6, v6, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPopupWindow:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewPopupWindow;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v6, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v6, v6, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPopupWindow:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewPopupWindow;

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v8, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v6, v8}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    const v7, 0x7f0a0915

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView;

    iput-object v2, v6, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPreviewRecycler:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    new-instance v6, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;

    iget-object v7, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    invoke-direct {v6, v7, v1, v14}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;Ljava/util/List;Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    iput-object v6, v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mMultiInstancePreviewAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;

    new-instance v1, Lcom/android/internal/widget/LinearLayoutManager;

    iget-object v2, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v2, v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v2, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v2, v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPreviewRecycler:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/RecyclerView;->setLayoutManager(Lcom/android/internal/widget/RecyclerView$LayoutManager;)V

    iget-object v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v2, v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPreviewRecycler:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mMultiInstancePreviewAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/RecyclerView;->setAdapter(Lcom/android/internal/widget/RecyclerView$Adapter;)V

    iget-object v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v1, v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPreviewRecycler:Lcom/android/internal/widget/RecyclerView;

    const/high16 v2, 0x3000000

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/RecyclerView;->setScrollBarStyle(I)V

    iget-object v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v1, v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mMultiInstancePreviewAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v1, v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPreviewRecycler:Lcom/android/internal/widget/RecyclerView;

    new-instance v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$1;

    invoke-direct {v2, v0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$1;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/RecyclerView;->addOnItemTouchListener(Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;)V

    invoke-virtual {v14}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->getItemCount()I

    move-result v1

    invoke-virtual {v5}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v2

    const/4 v6, 0x0

    aget v6, v2, v6

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    aget v2, v2, v4

    iget-object v4, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget v6, v4, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPreviewHeight:I

    iget v8, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v6

    iget v9, v4, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mVerticalPreviewMargin:I

    mul-int/lit8 v9, v9, 0x2

    add-int v10, v9, v8

    sub-int v10, v2, v10

    iget-object v11, v4, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mStableInsets:Landroid/graphics/Rect;

    iget v12, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v12

    if-lez v10, :cond_5

    iget v3, v4, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mThumbnailMargin:I

    add-int/2addr v8, v3

    add-int/2addr v8, v9

    sub-int/2addr v2, v8

    goto :goto_1

    :cond_5
    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v6

    add-int/2addr v8, v2

    iget-object v4, v4, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDisplaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v9, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v9

    if-le v8, v4, :cond_6

    sub-int v2, v4, v6

    goto :goto_1

    :cond_6
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v2

    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v2

    iget-object v2, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget v2, v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mThumbnailMargin:I

    add-int/2addr v2, v4

    :goto_1
    iget-object v3, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget v4, v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPreviewWidth:I

    mul-int/2addr v1, v4

    div-int/lit8 v4, v1, 0x2

    sub-int v5, v7, v4

    iget-object v6, v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mStableInsets:Landroid/graphics/Rect;

    iget v8, v6, Landroid/graphics/Rect;->left:I

    sub-int v9, v5, v8

    if-gez v9, :cond_7

    move v5, v8

    goto :goto_2

    :cond_7
    add-int/2addr v7, v4

    iget v4, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v4

    iget-object v3, v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDisplaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int v6, v3, v4

    if-le v7, v6, :cond_8

    sub-int/2addr v3, v1

    sub-int v5, v3, v4

    :cond_8
    :goto_2
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v5, v2}, Landroid/graphics/Point;-><init>(II)V

    iget-object v2, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v2, v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget-object v2, v2, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    new-instance v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v0, v1}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    iget-object v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v1, v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPopupWindow:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewPopupWindow;

    new-instance v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_SA_LOGGING:Z

    if-eqz v0, :cond_a

    const-string v0, "2204"

    invoke-static {v0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "createMultiInstancePreview: invalid item, "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_4
    return-void
.end method

.method public static -$$Nest$mrestorePreview(Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;)V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mMultiInstancePreviewAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;

    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;->mSnapshotBitmapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v2, v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPreviewRecycler:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter$PreviewItemViewHolder;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter$PreviewItemViewHolder;->mItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    iget-object v4, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v4, v4, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTargetPreviewItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter$PreviewItemViewHolder;->mPreview:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v3, v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingPreview:Landroid/widget/ImageView;

    invoke-static {v3}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->getCloneDrawableFromImageView(Landroid/widget/ImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewItemViewHolder;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;Landroid/view/View;)V

    new-instance p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1$$ExternalSyntheticLambda1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->mDismissMultiInstancePreviewByHoverExit:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1$$ExternalSyntheticLambda1;

    new-instance p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$$ExternalSyntheticLambda1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewItemViewHolder;I)V

    new-instance v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$MultiInstanceEventHandler;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$MultiInstanceEventHandler;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;)V

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->mHandler:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$MultiInstanceEventHandler;

    const v0, 0x7f0a07a4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->mMultiInstancePointerGroupView:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x1

    const-string v2, ")"

    const-string v3, "[FolderView] onTouch("

    const-string v4, "FreeformContainer"

    const/4 v5, 0x0

    if-eqz p2, :cond_a

    const/4 v6, 0x2

    if-eq p2, v1, :cond_5

    if-eq p2, v6, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v2, v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;

    invoke-virtual {v2}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;->getItemCount()I

    move-result v2

    iget-object v6, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget v7, v6, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mVisibleIconMaxCount:I

    if-ge v2, v7, :cond_1

    iget v2, v6, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLastPositionX:F

    sub-float/2addr p1, v2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget v2, v6, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLastPositionY:F

    sub-float/2addr v0, v2

    iget-object v2, v6, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    iget-object v6, v6, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-static {v6, v2}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->getDraggingViewBounds(Landroid/graphics/Rect;Landroid/view/View;)V

    float-to-double v6, p1

    float-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float p1, v6

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget v2, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mThresholdToMove:I

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_b

    iget-object p1, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->isDismissButtonShowing()Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->isSpringAnimating()Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-boolean v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mIsAppIconMoving:Z

    if-nez v0, :cond_2

    iput-boolean v1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mIsAppIconMoving:Z

    :cond_2
    iget-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->createOrUpdateDismissButton()V

    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDismissButtonView:Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->show(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->finishDraggingAppIcon()V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->mMultiInstancePointerGroupView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTargetIconView:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewItemViewHolder;->mItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    iput-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTargetItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    invoke-static {p1}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->-$$Nest$mstartDraggingAppIcon(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;)V

    move p1, v5

    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->mMultiInstancePointerGroupView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->mMultiInstancePointerGroupView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v1, v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mEmptySlotIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): Ready to move"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewItemViewHolder;->mItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    if-nez p1, :cond_6

    const-string p1, "[FolderView] cannot find item"

    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    invoke-virtual {p0, v5, v1, v1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->updateContainerState(IZZ)V

    return v5

    :cond_6
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_CONTAINER_MULTIINSTANCE_PREVIEW:Z

    const/16 v0, 0x1e

    if-eqz p2, :cond_9

    instance-of p2, p1, Lcom/android/wm/shell/freeform/MultiInstanceItem;

    if-eqz p2, :cond_9

    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->asMultiInstanceItem()Lcom/android/wm/shell/freeform/MultiInstanceItem;

    move-result-object p1

    iget-object p1, p1, Lcom/android/wm/shell/freeform/MultiInstanceItem;->mChildItemList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_7

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewItemViewHolder;->mItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    invoke-virtual {p2}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->getItemList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->sendMessage(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    invoke-virtual {p0, v5, v1, v1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->updateContainerState(IZZ)V

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p2, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPopupWindow:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewPopupWindow;

    if-eqz p2, :cond_8

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewItemViewHolder;->mItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    iget-boolean v2, p2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewPopupWindow;->mOpenedByHoverAction:Z

    if-nez v2, :cond_8

    iget-object p2, p2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewPopupWindow;->mItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    if-eqz p2, :cond_8

    if-ne p2, v0, :cond_8

    const-string p0, "action_up"

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->dismissMultiInstancePreviewPopup(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->mHandler:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$MultiInstanceEventHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->mHandler:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$MultiInstanceEventHandler;

    invoke-virtual {p1, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->mHandler:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$MultiInstanceEventHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :cond_9
    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p2, p2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    invoke-virtual {p2, v0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->sendMessage(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    invoke-virtual {p0, v5, v1, v1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->updateContainerState(IZZ)V

    :goto_2
    return v5

    :cond_a
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iput-boolean v5, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mIsAppIconMoving:Z

    iput p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLastPositionX:F

    iput v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLastPositionY:F

    iput-boolean v5, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mHasIconMoved:Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_3
    return v1
.end method
