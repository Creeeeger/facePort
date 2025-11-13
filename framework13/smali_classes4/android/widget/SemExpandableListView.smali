.class public Landroid/widget/SemExpandableListView;
.super Landroid/widget/ListView;
.source "SemExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;,
        Landroid/widget/SemExpandableListView$IndicatorImageView;,
        Landroid/widget/SemExpandableListView$SavedState;,
        Landroid/widget/SemExpandableListView$ExpandableListContextMenuInfo;,
        Landroid/widget/SemExpandableListView$OnChildClickListener;,
        Landroid/widget/SemExpandableListView$OnGroupClickListener;,
        Landroid/widget/SemExpandableListView$OnGroupExpandListener;,
        Landroid/widget/SemExpandableListView$OnGroupCollapseListener;,
        Landroid/widget/SemExpandableListView$ViewInfo;,
        Landroid/widget/SemExpandableListView$CollapsingRect;,
        Landroid/widget/SemExpandableListView$ExpandingRect;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist ANIMATION_STATE_COLLAPSING:I = 0x3

.field private static final blacklist ANIMATION_STATE_COLLAPSING_ALL:I = 0x5

.field private static final blacklist ANIMATION_STATE_EXPANDING:I = 0x2

.field private static final blacklist ANIMATION_STATE_EXPANDING_ALL:I = 0x4

.field private static final blacklist ANIMATION_STATE_IDLE:I = 0x1

.field public static final whitelist CHILD_INDICATOR_INHERIT:I = -0x1

