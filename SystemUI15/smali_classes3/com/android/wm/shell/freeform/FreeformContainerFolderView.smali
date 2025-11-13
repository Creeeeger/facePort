.class Lcom/android/wm/shell/freeform/FreeformContainerFolderView;
.super Lcom/android/internal/widget/RecyclerView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/freeform/FreeformContainerCallback;


# static fields
.field public static final TAIL_ICON_ALPHA_ARRAY:[F

.field public static final TAIL_ICON_SCALE_ARRAY:[F


# instance fields
.field public final mAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;

.field public mAirViewMargin:I

.field public mAnimatingSpringPreviewX:Z

.field public mAnimatingSpringPreviewY:Z

.field public mAnimatingSpringX:Z

.field public mAnimatingSpringY:Z

.field public mBlockDataUpdate:Z

.field public final mCachedBitmaps:Landroid/util/ArrayMap;

.field public final mContext:Landroid/content/Context;

.field public final mDisplaySize:Landroid/graphics/Point;

.field public final mDraggingIconReturnLocation:[I

.field public mDraggingIconSpringX:Lcom/facebook/rebound/Spring;

.field public mDraggingIconSpringY:Lcom/facebook/rebound/Spring;

.field public mDraggingIconView:Landroid/widget/ImageView;

.field public mDraggingPreview:Landroid/widget/ImageView;

.field public final mDraggingPreviewReturnLocation:[I

.field public mDraggingPreviewSpringX:Lcom/facebook/rebound/Spring;

.field public mDraggingPreviewSpringY:Lcom/facebook/rebound/Spring;

.field public mEmptySlotIcon:Landroid/graphics/drawable/Drawable;

.field public mFolderMaxWidth:I

.field public mFreeformThumbnailView:Lcom/android/wm/shell/freeform/FreeformThumbnailView;

.field public mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

.field public mHasIconMoved:Z

.field public mHasPreviewMoved:Z

.field public mHeight:I

.field public mIsAppIconMoving:Z

.field public mIsCollapseAnimating:Z

.field public mIsCollapsePreview:Z

.field public mIsExpandAnimating:Z

.field public mIsExpanded:Z

.field public mItemAddedWhileAnimating:Z

.field public final mItemDecoration:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;

.field public mItemSize:I

.field public mLastPositionX:F

.field public mLastPositionY:F

.field public mLastScrollState:I

.field public final mLayoutInflater:Landroid/view/LayoutInflater;

.field public final mLayoutManager:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$2;

.field public mMaxWidth:I

.field public mMultiInstancePreviewAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;

.field public final mOpenFolderRunnable:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1;

.field public mOrientation:I

.field public mPaddingLeft:I

.field public mPaddingRight:I

.field public mPointerSettleDownGap:I

.field public mPopupWindow:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewPopupWindow;

.field public mPreviewHeight:I

.field public mPreviewRecycler:Lcom/android/internal/widget/RecyclerView;

.field public mPreviewWidth:I

.field public final mSettingsObserver:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SettingsObserver;

.field public final mSpringSystem:Lcom/facebook/rebound/SpringSystem;

.field public final mStableInsets:Landroid/graphics/Rect;

.field public mTargetIconView:Landroid/widget/ImageView;

.field public mTargetItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

.field public mTargetPreview:Landroid/widget/ImageView;

.field public mTargetPreviewItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

.field public mThresholdToMove:I

.field public mThumbnailMargin:I

.field public final mTmpBounds:Landroid/graphics/Rect;

.field public mTrayView:Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;

.field public mVerticalPreviewMargin:I

.field public mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

.field public mVisibleIconCount:I

.field public mVisibleIconMaxCount:I

.field public mWidth:I

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static -$$Nest$mstartDraggingAppIcon(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTargetIconView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const-string p0, "FreeformContainer"

    const-string v0, "[FolderView] mTargetIconView is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconReturnLocation:[I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconReturnLocation:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconReturnLocation:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTargetIconView:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->getCloneDrawableFromImageView(Landroid/widget/ImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->TAIL_ICON_ALPHA_ARRAY:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->TAIL_ICON_SCALE_ARRAY:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3dcccccd    # 0.1f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
        0x3f4f5c29    # 0.81f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTargetItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTargetPreviewItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDisplaySize:Landroid/graphics/Point;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mIsExpanded:Z

    iput-boolean p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mIsExpandAnimating:Z

    iput-boolean p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mIsCollapseAnimating:Z

    iput-boolean p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mIsCollapsePreview:Z

    iput-boolean p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mBlockDataUpdate:Z

    iput-boolean p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mHasIconMoved:Z

    iput-boolean p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mItemAddedWhileAnimating:Z

    iput p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLastScrollState:I

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconReturnLocation:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingPreviewReturnLocation:[I

    iput-boolean p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAnimatingSpringX:Z

    iput-boolean p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAnimatingSpringY:Z

    iput-boolean p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAnimatingSpringPreviewX:Z

    iput-boolean p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAnimatingSpringPreviewY:Z

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mCachedBitmaps:Landroid/util/ArrayMap;

    iput-boolean p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mHasPreviewMoved:Z

    iput-boolean p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mIsAppIconMoving:Z

    iput p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mOrientation:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mStableInsets:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;)V

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mOpenFolderRunnable:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1;

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mWindowManager:Landroid/view/WindowManager;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLayoutInflater:Landroid/view/LayoutInflater;

    new-instance v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;

    invoke-direct {v0, p0, p2}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;I)V

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;

    new-instance v7, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$2;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isLayoutRtl()Z

    move-result v6

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$2;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;Landroid/content/Context;IIZ)V

    iput-object v7, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLayoutManager:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$2;

    new-instance p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;

    invoke-direct {p1, p0, p2}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;I)V

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mItemDecoration:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;

    new-instance p2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SettingsObserver;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SettingsObserver;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;)V

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mSettingsObserver:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SettingsObserver;

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/RecyclerView;->setLayoutManager(Lcom/android/internal/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->setAdapter(Lcom/android/internal/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->addItemDecoration(Lcom/android/internal/widget/RecyclerView$ItemDecoration;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->setClipToOutline(Z)V

    new-instance p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$3;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$3;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->addOnScrollListener(Lcom/android/internal/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public static getCloneDrawableFromImageView(Landroid/widget/ImageView;)Landroid/graphics/drawable/Drawable;
    .locals 3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[FolderView] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " failed to newDrawable()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "FreeformContainer"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method public static getDraggingViewBounds(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method


# virtual methods
.method public final calculateFolderSize()V
    .locals 7

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mNonDecorDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPaddingRight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mFolderMaxWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mItemDecoration:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;

    iget-object v2, v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTrayView:Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;

    iget v4, v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mCloseButtonSize:I

    iget v3, v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mOpenAllAppsButtonSize:I

    add-int/2addr v4, v3

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mItemSize:I

    iget v1, v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->mItemSpace:I

    add-int/2addr v5, v1

    iget v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mVisibleIconMaxCount:I

    mul-int/2addr v5, v1

    add-int/2addr v5, v3

    iput v5, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mMaxWidth:I

    iput v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mVisibleIconCount:I

    iget v1, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    add-int/2addr v5, v4

    if-ge v0, v5, :cond_0

    add-int/2addr v1, v4

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mMaxWidth:I

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;

    invoke-virtual {v0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;->getItemCount()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;

    invoke-virtual {v0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;->getItemCount()I

    move-result v0

    iget v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mWidth:I

    iget v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mHeight:I

    iget-object v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mItemDecoration:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;

    iget-object v4, v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mItemSize:I

    iget v3, v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->mItemSpace:I

    add-int/2addr v5, v3

    mul-int/2addr v5, v0

    add-int/2addr v5, v4

    iput v5, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mWidth:I

    iget v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mMaxWidth:I

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mWidth:I

    iget-object v4, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mItemDecoration:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;

    iget-object v4, v4, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mItemSize:I

    add-int/2addr v5, v6

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mHeight:I

    if-ne v1, v3, :cond_2

    if-eq v2, v5, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mWidth:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mHeight:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTrayView:Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;

    iget v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mWidth:I

    iget v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mHeight:I

    iget-object v4, v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mItemMargin:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v4

    iget v4, v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mCloseButtonSize:I

    add-int/2addr v2, v4

    iget v4, v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mOpenAllAppsButtonSize:I

    add-int/2addr v2, v4

    iput v2, v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mWidth:I

    iput v3, v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mHeight:I

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mWidth:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v3, v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mHeight:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[FolderView] updateFolderSize: itemCount="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", size=("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mWidth:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "x"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mHeight:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FreeformContainer"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public final calculateVisibleIconMaxCount()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mSettingsObserver:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SettingsObserver;

    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SettingsObserver;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "easy_mode_switch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_0

    iput v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mVisibleIconMaxCount:I

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    :cond_1
    iput v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mVisibleIconMaxCount:I

    :goto_0
    return-void
.end method

.method public final collapse(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mIsExpanded:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mIsExpanded:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mBlockDataUpdate:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mItemAddedWhileAnimating:Z

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLayoutManager:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$2;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/GridLayoutManager;->scrollToPosition(I)V

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->finishDraggingAppIcon()V

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mOpenFolderRunnable:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;

    invoke-virtual {v1}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;->getItemCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->setAdapter(Lcom/android/internal/widget/RecyclerView$Adapter;)V

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTrayView:Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->clearAnimation()V

    const/16 v1, 0x8

    if-eqz p1, :cond_3

    const-string p1, "FreeformContainer"

    const-string v2, "[FolderView] animateCollapse"

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mIsCollapseAnimating:Z

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    const v2, 0x7f0101aa

    invoke-static {p1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    new-instance v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$4;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$4;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;)V

    invoke-virtual {p1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTrayView:Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    const-string v2, "fullscreen_mode_request_folder"

    invoke-virtual {p1, v2}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->closeFullscreenMode(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTrayView:Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_2
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZED_PREVIEW:Z

    if-eqz p1, :cond_6

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mFreeformThumbnailView:Lcom/android/wm/shell/freeform/FreeformThumbnailView;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mFreeformThumbnailView:Lcom/android/wm/shell/freeform/FreeformThumbnailView;

    invoke-interface {p1, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_4
    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mFreeformThumbnailView:Lcom/android/wm/shell/freeform/FreeformThumbnailView;

    :cond_5
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mCachedBitmaps:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    :cond_6
    return-void
.end method

.method public final computeInset()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/wm/shell/freeform/FreeformContainerManager;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/freeform/FreeformContainerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/wm/shell/freeform/FreeformContainerManager;->getOverrideStableInsets(Landroid/graphics/Rect;)V

    iget v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mStableInsets:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAirViewMargin:I

    if-ge v1, p0, :cond_0

    iput p0, v0, Landroid/graphics/Rect;->left:I

    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-ge v1, p0, :cond_2

    iput p0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mStableInsets:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAirViewMargin:I

    if-ge v1, p0, :cond_2

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    :cond_2
    :goto_0
    return-void
.end method

.method public final dismissMultiInstancePreviewPopup(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPopupWindow:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewPopupWindow;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[FolderView] dismissPopupWindow: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPopupWindow:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewPopupWindow;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FreeformContainer"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPopupWindow:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewPopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPopupWindow:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewPopupWindow;

    return-void
.end method

.method public final finishDraggingAppIcon()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->isSpringAnimating()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconSpringX:Lcom/facebook/rebound/Spring;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->removeAllListeners()V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconSpringY:Lcom/facebook/rebound/Spring;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->removeAllListeners()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAnimatingSpringX:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAnimatingSpringY:Z

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTargetIconView:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTargetItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final finishDraggingAppPreview()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->isSpringPreviewAnimating()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingPreviewSpringX:Lcom/facebook/rebound/Spring;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->removeAllListeners()V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingPreviewSpringY:Lcom/facebook/rebound/Spring;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->removeAllListeners()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAnimatingSpringPreviewX:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAnimatingSpringPreviewY:Z

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTargetPreview:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTargetPreviewItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingPreview:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingPreview:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final getTaskSnapshot(I)Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mCachedBitmaps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/app/IActivityTaskManager;->getTaskSnapshot(IZ)Landroid/window/TaskSnapshot;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/window/TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Landroid/hardware/HardwareBuffer;->createFromGraphicBuffer(Landroid/graphics/GraphicBuffer;)Landroid/hardware/HardwareBuffer;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mCachedBitmaps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Failed to get task snapshot, taskId="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FreeformContainer"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method public final getTrayBounds(Landroid/graphics/Rect;)V
    .locals 5

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTrayView:Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mTmpBounds:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mWidth:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mHeight:I

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final isSpringAnimating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAnimatingSpringX:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAnimatingSpringY:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isSpringPreviewAnimating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAnimatingSpringPreviewX:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAnimatingSpringPreviewY:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/internal/widget/RecyclerView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_CONTAINER_MULTIINSTANCE_PREVIEW:Z

    if-eqz v0, :cond_0

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iget v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mOrientation:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mOrientation:I

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->computeInset()V

    :cond_0
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    invoke-virtual {v0}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->isDismissButtonShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onItemAdded(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V
    .locals 0

    iget-boolean p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mBlockDataUpdate:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mItemAddedWhileAnimating:Z

    const-string p0, "FreeformContainer"

    const-string p1, "[FolderView] onItemAdded: item is added while opening folder"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final onItemRemoved(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V
    .locals 5

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_CONTAINER_MULTIINSTANCE_PREVIEW:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPreviewRecycler:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getAdapter()Lcom/android/internal/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mMultiInstancePreviewAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/wm/shell/freeform/MultiInstanceItem;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mMultiInstancePreviewAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;

    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;->mSnapshotBitmapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPreviewRecycler:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter$PreviewItemViewHolder;

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, v4, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter$PreviewItemViewHolder;->mItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mMultiInstancePreviewAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;

    iget-object v4, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;->mSnapshotBitmapList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    iget-object v4, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;->mSnapshotBitmapList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mMultiInstancePreviewAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    iget-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mIsCollapsePreview:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mMultiInstancePreviewAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;

    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;->mSnapshotBitmapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_3

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPopupWindow:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewPopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->update()V

    goto :goto_4

    :cond_3
    const-string v0, "item_removed"

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->dismissMultiInstancePreviewPopup(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mIsCollapsePreview:Z

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    invoke-virtual {p1, v1, v2, v2}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->updateContainerState(IZZ)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;

    iget-object v3, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v3, v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget-object v3, v3, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->getItemByName(Ljava/lang/String;)Lcom/android/wm/shell/freeform/FreeformContainerItem;

    move-result-object p1

    iget-object v3, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v3, v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget-object v3, v3, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    iget-object v3, v3, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;

    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;->getItemCount()I

    move-result p1

    if-ne p1, v2, :cond_5

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    invoke-virtual {p1, v1, v2, v2}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->updateContainerState(IZZ)V

    :cond_5
    :goto_3
    iput-boolean v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mIsCollapsePreview:Z

    :goto_4
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->finishDraggingAppPreview()V

    goto :goto_5

    :cond_6
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;

    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;->getItemCount()I

    move-result p1

    if-ne p1, v2, :cond_7

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    invoke-virtual {p1, v1, v2, v2}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->updateContainerState(IZZ)V

    :cond_7
    iget-boolean p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mIsCollapseAnimating:Z

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->calculateFolderSize()V

    :cond_8
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->finishDraggingAppIcon()V

    :goto_5
    return-void
.end method

.method public final onRotationChanged(IILandroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    invoke-virtual {v0}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->isDismissButtonShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    const/4 v0, 0x3

    if-eq v2, v0, :cond_2

    goto/16 :goto_3

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getX()F

    move-result v2

    iget v4, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLastPositionX:F

    sub-float v4, v0, v4

    add-float/2addr v4, v2

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setX(F)V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getY()F

    move-result v2

    iget v4, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLastPositionY:F

    sub-float v4, v1, v4

    add-float/2addr v4, v2

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setY(F)V

    iput v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLastPositionX:F

    iput v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLastPositionY:F

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-static {v0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->getDraggingViewBounds(Landroid/graphics/Rect;Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDismissButtonView:Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissViewManager:Lcom/android/wm/shell/common/DismissViewManager;

    iget-object p1, p1, Lcom/android/wm/shell/common/DismissViewManager;->mView:Lcom/android/wm/shell/common/DismissView;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/DismissView;->updateView(Landroid/graphics/Rect;)V

    :goto_0
    iput-boolean v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mHasIconMoved:Z

    return v3

    :cond_2
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_CONTAINER_MULTIINSTANCE_PREVIEW:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iput-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mIsAppIconMoving:Z

    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-static {v1, p1}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->getDraggingViewBounds(Landroid/graphics/Rect;Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTargetItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v2, v4}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->hideDismissButtonAndDismissIcon(Lcom/android/wm/shell/freeform/FreeformContainerItem;Landroid/view/View;Landroid/graphics/Rect;)V

    iget-boolean p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mHasIconMoved:Z

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->restoreAppIcon()V

    :cond_4
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->isEnterDismissButton()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTranslationX()F

    move-result p1

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconReturnLocation:[I

    aget v4, v2, v0

    int-to-float v4, v4

    aget v2, v2, v3

    int-to-float v2, v2

    sub-float v5, p1, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    move v5, v3

    goto :goto_1

    :cond_5
    move v5, v0

    :goto_1
    iput-boolean v5, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAnimatingSpringX:Z

    sub-float v5, v1, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v6

    if-lez v5, :cond_6

    move v0, v3

    :cond_6
    iput-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAnimatingSpringY:Z

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->isSpringAnimating()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "[FolderView] animateToReturnDraggingAppIconView: spring failed, from=["

    const-string v5, ","

    const-string v6, "], to=["

    invoke-static {v0, p1, v5, v1, v6}, Landroidx/compose/animation/core/CubicBezierEasing$$ExternalSyntheticOutline0;->m(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "], call finishDraggingAppIcon()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FreeformContainer"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->finishDraggingAppIcon()V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    invoke-virtual {v0}, Lcom/facebook/rebound/BaseSpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconSpringX:Lcom/facebook/rebound/Spring;

    new-instance v5, Lcom/facebook/rebound/SpringConfig;

    const-wide v6, 0x4066800000000000L    # 180.0

    const-wide/high16 v8, 0x4032000000000000L    # 18.0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/facebook/rebound/SpringConfig;-><init>(DD)V

    iput-object v5, v0, Lcom/facebook/rebound/Spring;->mSpringConfig:Lcom/facebook/rebound/SpringConfig;

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconSpringX:Lcom/facebook/rebound/Spring;

    const-wide v10, 0x3fd3333340000000L    # 0.30000001192092896

    iput-wide v10, v0, Lcom/facebook/rebound/Spring;->mRestSpeedThreshold:D

    iput-wide v10, v0, Lcom/facebook/rebound/Spring;->mDisplacementFromRestThreshold:D

    new-instance v5, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$6;

    invoke-direct {v5, p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$6;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;)V

    invoke-virtual {v0, v5}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconSpringX:Lcom/facebook/rebound/Spring;

    float-to-double v12, p1

    invoke-virtual {v0, v12, v13}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconSpringX:Lcom/facebook/rebound/Spring;

    float-to-double v4, v4

    invoke-virtual {p1, v4, v5}, Lcom/facebook/rebound/Spring;->setEndValue(D)V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    invoke-virtual {p1}, Lcom/facebook/rebound/BaseSpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconSpringY:Lcom/facebook/rebound/Spring;

    new-instance v0, Lcom/facebook/rebound/SpringConfig;

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/facebook/rebound/SpringConfig;-><init>(DD)V

    iput-object v0, p1, Lcom/facebook/rebound/Spring;->mSpringConfig:Lcom/facebook/rebound/SpringConfig;

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconSpringY:Lcom/facebook/rebound/Spring;

    iput-wide v10, p1, Lcom/facebook/rebound/Spring;->mRestSpeedThreshold:D

    iput-wide v10, p1, Lcom/facebook/rebound/Spring;->mDisplacementFromRestThreshold:D

    new-instance v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$7;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$7;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;)V

    invoke-virtual {p1, v0}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconSpringY:Lcom/facebook/rebound/Spring;

    float-to-double v0, v1

    invoke-virtual {p1, v0, v1}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)V

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconSpringY:Lcom/facebook/rebound/Spring;

    float-to-double v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rebound/Spring;->setEndValue(D)V

    :cond_8
    :goto_2
    return v3

    :cond_9
    :goto_3
    invoke-super {p0, p1}, Lcom/android/internal/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onViewDestroyed()V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mSettingsObserver:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SettingsObserver;

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SettingsObserver;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final restoreAppIcon()V
    .locals 8

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;

    invoke-virtual {v0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewItemViewHolder;

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    iget-object v4, v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewItemViewHolder;->mItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    iget-object v5, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTargetItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    invoke-static {v4}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->getCloneDrawableFromImageView(Landroid/widget/ImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;

    invoke-virtual {v5, v2}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;->getItemViewType(I)I

    move-result v5

    if-nez v5, :cond_2

    check-cast v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;

    iget-object v5, v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->mMultiInstancePointerGroupView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_3

    iget-object v7, v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->mMultiInstancePointerGroupView:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    check-cast v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;

    iget-object v3, v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
