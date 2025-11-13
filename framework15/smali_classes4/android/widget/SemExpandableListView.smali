.class public Landroid/widget/SemExpandableListView;
.super Landroid/widget/ListView;
.source "SemExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SemExpandableListView$ViewInfo;,
        Landroid/widget/SemExpandableListView$ExpandingRect;,
        Landroid/widget/SemExpandableListView$CollapsingRect;,
        Landroid/widget/SemExpandableListView$OnGroupClickListener;,
        Landroid/widget/SemExpandableListView$OnChildClickListener;,
        Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;,
        Landroid/widget/SemExpandableListView$IndicatorImageView;,
        Landroid/widget/SemExpandableListView$OnGroupExpandListener;,
        Landroid/widget/SemExpandableListView$OnGroupCollapseListener;,
        Landroid/widget/SemExpandableListView$ExpandableListContextMenuInfo;,
        Landroid/widget/SemExpandableListView$SavedState;
    }
.end annotation


# static fields
.field private static final blacklist ANIMATION_STATE_COLLAPSING:I = 0x3

.field private static final blacklist ANIMATION_STATE_COLLAPSING_ALL:I = 0x5

.field private static final blacklist ANIMATION_STATE_EXPANDING:I = 0x2

.field private static final blacklist ANIMATION_STATE_EXPANDING_ALL:I = 0x4

.field private static final blacklist ANIMATION_STATE_IDLE:I = 0x1

.field public static final blacklist CHILD_INDICATOR_INHERIT:I = -0x1