.field private static final blacklist CHILD_LAST_STATE_SET:[I

.field private static final blacklist COLLAPSE_ALL_PENDING:I = 0x2

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

.field public static final whitelist INDICATOR_ANIMATION_TYPE_MORPH:I = 0x2

.field public static final whitelist INDICATOR_ANIMATION_TYPE_ROTATE:I = 0x1

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

.field public static final whitelist PACKED_POSITION_TYPE_CHILD:I = 0x1

.field public static final whitelist PACKED_POSITION_TYPE_GROUP:I = 0x0

.field public static final whitelist PACKED_POSITION_TYPE_NULL:I = 0x2

.field public static final whitelist PACKED_POSITION_VALUE_NULL:J = 0xffffffffL

.field private static final blacklist PAINT_ALPHA:I = 0x7f

.field private static final blacklist PAINT_STROKE_SIZE:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String;

.field private static blacklist mExpandInterpolator:Landroid/view/animation/ElasticCustom;


# instance fields
.field private final blacklist DEBUGGABLE:Z

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
    .locals 8

    .line 134
    const-class v0, Landroid/widget/SemExpandableListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/SemExpandableListView;->TAG:Ljava/lang/String;

    .line 138
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    sput-boolean v0, Landroid/widget/SemExpandableListView;->DEBUGGABLE_LOW:Z

    .line 256
    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Landroid/widget/SemExpandableListView;->EMPTY_STATE_SET:[I

    .line 259
    const/4 v2, 0x1

    new-array v3, v2, [I

    const v4, 0x10100a8

    aput v4, v3, v0

    sput-object v3, Landroid/widget/SemExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    .line 263
    new-array v4, v2, [I

    const v5, 0x10100a9

    aput v5, v4, v0

    sput-object v4, Landroid/widget/SemExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    .line 267
    const/4 v5, 0x2

    new-array v6, v5, [I

    fill-array-data v6, :array_0

    sput-object v6, Landroid/widget/SemExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    .line 271
    const/4 v7, 0x4

    new-array v7, v7, [[I

    aput-object v1, v7, v0

    aput-object v3, v7, v2

    aput-object v4, v7, v5

    const/4 v1, 0x3

    aput-object v6, v7, v1

    sput-object v7, Landroid/widget/SemExpandableListView;->GROUP_STATE_SETS:[[I

    .line 279
    new-array v1, v2, [I

    const v2, 0x10100a6

    aput v2, v1, v0

    sput-object v1, Landroid/widget/SemExpandableListView;->CHILD_LAST_STATE_SET:[I

    .line 315
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/widget/SemExpandableListView;->EXPAND_COLLAPSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 317
    new-instance v0, Landroid/view/animation/ElasticCustom;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v4, v1}, Landroid/view/animation/ElasticCustom;-><init>(FF)V

    sput-object v0, Landroid/widget/SemExpandableListView;->mExpandInterpolator:Landroid/view/animation/ElasticCustom;

    return-void

    :array_0
    .array-data 4
        0x10100a8
        0x10100a9
    .end array-data
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 364
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SemExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 365
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 379
    const v0, 0x101006f

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SemExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 380
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 396
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SemExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 397
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 418
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SemExpandableListView;->DEBUGGABLE:Z

    .line 285
    iput-boolean v0, p0, Landroid/widget/SemExpandableListView;->mBlockTouchEvent:Z

    .line 287
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/SemExpandableListView;->mAnimationEnabled:Z

    .line 294
    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v2, p0, Landroid/widget/SemExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;

    .line 295
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/widget/SemExpandableListView;->mGhostViews:Ljava/util/ArrayList;

    .line 296
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/widget/SemExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    .line 297
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/SemExpandableListView;->mBitmapUpdateBounds:Landroid/graphics/Rect;

    .line 298
    iput v0, p0, Landroid/widget/SemExpandableListView;->mTranslationOffset:I

    .line 299
    iput v0, p0, Landroid/widget/SemExpandableListView;->mCollapsedGroupTopStart:I

    .line 300
    iput v0, p0, Landroid/widget/SemExpandableListView;->mCollapsedGroupTopEnd:I

    .line 301
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleArea:Landroid/graphics/RectF;

    .line 306
    iput v0, p0, Landroid/widget/SemExpandableListView;->mIndicatorPaddingLeft:I

    .line 307
    iput v0, p0, Landroid/widget/SemExpandableListView;->mIndicatorPaddingRight:I

    .line 308
    const/4 v2, 0x3

    iput v2, p0, Landroid/widget/SemExpandableListView;->mIndicatorGravity:I

    .line 310
    const/16 v3, 0xb4

    iput v3, p0, Landroid/widget/SemExpandableListView;->mRotationAngle:I

    .line 324
    iput v1, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    .line 329
    iput v0, p0, Landroid/widget/SemExpandableListView;->mExpandCollapseAllState:I

    .line 343
    iput v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorAnimationType:I

    .line 347
    const/high16 v3, -0x1000000

    iput v3, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorColor:I

    .line 607
    new-instance v3, Landroid/widget/SemExpandableListView$1;

    invoke-direct {v3, p0}, Landroid/widget/SemExpandableListView$1;-><init>(Landroid/widget/SemExpandableListView;)V

    iput-object v3, p0, Landroid/widget/SemExpandableListView;->mItemDecorator:Landroid/widget/SemExpandableListConnector$ItemDecorator;

    .line 1906
    new-instance v3, Landroid/widget/SemExpandableListView$9;

    invoke-direct {v3, p0}, Landroid/widget/SemExpandableListView$9;-><init>(Landroid/widget/SemExpandableListView;)V

    iput-object v3, p0, Landroid/widget/SemExpandableListView;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 420
    sget-object v3, Lcom/android/internal/R$styleable;->ExpandableListView:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 423
    .local v3, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/SemExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 425
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/SemExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 427
    const/4 v4, 0x2

    invoke-virtual {v3, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/SemExpandableListView;->mIndicatorLeft:I

    .line 429
    invoke-virtual {v3, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    .line 431
    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 432
    iget v4, p0, Landroid/widget/SemExpandableListView;->mIndicatorLeft:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v4, v2

    iput v4, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    .line 434
    :cond_0
    const/4 v2, 0x4

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorLeft:I

    .line 437
    const/4 v2, 0x5

    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorRight:I

    .line 440
    const/4 v2, 0x6

    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SemExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 443
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->isRtlCompatibilityMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 444
    const/4 v2, 0x7

    const/4 v5, -0x2

    invoke-virtual {v3, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/widget/SemExpandableListView;->mIndicatorStart:I

    .line 447
    const/16 v2, 0x8

    invoke-virtual {v3, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/widget/SemExpandableListView;->mIndicatorEnd:I

    .line 451
    const/16 v2, 0x9

    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorStart:I

    .line 454
    const/16 v2, 0xa

    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorEnd:I

    .line 459
    :cond_1
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 460
    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    if-nez v2, :cond_2

    .line 461
    new-array v2, v1, [I

    iput-object v2, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    .line 464
    :cond_2
    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    .line 465
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10404ab

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 464
    const v5, 0x10404ac

    invoke-virtual {v2, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SemExpandableListView;->mDescriptionExpand:Ljava/lang/String;

    .line 466
    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v6, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    .line 467
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10404aa

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    .line 466
    invoke-virtual {v2, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemExpandableListView;->mDescriptionCollapse:Ljava/lang/String;

    .line 469
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1050158

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorWidth:I

    .line 470
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1050156

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorHeight:I

    .line 471
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1050157

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Landroid/widget/SemExpandableListView;->mIndicatorPaddingHeight:F

    .line 473
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorPaint:Landroid/graphics/Paint;

    .line 474
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 475
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 476
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorPaint:Landroid/graphics/Paint;

    const/16 v1, 0x7f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 477
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 478
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

    .line 479
    .local v0, "strokeSize":I
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorPaint:Landroid/graphics/Paint;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 480
    return-void
.end method

.method static synthetic blacklist access$000(Landroid/widget/SemExpandableListView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/SemExpandableListView;

    .line 132
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic blacklist access$100(Landroid/widget/SemExpandableListView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/SemExpandableListView;

    .line 132
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic blacklist access$200(Landroid/widget/SemExpandableListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SemExpandableListView;

    .line 132
    iget v0, p0, Landroid/widget/SemExpandableListView;->mBottom:I

    return v0
.end method

.method static synthetic blacklist access$300(Landroid/widget/SemExpandableListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SemExpandableListView;

    .line 132
    iget v0, p0, Landroid/widget/SemExpandableListView;->mPaddingRight:I

    return v0
.end method

.method static synthetic blacklist access$400(Landroid/widget/SemExpandableListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SemExpandableListView;

    .line 132
    iget v0, p0, Landroid/widget/SemExpandableListView;->mPaddingRight:I

    return v0
.end method

.method static synthetic blacklist access$500(Landroid/widget/SemExpandableListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SemExpandableListView;

    .line 132
    iget v0, p0, Landroid/widget/SemExpandableListView;->mPaddingLeft:I

    return v0
.end method

.method static synthetic blacklist access$600(Landroid/widget/SemExpandableListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SemExpandableListView;

    .line 132
    iget v0, p0, Landroid/widget/SemExpandableListView;->mPaddingLeft:I

    return v0
.end method

.method static synthetic blacklist access$700(Landroid/widget/SemExpandableListView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/SemExpandableListView;

    .line 132
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic blacklist access$800(Landroid/widget/SemExpandableListView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/SemExpandableListView;

    .line 132
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private blacklist captureViewsPriorAnimation()V
    .locals 8

    .line 1951
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getChildCount()I

    move-result v0

    .line 1952
    .local v0, "childCount":I
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getFirstVisiblePosition()I

    move-result v1

    .line 1955
    .local v1, "firstVisiblePos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1956
    invoke-virtual {p0, v2}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1957
    .local v3, "child":Landroid/view/View;
    add-int v4, v2, v1

    invoke-virtual {p0, v4}, Landroid/widget/SemExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v4

    .line 1958
    .local v4, "packedPos":J
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    .line 1960
    :cond_0
    new-instance v6, Landroid/widget/SemExpandableListView$ViewInfo;

    invoke-direct {v6, v3}, Landroid/widget/SemExpandableListView$ViewInfo;-><init>(Landroid/view/View;)V

    .line 1961
    .local v6, "viewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    iget-object v7, v6, Landroid/widget/SemExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_1

    .line 1962
    iget-object v7, p0, Landroid/widget/SemExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v4, v5, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1955
    .end local v4    # "packedPos":J
    .end local v6    # "viewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1965
    .end local v2    # "i":I
    .end local v3    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private blacklist collapseAllGroups()V
    .locals 3

    .line 3117
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    .line 3118
    .local v0, "groupCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3119
    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v2, v1}, Landroid/widget/SemExpandableListConnector;->collapseGroup(I)Z

    .line 3118
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3121
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist createViewSnapshotAnimation(ILandroid/widget/SemExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;
    .locals 6
    .param p1, "translationOffset"    # I
    .param p2, "viewInfo"    # Landroid/widget/SemExpandableListView$ViewInfo;

    .line 1898
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p2, Landroid/widget/SemExpandableListView$ViewInfo;->left:I

    iget v2, p2, Landroid/widget/SemExpandableListView$ViewInfo;->top:I

    iget v3, p2, Landroid/widget/SemExpandableListView$ViewInfo;->right:I

    iget v4, p2, Landroid/widget/SemExpandableListView$ViewInfo;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1899
    .local v0, "oldViewBounds":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1900
    .local v1, "newViewBounds":Landroid/graphics/Rect;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 1901
    iget-object v3, p2, Landroid/widget/SemExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    sget-object v4, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    const/4 v2, 0x1

    aput-object v1, v5, v2

    const-string v2, "bounds"

    invoke-static {v3, v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1903
    .local v2, "animBounds":Landroid/animation/ObjectAnimator;
    return-object v2
.end method

.method private blacklist createViewSnapshotAnimationReverse(ILandroid/widget/SemExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;
    .locals 6
    .param p1, "translationOffset"    # I
    .param p2, "viewInfo"    # Landroid/widget/SemExpandableListView$ViewInfo;

    .line 1889
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p2, Landroid/widget/SemExpandableListView$ViewInfo;->left:I

    iget v2, p2, Landroid/widget/SemExpandableListView$ViewInfo;->top:I

    iget v3, p2, Landroid/widget/SemExpandableListView$ViewInfo;->right:I

    iget v4, p2, Landroid/widget/SemExpandableListView$ViewInfo;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1890
    .local v0, "newViewBounds":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1891
    .local v1, "oldViewBounds":Landroid/graphics/Rect;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 1892
    iget-object v3, p2, Landroid/widget/SemExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    sget-object v4, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v2

    const/4 v2, 0x1

    aput-object v0, v5, v2

    const-string v2, "bounds"

    invoke-static {v3, v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1894
    .local v2, "animBounds":Landroid/animation/ObjectAnimator;
    return-object v2
.end method

.method private blacklist drawGhostViews(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 811
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGhostViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-nez v0, :cond_0

    return-void

    .line 812
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 814
    .local v0, "saveCount":I
    iget v1, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 815
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleArea:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 818
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

    .line 819
    .local v2, "vInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    iget-object v3, v2, Landroid/widget/SemExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 820
    .end local v2    # "vInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    goto :goto_0

    .line 822
    :cond_2
    iget v1, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 823
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleArea:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 824
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

    .line 825
    .restart local v2    # "vInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    iget-object v3, v2, Landroid/widget/SemExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 826
    .end local v2    # "vInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    goto :goto_1

    .line 829
    :cond_3
    iget v1, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    .line 832
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mExpandingRects:[Landroid/widget/SemExpandableListView$ExpandingRect;

    array-length v1, v1

    .line 833
    .local v1, "len":I
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 834
    .local v2, "expandUnionRect":Landroid/graphics/RectF;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v1, :cond_5

    .line 835
    iget-object v4, p0, Landroid/widget/SemExpandableListView;->mExpandingRects:[Landroid/widget/SemExpandableListView$ExpandingRect;

    aget-object v4, v4, v3

    if-nez v4, :cond_4

    goto :goto_3

    .line 837
    :cond_4
    iget-object v4, v4, Landroid/widget/SemExpandableListView$ExpandingRect;->destinationRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v4}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 834
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 839
    .end local v3    # "i":I
    :cond_5
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 841
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

    .line 842
    .local v4, "vInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    iget-object v5, v4, Landroid/widget/SemExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 843
    .end local v4    # "vInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    goto :goto_4

    .line 845
    .end local v1    # "len":I
    .end local v2    # "expandUnionRect":Landroid/graphics/RectF;
    :cond_6
    iget v1, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_9

    .line 848
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mCollapsingRects:[Landroid/widget/SemExpandableListView$CollapsingRect;

    array-length v1, v1

    .line 849
    .restart local v1    # "len":I
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 850
    .local v2, "collapseUnionRect":Landroid/graphics/RectF;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    if-ge v3, v1, :cond_8

    .line 851
    iget-object v4, p0, Landroid/widget/SemExpandableListView;->mCollapsingRects:[Landroid/widget/SemExpandableListView$CollapsingRect;

    aget-object v4, v4, v3

    if-nez v4, :cond_7

    goto :goto_6

    .line 853
    :cond_7
    iget-object v4, v4, Landroid/widget/SemExpandableListView$CollapsingRect;->destinationRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v4}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 850
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 855
    .end local v3    # "i":I
    :cond_8
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 857
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

    .line 858
    .restart local v4    # "vInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    iget-object v5, v4, Landroid/widget/SemExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 859
    .end local v4    # "vInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    goto :goto_7

    .line 861
    .end local v1    # "len":I
    .end local v2    # "collapseUnionRect":Landroid/graphics/RectF;
    :cond_9
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 862
    return-void
.end method

.method private blacklist expandAllGroups()V
    .locals 3

    .line 3110
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    .line 3111
    .local v0, "groupCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3112
    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v2, v1}, Landroid/widget/SemExpandableListConnector;->expandGroup(I)Z

    .line 3111
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3114
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist getAbsoluteFlatPosition(I)I
    .locals 1
    .param p1, "flatListPosition"    # I

    .line 1044
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private blacklist getChildOrGroupId(Landroid/widget/SemExpandableListPosition;)J
    .locals 3
    .param p1, "position"    # Landroid/widget/SemExpandableListPosition;

    .line 2458
    iget v0, p1, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2459
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget v2, p1, Landroid/widget/SemExpandableListPosition;->childPos:I

    invoke-interface {v0, v1, v2}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    return-wide v0

    .line 2461
    :cond_0
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Landroid/widget/SemExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist getDivider(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "pos"    # Landroid/widget/SemExpandableListConnector$PositionMetadata;

    .line 942
    iget-object v0, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v0, v0, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 943
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 945
    :cond_0
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private blacklist getExpandedState()[Z
    .locals 7

    .line 3089
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->getLastNonFooterPosition()I

    move-result v0

    .line 3090
    .local v0, "lastValidPos":I
    invoke-virtual {p0, v0}, Landroid/widget/SemExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v1

    .line 3091
    .local v1, "lastPosPackedPos":J
    invoke-static {v1, v2}, Landroid/widget/SemExpandableListView;->getPackedPositionGroup(J)I

    move-result v3

    .line 3092
    .local v3, "lastGroupId":I
    add-int/lit8 v4, v3, 0x1

    new-array v4, v4, [Z

    .line 3093
    .local v4, "expandedState":[Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-gt v5, v3, :cond_0

    .line 3094
    iget-object v6, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v6, v5}, Landroid/widget/SemExpandableListConnector;->isGroupExpanded(I)Z

    move-result v6

    aput-boolean v6, v4, v5

    .line 3093
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3096
    .end local v5    # "i":I
    :cond_0
    return-object v4
.end method

.method private blacklist getFlatPositionForConnector(I)I
    .locals 1
    .param p1, "flatListPosition"    # I

    .line 1033
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method private blacklist getHeaderFooterPackedPosition(I)J
    .locals 6
    .param p1, "flatListPosition"    # I

    .line 2420
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getHeaderViewsCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2421
    move v0, p1

    .line 2422
    .local v0, "headerViewPosition":I
    const-wide v1, 0x7fffffff00000000L

    int-to-long v3, v0

    or-long/2addr v1, v3

    return-wide v1

    .line 2424
    .end local v0    # "headerViewPosition":I
    :cond_0
    iget v0, p0, Landroid/widget/SemExpandableListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2425
    .local v0, "footerViewsStart":I
    sub-int v1, p1, v0

    .line 2426
    .local v1, "footerViewPosition":I
    const-wide v2, -0x100000000L

    int-to-long v4, v1

    or-long/2addr v2, v4

    return-wide v2
.end method

.method private blacklist getIndicator(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "pos"    # Landroid/widget/SemExpandableListConnector$PositionMetadata;

    .line 874
    iget-object v0, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v0, v0, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 875
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 877
    .local v0, "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 881
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

    .line 885
    .local v2, "isEmpty":Z
    :goto_1
    invoke-virtual {p1}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v4

    .line 886
    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    or-int/2addr v1, v4

    .line 887
    .local v1, "stateSetIndex":I
    sget-object v3, Landroid/widget/SemExpandableListView;->GROUP_STATE_SETS:[[I

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 888
    .end local v1    # "stateSetIndex":I
    .end local v2    # "isEmpty":Z
    goto :goto_4

    .line 890
    .end local v0    # "indicator":Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 892
    .restart local v0    # "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 894
    iget-object v1, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v1, v1, Landroid/widget/SemExpandableListPosition;->flatListPos:I

    iget-object v2, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    iget v2, v2, Landroid/widget/SemExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v1, v2, :cond_4

    .line 895
    sget-object v1, Landroid/widget/SemExpandableListView;->CHILD_LAST_STATE_SET:[I

    goto :goto_3

    .line 896
    :cond_4
    sget-object v1, Landroid/widget/SemExpandableListView;->EMPTY_STATE_SET:[I

    :goto_3
    nop

    .line 897
    .local v1, "stateSet":[I
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 900
    .end local v1    # "stateSet":[I
    :cond_5
    :goto_4
    return-object v0
.end method

.method private blacklist getLastNonFooterPosition()I
    .locals 4

    .line 3100
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getLastVisiblePosition()I

    move-result v0

    .line 3101
    .local v0, "lastPos":I
    move v1, v0

    .line 3102
    .local v1, "lastValidPos":I
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getFirstVisiblePosition()I

    move-result v2

    .line 3103
    .local v2, "firstPos":I
    :goto_0
    if-lt v1, v2, :cond_0

    invoke-direct {p0, v1}, Landroid/widget/SemExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3104
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3106
    :cond_0
    return v1
.end method

.method public static whitelist getPackedPositionChild(J)I
    .locals 8
    .param p0, "packedPosition"    # J

    .line 2369
    const-wide v0, 0xffffffffL

    cmp-long v2, p0, v0

    const/4 v3, -0x1

    if-nez v2, :cond_0

    return v3

    .line 2372
    :cond_0
    const-wide/high16 v4, -0x8000000000000000L

    and-long v6, p0, v4

    cmp-long v2, v6, v4

    if-eqz v2, :cond_1

    return v3

    .line 2374
    :cond_1
    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static whitelist getPackedPositionForChild(II)J
    .locals 6
    .param p0, "groupPosition"    # I
    .param p1, "childPosition"    # I

    .line 2394
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

.method public static whitelist getPackedPositionForGroup(I)J
    .locals 4
    .param p0, "groupPosition"    # I

    .line 2409
    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method public static whitelist getPackedPositionGroup(J)I
    .locals 4
    .param p0, "packedPosition"    # J

    .line 2345
    const-wide v0, -0x100000000L

    and-long v2, p0, v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    .line 2347
    const/4 v0, -0x3

    return v0

    .line 2348
    :cond_0
    const-wide v0, 0x7fffffff00000000L

    and-long v2, p0, v0

    cmp-long v2, v2, v0

    if-nez v2, :cond_1

    .line 2350
    const/4 v0, -0x2

    return v0

    .line 2352
    :cond_1
    and-long/2addr v0, p0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static whitelist getPackedPositionType(J)I
    .locals 4
    .param p0, "packedPosition"    # J

    .line 2323
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 2324
    const/4 v0, 0x2

    return v0

    .line 2327
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    and-long v2, p0, v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 2328
    const/4 v0, 0x1

    goto :goto_0

    .line 2329
    :cond_1
    const/4 v0, 0x0

    .line 2327
    :goto_0
    return v0
.end method

.method private blacklist getSelectorRectAnim(I)Landroid/animation/Animator;
    .locals 6
    .param p1, "offset"    # I

    .line 1717
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1718
    .local v0, "newViewBounds":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1719
    .local v1, "oldViewBounds":Landroid/graphics/Rect;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 1720
    iget-object v3, p0, Landroid/widget/SemExpandableListView;->mSelectorRect:Landroid/graphics/Rect;

    sget-object v4, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v2

    const/4 v2, 0x1

    aput-object v0, v5, v2

    const-string v2, ""

    invoke-static {v3, v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1722
    .local v2, "animBounds":Landroid/animation/ObjectAnimator;
    return-object v2
.end method

.method private blacklist hasRtlSupport()Z
    .locals 1

    .line 495
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v0

    return v0
.end method

.method private blacklist isHeaderOrFooterPosition(I)Z
    .locals 2
    .param p1, "position"    # I

    .line 1021
    iget v0, p0, Landroid/widget/SemExpandableListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1022
    .local v0, "footerViewsStart":I
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

    .line 521
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 522
    return v1

    .line 525
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

    .line 487
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 488
    .local v0, "targetSdkVersion":I
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
    .param p1, "arr"    # [I

    .line 2991
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2992
    .local v0, "sb":Ljava/lang/StringBuffer;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p1, v2

    .line 2993
    .local v3, "item":I
    if-gtz v3, :cond_0

    .line 2994
    goto :goto_1

    .line 2995
    :cond_0
    iget-object v4, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2996
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2992
    .end local v3    # "item":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2998
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist resetCollapseAnimationState()V
    .locals 2

    .line 1703
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemExpandableListView;->mCollapsedGroupTopStart:I

    .line 1704
    iput v0, p0, Landroid/widget/SemExpandableListView;->mCollapsedGroupTopEnd:I

    .line 1706
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mGhostViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1707
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1708
    iput v0, p0, Landroid/widget/SemExpandableListView;->mTranslationOffset:I

    .line 1709
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    .line 1710
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    .line 1711
    iput-object v1, p0, Landroid/widget/SemExpandableListView;->mCollapsingRects:[Landroid/widget/SemExpandableListView$CollapsingRect;

    .line 1713
    iput-boolean v0, p0, Landroid/widget/SemExpandableListView;->mBlockTouchEvent:Z

    .line 1714
    return-void
.end method

.method private blacklist resetExpandAnimationState()V
    .locals 4

    .line 1297
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGhostViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1298
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1299
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemExpandableListView;->mTranslationOffset:I

    .line 1300
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    .line 1301
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    .line 1302
    iput-object v1, p0, Landroid/widget/SemExpandableListView;->mExpandingRects:[Landroid/widget/SemExpandableListView$ExpandingRect;

    .line 1304
    iput-boolean v0, p0, Landroid/widget/SemExpandableListView;->mBlockTouchEvent:Z

    .line 1307
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getChildCount()I

    move-result v0

    .line 1308
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1309
    invoke-virtual {p0, v1}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1308
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1311
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist resolveChildIndicator()V
    .locals 3

    .line 572
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->isLayoutRtl()Z

    move-result v0

    .line 573
    .local v0, "isLayoutRtl":Z
    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 574
    iget v2, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorStart:I

    if-lt v2, v1, :cond_0

    .line 575
    iput v2, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorRight:I

    .line 577
    :cond_0
    iget v2, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorEnd:I

    if-lt v2, v1, :cond_3

    .line 578
    iput v2, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorLeft:I

    goto :goto_0

    .line 581
    :cond_1
    iget v2, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorStart:I

    if-lt v2, v1, :cond_2

    .line 582
    iput v2, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorLeft:I

    .line 584
    :cond_2
    iget v2, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorEnd:I

    if-lt v2, v1, :cond_3

    .line 585
    iput v2, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorRight:I

    .line 588
    :cond_3
    :goto_0
    return-void
.end method

.method private blacklist resolveIndicator()V
    .locals 3

    .line 546
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->isLayoutRtl()Z

    move-result v0

    .line 547
    .local v0, "isLayoutRtl":Z
    if-eqz v0, :cond_1

    .line 548
    iget v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorStart:I

    if-ltz v1, :cond_0

    .line 549
    iput v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    .line 551
    :cond_0
    iget v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorEnd:I

    if-ltz v1, :cond_3

    .line 552
    iput v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorLeft:I

    goto :goto_0

    .line 555
    :cond_1
    iget v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorStart:I

    if-ltz v1, :cond_2

    .line 556
    iput v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorLeft:I

    .line 558
    :cond_2
    iget v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorEnd:I

    if-ltz v1, :cond_3

    .line 559
    iput v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    .line 562
    :cond_3
    :goto_0
    iget v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 563
    iget v2, p0, Landroid/widget/SemExpandableListView;->mIndicatorLeft:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v2, v1

    iput v2, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    .line 565
    :cond_4
    return-void
.end method

.method private blacklist startCollapseAllAnimation([ZLjava/lang/Runnable;)V
    .locals 23
    .param p1, "expanded"    # [Z
    .param p2, "animationEndRunnable"    # Ljava/lang/Runnable;

    .line 1727
    move-object/from16 v7, p0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemExpandableListView;->getFirstVisiblePosition()I

    move-result v8

    .line 1729
    .local v8, "firstVisiblePos":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/SemExpandableListView;->getLastNonFooterPosition()I

    move-result v9

    .line 1730
    .local v9, "lastValidPos":I
    if-ge v9, v8, :cond_0

    return-void

    .line 1732
    :cond_0
    invoke-virtual {v7, v9}, Landroid/widget/SemExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v10

    .line 1733
    .local v10, "lastPosPackedPos":J
    invoke-static {v10, v11}, Landroid/widget/SemExpandableListView;->getPackedPositionGroup(J)I

    move-result v12

    .line 1734
    .local v12, "lastGroupIdBefore":I
    invoke-virtual {v7, v9}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v13

    .line 1736
    .local v13, "lastPositionBottomBefore":I
    add-int/lit8 v0, v12, 0x1

    new-array v14, v0, [I

    .line 1737
    .local v14, "groupOffsets":[I
    add-int/lit8 v0, v12, 0x1

    new-array v0, v0, [Landroid/graphics/RectF;

    iput-object v0, v7, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    .line 1738
    add-int/lit8 v0, v12, 0x1

    new-array v0, v0, [Landroid/widget/SemExpandableListView$CollapsingRect;

    iput-object v0, v7, Landroid/widget/SemExpandableListView;->mCollapsingRects:[Landroid/widget/SemExpandableListView$CollapsingRect;

    .line 1739
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemExpandableListView;->getChildCount()I

    move-result v15

    .line 1740
    .local v15, "childCount":I
    const/4 v0, 0x0

    invoke-direct {v7, v0}, Landroid/widget/SemExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v6

    .line 1741
    .local v6, "firstGroupPosition":I
    invoke-virtual {v7, v6}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1743
    .local v1, "lastGroupView":Landroid/view/View;
    const/4 v2, 0x1

    move-object/from16 v16, v1

    .end local v1    # "lastGroupView":Landroid/view/View;
    .local v2, "i":I
    .local v16, "lastGroupView":Landroid/view/View;
    :goto_0
    array-length v1, v14

    if-ge v2, v1, :cond_1

    .line 1744
    invoke-static {v2}, Landroid/widget/SemExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v3

    .line 1745
    .local v3, "groupPackedPos":J
    invoke-virtual {v7, v3, v4}, Landroid/widget/SemExpandableListView;->getFlatListPosition(J)I

    move-result v1

    .line 1746
    .local v1, "pos":I
    invoke-virtual {v7, v1}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1747
    .local v5, "groupView":Landroid/view/View;
    add-int/lit8 v17, v2, -0x1

    aget v17, v14, v17

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v18

    add-int v17, v17, v18

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v18

    sub-int v17, v17, v18

    aput v17, v14, v2

    .line 1749
    new-instance v0, Landroid/graphics/RectF;

    move/from16 v18, v1

    .end local v1    # "pos":I
    .local v18, "pos":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    move-wide/from16 v19, v3

    .end local v3    # "groupPackedPos":J
    .local v19, "groupPackedPos":J
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    move/from16 v21, v6

    .end local v6    # "firstGroupPosition":I
    .local v21, "firstGroupPosition":I
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v0, v1, v3, v4, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1750
    .local v0, "startRect":Landroid/graphics/RectF;
    iget-object v1, v7, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    add-int/lit8 v3, v2, -0x1

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    aput-object v4, v1, v3

    .line 1751
    iget-object v1, v7, Landroid/widget/SemExpandableListView;->mCollapsingRects:[Landroid/widget/SemExpandableListView$CollapsingRect;

    add-int/lit8 v3, v2, -0x1

    new-instance v4, Landroid/widget/SemExpandableListView$CollapsingRect;

    iget-object v6, v7, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    add-int/lit8 v22, v2, -0x1

    aget-object v6, v6, v22

    invoke-direct {v4, v0, v6}, Landroid/widget/SemExpandableListView$CollapsingRect;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    aput-object v4, v1, v3

    .line 1752
    move-object/from16 v16, v5

    .line 1743
    .end local v0    # "startRect":Landroid/graphics/RectF;
    .end local v5    # "groupView":Landroid/view/View;
    .end local v18    # "pos":I
    .end local v19    # "groupPackedPos":J
    add-int/lit8 v2, v2, 0x1

    move/from16 v6, v21

    const/4 v0, 0x0

    goto :goto_0

    .end local v21    # "firstGroupPosition":I
    .restart local v6    # "firstGroupPosition":I
    :cond_1
    move/from16 v21, v6

    .line 1755
    .end local v2    # "i":I
    .end local v6    # "firstGroupPosition":I
    .restart local v21    # "firstGroupPosition":I
    invoke-virtual {v7, v9}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 1756
    .local v18, "lastChild":Landroid/view/View;
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

    .line 1757
    .local v6, "startRect":Landroid/graphics/RectF;
    iget-object v0, v7, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    aput-object v1, v0, v12

    .line 1758
    iget-object v0, v7, Landroid/widget/SemExpandableListView;->mCollapsingRects:[Landroid/widget/SemExpandableListView$CollapsingRect;

    new-instance v1, Landroid/widget/SemExpandableListView$CollapsingRect;

    iget-object v2, v7, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    aget-object v2, v2, v12

    invoke-direct {v1, v6, v2}, Landroid/widget/SemExpandableListView$CollapsingRect;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    aput-object v1, v0, v12

    .line 1760
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 1762
    .local v5, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x1

    if-ge v0, v15, :cond_5

    .line 1763
    add-int v2, v0, v8

    invoke-direct {v7, v2}, Landroid/widget/SemExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v20, v6

    goto :goto_3

    .line 1765
    :cond_2
    invoke-virtual {v7, v0}, Landroid/widget/SemExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v2

    .line 1766
    .local v2, "expandableListPos":J
    invoke-static {v2, v3}, Landroid/widget/SemExpandableListView;->getPackedPositionType(J)I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 1767
    .local v1, "isGroup":Z
    :goto_2
    if-eqz v1, :cond_4

    move-object/from16 v20, v6

    goto :goto_3

    .line 1769
    :cond_4
    invoke-static {v2, v3}, Landroid/widget/SemExpandableListView;->getPackedPositionGroup(J)I

    move-result v4

    .line 1770
    .local v4, "groupId":I
    move/from16 v19, v1

    .end local v1    # "isGroup":Z
    .local v19, "isGroup":Z
    iget-object v1, v7, Landroid/widget/SemExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SemExpandableListView$ViewInfo;

    .line 1772
    .local v1, "viewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    move-object/from16 v20, v6

    .end local v6    # "startRect":Landroid/graphics/RectF;
    .local v20, "startRect":Landroid/graphics/RectF;
    iget-object v6, v7, Landroid/widget/SemExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1773
    iget-object v6, v7, Landroid/widget/SemExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    .line 1774
    aget v6, v14, v4

    neg-int v6, v6

    invoke-direct {v7, v6, v1}, Landroid/widget/SemExpandableListView;->createViewSnapshotAnimation(ILandroid/widget/SemExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 1776
    .local v6, "animBounds":Landroid/animation/ObjectAnimator;
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1762
    .end local v1    # "viewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    .end local v2    # "expandableListPos":J
    .end local v4    # "groupId":I
    .end local v6    # "animBounds":Landroid/animation/ObjectAnimator;
    .end local v19    # "isGroup":Z
    :goto_3
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v6, v20

    goto :goto_1

    .end local v20    # "startRect":Landroid/graphics/RectF;
    .local v6, "startRect":Landroid/graphics/RectF;
    :cond_5
    move-object/from16 v20, v6

    .line 1779
    .end local v0    # "i":I
    .end local v6    # "startRect":Landroid/graphics/RectF;
    .restart local v20    # "startRect":Landroid/graphics/RectF;
    iput-boolean v1, v7, Landroid/widget/SemExpandableListView;->mBlockTouchEvent:Z

    .line 1781
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

    .end local v5    # "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .local v17, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    move-object/from16 v5, p1

    move/from16 v19, v21

    move/from16 v21, v8

    move-object v8, v6

    .end local v8    # "firstVisiblePos":I
    .local v19, "firstGroupPosition":I
    .local v21, "firstVisiblePos":I
    move-object/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Landroid/widget/SemExpandableListView$8;-><init>(Landroid/widget/SemExpandableListView;Ljava/lang/Runnable;II[ZLjava/util/ArrayList;)V

    invoke-virtual {v8, v7}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1865
    return-void
.end method

.method private blacklist startCollapseAnimation(ILjava/lang/Runnable;)V
    .locals 23
    .param p1, "groupPosBefore"    # I
    .param p2, "animationEndRunnable"    # Ljava/lang/Runnable;

    .line 1548
    move-object/from16 v9, p0

    move/from16 v10, p1

    invoke-static/range {p1 .. p1}, Landroid/widget/SemExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v11

    .line 1549
    .local v11, "collapsedGroupPackedPosition":J
    add-int/lit8 v0, v10, 0x1

    invoke-static {v0}, Landroid/widget/SemExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v13

    .line 1551
    .local v13, "nextCollapsedGroupPackedPosition":J
    invoke-virtual {v9, v11, v12}, Landroid/widget/SemExpandableListView;->getFlatListPosition(J)I

    move-result v15

    .line 1552
    .local v15, "collapsedGroupFlatPosBefore":I
    invoke-virtual {v9, v13, v14}, Landroid/widget/SemExpandableListView;->getFlatListPosition(J)I

    move-result v16

    .line 1554
    .local v16, "nextCollapsedGroupFlatPos":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemExpandableListView;->getFirstVisiblePosition()I

    move-result v8

    .line 1555
    .local v8, "firstVisiblePosBefore":I
    sub-int v0, v15, v8

    invoke-virtual {v9, v0}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 1556
    .local v17, "collapsedGroupBefore":Landroid/view/View;
    if-nez v17, :cond_0

    .line 1558
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

    .line 1561
    invoke-direct/range {p0 .. p0}, Landroid/widget/SemExpandableListView;->resetCollapseAnimationState()V

    .line 1562
    invoke-interface/range {p2 .. p2}, Ljava/lang/Runnable;->run()V

    .line 1563
    return-void

    .line 1565
    :cond_0
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v18

    .line 1567
    .local v18, "collapsedGroupTopBefore":I
    sub-int v0, v16, v8

    invoke-virtual {v9, v0}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 1568
    .local v19, "nextCollapsedGroup":Landroid/view/View;
    const/4 v0, 0x1

    if-nez v19, :cond_1

    .line 1569
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

    .line 1570
    .local v1, "listBottom":I
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v2, v1, v2

    iput v2, v9, Landroid/widget/SemExpandableListView;->mTranslationOffset:I

    .line 1571
    .end local v1    # "listBottom":I
    goto :goto_0

    .line 1572
    :cond_1
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v9, Landroid/widget/SemExpandableListView;->mTranslationOffset:I

    .line 1575
    :goto_0
    iget-object v1, v9, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v1}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v20

    .line 1576
    .local v20, "groupCountBefore":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemExpandableListView;->getChildCount()I

    move-result v21

    .line 1577
    .local v21, "listTotalChildrenCountBefore":I
    iget-object v1, v9, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleArea:Landroid/graphics/RectF;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 1578
    iget-object v1, v9, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleArea:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemExpandableListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 1579
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v1

    iput v1, v9, Landroid/widget/SemExpandableListView;->mCollapsedGroupTopStart:I

    .line 1580
    iput-boolean v0, v9, Landroid/widget/SemExpandableListView;->mBlockTouchEvent:Z

    .line 1582
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

    .end local v8    # "firstVisiblePosBefore":I
    .local v22, "firstVisiblePosBefore":I
    move/from16 v8, v18

    invoke-direct/range {v0 .. v8}, Landroid/widget/SemExpandableListView$7;-><init>(Landroid/widget/SemExpandableListView;Ljava/lang/Runnable;IIIIII)V

    invoke-virtual {v10, v9}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1699
    return-void
.end method

.method private blacklist startExpandAllAnimation([ZLjava/lang/Runnable;)V
    .locals 2
    .param p1, "expanded"    # [Z
    .param p2, "animationEndRunnable"    # Ljava/lang/Runnable;

    .line 1314
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemExpandableListView;->mBlockTouchEvent:Z

    .line 1316
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Landroid/widget/SemExpandableListView$6;

    invoke-direct {v1, p0, p2, p1}, Landroid/widget/SemExpandableListView$6;-><init>(Landroid/widget/SemExpandableListView;Ljava/lang/Runnable;[Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1472
    return-void
.end method

.method private blacklist startExpandAnimation(ILjava/lang/Runnable;)V
    .locals 2
    .param p1, "groupPos"    # I
    .param p2, "animationEndRunnable"    # Ljava/lang/Runnable;

    .line 1166
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemExpandableListView;->mBlockTouchEvent:Z

    .line 1168
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Landroid/widget/SemExpandableListView$5;

    invoke-direct {v1, p0, p2, p1}, Landroid/widget/SemExpandableListView$5;-><init>(Landroid/widget/SemExpandableListView;Ljava/lang/Runnable;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1294
    return-void
.end method

.method private blacklist startIndicatorAnimation(Landroid/view/View;ZI)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "isExpanding"    # Z
    .param p3, "duration"    # I

    .line 1868
    iget v0, p0, Landroid/widget/SemExpandableListView;->mRotationAngle:I

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    neg-int v0, v0

    .line 1869
    .local v0, "startAngle":I
    :goto_0
    const v1, 0x7a0a1eff

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;

    .line 1870
    .local v1, "holder":Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;
    if-eqz v1, :cond_4

    iget-object v2, v1, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    if-nez v2, :cond_1

    goto :goto_3

    .line 1874
    :cond_1
    iget-object v2, v1, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    .line 1876
    .local v2, "img":Landroid/widget/SemExpandableListView$IndicatorImageView;
    iget v3, p0, Landroid/widget/SemExpandableListView;->mIndicatorAnimationType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 1877
    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/SemExpandableListView$IndicatorImageView;->setRotation(F)V

    .line 1878
    invoke-virtual {v2}, Landroid/widget/SemExpandableListView$IndicatorImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    sget-object v4, Landroid/widget/SemExpandableListView;->EXPAND_COLLAPSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 1879
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, p3

    .line 1880
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 1881
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 1883
    :cond_2
    invoke-virtual {v2}, Landroid/widget/SemExpandableListView$IndicatorImageView;->startIndicatorMorphAimation()V

    .line 1885
    :goto_1
    if-eqz p2, :cond_3

    iget-object v3, p0, Landroid/widget/SemExpandableListView;->mDescriptionCollapse:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v3, p0, Landroid/widget/SemExpandableListView;->mDescriptionExpand:Ljava/lang/String;

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/SemExpandableListView$IndicatorImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1886
    return-void

    .line 1871
    .end local v2    # "img":Landroid/widget/SemExpandableListView$IndicatorImageView;
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

    .line 1872
    return-void
.end method


# virtual methods
.method public whitelist collapseAll()V
    .locals 2

    .line 3037
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3039
    :cond_0
    iget v0, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    return-void

    .line 3041
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/SemExpandableListView;->mExpandCollapseAllState:I

    .line 3042
    iget-boolean v0, p0, Landroid/widget/SemExpandableListView;->mAnimationEnabled:Z

    if-nez v0, :cond_2

    .line 3043
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->collapseAllGroups()V

    .line 3046
    :cond_2
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->triggerJumpScrollToTop()V

    .line 3047
    return-void
.end method

.method public whitelist collapseGroup(I)Z
    .locals 2
    .param p1, "groupPos"    # I

    .line 2038
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v0, p1}, Landroid/widget/SemExpandableListConnector;->collapseGroup(I)Z

    move-result v0

    .line 2040
    .local v0, "retValue":Z
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mOnGroupCollapseListener:Landroid/widget/SemExpandableListView$OnGroupCollapseListener;

    if-eqz v1, :cond_0

    .line 2041
    invoke-interface {v1, p1}, Landroid/widget/SemExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 2044
    :cond_0
    return v0
.end method

.method blacklist createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 17
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flatListPosition"    # I
    .param p3, "id"    # J

    .line 2432
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/widget/SemExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2434
    new-instance v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object/from16 v9, p1

    move-wide/from16 v3, p3

    invoke-direct {v2, v9, v1, v3, v4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v2

    .line 2437
    :cond_0
    move-object/from16 v9, p1

    move-wide/from16 v3, p3

    invoke-direct {v0, v1}, Landroid/widget/SemExpandableListView;->getFlatPositionForConnector(I)I

    move-result v2

    .line 2438
    .local v2, "adjustedPosition":I
    iget-object v5, v0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v5, v2}, Landroid/widget/SemExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v10

    .line 2439
    .local v10, "pm":Landroid/widget/SemExpandableListConnector$PositionMetadata;
    iget-object v11, v10, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    .line 2441
    .local v11, "pos":Landroid/widget/SemExpandableListPosition;
    invoke-direct {v0, v11}, Landroid/widget/SemExpandableListView;->getChildOrGroupId(Landroid/widget/SemExpandableListPosition;)J

    move-result-wide v12

    .line 2442
    .end local p3    # "id":J
    .local v12, "id":J
    invoke-virtual {v11}, Landroid/widget/SemExpandableListPosition;->getPackedPosition()J

    move-result-wide v14

    .line 2444
    .local v14, "packedPosition":J
    invoke-virtual {v10}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    .line 2446
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
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 595
    iget v0, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 597
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->drawGhostViews(Landroid/graphics/Canvas;)V

    .line 600
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 602
    iget v0, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 604
    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->drawGhostViews(Landroid/graphics/Canvas;)V

    .line 605
    :cond_3
    return-void
.end method

.method blacklist drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "childIndex"    # I

    .line 916
    iget v0, p0, Landroid/widget/SemExpandableListView;->mFirstPosition:I

    add-int/2addr v0, p3

    .line 920
    .local v0, "flatListPosition":I
    if-ltz v0, :cond_2

    .line 921
    invoke-direct {p0, v0}, Landroid/widget/SemExpandableListView;->getFlatPositionForConnector(I)I

    move-result v1

    .line 922
    .local v1, "adjustedPosition":I
    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v2, v1}, Landroid/widget/SemExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 925
    .local v2, "pos":Landroid/widget/SemExpandableListConnector$PositionMetadata;
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

    .line 934
    :cond_0
    invoke-virtual {v2}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_1

    .line 928
    :cond_1
    :goto_0
    iget-object v3, p0, Landroid/widget/SemExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 929
    .local v3, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 930
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 931
    invoke-virtual {v2}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    .line 932
    return-void

    .line 938
    .end local v1    # "adjustedPosition":I
    .end local v2    # "pos":Landroid/widget/SemExpandableListConnector$PositionMetadata;
    .end local v3    # "divider":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2, v0}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 939
    return-void
.end method

.method public whitelist expandAll()V
    .locals 2

    .line 3019
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3021
    :cond_0
    iget v0, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    return-void

    .line 3023
    :cond_1
    iput v1, p0, Landroid/widget/SemExpandableListView;->mExpandCollapseAllState:I

    .line 3024
    iget-boolean v0, p0, Landroid/widget/SemExpandableListView;->mAnimationEnabled:Z

    if-nez v0, :cond_2

    .line 3025
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->expandAllGroups()V

    .line 3026
    return-void

    .line 3029
    :cond_2
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->triggerJumpScrollToTop()V

    .line 3030
    return-void
.end method

.method public blacklist expandCollapseAll(Z)Z
    .locals 1
    .param p1, "isExpand"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3282
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist expandGroup(I)Z
    .locals 1
    .param p1, "groupPos"    # I

    .line 1993
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/SemExpandableListView;->expandGroup(IZ)Z

    move-result v0

    return v0
.end method

.method public whitelist expandGroup(IZ)Z
    .locals 6
    .param p1, "groupPos"    # I
    .param p2, "animate"    # Z

    .line 2005
    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-static {v0, p1, v1, v1}, Landroid/widget/SemExpandableListPosition;->obtain(IIII)Landroid/widget/SemExpandableListPosition;

    move-result-object v0

    .line 2007
    .local v0, "elGroupPos":Landroid/widget/SemExpandableListPosition;
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v1, v0}, Landroid/widget/SemExpandableListConnector;->getFlattenedPos(Landroid/widget/SemExpandableListPosition;)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 2008
    .local v1, "pm":Landroid/widget/SemExpandableListConnector$PositionMetadata;
    if-nez v1, :cond_0

    .line 2009
    const/4 v2, 0x0

    return v2

    .line 2011
    :cond_0
    invoke-virtual {v0}, Landroid/widget/SemExpandableListPosition;->recycle()V

    .line 2012
    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v2, v1}, Landroid/widget/SemExpandableListConnector;->expandGroup(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Z

    move-result v2

    .line 2014
    .local v2, "retValue":Z
    iget-object v3, p0, Landroid/widget/SemExpandableListView;->mOnGroupExpandListener:Landroid/widget/SemExpandableListView$OnGroupExpandListener;

    if-eqz v3, :cond_1

    .line 2015
    invoke-interface {v3, p1}, Landroid/widget/SemExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 2018
    :cond_1
    if-eqz p2, :cond_2

    .line 2019
    iget-object v3, v1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v3, v3, Landroid/widget/SemExpandableListPosition;->flatListPos:I

    .line 2021
    .local v3, "groupFlatPos":I
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getHeaderViewsCount()I

    move-result v4

    add-int/2addr v4, v3

    .line 2022
    .local v4, "shiftedGroupPosition":I
    iget-object v5, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v5, p1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p0, v5, v4}, Landroid/widget/SemExpandableListView;->smoothScrollToPosition(II)V

    .line 2025
    .end local v3    # "groupFlatPos":I
    .end local v4    # "shiftedGroupPosition":I
    :cond_2
    invoke-virtual {v1}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    .line 2027
    return v2
.end method

.method public bridge synthetic whitelist getAdapter()Landroid/widget/Adapter;
    .locals 1

    .line 131
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 972
    invoke-super {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getExpandCollapseDuration()I
    .locals 4

    .line 1519
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

    .line 1520
    .local v0, "animationDuration":I
    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    .line 1521
    const/16 v0, 0x190

    .line 1523
    :cond_0
    return v0
.end method

.method public whitelist getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .line 1013
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public whitelist getExpandableListPosition(I)J
    .locals 4
    .param p1, "flatListPosition"    # I

    .line 2171
    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2173
    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->getHeaderFooterPackedPosition(I)J

    move-result-wide v0

    return-wide v0

    .line 2176
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 2177
    .local v0, "adjustedPosition":I
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v1, v0}, Landroid/widget/SemExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 2178
    .local v1, "pm":Landroid/widget/SemExpandableListConnector$PositionMetadata;
    iget-object v2, v1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    invoke-virtual {v2}, Landroid/widget/SemExpandableListPosition;->getPackedPosition()J

    move-result-wide v2

    .line 2179
    .local v2, "packedPos":J
    invoke-virtual {v1}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    .line 2180
    return-wide v2
.end method

.method public whitelist getFlatListPosition(J)I
    .locals 4
    .param p1, "packedPosition"    # J

    .line 2195
    nop

    .line 2196
    invoke-static {p1, p2}, Landroid/widget/SemExpandableListPosition;->obtainPosition(J)Landroid/widget/SemExpandableListPosition;

    move-result-object v0

    .line 2197
    .local v0, "elPackedPos":Landroid/widget/SemExpandableListPosition;
    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 2199
    :cond_0
    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v2, v0}, Landroid/widget/SemExpandableListConnector;->getFlattenedPos(Landroid/widget/SemExpandableListPosition;)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 2200
    .local v2, "pm":Landroid/widget/SemExpandableListConnector$PositionMetadata;
    invoke-virtual {v0}, Landroid/widget/SemExpandableListPosition;->recycle()V

    .line 2201
    if-nez v2, :cond_1

    return v1

    .line 2203
    :cond_1
    iget-object v1, v2, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v1, v1, Landroid/widget/SemExpandableListPosition;->flatListPos:I

    .line 2204
    .local v1, "flatListPosition":I
    invoke-virtual {v2}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    .line 2205
    invoke-direct {p0, v1}, Landroid/widget/SemExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v3

    return v3
.end method

.method public whitelist getSelectedId()J
    .locals 5

    .line 2231
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getSelectedPosition()J

    move-result-wide v0

    .line 2232
    .local v0, "packedPos":J
    const-wide v2, 0xffffffffL

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v2, -0x1

    return-wide v2

    .line 2234
    :cond_0
    invoke-static {v0, v1}, Landroid/widget/SemExpandableListView;->getPackedPositionGroup(J)I

    move-result v2

    .line 2236
    .local v2, "groupPos":I
    invoke-static {v0, v1}, Landroid/widget/SemExpandableListView;->getPackedPositionType(J)I

    move-result v3

    if-nez v3, :cond_1

    .line 2238
    iget-object v3, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v3, v2}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v3

    return-wide v3

    .line 2241
    :cond_1
    iget-object v3, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-static {v0, v1}, Landroid/widget/SemExpandableListView;->getPackedPositionChild(J)I

    move-result v4

    invoke-interface {v3, v2, v4}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v3

    return-wide v3
.end method

.method public whitelist getSelectedPosition()J
    .locals 3

    .line 2217
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getSelectedItemPosition()I

    move-result v0

    .line 2220
    .local v0, "selectedPos":I
    invoke-virtual {p0, v0}, Landroid/widget/SemExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v1

    return-wide v1
.end method

.method public whitelist getUnfoldedChildAt(I)Landroid/view/View;
    .locals 2
    .param p1, "index"    # I

    .line 3193
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mItemDecorator:Landroid/widget/SemExpandableListConnector$ItemDecorator;

    invoke-super {p0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/widget/SemExpandableListConnector$ItemDecorator;->unfoldDecoratedView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method blacklist handleItemClick(Landroid/view/View;IJ)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .line 1075
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v0, p2}, Landroid/widget/SemExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 1077
    .local v0, "posMetadata":Landroid/widget/SemExpandableListConnector$PositionMetadata;
    iget-object v1, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    invoke-direct {p0, v1}, Landroid/widget/SemExpandableListView;->getChildOrGroupId(Landroid/widget/SemExpandableListPosition;)J

    move-result-wide p3

    .line 1080
    iget-object v1, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v1, v1, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v8, 0x0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 1084
    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mOnGroupClickListener:Landroid/widget/SemExpandableListView$OnGroupClickListener;

    if-eqz v2, :cond_0

    .line 1085
    iget-object v1, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v5, v1, Landroid/widget/SemExpandableListPosition;->groupPos:I

    move-object v3, p0

    move-object v4, p1

    move-wide v6, p3

    invoke-interface/range {v2 .. v7}, Landroid/widget/SemExpandableListView$OnGroupClickListener;->onGroupClick(Landroid/widget/SemExpandableListView;Landroid/view/View;IJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1087
    invoke-virtual {p0, v8}, Landroid/widget/SemExpandableListView;->playSoundEffect(I)V

    .line 1088
    invoke-virtual {v0}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    .line 1089
    const/4 v1, 0x1

    return v1

    .line 1093
    :cond_0
    iget-boolean v1, p0, Landroid/widget/SemExpandableListView;->mAnimationEnabled:Z

    if-eqz v1, :cond_1

    .line 1094
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->captureViewsPriorAnimation()V

    .line 1096
    :cond_1
    iget-object v1, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v1, v1, Landroid/widget/SemExpandableListPosition;->groupPos:I

    .line 1098
    .local v1, "groupPos":I
    invoke-virtual {v0}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1099
    new-instance v2, Landroid/widget/SemExpandableListView$2;

    invoke-direct {v2, p0, v1}, Landroid/widget/SemExpandableListView$2;-><init>(Landroid/widget/SemExpandableListView;I)V

    .line 1107
    .local v2, "animationEndRunnable":Ljava/lang/Runnable;
    iget-boolean v3, p0, Landroid/widget/SemExpandableListView;->mAnimationEnabled:Z

    if-eqz v3, :cond_2

    .line 1108
    invoke-direct {p0, v1, v2}, Landroid/widget/SemExpandableListView;->startCollapseAnimation(ILjava/lang/Runnable;)V

    .line 1112
    :cond_2
    iget-object v3, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v3, v0}, Landroid/widget/SemExpandableListConnector;->collapseGroup(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Z

    .line 1114
    new-instance v3, Landroid/widget/SemExpandableListView$3;

    invoke-direct {v3, p0}, Landroid/widget/SemExpandableListView$3;-><init>(Landroid/widget/SemExpandableListView;)V

    invoke-virtual {p0, v3}, Landroid/widget/SemExpandableListView;->post(Ljava/lang/Runnable;)Z

    .line 1121
    invoke-virtual {p0, v8}, Landroid/widget/SemExpandableListView;->playSoundEffect(I)V

    .line 1123
    iget-boolean v3, p0, Landroid/widget/SemExpandableListView;->mAnimationEnabled:Z

    if-nez v3, :cond_3

    .line 1124
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 1126
    .end local v2    # "animationEndRunnable":Ljava/lang/Runnable;
    :cond_3
    goto :goto_0

    .line 1129
    :cond_4
    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v2, v0}, Landroid/widget/SemExpandableListConnector;->expandGroup(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Z

    .line 1131
    invoke-virtual {p0, v8}, Landroid/widget/SemExpandableListView;->playSoundEffect(I)V

    .line 1133
    iget-object v2, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v2, v2, Landroid/widget/SemExpandableListPosition;->flatListPos:I

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getHeaderViewsCount()I

    move-result v3

    add-int/2addr v2, v3

    .line 1134
    .local v2, "shiftedGroupPosition":I
    new-instance v3, Landroid/widget/SemExpandableListView$4;

    invoke-direct {v3, p0, v1}, Landroid/widget/SemExpandableListView$4;-><init>(Landroid/widget/SemExpandableListView;I)V

    .line 1141
    .local v3, "animationEndRunnable":Ljava/lang/Runnable;
    iget-boolean v4, p0, Landroid/widget/SemExpandableListView;->mAnimationEnabled:Z

    if-eqz v4, :cond_5

    .line 1142
    invoke-direct {p0, v1, v3}, Landroid/widget/SemExpandableListView;->startExpandAnimation(ILjava/lang/Runnable;)V

    goto :goto_0

    .line 1144
    :cond_5
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 1148
    .end local v2    # "shiftedGroupPosition":I
    .end local v3    # "animationEndRunnable":Ljava/lang/Runnable;
    :goto_0
    const/4 v1, 0x1

    .line 1149
    .local v1, "returnValue":Z
    goto :goto_1

    .line 1151
    .end local v1    # "returnValue":Z
    :cond_6
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mOnChildClickListener:Landroid/widget/SemExpandableListView$OnChildClickListener;

    if-eqz v1, :cond_7

    .line 1152
    invoke-virtual {p0, v8}, Landroid/widget/SemExpandableListView;->playSoundEffect(I)V

    .line 1153
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

    .line 1157
    :cond_7
    const/4 v1, 0x0

    .line 1160
    .restart local v1    # "returnValue":Z
    :goto_1
    invoke-virtual {v0}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    .line 1162
    return v1
.end method

.method public whitelist isGroupExpanded(I)Z
    .locals 1
    .param p1, "groupPosition"    # I

    .line 2310
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v0, p1}, Landroid/widget/SemExpandableListConnector;->isGroupExpanded(I)Z

    move-result v0

    return v0
.end method

.method protected whitelist layoutChildren()V
    .locals 4

    .line 1537
    const/4 v0, 0x0

    .line 1538
    .local v0, "before":Landroid/graphics/Rect;
    iget v1, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    .line 1539
    new-instance v1, Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/widget/SemExpandableListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v0, v1

    .line 1541
    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 1542
    iget v1, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 1543
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1545
    :cond_1
    return-void
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 1

    .line 3211
    invoke-super {p0}, Landroid/widget/ListView;->onAttachedToWindow()V

    .line 3212
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    if-eqz v0, :cond_0

    .line 3213
    invoke-virtual {v0}, Landroid/widget/SemExpandableListConnector;->semRegisterDataSetObserver()V

    .line 3215
    :cond_0
    return-void
.end method

.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 3229
    invoke-super {p0, p1}, Landroid/widget/ListView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3231
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    .line 3232
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10404ab

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 3231
    const v3, 0x10404ac

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemExpandableListView;->mDescriptionExpand:Ljava/lang/String;

    .line 3233
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    .line 3234
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x10404aa

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 3233
    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemExpandableListView;->mDescriptionCollapse:Ljava/lang/String;

    .line 3236
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 3237
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

    .line 3238
    .local v0, "strokeSize":I
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorPaint:Landroid/graphics/Paint;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3240
    .end local v0    # "strokeSize":I
    :cond_0
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 1

    .line 3220
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 3221
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    if-eqz v0, :cond_0

    .line 3222
    invoke-virtual {v0}, Landroid/widget/SemExpandableListConnector;->semUnregisterDataSetObserver()V

    .line 3224
    :cond_0
    return-void
.end method

.method public whitelist onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 533
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 534
    .local v0, "action":I
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->isHoverable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->isHovered()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 535
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/SemExpandableListView;->setHovered(Z)V

    .line 536
    return v1

    .line 538
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public whitelist onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 2684
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2685
    const-class v0, Landroid/widget/SemExpandableListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2686
    return-void
.end method

.method public whitelist onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2690
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2691
    const-class v0, Landroid/widget/SemExpandableListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2692
    return-void
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 3198
    iget-boolean v0, p0, Landroid/widget/SemExpandableListView;->mBlockTouchEvent:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 3199
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method blacklist onJumpScrollToTopFinished()V
    .locals 2

    .line 3051
    invoke-super {p0}, Landroid/widget/ListView;->onJumpScrollToTopFinished()V

    .line 3052
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3054
    :cond_0
    iget v0, p0, Landroid/widget/SemExpandableListView;->mExpandCollapseAllState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3055
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->captureViewsPriorAnimation()V

    .line 3056
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->getExpandedState()[Z

    move-result-object v0

    .line 3057
    .local v0, "expanded":[Z
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->expandAllGroups()V

    .line 3058
    new-instance v1, Landroid/widget/SemExpandableListView$10;

    invoke-direct {v1, p0}, Landroid/widget/SemExpandableListView$10;-><init>(Landroid/widget/SemExpandableListView;)V

    .line 3068
    .local v1, "animationEndRunnable":Ljava/lang/Runnable;
    invoke-direct {p0, v0, v1}, Landroid/widget/SemExpandableListView;->startExpandAllAnimation([ZLjava/lang/Runnable;)V

    .end local v0    # "expanded":[Z
    .end local v1    # "animationEndRunnable":Ljava/lang/Runnable;
    goto :goto_0

    .line 3069
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 3070
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->captureViewsPriorAnimation()V

    .line 3071
    new-instance v0, Landroid/widget/SemExpandableListView$11;

    invoke-direct {v0, p0}, Landroid/widget/SemExpandableListView$11;-><init>(Landroid/widget/SemExpandableListView;)V

    .line 3081
    .local v0, "animationEndRunnable":Ljava/lang/Runnable;
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->getExpandedState()[Z

    move-result-object v1

    .line 3082
    .local v1, "expanded":[Z
    invoke-direct {p0, v1, v0}, Landroid/widget/SemExpandableListView;->startCollapseAllAnimation([ZLjava/lang/Runnable;)V

    .line 3083
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->collapseAllGroups()V

    goto :goto_1

    .line 3069
    .end local v0    # "animationEndRunnable":Ljava/lang/Runnable;
    .end local v1    # "expanded":[Z
    :cond_2
    :goto_0
    nop

    .line 3085
    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemExpandableListView;->mExpandCollapseAllState:I

    .line 3086
    return-void
.end method

.method public whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 2669
    instance-of v0, p1, Landroid/widget/SemExpandableListView$SavedState;

    if-nez v0, :cond_0

    .line 2670
    invoke-super {p0, p1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2671
    return-void

    .line 2674
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/widget/SemExpandableListView$SavedState;

    .line 2675
    .local v0, "ss":Landroid/widget/SemExpandableListView$SavedState;
    invoke-virtual {v0}, Landroid/widget/SemExpandableListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2677
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/widget/SemExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 2678
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    iget-object v2, v0, Landroid/widget/SemExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroid/widget/SemExpandableListConnector;->setExpandedGroupMetadataList(Ljava/util/ArrayList;)V

    .line 2680
    :cond_1
    return-void
.end method

.method public whitelist onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .line 510
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->resolveIndicator()V

    .line 511
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->resolveChildIndicator()V

    .line 512
    return-void
.end method

.method public whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 2659
    invoke-super {p0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2660
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroid/widget/SemExpandableListView$SavedState;

    .line 2661
    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/SemExpandableListConnector;->getExpandedGroupMetadataList()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v1, v0, v2}, Landroid/widget/SemExpandableListView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    .line 2660
    return-object v1
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 3204
    iget-boolean v0, p0, Landroid/widget/SemExpandableListView;->mBlockTouchEvent:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 3205
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist performItemClick(Landroid/view/View;IJ)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .line 1052
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mItemDecorator:Landroid/widget/SemExpandableListConnector$ItemDecorator;

    invoke-interface {v0, p1}, Landroid/widget/SemExpandableListConnector$ItemDecorator;->unfoldDecoratedView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 1055
    .local v0, "unfoldedDecoratedItemView":Landroid/view/View;
    invoke-direct {p0, p2}, Landroid/widget/SemExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1057
    invoke-super {p0, v0, p2, p3, p4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    return v1

    .line 1061
    :cond_0
    invoke-direct {p0, p2}, Landroid/widget/SemExpandableListView;->getFlatPositionForConnector(I)I

    move-result v1

    .line 1062
    .local v1, "adjustedPosition":I
    invoke-virtual {p0, v0, v1, p3, p4}, Landroid/widget/SemExpandableListView;->handleItemClick(Landroid/view/View;IJ)Z

    move-result v2

    return v2
.end method

.method public blacklist scrollTo(Landroid/view/View;IILandroid/widget/SemExpandableListConnector$PositionMetadata;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "groupPos"    # I
    .param p3, "expandingChildCount"    # I
    .param p4, "pos"    # Landroid/widget/SemExpandableListConnector$PositionMetadata;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3275
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic whitelist setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 131
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/SemExpandableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public whitelist setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ExpandableListAdapter;

    .line 994
    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 996
    if-eqz p1, :cond_0

    .line 998
    new-instance v0, Landroid/widget/SemExpandableListConnector;

    invoke-direct {v0, p1}, Landroid/widget/SemExpandableListConnector;-><init>(Landroid/widget/ExpandableListAdapter;)V

    iput-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    .line 999
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mItemDecorator:Landroid/widget/SemExpandableListConnector$ItemDecorator;

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListConnector;->setItemDecorator(Landroid/widget/SemExpandableListConnector$ItemDecorator;)V

    goto :goto_0

    .line 1001
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    .line 1005
    :goto_0
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1006
    return-void
.end method

.method public whitelist setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .line 957
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "For ExpandableListView, use setAdapter(ExpandableListAdapter) instead of setAdapter(ListAdapter)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAnimationEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 3130
    iput-boolean p1, p0, Landroid/widget/SemExpandableListView;->mAnimationEnabled:Z

    .line 3131
    return-void
.end method

.method public whitelist setChildDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "childDivider"    # Landroid/graphics/drawable/Drawable;

    .line 911
    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 912
    return-void
.end method

.method public whitelist setChildIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "childIndicator"    # Landroid/graphics/drawable/Drawable;

    .line 2473
    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 2474
    return-void
.end method

.method public whitelist setChildIndicatorBounds(II)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "right"    # I

    .line 2488
    iput p1, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorLeft:I

    .line 2489
    iput p2, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorRight:I

    .line 2490
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->resolveChildIndicator()V

    .line 2491
    return-void
.end method

.method public whitelist setChildIndicatorBoundsRelative(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 2505
    iput p1, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorStart:I

    .line 2506
    iput p2, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorEnd:I

    .line 2507
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->resolveChildIndicator()V

    .line 2508
    return-void
.end method

.method public blacklist setCollapseAllSpeedFactor(F)V
    .locals 0
    .param p1, "collapseAllSpeedFactor"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3268
    return-void
.end method

.method public blacklist setCollapseSpeedFactor(F)V
    .locals 0
    .param p1, "collapseSpeedFactor"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3254
    return-void
.end method

.method public whitelist setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .line 2699
    invoke-super {p0, p1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2700
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemExpandableListView;->mDividerHeight:I

    .line 2701
    if-eqz p1, :cond_1

    .line 2702
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    if-nez v1, :cond_0

    .line 2703
    const/4 v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    .line 2705
    :cond_0
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    aput v2, v1, v0

    .line 2706
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

    .line 2708
    :cond_1
    return-void
.end method

.method public whitelist setDividerHeight(I)V
    .locals 3
    .param p1, "height"    # I

    .line 2715
    invoke-super {p0, p1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 2716
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemExpandableListView;->mDividerHeight:I

    .line 2717
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    if-nez v1, :cond_0

    .line 2718
    const/4 v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    .line 2720
    :cond_0
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    aput p1, v1, v0

    .line 2721
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

    .line 2722
    return-void
.end method

.method public blacklist setExpandAllSpeedFactor(F)V
    .locals 0
    .param p1, "expandAllSpeedFactor"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3261
    return-void
.end method

.method public blacklist setExpandSpeedFactor(F)V
    .locals 0
    .param p1, "expandSpeedFactor"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3247
    return-void
.end method

.method public whitelist setExpandingAnimationEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 3139
    iput-boolean p1, p0, Landroid/widget/SemExpandableListView;->mAnimationEnabled:Z

    .line 3140
    return-void
.end method

.method public whitelist setGroupIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "groupIndicator"    # Landroid/graphics/drawable/Drawable;

    .line 2519
    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 2520
    iget v0, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 2521
    iget v0, p0, Landroid/widget/SemExpandableListView;->mIndicatorLeft:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    .line 2523
    :cond_0
    return-void
.end method

.method public whitelist setGroupIndicatorAnimationType(I)V
    .locals 0
    .param p1, "animationType"    # I

    .line 2532
    iput p1, p0, Landroid/widget/SemExpandableListView;->mIndicatorAnimationType:I

    .line 2533
    return-void
.end method

.method public whitelist setGroupIndicatorColor(I)V
    .locals 3
    .param p1, "color"    # I

    .line 3171
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

    .line 3172
    iput p1, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorColor:I

    .line 3173
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 3174
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3176
    :cond_0
    return-void
.end method

.method public whitelist setGroupIndicatorRotationAngle(I)V
    .locals 0
    .param p1, "angle"    # I

    .line 3011
    iput p1, p0, Landroid/widget/SemExpandableListView;->mRotationAngle:I

    .line 3012
    return-void
.end method

.method public whitelist setIndicatorBounds(II)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "right"    # I

    .line 2547
    iput p1, p0, Landroid/widget/SemExpandableListView;->mIndicatorLeft:I

    .line 2548
    iput p2, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    .line 2549
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->resolveIndicator()V

    .line 2550
    return-void
.end method

.method public whitelist setIndicatorBoundsRelative(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 2564
    iput p1, p0, Landroid/widget/SemExpandableListView;->mIndicatorStart:I

    .line 2565
    iput p2, p0, Landroid/widget/SemExpandableListView;->mIndicatorEnd:I

    .line 2566
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->resolveIndicator()V

    .line 2567
    return-void
.end method

.method public whitelist setIndicatorGravity(I)V
    .locals 3
    .param p1, "gravity"    # I

    .line 3160
    iput p1, p0, Landroid/widget/SemExpandableListView;->mIndicatorGravity:I

    .line 3162
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

    .line 3163
    return-void
.end method

.method public whitelist setIndicatorPaddings(II)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "right"    # I

    .line 3149
    iput p1, p0, Landroid/widget/SemExpandableListView;->mIndicatorPaddingLeft:I

    .line 3150
    iput p2, p0, Landroid/widget/SemExpandableListView;->mIndicatorPaddingRight:I

    .line 3151
    return-void
.end method

.method public whitelist setOnChildClickListener(Landroid/widget/SemExpandableListView$OnChildClickListener;)V
    .locals 0
    .param p1, "onChildClickListener"    # Landroid/widget/SemExpandableListView$OnChildClickListener;

    .line 2153
    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mOnChildClickListener:Landroid/widget/SemExpandableListView$OnChildClickListener;

    .line 2154
    return-void
.end method

.method public whitelist setOnGroupClickListener(Landroid/widget/SemExpandableListView$OnGroupClickListener;)V
    .locals 0
    .param p1, "onGroupClickListener"    # Landroid/widget/SemExpandableListView$OnGroupClickListener;

    .line 2121
    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mOnGroupClickListener:Landroid/widget/SemExpandableListView$OnGroupClickListener;

    .line 2122
    return-void
.end method

.method public whitelist setOnGroupCollapseListener(Landroid/widget/SemExpandableListView$OnGroupCollapseListener;)V
    .locals 0
    .param p1, "onGroupCollapseListener"    # Landroid/widget/SemExpandableListView$OnGroupCollapseListener;

    .line 2067
    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mOnGroupCollapseListener:Landroid/widget/SemExpandableListView$OnGroupCollapseListener;

    .line 2068
    return-void
.end method

.method public whitelist setOnGroupExpandListener(Landroid/widget/SemExpandableListView$OnGroupExpandListener;)V
    .locals 0
    .param p1, "onGroupExpandListener"    # Landroid/widget/SemExpandableListView$OnGroupExpandListener;

    .line 2091
    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mOnGroupExpandListener:Landroid/widget/SemExpandableListView$OnGroupExpandListener;

    .line 2092
    return-void
.end method

.method public whitelist setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemClickListener;

    .line 985
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 986
    return-void
.end method

.method public whitelist setSelectedChild(IIZ)Z
    .locals 4
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "shouldExpandGroup"    # Z

    .line 2274
    invoke-static {p1, p2}, Landroid/widget/SemExpandableListPosition;->obtainChildPosition(II)Landroid/widget/SemExpandableListPosition;

    move-result-object v0

    .line 2276
    .local v0, "elChildPos":Landroid/widget/SemExpandableListPosition;
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v1, v0}, Landroid/widget/SemExpandableListConnector;->getFlattenedPos(Landroid/widget/SemExpandableListPosition;)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 2278
    .local v1, "flatChildPos":Landroid/widget/SemExpandableListConnector$PositionMetadata;
    if-nez v1, :cond_2

    .line 2282
    if-nez p3, :cond_0

    const/4 v2, 0x0

    return v2

    .line 2284
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/SemExpandableListView;->expandGroup(I)Z

    .line 2286
    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v2, v0}, Landroid/widget/SemExpandableListConnector;->getFlattenedPos(Landroid/widget/SemExpandableListPosition;)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 2289
    if-eqz v1, :cond_1

    goto :goto_0

    .line 2290
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Could not find child"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2294
    :cond_2
    :goto_0
    iget-object v2, v1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v2, v2, Landroid/widget/SemExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v2}, Landroid/widget/SemExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v2

    .line 2295
    .local v2, "absoluteFlatPosition":I
    invoke-super {p0, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 2297
    invoke-virtual {v0}, Landroid/widget/SemExpandableListPosition;->recycle()V

    .line 2298
    invoke-virtual {v1}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    .line 2300
    const/4 v3, 0x1

    return v3
.end method

.method public whitelist setSelectedGroup(I)V
    .locals 3
    .param p1, "groupPosition"    # I

    .line 2250
    nop

    .line 2251
    invoke-static {p1}, Landroid/widget/SemExpandableListPosition;->obtainGroupPosition(I)Landroid/widget/SemExpandableListPosition;

    move-result-object v0

    .line 2252
    .local v0, "elGroupPos":Landroid/widget/SemExpandableListPosition;
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v1, v0}, Landroid/widget/SemExpandableListConnector;->getFlattenedPos(Landroid/widget/SemExpandableListPosition;)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 2253
    .local v1, "pm":Landroid/widget/SemExpandableListConnector$PositionMetadata;
    if-nez v1, :cond_0

    .line 2254
    return-void

    .line 2256
    :cond_0
    invoke-virtual {v0}, Landroid/widget/SemExpandableListPosition;->recycle()V

    .line 2257
    iget-object v2, v1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v2, v2, Landroid/widget/SemExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v2}, Landroid/widget/SemExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v2

    .line 2258
    .local v2, "absoluteFlatPosition":I
    invoke-super {p0, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 2259
    invoke-virtual {v1}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    .line 2260
    return-void
.end method