.field private static final blacklist CHILD_LAST_STATE_SET:[I

.field private static final blacklist COLLAPSE_ALL_PENDING:I = 0x2

.field private static final blacklist DEBUGGABLE:Z = false

.field private static final blacklist DEBUGGABLE_LOW:Z

.field private static final blacklist DECORATED_VIEW_TAG:I = 0x7a0a1eff

.field private static final blacklist EMPTY_STATE_SET:[I

.field private static final blacklist EXPAND_ALL_PENDING:I = 0x1

.field private static final blacklist EXPAND_COLLAPSE_ALL_IDLE:I = 0x0

.field private static final blacklist EXPAND_COLLAPSE_BASE_DURATION:I = 0x2bc

.field private static blacklist EXPAND_COLLAPSE_INTERPOLATOR:Landroid/view/animation/Interpolator; = null

.field private static final blacklist EXPAND_COLLAPSE_MIN_DURATION:I = 0x190

.field private static final blacklist GROUP_EMPTY_STATE_SET:[I

.field private static final blacklist GROUP_EXPANDED_EMPTY_STATE_SET:[I

.field private static final blacklist GROUP_EXPANDED_STATE_SET:[I

.field private static final blacklist GROUP_STATE_SETS:[[I

.field public static final blacklist INDICATOR_ANIMATION_TYPE_MORPH:I = 0x2

.field public static final blacklist INDICATOR_ANIMATION_TYPE_ROTATE:I = 0x1

.field private static final blacklist INDICATOR_UNDEFINED:I = -0x2

.field private static final blacklist PACKED_POSITION_FOOTER_VIEW_BASE:J = -0x100000000L

.field private static final blacklist PACKED_POSITION_GROUP_FOOTER_TYPE:I = -0x3

.field private static final blacklist PACKED_POSITION_GROUP_HEADER_TYPE:I = -0x2

.field private static final blacklist PACKED_POSITION_HEADER_VIEW_BASE:J = 0x7fffffff00000000L

.field private static final blacklist PACKED_POSITION_INT_MASK_CHILD:J = -0x1L

.field private static final blacklist PACKED_POSITION_INT_MASK_GROUP:J = 0x7fffffffL

.field private static final blacklist PACKED_POSITION_MASK_CHILD:J = 0xffffffffL

.field private static final blacklist PACKED_POSITION_MASK_GROUP:J = 0x7fffffff00000000L

.field private static final blacklist PACKED_POSITION_MASK_TYPE:J = -0x8000000000000000L

.field private static final blacklist PACKED_POSITION_SHIFT_GROUP:J = 0x20L

.field private static final blacklist PACKED_POSITION_SHIFT_TYPE:J = 0x3fL

.field public static final blacklist PACKED_POSITION_TYPE_CHILD:I = 0x1

.field public static final blacklist PACKED_POSITION_TYPE_GROUP:I = 0x0

.field public static final blacklist PACKED_POSITION_TYPE_NULL:I = 0x2

.field public static final blacklist PACKED_POSITION_VALUE_NULL:J = 0xffffffffL

.field private static final blacklist PAINT_ALPHA:I = 0x7f

.field private static final blacklist PAINT_STROKE_SIZE:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String;

.field private static blacklist mExpandInterpolator:Landroid/view/animation/ElasticCustom;


# instance fields
.field private blacklist mAdapter:Landroid/widget/ExpandableListAdapter;

.field private blacklist mAnimationEnabled:Z

.field private blacklist mAnimationState:I

.field private blacklist mBitmapUpdateBounds:Landroid/graphics/Rect;

.field blacklist mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private blacklist mBlockTouchEvent:Z

.field private blacklist mChildDivider:Landroid/graphics/drawable/Drawable;

.field private blacklist mChildIndicator:Landroid/graphics/drawable/Drawable;

.field private blacklist mChildIndicatorEnd:I

.field private blacklist mChildIndicatorLeft:I

.field private blacklist mChildIndicatorRight:I

.field private blacklist mChildIndicatorStart:I

.field private blacklist mCollapsedGroupTopEnd:I

.field private blacklist mCollapsedGroupTopStart:I

.field private blacklist mCollapsingRects:[Landroid/widget/SemExpandableListView$CollapsingRect;

.field private blacklist mConnector:Landroid/widget/SemExpandableListConnector;

.field private blacklist mDescriptionCollapse:Ljava/lang/String;

.field private blacklist mDescriptionExpand:Ljava/lang/String;

.field private blacklist mExpListDividerHeight:[I

.field private blacklist mExpandCollapseAllState:I

.field private blacklist mExpandingRects:[Landroid/widget/SemExpandableListView$ExpandingRect;

.field private blacklist mGhostExpandCollapseChildViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/SemExpandableListView$ViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mGhostViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/SemExpandableListView$ViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mGhostViewsVisibleArea:Landroid/graphics/RectF;

.field private blacklist mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

.field private blacklist mGroupIndicator:Landroid/graphics/drawable/Drawable;

.field private blacklist mGroupIndicatorColor:I

.field private blacklist mGroupIndicatorHeight:I

.field private blacklist mGroupIndicatorPaint:Landroid/graphics/Paint;

.field private blacklist mGroupIndicatorWidth:I

.field private blacklist mIndicatorAnimationType:I

.field private blacklist mIndicatorEnd:I

.field private blacklist mIndicatorGravity:I

.field private blacklist mIndicatorLeft:I

.field public blacklist mIndicatorPaddingHeight:F

.field private blacklist mIndicatorPaddingLeft:I

.field private blacklist mIndicatorPaddingRight:I

.field private blacklist mIndicatorRight:I

.field private blacklist mIndicatorStart:I

.field private blacklist mItemDecorator:Landroid/widget/SemExpandableListConnector$ItemDecorator;

.field private blacklist mOnChildClickListener:Landroid/widget/SemExpandableListView$OnChildClickListener;

.field private blacklist mOnGroupClickListener:Landroid/widget/SemExpandableListView$OnGroupClickListener;

.field private blacklist mOnGroupCollapseListener:Landroid/widget/SemExpandableListView$OnGroupCollapseListener;

.field private blacklist mOnGroupExpandListener:Landroid/widget/SemExpandableListView$OnGroupExpandListener;

.field private blacklist mRotationAngle:I

.field private blacklist mTranslationOffset:I

.field private blacklist mViewSnapshots:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/widget/SemExpandableListView$ViewInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAdapter(Landroid/widget/SemExpandableListView;)Landroid/widget/ExpandableListAdapter;
    .locals 0

    iget-object p0, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAnimationState(Landroid/widget/SemExpandableListView;)I
    .locals 0

    iget p0, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBitmapUpdateBounds(Landroid/widget/SemExpandableListView;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/widget/SemExpandableListView;->mBitmapUpdateBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChildIndicator(Landroid/widget/SemExpandableListView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroid/widget/SemExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChildIndicatorLeft(Landroid/widget/SemExpandableListView;)I
    .locals 0

    iget p0, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorLeft:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChildIndicatorRight(Landroid/widget/SemExpandableListView;)I
    .locals 0

    iget p0, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorRight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCollapsedGroupTopEnd(Landroid/widget/SemExpandableListView;)I
    .locals 0

    iget p0, p0, Landroid/widget/SemExpandableListView;->mCollapsedGroupTopEnd:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCollapsedGroupTopStart(Landroid/widget/SemExpandableListView;)I
    .locals 0

    iget p0, p0, Landroid/widget/SemExpandableListView;->mCollapsedGroupTopStart:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCollapsingRects(Landroid/widget/SemExpandableListView;)[Landroid/widget/SemExpandableListView$CollapsingRect;
    .locals 0

    iget-object p0, p0, Landroid/widget/SemExpandableListView;->mCollapsingRects:[Landroid/widget/SemExpandableListView$CollapsingRect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnector(Landroid/widget/SemExpandableListView;)Landroid/widget/SemExpandableListConnector;
    .locals 0

    iget-object p0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDescriptionCollapse(Landroid/widget/SemExpandableListView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/widget/SemExpandableListView;->mDescriptionCollapse:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDescriptionExpand(Landroid/widget/SemExpandableListView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/widget/SemExpandableListView;->mDescriptionExpand:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExpListDividerHeight(Landroid/widget/SemExpandableListView;)[I
    .locals 0

    iget-object p0, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExpandingRects(Landroid/widget/SemExpandableListView;)[Landroid/widget/SemExpandableListView$ExpandingRect;
    .locals 0

    iget-object p0, p0, Landroid/widget/SemExpandableListView;->mExpandingRects:[Landroid/widget/SemExpandableListView$ExpandingRect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGhostExpandCollapseChildViews(Landroid/widget/SemExpandableListView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/widget/SemExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGhostViews(Landroid/widget/SemExpandableListView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/widget/SemExpandableListView;->mGhostViews:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGhostViewsVisibleArea(Landroid/widget/SemExpandableListView;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleArea:Landroid/graphics/RectF;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGhostViewsVisibleAreas(Landroid/widget/SemExpandableListView;)[Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGroupIndicator(Landroid/widget/SemExpandableListView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGroupIndicatorHeight(Landroid/widget/SemExpandableListView;)I
    .locals 0

    iget p0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorHeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGroupIndicatorPaint(Landroid/widget/SemExpandableListView;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGroupIndicatorWidth(Landroid/widget/SemExpandableListView;)I
    .locals 0

    iget p0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIndicatorAnimationType(Landroid/widget/SemExpandableListView;)I
    .locals 0

    iget p0, p0, Landroid/widget/SemExpandableListView;->mIndicatorAnimationType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIndicatorGravity(Landroid/widget/SemExpandableListView;)I
    .locals 0

    iget p0, p0, Landroid/widget/SemExpandableListView;->mIndicatorGravity:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIndicatorLeft(Landroid/widget/SemExpandableListView;)I
    .locals 0

    iget p0, p0, Landroid/widget/SemExpandableListView;->mIndicatorLeft:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIndicatorPaddingLeft(Landroid/widget/SemExpandableListView;)I
    .locals 0

    iget p0, p0, Landroid/widget/SemExpandableListView;->mIndicatorPaddingLeft:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIndicatorPaddingRight(Landroid/widget/SemExpandableListView;)I
    .locals 0

    iget p0, p0, Landroid/widget/SemExpandableListView;->mIndicatorPaddingRight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIndicatorRight(Landroid/widget/SemExpandableListView;)I
    .locals 0

    iget p0, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnGroupCollapseListener(Landroid/widget/SemExpandableListView;)Landroid/widget/SemExpandableListView$OnGroupCollapseListener;
    .locals 0

    iget-object p0, p0, Landroid/widget/SemExpandableListView;->mOnGroupCollapseListener:Landroid/widget/SemExpandableListView$OnGroupCollapseListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnGroupExpandListener(Landroid/widget/SemExpandableListView;)Landroid/widget/SemExpandableListView$OnGroupExpandListener;
    .locals 0

    iget-object p0, p0, Landroid/widget/SemExpandableListView;->mOnGroupExpandListener:Landroid/widget/SemExpandableListView$OnGroupExpandListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTranslationOffset(Landroid/widget/SemExpandableListView;)I
    .locals 0

    iget p0, p0, Landroid/widget/SemExpandableListView;->mTranslationOffset:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmViewSnapshots(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;
    .locals 0

    iget-object p0, p0, Landroid/widget/SemExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAnimationState(Landroid/widget/SemExpandableListView;I)V
    .locals 0

    iput p1, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCollapsedGroupTopEnd(Landroid/widget/SemExpandableListView;I)V
    .locals 0

    iput p1, p0, Landroid/widget/SemExpandableListView;->mCollapsedGroupTopEnd:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmExpandingRects(Landroid/widget/SemExpandableListView;[Landroid/widget/SemExpandableListView$ExpandingRect;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mExpandingRects:[Landroid/widget/SemExpandableListView$ExpandingRect;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmGhostViewsVisibleAreas(Landroid/widget/SemExpandableListView;[Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTranslationOffset(Landroid/widget/SemExpandableListView;I)V
    .locals 0

    iput p1, p0, Landroid/widget/SemExpandableListView;->mTranslationOffset:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateViewSnapshotAnimation(Landroid/widget/SemExpandableListView;ILandroid/widget/SemExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/SemExpandableListView;->createViewSnapshotAnimation(ILandroid/widget/SemExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateViewSnapshotAnimationReverse(Landroid/widget/SemExpandableListView;ILandroid/widget/SemExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/SemExpandableListView;->createViewSnapshotAnimationReverse(ILandroid/widget/SemExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetAbsoluteFlatPosition(Landroid/widget/SemExpandableListView;I)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetDivider(Landroid/widget/SemExpandableListView;Landroid/widget/SemExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->getDivider(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetFlatPositionForConnector(Landroid/widget/SemExpandableListView;I)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->getFlatPositionForConnector(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetIndicator(Landroid/widget/SemExpandableListView;Landroid/widget/SemExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->getIndicator(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetLastNonFooterPosition(Landroid/widget/SemExpandableListView;)I
    .locals 0

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->getLastNonFooterPosition()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetSelectorRectAnim(Landroid/widget/SemExpandableListView;I)Landroid/animation/Animator;
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->getSelectorRectAnim(I)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misHeaderOrFooterPosition(Landroid/widget/SemExpandableListView;I)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mresetCollapseAnimationState(Landroid/widget/SemExpandableListView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->resetCollapseAnimationState()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mresetExpandAnimationState(Landroid/widget/SemExpandableListView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->resetExpandAnimationState()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartIndicatorAnimation(Landroid/widget/SemExpandableListView;Landroid/view/View;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SemExpandableListView;->startIndicatorAnimation(Landroid/view/View;ZI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEBUGGABLE_LOW()Z
    .locals 1

    sget-boolean v0, Landroid/widget/SemExpandableListView;->DEBUGGABLE_LOW:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetEXPAND_COLLAPSE_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Landroid/widget/SemExpandableListView;->EXPAND_COLLAPSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetGROUP_EXPANDED_STATE_SET()[I
    .locals 1

    sget-object v0, Landroid/widget/SemExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/widget/SemExpandableListView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 5

    const-class v0, Landroid/widget/SemExpandableListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/SemExpandableListView;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    sput-boolean v0, Landroid/widget/SemExpandableListView;->DEBUGGABLE_LOW:Z

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroid/widget/SemExpandableListView;->EMPTY_STATE_SET:[I

    const v0, 0x10100a8

    filled-new-array {v0}, [I

    move-result-object v1

    sput-object v1, Landroid/widget/SemExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    const v1, 0x10100a9

    filled-new-array {v1}, [I

    move-result-object v2

    sput-object v2, Landroid/widget/SemExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/widget/SemExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    sget-object v0, Landroid/widget/SemExpandableListView;->EMPTY_STATE_SET:[I

    sget-object v1, Landroid/widget/SemExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    sget-object v2, Landroid/widget/SemExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    sget-object v3, Landroid/widget/SemExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    filled-new-array {v0, v1, v2, v3}, [[I

    move-result-object v0

    sput-object v0, Landroid/widget/SemExpandableListView;->GROUP_STATE_SETS:[[I

    const v0, 0x10100a6

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroid/widget/SemExpandableListView;->CHILD_LAST_STATE_SET:[I

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/widget/SemExpandableListView;->EXPAND_COLLAPSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/ElasticCustom;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v4, v1}, Landroid/view/animation/ElasticCustom;-><init>(FF)V

    sput-object v0, Landroid/widget/SemExpandableListView;->mExpandInterpolator:Landroid/view/animation/ElasticCustom;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SemExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006f

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SemExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SemExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SemExpandableListView;->mBlockTouchEvent:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/SemExpandableListView;->mAnimationEnabled:Z

    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v2, p0, Landroid/widget/SemExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/widget/SemExpandableListView;->mGhostViews:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/widget/SemExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/SemExpandableListView;->mBitmapUpdateBounds:Landroid/graphics/Rect;

    iput v0, p0, Landroid/widget/SemExpandableListView;->mTranslationOffset:I

    iput v0, p0, Landroid/widget/SemExpandableListView;->mCollapsedGroupTopStart:I

    iput v0, p0, Landroid/widget/SemExpandableListView;->mCollapsedGroupTopEnd:I

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleArea:Landroid/graphics/RectF;

    iput v0, p0, Landroid/widget/SemExpandableListView;->mIndicatorPaddingLeft:I

    iput v0, p0, Landroid/widget/SemExpandableListView;->mIndicatorPaddingRight:I

    const/4 v2, 0x3

    iput v2, p0, Landroid/widget/SemExpandableListView;->mIndicatorGravity:I

    const/16 v3, 0xb4

    iput v3, p0, Landroid/widget/SemExpandableListView;->mRotationAngle:I

    iput v1, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    iput v0, p0, Landroid/widget/SemExpandableListView;->mExpandCollapseAllState:I

    iput v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorAnimationType:I

    const/high16 v3, -0x1000000

    iput v3, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorColor:I

    new-instance v3, Landroid/widget/SemExpandableListView$1;

    invoke-direct {v3, p0}, Landroid/widget/SemExpandableListView$1;-><init>(Landroid/widget/SemExpandableListView;)V

    iput-object v3, p0, Landroid/widget/SemExpandableListView;->mItemDecorator:Landroid/widget/SemExpandableListConnector$ItemDecorator;

    new-instance v3, Landroid/widget/SemExpandableListView$9;

    invoke-direct {v3, p0}, Landroid/widget/SemExpandableListView$9;-><init>(Landroid/widget/SemExpandableListView;)V

    iput-object v3, p0, Landroid/widget/SemExpandableListView;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    sget-object v3, Lcom/android/internal/R$styleable;->ExpandableListView:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/SemExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/SemExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/SemExpandableListView;->mIndicatorLeft:I

    invoke-virtual {v3, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    iget v0, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/SemExpandableListView;->mIndicatorLeft:I

    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    :cond_0
    const/4 v0, 0x4

    const/4 v2, -0x1

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorLeft:I

    const/4 v0, 0x5

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorRight:I

    const/4 v0, 0x6

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->isRtlCompatibilityMode()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x7

    const/4 v4, -0x2

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/widget/SemExpandableListView;->mIndicatorStart:I

    const/16 v0, 0x8

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/widget/SemExpandableListView;->mIndicatorEnd:I

    const/16 v0, 0x9

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorStart:I

    const/16 v0, 0xa

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorEnd:I

    :cond_1
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    if-nez v0, :cond_2

    new-array v0, v1, [I

    iput-object v0, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    :cond_2
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10404e6

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v4, 0x10404e7

    invoke-virtual {v0, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemExpandableListView;->mDescriptionExpand:Ljava/lang/String;

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x10404e5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemExpandableListView;->mDescriptionCollapse:Ljava/lang/String;

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1050190

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorWidth:I

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x105018e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorHeight:I

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x105018f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Landroid/widget/SemExpandableListView;->mIndicatorPaddingHeight:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorPaint:Landroid/graphics/Paint;

    const/16 v1, 0x7f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorPaint:Landroid/graphics/Paint;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method static synthetic blacklist access$000(Landroid/widget/SemExpandableListView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic blacklist access$100(Landroid/widget/SemExpandableListView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic blacklist access$200(Landroid/widget/SemExpandableListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemExpandableListView;->mBottom:I

    return v0
.end method

.method static synthetic blacklist access$300(Landroid/widget/SemExpandableListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemExpandableListView;->mPaddingRight:I

    return v0
.end method

.method static synthetic blacklist access$400(Landroid/widget/SemExpandableListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemExpandableListView;->mPaddingRight:I

    return v0
.end method

.method static synthetic blacklist access$500(Landroid/widget/SemExpandableListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemExpandableListView;->mPaddingLeft:I

    return v0
.end method

.method static synthetic blacklist access$600(Landroid/widget/SemExpandableListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemExpandableListView;->mPaddingLeft:I

    return v0
.end method

.method static synthetic blacklist access$700(Landroid/widget/SemExpandableListView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic blacklist access$800(Landroid/widget/SemExpandableListView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private blacklist captureViewsPriorAnimation()V
    .locals 8

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getFirstVisiblePosition()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    add-int v4, v2, v1

    invoke-virtual {p0, v4}, Landroid/widget/SemExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v4

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    new-instance v6, Landroid/widget/SemExpandableListView$ViewInfo;

    invoke-direct {v6, v3}, Landroid/widget/SemExpandableListView$ViewInfo;-><init>(Landroid/view/View;)V

    iget-object v7, v6, Landroid/widget/SemExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/widget/SemExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v4, v5, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private blacklist collapseAllGroups()V
    .locals 3

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v2, v1}, Landroid/widget/SemExpandableListConnector;->collapseGroup(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist createViewSnapshotAnimation(ILandroid/widget/SemExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p2, Landroid/widget/SemExpandableListView$ViewInfo;->left:I

    iget v2, p2, Landroid/widget/SemExpandableListView$ViewInfo;->top:I

    iget v3, p2, Landroid/widget/SemExpandableListView$ViewInfo;->right:I

    iget v4, p2, Landroid/widget/SemExpandableListView$ViewInfo;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/graphics/Rect;->offset(II)V

    iget-object v2, p2, Landroid/widget/SemExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    sget-object v3, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "bounds"

    invoke-static {v2, v5, v3, v4}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    return-object v2
.end method

.method private blacklist createViewSnapshotAnimationReverse(ILandroid/widget/SemExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p2, Landroid/widget/SemExpandableListView$ViewInfo;->left:I

    iget v2, p2, Landroid/widget/SemExpandableListView$ViewInfo;->top:I

    iget v3, p2, Landroid/widget/SemExpandableListView$ViewInfo;->right:I

    iget v4, p2, Landroid/widget/SemExpandableListView$ViewInfo;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/graphics/Rect;->offset(II)V

    iget-object v2, p2, Landroid/widget/SemExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    sget-object v3, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "bounds"

    invoke-static {v2, v5, v3, v4}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    return-object v2
.end method

.method private blacklist drawGhostViews(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGhostViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget v1, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleArea:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    :cond_1
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mGhostViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/SemExpandableListView$ViewInfo;

    iget-object v3, v2, Landroid/widget/SemExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleArea:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/SemExpandableListView$ViewInfo;

    iget-object v3, v2, Landroid/widget/SemExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_3
    iget v1, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mExpandingRects:[Landroid/widget/SemExpandableListView$ExpandingRect;

    array-length v1, v1

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_5

    iget-object v4, p0, Landroid/widget/SemExpandableListView;->mExpandingRects:[Landroid/widget/SemExpandableListView$ExpandingRect;

    aget-object v4, v4, v3

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    iget-object v4, p0, Landroid/widget/SemExpandableListView;->mExpandingRects:[Landroid/widget/SemExpandableListView$ExpandingRect;

    aget-object v4, v4, v3

    iget-object v4, v4, Landroid/widget/SemExpandableListView$ExpandingRect;->destinationRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v4}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    iget-object v3, p0, Landroid/widget/SemExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/SemExpandableListView$ViewInfo;

    iget-object v5, v4, Landroid/widget/SemExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4

    :cond_6
    iget v1, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mCollapsingRects:[Landroid/widget/SemExpandableListView$CollapsingRect;

    array-length v1, v1

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_8

    iget-object v4, p0, Landroid/widget/SemExpandableListView;->mCollapsingRects:[Landroid/widget/SemExpandableListView$CollapsingRect;

    aget-object v4, v4, v3

    if-nez v4, :cond_7

    goto :goto_6

    :cond_7
    iget-object v4, p0, Landroid/widget/SemExpandableListView;->mCollapsingRects:[Landroid/widget/SemExpandableListView$CollapsingRect;

    aget-object v4, v4, v3

    iget-object v4, v4, Landroid/widget/SemExpandableListView$CollapsingRect;->destinationRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v4}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    iget-object v3, p0, Landroid/widget/SemExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/SemExpandableListView$ViewInfo;

    iget-object v5, v4, Landroid/widget/SemExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_7

    :cond_9
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private blacklist expandAllGroups()V
    .locals 3

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v2, v1}, Landroid/widget/SemExpandableListConnector;->expandGroup(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist getAbsoluteFlatPosition(I)I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private blacklist getChildOrGroupId(Landroid/widget/SemExpandableListPosition;)J
    .locals 3

    iget v0, p1, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget v2, p1, Landroid/widget/SemExpandableListPosition;->childPos:I

    invoke-interface {v0, v1, v2}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Landroid/widget/SemExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist getDivider(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v0, v0, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private blacklist getExpandedState()[Z
    .locals 7

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->getLastNonFooterPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/SemExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/widget/SemExpandableListView;->getPackedPositionGroup(J)I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    new-array v4, v4, [Z

    const/4 v5, 0x0

    :goto_0
    if-gt v5, v3, :cond_0

    iget-object v6, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v6, v5}, Landroid/widget/SemExpandableListConnector;->isGroupExpanded(I)Z

    move-result v6

    aput-boolean v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-object v4
.end method

.method private blacklist getFlatPositionForConnector(I)I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method private blacklist getHeaderFooterPackedPosition(I)J
    .locals 6

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getHeaderViewsCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    move v0, p1

    const-wide v1, 0x7fffffff00000000L

    int-to-long v3, v0

    or-long/2addr v1, v3

    return-wide v1

    :cond_0
    iget v0, p0, Landroid/widget/SemExpandableListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int v1, p1, v0

    const-wide v2, -0x100000000L

    int-to-long v4, v1

    or-long/2addr v2, v4

    return-wide v2
.end method

.method private blacklist getIndicator(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .locals 5

    iget-object v0, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v0, v0, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    iget v2, v2, Landroid/widget/SemExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v4, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    iget v4, v4, Landroid/widget/SemExpandableListConnector$GroupMetadata;->flPos:I

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p1}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v4

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    or-int/2addr v1, v4

    sget-object v3, Landroid/widget/SemExpandableListView;->GROUP_STATE_SETS:[[I

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_4

    :cond_3
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v1, v1, Landroid/widget/SemExpandableListPosition;->flatListPos:I

    iget-object v2, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    iget v2, v2, Landroid/widget/SemExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v1, v2, :cond_4

    sget-object v1, Landroid/widget/SemExpandableListView;->CHILD_LAST_STATE_SET:[I

    goto :goto_3

    :cond_4
    sget-object v1, Landroid/widget/SemExpandableListView;->EMPTY_STATE_SET:[I

    :goto_3
    nop

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_5
    :goto_4
    return-object v0
.end method

.method private blacklist getLastNonFooterPosition()I
    .locals 4

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getLastVisiblePosition()I

    move-result v0

    move v1, v0

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getFirstVisiblePosition()I

    move-result v2

    :goto_0
    if-lt v1, v2, :cond_0

    invoke-direct {p0, v1}, Landroid/widget/SemExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static blacklist getPackedPositionChild(J)I
    .locals 8

    const-wide v0, 0xffffffffL

    cmp-long v2, p0, v0

    const/4 v3, -0x1

    if-nez v2, :cond_0

    return v3

    :cond_0
    const-wide/high16 v4, -0x8000000000000000L

    and-long v6, p0, v4

    cmp-long v2, v6, v4

    if-eqz v2, :cond_1

    return v3

    :cond_1
    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static blacklist getPackedPositionForChild(II)J
    .locals 6

    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide/high16 v2, -0x8000000000000000L

    or-long/2addr v0, v2

    int-to-long v2, p1

    const-wide/16 v4, -0x1

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static blacklist getPackedPositionForGroup(I)J
    .locals 4

    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method public static blacklist getPackedPositionGroup(J)I
    .locals 4

    const-wide v0, -0x100000000L

    and-long v2, p0, v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, -0x3

    return v0

    :cond_0
    const-wide v0, 0x7fffffff00000000L

    and-long v2, p0, v0

    cmp-long v2, v2, v0

    if-nez v2, :cond_1

    const/4 v0, -0x2

    return v0

    :cond_1
    and-long/2addr v0, p0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static blacklist getPackedPositionType(J)I
    .locals 4

    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    and-long v2, p0, v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist getSelectorRectAnim(I)Landroid/animation/Animator;
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/graphics/Rect;->offset(II)V

    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mSelectorRect:Landroid/graphics/Rect;

    sget-object v3, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, ""

    invoke-static {v2, v5, v3, v4}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    return-object v2
.end method

.method private blacklist hasRtlSupport()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v0

    return v0
.end method

.method private blacklist isHeaderOrFooterPosition(I)Z
    .locals 2

    iget v0, p0, Landroid/widget/SemExpandableListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getHeaderViewsCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private blacklist isHoverable()Z
    .locals 2

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private blacklist isRtlCompatibilityMode()Z
    .locals 2

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->hasRtlSupport()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private blacklist printArrays([I)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p1, v2

    if-gtz v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist resetCollapseAnimationState()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemExpandableListView;->mCollapsedGroupTopStart:I

    iput v0, p0, Landroid/widget/SemExpandableListView;->mCollapsedGroupTopEnd:I

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mGhostViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput v0, p0, Landroid/widget/SemExpandableListView;->mTranslationOffset:I

    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    iput-object v1, p0, Landroid/widget/SemExpandableListView;->mCollapsingRects:[Landroid/widget/SemExpandableListView$CollapsingRect;

    iput-boolean v0, p0, Landroid/widget/SemExpandableListView;->mBlockTouchEvent:Z

    return-void
.end method

.method private blacklist resetExpandAnimationState()V
    .locals 4

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGhostViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemExpandableListView;->mTranslationOffset:I

    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    iput-object v1, p0, Landroid/widget/SemExpandableListView;->mExpandingRects:[Landroid/widget/SemExpandableListView$ExpandingRect;

    iput-boolean v0, p0, Landroid/widget/SemExpandableListView;->mBlockTouchEvent:Z

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist resolveChildIndicator()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->isLayoutRtl()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    iget v2, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorStart:I

    if-lt v2, v1, :cond_0

    iget v2, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorStart:I

    iput v2, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorRight:I

    :cond_0
    iget v2, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorEnd:I

    if-lt v2, v1, :cond_3

    iget v1, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorEnd:I

    iput v1, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorLeft:I

    goto :goto_0

    :cond_1
    iget v2, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorStart:I

    if-lt v2, v1, :cond_2

    iget v2, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorStart:I

    iput v2, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorLeft:I

    :cond_2
    iget v2, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorEnd:I

    if-lt v2, v1, :cond_3

    iget v1, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorEnd:I

    iput v1, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorRight:I

    :cond_3
    :goto_0
    return-void
.end method

.method private blacklist resolveIndicator()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorStart:I

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorStart:I

    iput v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    :cond_0
    iget v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorEnd:I

    if-ltz v1, :cond_3

    iget v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorEnd:I

    iput v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorLeft:I

    goto :goto_0

    :cond_1
    iget v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorStart:I

    if-ltz v1, :cond_2

    iget v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorStart:I

    iput v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorLeft:I

    :cond_2
    iget v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorEnd:I

    if-ltz v1, :cond_3

    iget v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorEnd:I

    iput v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    :cond_3
    :goto_0
    iget v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    iget v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorLeft:I

    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    :cond_4
    return-void
.end method

.method private blacklist startCollapseAllAnimation([ZLjava/lang/Runnable;)V
    .locals 23

    move-object/from16 v7, p0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemExpandableListView;->getFirstVisiblePosition()I

    move-result v8

    invoke-direct/range {p0 .. p0}, Landroid/widget/SemExpandableListView;->getLastNonFooterPosition()I

    move-result v9

    if-ge v9, v8, :cond_0

    return-void

    :cond_0
    invoke-virtual {v7, v9}, Landroid/widget/SemExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Landroid/widget/SemExpandableListView;->getPackedPositionGroup(J)I

    move-result v12

    invoke-virtual {v7, v9}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/lit8 v0, v12, 0x1

    new-array v14, v0, [I

    add-int/lit8 v0, v12, 0x1

    new-array v0, v0, [Landroid/graphics/RectF;

    iput-object v0, v7, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    add-int/lit8 v0, v12, 0x1

    new-array v0, v0, [Landroid/widget/SemExpandableListView$CollapsingRect;

    iput-object v0, v7, Landroid/widget/SemExpandableListView;->mCollapsingRects:[Landroid/widget/SemExpandableListView$CollapsingRect;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemExpandableListView;->getChildCount()I

    move-result v15

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Landroid/widget/SemExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v16, v1

    :goto_0
    array-length v1, v14

    if-ge v2, v1, :cond_1

    invoke-static {v2}, Landroid/widget/SemExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v3

    invoke-virtual {v7, v3, v4}, Landroid/widget/SemExpandableListView;->getFlatListPosition(J)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    add-int/lit8 v17, v2, -0x1

    aget v17, v14, v17

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v18

    add-int v17, v17, v18

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v18

    sub-int v17, v17, v18

    aput v17, v14, v2

    new-instance v0, Landroid/graphics/RectF;

    move/from16 v18, v1

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    move-wide/from16 v19, v3

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    move/from16 v21, v6

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v0, v1, v3, v4, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, v7, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    add-int/lit8 v3, v2, -0x1

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    aput-object v4, v1, v3

    iget-object v1, v7, Landroid/widget/SemExpandableListView;->mCollapsingRects:[Landroid/widget/SemExpandableListView$CollapsingRect;

    add-int/lit8 v3, v2, -0x1

    new-instance v4, Landroid/widget/SemExpandableListView$CollapsingRect;

    iget-object v6, v7, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    add-int/lit8 v22, v2, -0x1

    aget-object v6, v6, v22

    invoke-direct {v4, v0, v6}, Landroid/widget/SemExpandableListView$CollapsingRect;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    aput-object v4, v1, v3

    move-object/from16 v16, v5

    add-int/lit8 v2, v2, 0x1

    move/from16 v6, v21

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move/from16 v21, v6

    invoke-virtual {v7, v9}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v6, v0

    iget-object v0, v7, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    aput-object v1, v0, v12

    iget-object v0, v7, Landroid/widget/SemExpandableListView;->mCollapsingRects:[Landroid/widget/SemExpandableListView$CollapsingRect;

    new-instance v1, Landroid/widget/SemExpandableListView$CollapsingRect;

    iget-object v2, v7, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    aget-object v2, v2, v12

    invoke-direct {v1, v6, v2}, Landroid/widget/SemExpandableListView$CollapsingRect;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    aput-object v1, v0, v12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x1

    if-ge v0, v15, :cond_5

    add-int v2, v0, v8

    invoke-direct {v7, v2}, Landroid/widget/SemExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v20, v6

    goto :goto_3

    :cond_2
    invoke-virtual {v7, v0}, Landroid/widget/SemExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/widget/SemExpandableListView;->getPackedPositionType(J)I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    move-object/from16 v20, v6

    goto :goto_3

    :cond_4
    invoke-static {v2, v3}, Landroid/widget/SemExpandableListView;->getPackedPositionGroup(J)I

    move-result v4

    move/from16 v19, v1

    iget-object v1, v7, Landroid/widget/SemExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SemExpandableListView$ViewInfo;

    move-object/from16 v20, v6

    iget-object v6, v7, Landroid/widget/SemExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v7, Landroid/widget/SemExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    aget v6, v14, v4

    neg-int v6, v6

    invoke-direct {v7, v6, v1}, Landroid/widget/SemExpandableListView;->createViewSnapshotAnimation(ILandroid/widget/SemExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v6, v20

    goto :goto_1

    :cond_5
    move-object/from16 v20, v6

    iput-boolean v1, v7, Landroid/widget/SemExpandableListView;->mBlockTouchEvent:Z

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemExpandableListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    new-instance v4, Landroid/widget/SemExpandableListView$8;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move v3, v12

    move-object v7, v4

    move v4, v13

    move-object/from16 v17, v5

    move-object/from16 v5, p1

    move/from16 v19, v21

    move/from16 v21, v8

    move-object v8, v6

    move-object/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Landroid/widget/SemExpandableListView$8;-><init>(Landroid/widget/SemExpandableListView;Ljava/lang/Runnable;II[ZLjava/util/ArrayList;)V

    invoke-virtual {v8, v7}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private blacklist startCollapseAnimation(ILjava/lang/Runnable;)V
    .locals 23

    move-object/from16 v9, p0

    move/from16 v10, p1

    invoke-static/range {p1 .. p1}, Landroid/widget/SemExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v11

    add-int/lit8 v0, v10, 0x1

    invoke-static {v0}, Landroid/widget/SemExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v13

    invoke-virtual {v9, v11, v12}, Landroid/widget/SemExpandableListView;->getFlatListPosition(J)I

    move-result v15

    invoke-virtual {v9, v13, v14}, Landroid/widget/SemExpandableListView;->getFlatListPosition(J)I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemExpandableListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v0, v15, v8

    invoke-virtual {v9, v0}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    if-nez v17, :cond_0

    sget-object v0, Landroid/widget/SemExpandableListView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startCollapseAnimation() BEFORE: groupPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flatPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", firstPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Landroid/widget/SemExpandableListView;->resetCollapseAnimationState()V

    invoke-interface/range {p2 .. p2}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v18

    sub-int v0, v16, v8

    invoke-virtual {v9, v0}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    const/4 v0, 0x1

    if-nez v19, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemExpandableListView;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemExpandableListView;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v9, v2}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v2, v1, v2

    iput v2, v9, Landroid/widget/SemExpandableListView;->mTranslationOffset:I

    goto :goto_0

    :cond_1
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v9, Landroid/widget/SemExpandableListView;->mTranslationOffset:I

    :goto_0
    iget-object v1, v9, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v1}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemExpandableListView;->getChildCount()I

    move-result v21

    iget-object v1, v9, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleArea:Landroid/graphics/RectF;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/RectF;->left:F

    iget-object v1, v9, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleArea:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemExpandableListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v1

    iput v1, v9, Landroid/widget/SemExpandableListView;->mCollapsedGroupTopStart:I

    iput-boolean v0, v9, Landroid/widget/SemExpandableListView;->mBlockTouchEvent:Z

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemExpandableListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    new-instance v6, Landroid/widget/SemExpandableListView$7;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p1

    move v4, v15

    move/from16 v5, v20

    move-object v9, v6

    move v6, v8

    move-object v10, v7

    move/from16 v7, v21

    move/from16 v22, v8

    move/from16 v8, v18

    invoke-direct/range {v0 .. v8}, Landroid/widget/SemExpandableListView$7;-><init>(Landroid/widget/SemExpandableListView;Ljava/lang/Runnable;IIIIII)V

    invoke-virtual {v10, v9}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private blacklist startExpandAllAnimation([ZLjava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemExpandableListView;->mBlockTouchEvent:Z

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Landroid/widget/SemExpandableListView$6;

    invoke-direct {v1, p0, p2, p1}, Landroid/widget/SemExpandableListView$6;-><init>(Landroid/widget/SemExpandableListView;Ljava/lang/Runnable;[Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private blacklist startExpandAnimation(ILjava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemExpandableListView;->mBlockTouchEvent:Z

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Landroid/widget/SemExpandableListView$5;

    invoke-direct {v1, p0, p2, p1}, Landroid/widget/SemExpandableListView$5;-><init>(Landroid/widget/SemExpandableListView;Ljava/lang/Runnable;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private blacklist startIndicatorAnimation(Landroid/view/View;ZI)V
    .locals 6

    iget v0, p0, Landroid/widget/SemExpandableListView;->mRotationAngle:I

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    neg-int v0, v0

    :goto_0
    const v1, 0x7a0a1eff

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;

    if-eqz v1, :cond_4

    iget-object v2, v1, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    iget-object v2, v1, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    iget v3, p0, Landroid/widget/SemExpandableListView;->mIndicatorAnimationType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/SemExpandableListView$IndicatorImageView;->setRotation(F)V

    invoke-virtual {v2}, Landroid/widget/SemExpandableListView$IndicatorImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    sget-object v4, Landroid/widget/SemExpandableListView;->EXPAND_COLLAPSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, p3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Landroid/widget/SemExpandableListView$IndicatorImageView;->startIndicatorMorphAimation()V

    :goto_1
    if-eqz p2, :cond_3

    iget-object v3, p0, Landroid/widget/SemExpandableListView;->mDescriptionCollapse:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v3, p0, Landroid/widget/SemExpandableListView;->mDescriptionExpand:Ljava/lang/String;

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/SemExpandableListView$IndicatorImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    :goto_3
    sget-object v2, Landroid/widget/SemExpandableListView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startIndicatorAnimation() holder or indicatorImgView is null, startAngle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist collapseAll()V
    .locals 2

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/SemExpandableListView;->mExpandCollapseAllState:I

    iget-boolean v0, p0, Landroid/widget/SemExpandableListView;->mAnimationEnabled:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->collapseAllGroups()V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->triggerJumpScrollToTop()V

    return-void
.end method

.method public blacklist collapseGroup(I)Z
    .locals 2

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v0, p1}, Landroid/widget/SemExpandableListConnector;->collapseGroup(I)Z

    move-result v0

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mOnGroupCollapseListener:Landroid/widget/SemExpandableListView$OnGroupCollapseListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mOnGroupCollapseListener:Landroid/widget/SemExpandableListView$OnGroupCollapseListener;

    invoke-interface {v1, p1}, Landroid/widget/SemExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    :cond_0
    return v0
.end method

.method blacklist createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/widget/SemExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object/from16 v9, p1

    move-wide/from16 v3, p3

    invoke-direct {v2, v9, v1, v3, v4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v2

    :cond_0
    move-object/from16 v9, p1

    move-wide/from16 v3, p3

    invoke-direct {v0, v1}, Landroid/widget/SemExpandableListView;->getFlatPositionForConnector(I)I

    move-result v2

    iget-object v5, v0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v5, v2}, Landroid/widget/SemExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v10

    iget-object v11, v10, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    invoke-direct {v0, v11}, Landroid/widget/SemExpandableListView;->getChildOrGroupId(Landroid/widget/SemExpandableListPosition;)J

    move-result-wide v12

    invoke-virtual {v11}, Landroid/widget/SemExpandableListPosition;->getPackedPosition()J

    move-result-wide v14

    invoke-virtual {v10}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    new-instance v16, Landroid/widget/SemExpandableListView$ExpandableListContextMenuInfo;

    move-object/from16 v3, v16

    move-object/from16 v4, p1

    move-wide v5, v14

    move-wide v7, v12

    invoke-direct/range {v3 .. v8}, Landroid/widget/SemExpandableListView$ExpandableListContextMenuInfo;-><init>(Landroid/view/View;JJ)V

    return-object v16
.end method

.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget v0, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->drawGhostViews(Landroid/graphics/Canvas;)V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->drawGhostViews(Landroid/graphics/Canvas;)V

    :cond_3
    return-void
.end method

.method blacklist drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 5

    iget v0, p0, Landroid/widget/SemExpandableListView;->mFirstPosition:I

    add-int/2addr v0, p3

    if-ltz v0, :cond_2

    invoke-direct {p0, v0}, Landroid/widget/SemExpandableListView;->getFlatPositionForConnector(I)I

    move-result v1

    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v2, v1}, Landroid/widget/SemExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v2

    iget-object v3, v2, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v3, v3, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    iget v3, v3, Landroid/widget/SemExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v4, v2, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    iget v4, v4, Landroid/widget/SemExpandableListConnector$GroupMetadata;->flPos:I

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v3, p0, Landroid/widget/SemExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v2}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    return-void

    :cond_2
    :goto_1
    invoke-super {p0, p1, p2, v0}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    return-void
.end method

.method public blacklist expandAll()V
    .locals 2

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    iput v1, p0, Landroid/widget/SemExpandableListView;->mExpandCollapseAllState:I

    iget-boolean v0, p0, Landroid/widget/SemExpandableListView;->mAnimationEnabled:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->expandAllGroups()V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->triggerJumpScrollToTop()V

    return-void
.end method

.method public blacklist expandCollapseAll(Z)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist expandGroup(I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/SemExpandableListView;->expandGroup(IZ)Z

    move-result v0

    return v0
.end method

.method public blacklist expandGroup(IZ)Z
    .locals 6

    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-static {v0, p1, v1, v1}, Landroid/widget/SemExpandableListPosition;->obtain(IIII)Landroid/widget/SemExpandableListPosition;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v1, v0}, Landroid/widget/SemExpandableListConnector;->getFlattenedPos(Landroid/widget/SemExpandableListPosition;)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    invoke-virtual {v0}, Landroid/widget/SemExpandableListPosition;->recycle()V

    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v2, v1}, Landroid/widget/SemExpandableListConnector;->expandGroup(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Z

    move-result v2

    iget-object v3, p0, Landroid/widget/SemExpandableListView;->mOnGroupExpandListener:Landroid/widget/SemExpandableListView$OnGroupExpandListener;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/SemExpandableListView;->mOnGroupExpandListener:Landroid/widget/SemExpandableListView$OnGroupExpandListener;

    invoke-interface {v3, p1}, Landroid/widget/SemExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    :cond_1
    if-eqz p2, :cond_2

    iget-object v3, v1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v3, v3, Landroid/widget/SemExpandableListPosition;->flatListPos:I

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getHeaderViewsCount()I

    move-result v4

    add-int/2addr v4, v3

    iget-object v5, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v5, p1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p0, v5, v4}, Landroid/widget/SemExpandableListView;->smoothScrollToPosition(II)V

    :cond_2
    invoke-virtual {v1}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    return v2
.end method

.method public bridge synthetic whitelist getAdapter()Landroid/widget/Adapter;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    invoke-super {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getExpandCollapseDuration()I
    .locals 4

    iget v0, p0, Landroid/widget/SemExpandableListView;->mTranslationOffset:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x4085e00000000000L    # 700.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    const/16 v0, 0x190

    :cond_0
    return v0
.end method

.method public blacklist getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public blacklist getExpandableListPosition(I)J
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->getHeaderFooterPackedPosition(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v1, v0}, Landroid/widget/SemExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v1

    iget-object v2, v1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    invoke-virtual {v2}, Landroid/widget/SemExpandableListPosition;->getPackedPosition()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    return-wide v2
.end method

.method public blacklist getFlatListPosition(J)I
    .locals 4

    nop

    invoke-static {p1, p2}, Landroid/widget/SemExpandableListPosition;->obtainPosition(J)Landroid/widget/SemExpandableListPosition;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v2, v0}, Landroid/widget/SemExpandableListConnector;->getFlattenedPos(Landroid/widget/SemExpandableListPosition;)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/SemExpandableListPosition;->recycle()V

    if-nez v2, :cond_1

    return v1

    :cond_1
    iget-object v1, v2, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v1, v1, Landroid/widget/SemExpandableListPosition;->flatListPos:I

    invoke-virtual {v2}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    invoke-direct {p0, v1}, Landroid/widget/SemExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v3

    return v3
.end method

.method public blacklist getSelectedId()J
    .locals 5

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getSelectedPosition()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v2, -0x1

    return-wide v2

    :cond_0
    invoke-static {v0, v1}, Landroid/widget/SemExpandableListView;->getPackedPositionGroup(J)I

    move-result v2

    invoke-static {v0, v1}, Landroid/widget/SemExpandableListView;->getPackedPositionType(J)I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v3, v2}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v3

    return-wide v3

    :cond_1
    iget-object v3, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-static {v0, v1}, Landroid/widget/SemExpandableListView;->getPackedPositionChild(J)I

    move-result v4

    invoke-interface {v3, v2, v4}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v3

    return-wide v3
.end method

.method public blacklist getSelectedPosition()J
    .locals 3

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/SemExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v1

    return-wide v1
.end method

.method public blacklist getUnfoldedChildAt(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mItemDecorator:Landroid/widget/SemExpandableListConnector$ItemDecorator;

    invoke-super {p0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/widget/SemExpandableListConnector$ItemDecorator;->unfoldDecoratedView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method blacklist handleItemClick(Landroid/view/View;IJ)Z
    .locals 9

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v0, p2}, Landroid/widget/SemExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v0

    iget-object v1, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    invoke-direct {p0, v1}, Landroid/widget/SemExpandableListView;->getChildOrGroupId(Landroid/widget/SemExpandableListPosition;)J

    move-result-wide p3

    iget-object v1, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v1, v1, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v2, 0x2

    const/4 v8, 0x0

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mOnGroupClickListener:Landroid/widget/SemExpandableListView$OnGroupClickListener;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mOnGroupClickListener:Landroid/widget/SemExpandableListView$OnGroupClickListener;

    iget-object v1, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v5, v1, Landroid/widget/SemExpandableListPosition;->groupPos:I

    move-object v3, p0

    move-object v4, p1

    move-wide v6, p3

    invoke-interface/range {v2 .. v7}, Landroid/widget/SemExpandableListView$OnGroupClickListener;->onGroupClick(Landroid/widget/SemExpandableListView;Landroid/view/View;IJ)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v8}, Landroid/widget/SemExpandableListView;->playSoundEffect(I)V

    invoke-virtual {v0}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    const/4 v1, 0x1

    return v1

    :cond_0
    iget-boolean v1, p0, Landroid/widget/SemExpandableListView;->mAnimationEnabled:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->captureViewsPriorAnimation()V

    :cond_1
    iget-object v1, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v1, v1, Landroid/widget/SemExpandableListPosition;->groupPos:I

    invoke-virtual {v0}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Landroid/widget/SemExpandableListView$2;

    invoke-direct {v2, p0, v1}, Landroid/widget/SemExpandableListView$2;-><init>(Landroid/widget/SemExpandableListView;I)V

    iget-boolean v3, p0, Landroid/widget/SemExpandableListView;->mAnimationEnabled:Z

    if-eqz v3, :cond_2

    invoke-direct {p0, v1, v2}, Landroid/widget/SemExpandableListView;->startCollapseAnimation(ILjava/lang/Runnable;)V

    :cond_2
    iget-object v3, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v3, v0}, Landroid/widget/SemExpandableListConnector;->collapseGroup(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Z

    new-instance v3, Landroid/widget/SemExpandableListView$3;

    invoke-direct {v3, p0}, Landroid/widget/SemExpandableListView$3;-><init>(Landroid/widget/SemExpandableListView;)V

    invoke-virtual {p0, v3}, Landroid/widget/SemExpandableListView;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, v8}, Landroid/widget/SemExpandableListView;->playSoundEffect(I)V

    iget-boolean v3, p0, Landroid/widget/SemExpandableListView;->mAnimationEnabled:Z

    if-nez v3, :cond_3

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_3
    goto :goto_0

    :cond_4
    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v2, v0}, Landroid/widget/SemExpandableListConnector;->expandGroup(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Z

    invoke-virtual {p0, v8}, Landroid/widget/SemExpandableListView;->playSoundEffect(I)V

    new-instance v2, Landroid/widget/SemExpandableListView$4;

    invoke-direct {v2, p0, v1}, Landroid/widget/SemExpandableListView$4;-><init>(Landroid/widget/SemExpandableListView;I)V

    iget-boolean v3, p0, Landroid/widget/SemExpandableListView;->mAnimationEnabled:Z

    if-eqz v3, :cond_5

    invoke-direct {p0, v1, v2}, Landroid/widget/SemExpandableListView;->startExpandAnimation(ILjava/lang/Runnable;)V

    goto :goto_0

    :cond_5
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_6
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mOnChildClickListener:Landroid/widget/SemExpandableListView$OnChildClickListener;

    if-eqz v1, :cond_7

    invoke-virtual {p0, v8}, Landroid/widget/SemExpandableListView;->playSoundEffect(I)V

    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mOnChildClickListener:Landroid/widget/SemExpandableListView$OnChildClickListener;

    iget-object v1, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v5, v1, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget-object v1, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v6, v1, Landroid/widget/SemExpandableListPosition;->childPos:I

    move-object v3, p0

    move-object v4, p1

    move-wide v7, p3

    invoke-interface/range {v2 .. v8}, Landroid/widget/SemExpandableListView$OnChildClickListener;->onChildClick(Landroid/widget/SemExpandableListView;Landroid/view/View;IIJ)Z

    move-result v1

    return v1

    :cond_7
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    return v1
.end method

.method public blacklist isGroupExpanded(I)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v0, p1}, Landroid/widget/SemExpandableListConnector;->isGroupExpanded(I)Z

    move-result v0

    return v0
.end method

.method protected whitelist layoutChildren()V
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/widget/SemExpandableListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v0, v1

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    iget v1, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ListView;->onAttachedToWindow()V

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v0}, Landroid/widget/SemExpandableListConnector;->semRegisterDataSetObserver()V

    :cond_0
    return-void
.end method

.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/ListView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10404e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x10404e7

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemExpandableListView;->mDescriptionExpand:Ljava/lang/String;

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10404e5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemExpandableListView;->mDescriptionCollapse:Ljava/lang/String;

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorPaint:Landroid/graphics/Paint;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_0
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v0}, Landroid/widget/SemExpandableListConnector;->semUnregisterDataSetObserver()V

    :cond_0
    return-void
.end method

.method public whitelist onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->isHoverable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->isHovered()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/SemExpandableListView;->setHovered(Z)V

    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public whitelist onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/widget/SemExpandableListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public whitelist onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Landroid/widget/SemExpandableListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemExpandableListView;->mBlockTouchEvent:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method blacklist onJumpScrollToTopFinished()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ListView;->onJumpScrollToTopFinished()V

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/widget/SemExpandableListView;->mExpandCollapseAllState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->captureViewsPriorAnimation()V

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->getExpandedState()[Z

    move-result-object v0

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->expandAllGroups()V

    new-instance v1, Landroid/widget/SemExpandableListView$10;

    invoke-direct {v1, p0}, Landroid/widget/SemExpandableListView$10;-><init>(Landroid/widget/SemExpandableListView;)V

    invoke-direct {p0, v0, v1}, Landroid/widget/SemExpandableListView;->startExpandAllAnimation([ZLjava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/widget/SemExpandableListView;->mExpandCollapseAllState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->captureViewsPriorAnimation()V

    new-instance v0, Landroid/widget/SemExpandableListView$11;

    invoke-direct {v0, p0}, Landroid/widget/SemExpandableListView$11;-><init>(Landroid/widget/SemExpandableListView;)V

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->getExpandedState()[Z

    move-result-object v1

    invoke-direct {p0, v1, v0}, Landroid/widget/SemExpandableListView;->startCollapseAllAnimation([ZLjava/lang/Runnable;)V

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->collapseAllGroups()V

    goto :goto_1

    :cond_2
    :goto_0
    nop

    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemExpandableListView;->mExpandCollapseAllState:I

    return-void
.end method

.method public whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    instance-of v0, p1, Landroid/widget/SemExpandableListView$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/widget/SemExpandableListView$SavedState;

    invoke-virtual {v0}, Landroid/widget/SemExpandableListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/widget/SemExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    iget-object v2, v0, Landroid/widget/SemExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroid/widget/SemExpandableListConnector;->setExpandedGroupMetadataList(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method public whitelist onRtlPropertiesChanged(I)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->resolveIndicator()V

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->resolveChildIndicator()V

    return-void
.end method

.method public whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroid/widget/SemExpandableListView$SavedState;

    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v2}, Landroid/widget/SemExpandableListConnector;->getExpandedGroupMetadataList()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v1, v0, v2}, Landroid/widget/SemExpandableListView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    return-object v1
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemExpandableListView;->mBlockTouchEvent:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist performItemClick(Landroid/view/View;IJ)Z
    .locals 3

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mItemDecorator:Landroid/widget/SemExpandableListConnector$ItemDecorator;

    invoke-interface {v0, p1}, Landroid/widget/SemExpandableListConnector$ItemDecorator;->unfoldDecoratedView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p2}, Landroid/widget/SemExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0, v0, p2, p3, p4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    return v1

    :cond_0
    invoke-direct {p0, p2}, Landroid/widget/SemExpandableListView;->getFlatPositionForConnector(I)I

    move-result v1

    invoke-virtual {p0, v0, v1, p3, p4}, Landroid/widget/SemExpandableListView;->handleItemClick(Landroid/view/View;IJ)Z

    move-result v2

    return v2
.end method

.method public blacklist scrollTo(Landroid/view/View;IILandroid/widget/SemExpandableListConnector$PositionMetadata;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic whitelist setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/SemExpandableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public blacklist setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 2

    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz p1, :cond_0

    new-instance v0, Landroid/widget/SemExpandableListConnector;

    invoke-direct {v0, p1}, Landroid/widget/SemExpandableListConnector;-><init>(Landroid/widget/ExpandableListAdapter;)V

    iput-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mItemDecorator:Landroid/widget/SemExpandableListConnector$ItemDecorator;

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListConnector;->setItemDecorator(Landroid/widget/SemExpandableListConnector$ItemDecorator;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    :goto_0
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public whitelist setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "For ExpandableListView, use setAdapter(ExpandableListAdapter) instead of setAdapter(ListAdapter)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAnimationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/SemExpandableListView;->mAnimationEnabled:Z

    return-void
.end method

.method public blacklist setChildDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public blacklist setChildIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public blacklist setChildIndicatorBounds(II)V
    .locals 0

    iput p1, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorLeft:I

    iput p2, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorRight:I

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->resolveChildIndicator()V

    return-void
.end method

.method public blacklist setChildIndicatorBoundsRelative(II)V
    .locals 0

    iput p1, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorStart:I

    iput p2, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorEnd:I

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->resolveChildIndicator()V

    return-void
.end method

.method public blacklist setCollapseAllSpeedFactor(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public blacklist setCollapseSpeedFactor(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public whitelist setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemExpandableListView;->mDividerHeight:I

    if-eqz p1, :cond_1

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    :cond_0
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    aput v2, v1, v0

    sget-object v1, Landroid/widget/SemExpandableListView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDivider() height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    aget v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public whitelist setDividerHeight(I)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/ListView;->setDividerHeight(I)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemExpandableListView;->mDividerHeight:I

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    :cond_0
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    aput p1, v1, v0

    sget-object v0, Landroid/widget/SemExpandableListView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDividerHeight() height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist setExpandAllSpeedFactor(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public blacklist setExpandSpeedFactor(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public blacklist setExpandingAnimationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/SemExpandableListView;->mAnimationEnabled:Z

    return-void
.end method

.method public blacklist setGroupIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/SemExpandableListView;->mIndicatorLeft:I

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    :cond_0
    return-void
.end method

.method public blacklist setGroupIndicatorAnimationType(I)V
    .locals 0

    iput p1, p0, Landroid/widget/SemExpandableListView;->mIndicatorAnimationType:I

    return-void
.end method

.method public blacklist setGroupIndicatorColor(I)V
    .locals 3

    sget-object v0, Landroid/widget/SemExpandableListView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setGroupIndicatorColor() color= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorColor:I

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public blacklist setGroupIndicatorRotationAngle(I)V
    .locals 0

    iput p1, p0, Landroid/widget/SemExpandableListView;->mRotationAngle:I

    return-void
.end method

.method public blacklist setIndicatorBounds(II)V
    .locals 0

    iput p1, p0, Landroid/widget/SemExpandableListView;->mIndicatorLeft:I

    iput p2, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->resolveIndicator()V

    return-void
.end method

.method public blacklist setIndicatorBoundsRelative(II)V
    .locals 0

    iput p1, p0, Landroid/widget/SemExpandableListView;->mIndicatorStart:I

    iput p2, p0, Landroid/widget/SemExpandableListView;->mIndicatorEnd:I

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->resolveIndicator()V

    return-void
.end method

.method public blacklist setIndicatorGravity(I)V
    .locals 3

    iput p1, p0, Landroid/widget/SemExpandableListView;->mIndicatorGravity:I

    sget-object v0, Landroid/widget/SemExpandableListView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIndicatorGravity() gravity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIndicatorGravity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/SemExpandableListView;->mIndicatorGravity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist setIndicatorPaddings(II)V
    .locals 0

    iput p1, p0, Landroid/widget/SemExpandableListView;->mIndicatorPaddingLeft:I

    iput p2, p0, Landroid/widget/SemExpandableListView;->mIndicatorPaddingRight:I

    return-void
.end method

.method public blacklist setOnChildClickListener(Landroid/widget/SemExpandableListView$OnChildClickListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mOnChildClickListener:Landroid/widget/SemExpandableListView$OnChildClickListener;

    return-void
.end method

.method public blacklist setOnGroupClickListener(Landroid/widget/SemExpandableListView$OnGroupClickListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mOnGroupClickListener:Landroid/widget/SemExpandableListView$OnGroupClickListener;

    return-void
.end method

.method public blacklist setOnGroupCollapseListener(Landroid/widget/SemExpandableListView$OnGroupCollapseListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mOnGroupCollapseListener:Landroid/widget/SemExpandableListView$OnGroupCollapseListener;

    return-void
.end method

.method public blacklist setOnGroupExpandListener(Landroid/widget/SemExpandableListView$OnGroupExpandListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mOnGroupExpandListener:Landroid/widget/SemExpandableListView$OnGroupExpandListener;

    return-void
.end method

.method public whitelist setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public blacklist setSelectedChild(IIZ)Z
    .locals 4

    invoke-static {p1, p2}, Landroid/widget/SemExpandableListPosition;->obtainChildPosition(II)Landroid/widget/SemExpandableListPosition;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v1, v0}, Landroid/widget/SemExpandableListConnector;->getFlattenedPos(Landroid/widget/SemExpandableListPosition;)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v1

    if-nez v1, :cond_2

    if-nez p3, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/SemExpandableListView;->expandGroup(I)Z

    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v2, v0}, Landroid/widget/SemExpandableListConnector;->getFlattenedPos(Landroid/widget/SemExpandableListPosition;)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Could not find child"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_0
    iget-object v2, v1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v2, v2, Landroid/widget/SemExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v2}, Landroid/widget/SemExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v2

    invoke-super {p0, v2}, Landroid/widget/ListView;->setSelection(I)V

    invoke-virtual {v0}, Landroid/widget/SemExpandableListPosition;->recycle()V

    invoke-virtual {v1}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    const/4 v3, 0x1

    return v3
.end method

.method public blacklist setSelectedGroup(I)V
    .locals 3

    nop

    invoke-static {p1}, Landroid/widget/SemExpandableListPosition;->obtainGroupPosition(I)Landroid/widget/SemExpandableListPosition;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v1, v0}, Landroid/widget/SemExpandableListConnector;->getFlattenedPos(Landroid/widget/SemExpandableListPosition;)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/SemExpandableListPosition;->recycle()V

    iget-object v2, v1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v2, v2, Landroid/widget/SemExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v2}, Landroid/widget/SemExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v2

    invoke-super {p0, v2}, Landroid/widget/ListView;->setSelection(I)V

    invoke-virtual {v1}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    return-void
.end method
