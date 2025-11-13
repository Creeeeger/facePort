.class Landroid/widget/SemFastScroller;
.super Ljava/lang/Object;
.source "SemFastScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;
    }
.end annotation


# static fields
.field private static blacklist BOTTOM:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DURATION_CROSS_FADE:I = 0x0

.field private static final blacklist DURATION_FADE_IN:I = 0xa7

.field private static final blacklist DURATION_FADE_OUT:I = 0xa7

.field private static final blacklist DURATION_RESIZE:I = 0x64

.field public static final blacklist EFFECT_STATE_CLOSE:I = 0x0

.field public static final blacklist EFFECT_STATE_OPEN:I = 0x1

.field private static final blacklist FADE_TIMEOUT:J = 0x9c4L

.field private static final blacklist FASTSCROLL_VIBRATE_INDEX:I = 0x1a

.field private static blacklist LEFT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MIN_PAGES:I = 0x1

.field private static final blacklist OVERLAY_ABOVE_THUMB:I = 0x2

.field private static final blacklist OVERLAY_AT_THUMB:I = 0x1

.field private static final blacklist OVERLAY_FLOATING:I = 0x0

.field private static final blacklist PREVIEW_LEFT:I = 0x0

.field private static final blacklist PREVIEW_RIGHT:I = 0x1

.field private static blacklist RIGHT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist STATE_DRAGGING:I = 0x2

.field private static final blacklist STATE_NONE:I = 0x0

.field private static final blacklist STATE_VISIBLE:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "SemFastScroller"

.field private static final blacklist TAP_TIMEOUT:J

.field private static final blacklist THUMB_POSITION_INSIDE:I = 0x1

.field private static final blacklist THUMB_POSITION_MIDPOINT:I

.field private static blacklist TOP:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAdditionalBottomPadding:I

.field private blacklist mAdditionalTouchArea:F

.field private blacklist mAlwaysShow:Z

.field private blacklist mColorPrimary:I

.field private final blacklist mContainerRect:Landroid/graphics/Rect;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCurrentSection:I

.field private blacklist mDecorAnimation:Landroid/animation/AnimatorSet;

.field private final blacklist mDeferHide:Ljava/lang/Runnable;

.field private blacklist mEffectState:I

.field private blacklist mEnabled:Z

.field private blacklist mHeaderCount:I

.field private blacklist mInitialTouchY:F

.field private blacklist mLayoutFromRight:Z

.field private final blacklist mList:Landroid/widget/AbsListView;

.field private blacklist mListAdapter:Landroid/widget/Adapter;

.field private blacklist mListScrollExtent:I

.field private blacklist mListScrollRange:I

.field private blacklist mLongList:Z

.field private blacklist mMatchDragPosition:Z

.field private blacklist mOldChildCount:I

.field private blacklist mOldItemCount:I

.field private blacklist mOldThumbPosition:F

.field private final blacklist mOverlay:Landroid/view/ViewGroupOverlay;

.field private blacklist mOverlayPosition:I

.field private blacklist mPendingDrag:J

.field private blacklist mPreviewAnimation:Landroid/animation/AnimatorSet;

.field private final blacklist mPreviewImage:Landroid/view/View;

.field private blacklist mPreviewMarginEnd:I

.field private blacklist mPreviewMinHeight:I

.field private blacklist mPreviewMinWidth:I

.field private blacklist mPreviewPadding:I

.field private final blacklist mPreviewResId:[I

.field private final blacklist mPrimaryText:Landroid/widget/TextView;

.field private blacklist mScaledTouchSlop:I

.field private blacklist mScrollBarBottomPadding:I

.field private blacklist mScrollBarStyle:I

.field private blacklist mScrollBarTopPadding:I

.field private blacklist mScrollCompleted:Z

.field private blacklist mScrollY:F

.field private blacklist mScrollbarPosition:I

.field private final blacklist mSecondaryText:Landroid/widget/TextView;

.field private blacklist mSectionIndexer:Landroid/widget/SectionIndexer;

.field private blacklist mSections:[Ljava/lang/Object;

.field private blacklist mShowingPreview:Z

.field private blacklist mShowingPrimary:Z

.field private blacklist mState:I

.field private final blacklist mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

.field private final blacklist mTempBounds:Landroid/graphics/Rect;

.field private final blacklist mTempMargins:Landroid/graphics/Rect;

.field private blacklist mTextAppearance:I

.field private blacklist mTextColor:Landroid/content/res/ColorStateList;

.field private blacklist mTextSize:F

.field private blacklist mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private final blacklist mThumbImage:Landroid/widget/ImageView;

.field private blacklist mThumbMarginEnd:I

.field private blacklist mThumbMinHeight:I

.field private blacklist mThumbMinWidth:I

.field private blacklist mThumbOffset:F

.field private blacklist mThumbPosition:I

.field private blacklist mThumbRange:F

.field private blacklist mThumbWidthAnimator:Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;

.field private blacklist mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final blacklist mTrackImage:Landroid/widget/ImageView;

.field private blacklist mTrackPadding:I

.field private blacklist mUpdatingLayout:Z

.field private blacklist mWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmShowingPrimary(Landroid/widget/SemFastScroller;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/SemFastScroller;->mShowingPrimary:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmShowingPrimary(Landroid/widget/SemFastScroller;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/SemFastScroller;->mShowingPrimary:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetState(Landroid/widget/SemFastScroller;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SemFastScroller;->setState(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Landroid/widget/SemFastScroller;->TAP_TIMEOUT:J

    new-instance v0, Landroid/widget/SemFastScroller$3;

    const-string v1, "left"

    invoke-direct {v0, v1}, Landroid/widget/SemFastScroller$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/SemFastScroller;->LEFT:Landroid/util/Property;

    new-instance v0, Landroid/widget/SemFastScroller$4;

    const-string/jumbo v1, "top"

    invoke-direct {v0, v1}, Landroid/widget/SemFastScroller$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/SemFastScroller;->TOP:Landroid/util/Property;

    new-instance v0, Landroid/widget/SemFastScroller$5;

    const-string/jumbo v1, "right"

    invoke-direct {v0, v1}, Landroid/widget/SemFastScroller$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/SemFastScroller;->RIGHT:Landroid/util/Property;

    new-instance v0, Landroid/widget/SemFastScroller$6;

    const-string v1, "bottom"

    invoke-direct {v0, v1}, Landroid/widget/SemFastScroller$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/SemFastScroller;->BOTTOM:Landroid/util/Property;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/AbsListView;I)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/SemFastScroller;->mTempBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/SemFastScroller;->mTempMargins:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/SemFastScroller;->mContainerRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/SemFastScroller;->mPreviewResId:[I

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/SemFastScroller;->mCurrentSection:I

    iput v0, p0, Landroid/widget/SemFastScroller;->mScrollbarPosition:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/widget/SemFastScroller;->mPendingDrag:J

    iput v0, p0, Landroid/widget/SemFastScroller;->mColorPrimary:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/SemFastScroller;->mScrollY:F

    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/SemFastScroller;->mEffectState:I

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Landroid/widget/SemFastScroller;->mOldThumbPosition:F

    iput v1, p0, Landroid/widget/SemFastScroller;->mAdditionalTouchArea:F

    iput v2, p0, Landroid/widget/SemFastScroller;->mScrollBarBottomPadding:I

    iput v2, p0, Landroid/widget/SemFastScroller;->mScrollBarTopPadding:I

    new-instance v3, Landroid/widget/SemFastScroller$1;

    invoke-direct {v3, p0}, Landroid/widget/SemFastScroller$1;-><init>(Landroid/widget/SemFastScroller;)V

    iput-object v3, p0, Landroid/widget/SemFastScroller;->mDeferHide:Ljava/lang/Runnable;

    new-instance v3, Landroid/widget/SemFastScroller$2;

    invoke-direct {v3, p0}, Landroid/widget/SemFastScroller$2;-><init>(Landroid/widget/SemFastScroller;)V

    iput-object v3, p0, Landroid/widget/SemFastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    iput v0, p0, Landroid/widget/SemFastScroller;->mListScrollRange:I

    iput v0, p0, Landroid/widget/SemFastScroller;->mListScrollExtent:I

    iput-object p1, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/SemFastScroller;->mOldItemCount:I

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    iput v0, p0, Landroid/widget/SemFastScroller;->mOldChildCount:I

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/widget/SemFastScroller;->mScaledTouchSlop:I

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getScrollBarStyle()I

    move-result v0

    iput v0, p0, Landroid/widget/SemFastScroller;->mScrollBarStyle:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemFastScroller;->mScrollCompleted:Z

    iput v0, p0, Landroid/widget/SemFastScroller;->mState:I

    iget-object v3, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/widget/SemFastScroller;->mMatchDragPosition:Z

    new-instance v0, Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/SemFastScroller;->mTrackImage:Landroid/widget/ImageView;

    iget-object v0, p0, Landroid/widget/SemFastScroller;->mTrackImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-object v0, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Landroid/view/View;

    iget-object v3, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    iget-object v0, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/widget/SemFastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/widget/SemFastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/SemFastScroller;->setStyle(I)V

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1050195

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Landroid/widget/SemFastScroller;->mPreviewMarginEnd:I

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1050196

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Landroid/widget/SemFastScroller;->mThumbMarginEnd:I

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10505bc

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Landroid/widget/SemFastScroller;->mAdditionalTouchArea:F

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x105044f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Landroid/widget/SemFastScroller;->mTrackPadding:I

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x105044a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Landroid/widget/SemFastScroller;->mAdditionalBottomPadding:I

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v3, p0, Landroid/widget/SemFastScroller;->mPreviewPadding:I

    iget v4, p0, Landroid/widget/SemFastScroller;->mPreviewPadding:I

    invoke-virtual {v1, v3, v2, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v3, p0, Landroid/widget/SemFastScroller;->mPreviewPadding:I

    iget v4, p0, Landroid/widget/SemFastScroller;->mPreviewPadding:I

    invoke-virtual {v1, v3, v2, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-direct {p0}, Landroid/widget/SemFastScroller;->getSectionsFromIndexer()V

    iget v1, p0, Landroid/widget/SemFastScroller;->mOldChildCount:I

    iget v2, p0, Landroid/widget/SemFastScroller;->mOldItemCount:I

    invoke-direct {p0, v1, v2}, Landroid/widget/SemFastScroller;->updateLongList(II)V

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/SemFastScroller;->setScrollbarPosition(I)V

    invoke-direct {p0}, Landroid/widget/SemFastScroller;->postAutoHide()V

    return-void
.end method

.method private static blacklist animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;
    .locals 6

    sget-object v0, Landroid/widget/SemFastScroller;->LEFT:Landroid/util/Property;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sget-object v1, Landroid/widget/SemFastScroller;->TOP:Landroid/util/Property;

    iget v2, p1, Landroid/graphics/Rect;->top:I

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    sget-object v2, Landroid/widget/SemFastScroller;->RIGHT:Landroid/util/Property;

    iget v3, p1, Landroid/graphics/Rect;->right:I

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    sget-object v3, Landroid/widget/SemFastScroller;->BOTTOM:Landroid/util/Property;

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const/4 v5, 0x3

    aput-object v3, v4, v5

    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    return-object v4
.end method

.method private static blacklist animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3

    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private blacklist applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    iget-boolean v0, p0, Landroid/widget/SemFastScroller;->mLayoutFromRight:Z

    if-eqz v0, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    return-void
.end method

.method private blacklist beginDrag()V
    .locals 2

    const-string v0, "SemFastScroller"

    const-string v1, "beginDrag() !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/SemFastScroller;->mPendingDrag:J

    iget-object v0, p0, Landroid/widget/SemFastScroller;->mListAdapter:Landroid/widget/Adapter;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/widget/SemFastScroller;->getSectionsFromIndexer()V

    :cond_0
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v0, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    invoke-direct {p0}, Landroid/widget/SemFastScroller;->cancelFling()V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/widget/SemFastScroller;->setState(I)V

    return-void
.end method

.method private blacklist cancelFling()V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private blacklist cancelPendingDrag()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/SemFastScroller;->mPendingDrag:J

    return-void
.end method

.method private blacklist createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 3

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v2, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutDirection(I)V

    return-object v1
.end method

.method private blacklist getColorWithAlpha(IF)I
    .locals 5

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private blacklist getPosFromItemCount(III)F
    .locals 12

    iget-object v0, p0, Landroid/widget/SemFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mListAdapter:Landroid/widget/Adapter;

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->getSectionsFromIndexer()V

    :cond_1
    const/4 v1, 0x0

    if-eqz p2, :cond_10

    if-nez p3, :cond_2

    goto/16 :goto_8

    :cond_2
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    iget-object v4, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-eqz v0, :cond_5

    iget-object v5, p0, Landroid/widget/SemFastScroller;->mSections:[Ljava/lang/Object;

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/widget/SemFastScroller;->mSections:[Ljava/lang/Object;

    array-length v5, v5

    if-lez v5, :cond_5

    const/4 v3, 0x1

    :cond_5
    if-eqz v3, :cond_b

    iget-boolean v5, p0, Landroid/widget/SemFastScroller;->mMatchDragPosition:Z

    if-nez v5, :cond_6

    goto :goto_5

    :cond_6
    iget v5, p0, Landroid/widget/SemFastScroller;->mHeaderCount:I

    sub-int/2addr p1, v5

    if-gez p1, :cond_7

    return v1

    :cond_7
    iget v1, p0, Landroid/widget/SemFastScroller;->mHeaderCount:I

    sub-int/2addr p3, v1

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v5

    iget-object v6, p0, Landroid/widget/SemFastScroller;->mSections:[Ljava/lang/Object;

    array-length v6, v6

    add-int/lit8 v7, v6, -0x1

    if-ge v1, v7, :cond_9

    add-int/lit8 v7, v1, 0x1

    if-ge v7, v6, :cond_8

    add-int/lit8 v7, v1, 0x1

    invoke-interface {v0, v7}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v7

    goto :goto_2

    :cond_8
    add-int/lit8 v7, p3, -0x1

    :goto_2
    sub-int/2addr v7, v5

    goto :goto_3

    :cond_9
    sub-int v7, p3, v5

    :goto_3
    if-nez v7, :cond_a

    const/4 v8, 0x0

    goto :goto_4

    :cond_a
    int-to-float v8, p1

    add-float/2addr v8, v4

    int-to-float v9, v5

    sub-float/2addr v8, v9

    int-to-float v9, v7

    div-float/2addr v8, v9

    :goto_4
    int-to-float v9, v1

    add-float/2addr v9, v8

    int-to-float v10, v6

    div-float/2addr v9, v10

    goto :goto_6

    :cond_b
    :goto_5
    if-ne p2, p3, :cond_c

    return v1

    :cond_c
    const/4 v1, 0x1

    iget-object v5, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    instance-of v5, v5, Landroid/widget/GridView;

    if-eqz v5, :cond_d

    iget-object v5, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    check-cast v5, Landroid/widget/GridView;

    invoke-virtual {v5}, Landroid/widget/GridView;->getNumColumns()I

    move-result v1

    :cond_d
    int-to-float v5, p1

    int-to-float v6, v1

    mul-float/2addr v6, v4

    add-float/2addr v5, v6

    int-to-float v6, p3

    div-float v9, v5, v6

    nop

    :goto_6
    if-lez p1, :cond_f

    add-int v1, p1, p2

    if-ne v1, p3, :cond_f

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    add-int/lit8 v5, p2, -0x1

    invoke-virtual {v1, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v5, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v5

    iget-object v6, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getClipToPadding()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    iget-object v7, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    goto :goto_7

    :cond_e
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v5

    iget-object v7, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    :goto_7
    if-lez v7, :cond_f

    if-lez v6, :cond_f

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v9

    int-to-float v10, v7

    int-to-float v11, v6

    div-float/2addr v10, v11

    mul-float/2addr v8, v10

    add-float/2addr v9, v8

    :cond_f
    return v9

    :cond_10
    :goto_8
    return v1
.end method

.method private blacklist getPosFromMotionEvent(F)F
    .locals 3

    iget v0, p0, Landroid/widget/SemFastScroller;->mThumbRange:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Landroid/widget/SemFastScroller;->mThumbOffset:F

    sub-float v0, p1, v0

    iget v2, p0, Landroid/widget/SemFastScroller;->mThumbRange:F

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method private blacklist getSectionsFromIndexer()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SemFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/HeaderViewListAdapter;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v2}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    iput v2, p0, Landroid/widget/SemFastScroller;->mHeaderCount:I

    move-object v2, v1

    check-cast v2, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v2}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    :cond_0
    instance-of v2, v1, Landroid/widget/ExpandableListConnector;

    if-eqz v2, :cond_2

    move-object v0, v1

    check-cast v0, Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    instance-of v2, v0, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Landroid/widget/SectionIndexer;

    iput-object v2, p0, Landroid/widget/SemFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    iput-object v1, p0, Landroid/widget/SemFastScroller;->mListAdapter:Landroid/widget/Adapter;

    iget-object v2, p0, Landroid/widget/SemFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SemFastScroller;->mSections:[Ljava/lang/Object;

    :cond_1
    goto :goto_0

    :cond_2
    instance-of v2, v1, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_3

    iput-object v1, p0, Landroid/widget/SemFastScroller;->mListAdapter:Landroid/widget/Adapter;

    move-object v0, v1

    check-cast v0, Landroid/widget/SectionIndexer;

    iput-object v0, p0, Landroid/widget/SemFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    iget-object v0, p0, Landroid/widget/SemFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemFastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iput-object v1, p0, Landroid/widget/SemFastScroller;->mListAdapter:Landroid/widget/Adapter;

    iput-object v0, p0, Landroid/widget/SemFastScroller;->mSections:[Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private blacklist getThumbLength(IIII)I
    .locals 2

    int-to-float v0, p1

    int-to-float v1, p3

    mul-float/2addr v0, v1

    int-to-float v1, p4

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-ge v0, p2, :cond_0

    move v0, p2

    :cond_0
    return v0
.end method

.method private static varargs blacklist groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;F[",
            "Landroid/view/View;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x0

    array-length v2, p2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_1

    aget-object v4, p2, v2

    new-array v5, v3, [F

    const/4 v6, 0x0

    aput p1, v5, v6

    invoke-static {v4, p0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    if-nez v1, :cond_0

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private blacklist isPointInside(FF)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/SemFastScroller;->isPointInsideX(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Landroid/widget/SemFastScroller;->isPointInsideY(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/SemFastScroller;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isPointInsideX(F)Z
    .locals 4

    iget-boolean v0, p0, Landroid/widget/SemFastScroller;->mLayoutFromRight:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Landroid/widget/SemFastScroller;->mAdditionalTouchArea:F

    sub-float/2addr v0, v3

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Landroid/widget/SemFastScroller;->mAdditionalTouchArea:F

    add-float/2addr v0, v3

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method private blacklist isPointInsideY(F)Z
    .locals 4

    iget-object v0, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v0

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget-object v2, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    cmpl-float v3, p1, v1

    if-ltz v3, :cond_0

    cmpg-float v3, p1, v2

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private blacklist layoutThumb()V
    .locals 6

    iget-object v0, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mTempBounds:Landroid/graphics/Rect;

    iget-boolean v2, p0, Landroid/widget/SemFastScroller;->mLayoutFromRight:Z

    const/4 v3, 0x0

    const v4, 0x105044e

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/SemFastScroller;->mContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    sub-int/2addr v2, v4

    iput v2, v1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iput v3, v1, Landroid/graphics/Rect;->left:I

    :goto_0
    iput v3, v1, Landroid/graphics/Rect;->top:I

    nop

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105044c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iget v4, p0, Landroid/widget/SemFastScroller;->mListScrollExtent:I

    iget v5, p0, Landroid/widget/SemFastScroller;->mListScrollRange:I

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/widget/SemFastScroller;->getThumbLength(IIII)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v1}, Landroid/widget/SemFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method private blacklist layoutTrack()V
    .locals 12

    iget-object v0, p0, Landroid/widget/SemFastScroller;->mTrackImage:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/widget/SemFastScroller;->mContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/high16 v6, -0x80000000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v6, v4}, Landroid/view/View;->measure(II)V

    iget v7, p0, Landroid/widget/SemFastScroller;->mThumbPosition:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    iget v7, v2, Landroid/graphics/Rect;->top:I

    iget v8, p0, Landroid/widget/SemFastScroller;->mTrackPadding:I

    add-int/2addr v7, v8

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/widget/SemFastScroller;->mTrackPadding:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/SemFastScroller;->mAdditionalBottomPadding:I

    sub-int/2addr v8, v9

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    iget v8, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v7

    iget v9, p0, Landroid/widget/SemFastScroller;->mTrackPadding:I

    add-int/2addr v8, v9

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v7

    iget v10, p0, Landroid/widget/SemFastScroller;->mTrackPadding:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/widget/SemFastScroller;->mAdditionalBottomPadding:I

    sub-int/2addr v9, v10

    move v7, v8

    move v8, v9

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v11

    sub-int/2addr v11, v9

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    add-int v11, v10, v9

    invoke-virtual {v0, v10, v7, v11, v8}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private blacklist measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 18

    move-object/from16 v0, p2

    if-nez v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    :goto_0
    move-object/from16 v4, p0

    iget-object v5, v4, Landroid/widget/SemFastScroller;->mContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int v9, v6, v1

    sub-int/2addr v9, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/high16 v10, -0x80000000

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v8

    move-object/from16 v11, p1

    invoke-virtual {v11, v10, v8}, Landroid/view/View;->measure(II)V

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    div-int/lit8 v14, v12, 0xa

    add-int/2addr v14, v2

    iget v15, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v14, v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v14

    sub-int v16, v6, v13

    div-int/lit8 v16, v16, 0x2

    iget v0, v5, Landroid/graphics/Rect;->left:I

    add-int v0, v16, v0

    move/from16 v16, v1

    add-int v1, v0, v13

    move/from16 v17, v2

    move-object/from16 v2, p3

    invoke-virtual {v2, v0, v14, v1, v15}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private blacklist measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/SemFastScroller;->mTempMargins:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroid/widget/SemFastScroller;->mOverlayPosition:I

    if-nez v1, :cond_0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/SemFastScroller;->measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v1, v0, p2}, Landroid/widget/SemFastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method private blacklist measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 17

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/widget/SemFastScroller;->mLayoutFromRight:Z

    if-eqz v1, :cond_1

    if-nez p2, :cond_0

    iget v1, v0, Landroid/widget/SemFastScroller;->mThumbMarginEnd:I

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/widget/SemFastScroller;->mPreviewMarginEnd:I

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    iget v2, v0, Landroid/widget/SemFastScroller;->mThumbMarginEnd:I

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget v2, v0, Landroid/widget/SemFastScroller;->mPreviewMarginEnd:I

    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x0

    iget-object v4, v0, Landroid/widget/SemFastScroller;->mContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-nez p2, :cond_3

    move v6, v5

    goto :goto_1

    :cond_3
    iget-boolean v6, v0, Landroid/widget/SemFastScroller;->mLayoutFromRight:Z

    if-eqz v6, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v6

    goto :goto_1

    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v6

    sub-int v6, v5, v6

    :goto_1
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int v9, v6, v2

    sub-int/2addr v9, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/high16 v10, -0x80000000

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v8

    move-object/from16 v11, p1

    invoke-virtual {v11, v10, v8}, Landroid/view/View;->measure(II)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    invoke-static {v9, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    iget-boolean v13, v0, Landroid/widget/SemFastScroller;->mLayoutFromRight:Z

    if-eqz v13, :cond_6

    if-nez p2, :cond_5

    iget v13, v4, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v13

    :goto_2
    sub-int/2addr v13, v1

    sub-int v14, v13, v12

    goto :goto_4

    :cond_6
    if-nez p2, :cond_7

    iget v13, v4, Landroid/graphics/Rect;->left:I

    goto :goto_3

    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v13

    :goto_3
    add-int v14, v13, v2

    add-int v13, v14, v12

    :goto_4
    move v15, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v0, v15, v16

    move/from16 v16, v1

    move-object/from16 v1, p4

    invoke-virtual {v1, v14, v15, v13, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private blacklist onStateDependencyChanged(Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/SemFastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/SemFastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Landroid/widget/SemFastScroller;->setState(I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/widget/SemFastScroller;->mState:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Landroid/widget/SemFastScroller;->postAutoHide()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    invoke-direct {p0, v1}, Landroid/widget/SemFastScroller;->setState(I)V

    invoke-direct {p0}, Landroid/widget/SemFastScroller;->postAutoHide()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/SemFastScroller;->stop()V

    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->resolvePadding()V

    return-void
.end method

.method private blacklist postAutoHide()V
    .locals 4

    iget-object v0, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mDeferHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private blacklist refreshDrawablePressedState()V
    .locals 2

    iget v0, p0, Landroid/widget/SemFastScroller;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    return-void
.end method

.method private blacklist resetScrollDatas()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/SemFastScroller;->mListScrollRange:I

    iput v0, p0, Landroid/widget/SemFastScroller;->mListScrollExtent:I

    return-void
.end method

.method private blacklist scrollTo(F)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/widget/SemFastScroller;->mScrollCompleted:Z

    iget-object v3, v0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getCount()I

    move-result v3

    iget-object v4, v0, Landroid/widget/SemFastScroller;->mSections:[Ljava/lang/Object;

    if-nez v4, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    array-length v5, v4

    :goto_0
    if-eqz v4, :cond_a

    if-lez v5, :cond_a

    int-to-float v6, v5

    mul-float/2addr v6, v1

    float-to-int v6, v6

    add-int/lit8 v7, v5, -0x1

    invoke-static {v6, v2, v7}, Landroid/util/MathUtils;->constrain(III)I

    move-result v6

    move v7, v6

    iget-object v8, v0, Landroid/widget/SemFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v8, v7}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v8

    move v9, v7

    move v10, v3

    move v11, v8

    move v12, v7

    add-int/lit8 v13, v7, 0x1

    add-int/lit8 v14, v5, -0x1

    if-ge v7, v14, :cond_1

    iget-object v14, v0, Landroid/widget/SemFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    add-int/lit8 v15, v7, 0x1

    invoke-interface {v14, v15}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v10

    :cond_1
    if-ne v10, v8, :cond_4

    :cond_2
    if-lez v7, :cond_4

    add-int/lit8 v7, v7, -0x1

    iget-object v14, v0, Landroid/widget/SemFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v14, v7}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v11

    if-eq v11, v8, :cond_3

    move v12, v7

    move v9, v7

    goto :goto_1

    :cond_3
    if-nez v7, :cond_2

    const/4 v9, 0x0

    nop

    :cond_4
    :goto_1
    add-int/lit8 v14, v13, 0x1

    :goto_2
    if-ge v14, v5, :cond_5

    iget-object v15, v0, Landroid/widget/SemFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v15, v14}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v15

    if-ne v15, v10, :cond_5

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_5
    int-to-float v15, v12

    int-to-float v2, v5

    div-float/2addr v15, v2

    int-to-float v2, v13

    move-object/from16 v16, v4

    int-to-float v4, v5

    div-float/2addr v2, v4

    if-nez v3, :cond_6

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    move/from16 v17, v5

    goto :goto_3

    :cond_6
    const/high16 v4, 0x3e000000    # 0.125f

    move/from16 v17, v5

    int-to-float v5, v3

    div-float/2addr v4, v5

    :goto_3
    if-ne v12, v6, :cond_7

    sub-float v5, v1, v15

    cmpg-float v5, v5, v4

    if-gez v5, :cond_7

    move v5, v11

    goto :goto_4

    :cond_7
    sub-int v5, v10, v11

    int-to-float v5, v5

    sub-float v18, v1, v15

    mul-float v5, v5, v18

    sub-float v18, v2, v15

    div-float v5, v5, v18

    float-to-int v5, v5

    add-int/2addr v5, v11

    :goto_4
    add-int/lit8 v8, v3, -0x1

    move/from16 v18, v2

    const/4 v2, 0x0

    invoke-static {v5, v2, v8}, Landroid/util/MathUtils;->constrain(III)I

    move-result v5

    iget-object v2, v0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    instance-of v2, v2, Landroid/widget/ExpandableListView;

    if-eqz v2, :cond_8

    iget-object v2, v0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    check-cast v2, Landroid/widget/ExpandableListView;

    iget v8, v0, Landroid/widget/SemFastScroller;->mHeaderCount:I

    add-int/2addr v8, v5

    move/from16 v19, v6

    move/from16 v20, v7

    invoke-static {v8}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    goto :goto_5

    :cond_8
    move/from16 v19, v6

    move/from16 v20, v7

    iget-object v2, v0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    instance-of v2, v2, Landroid/widget/ListView;

    if-eqz v2, :cond_9

    iget-object v2, v0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    check-cast v2, Landroid/widget/ListView;

    iget v6, v0, Landroid/widget/SemFastScroller;->mHeaderCount:I

    add-int/2addr v6, v5

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_5

    :cond_9
    iget-object v2, v0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    iget v6, v0, Landroid/widget/SemFastScroller;->mHeaderCount:I

    add-int/2addr v6, v5

    invoke-virtual {v2, v6}, Landroid/widget/AbsListView;->setSelection(I)V

    :goto_5
    goto :goto_7

    :cond_a
    move-object/from16 v16, v4

    move/from16 v17, v5

    int-to-float v2, v3

    mul-float/2addr v2, v1

    float-to-int v2, v2

    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x0

    invoke-static {v2, v5, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result v2

    iget-object v4, v0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    instance-of v4, v4, Landroid/widget/ExpandableListView;

    if-eqz v4, :cond_b

    iget-object v4, v0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    check-cast v4, Landroid/widget/ExpandableListView;

    iget v5, v0, Landroid/widget/SemFastScroller;->mHeaderCount:I

    add-int/2addr v5, v2

    invoke-static {v5}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    goto :goto_6

    :cond_b
    iget-object v4, v0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    instance-of v4, v4, Landroid/widget/ListView;

    if-eqz v4, :cond_c

    iget-object v4, v0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    check-cast v4, Landroid/widget/ListView;

    iget v5, v0, Landroid/widget/SemFastScroller;->mHeaderCount:I

    add-int/2addr v5, v2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_6

    :cond_c
    iget-object v4, v0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    iget v5, v0, Landroid/widget/SemFastScroller;->mHeaderCount:I

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/AbsListView;->setSelection(I)V

    :goto_6
    const/4 v9, -0x1

    :goto_7
    iget v2, v0, Landroid/widget/SemFastScroller;->mCurrentSection:I

    if-eq v2, v9, :cond_d

    iget-object v2, v0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    const/16 v4, 0x1a

    invoke-static {v4}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    :cond_d
    iput v9, v0, Landroid/widget/SemFastScroller;->mCurrentSection:I

    invoke-direct {v0, v9}, Landroid/widget/SemFastScroller;->transitionPreviewLayout(I)Z

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "scrollTo() called transitionPreviewLayout() sectionIndex ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", position = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SemFastScroller"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, v0, Landroid/widget/SemFastScroller;->mShowingPreview:Z

    if-nez v4, :cond_e

    if-eqz v2, :cond_e

    invoke-direct/range {p0 .. p0}, Landroid/widget/SemFastScroller;->transitionToDragging()V

    goto :goto_8

    :cond_e
    iget-boolean v4, v0, Landroid/widget/SemFastScroller;->mShowingPreview:Z

    if-eqz v4, :cond_f

    if-nez v2, :cond_f

    invoke-direct/range {p0 .. p0}, Landroid/widget/SemFastScroller;->transitionToVisible()V

    :cond_f
    :goto_8
    return-void
.end method

.method private blacklist setState(I)V
    .locals 2

    iget-object v0, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-boolean v0, p0, Landroid/widget/SemFastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    iget v0, p0, Landroid/widget/SemFastScroller;->mState:I

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Landroid/widget/SemFastScroller;->mCurrentSection:I

    invoke-direct {p0, v0}, Landroid/widget/SemFastScroller;->transitionPreviewLayout(I)Z

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->transitionToVisible()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->transitionToHidden()V

    nop

    :goto_0
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mThumbWidthAnimator:Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/SemFastScroller;->mThumbWidthAnimator:Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->setDragging(Z)V

    :cond_3
    iput p1, p0, Landroid/widget/SemFastScroller;->mState:I

    invoke-direct {p0}, Landroid/widget/SemFastScroller;->refreshDrawablePressedState()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist setThumbPos(F)V
    .locals 12

    iget-object v0, p0, Landroid/widget/SemFastScroller;->mContainerRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v3

    if-lez v3, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1

    const/4 p1, 0x0

    :cond_1
    :goto_0
    iget v3, p0, Landroid/widget/SemFastScroller;->mThumbRange:F

    mul-float/2addr v3, p1

    iget v4, p0, Landroid/widget/SemFastScroller;->mThumbOffset:F

    add-float/2addr v3, v4

    iget-object v4, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-object v5, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object v4, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    move v6, v3

    int-to-float v7, v1

    add-float/2addr v7, v5

    int-to-float v8, v2

    sub-float/2addr v8, v5

    invoke-static {v6, v7, v8}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v9

    sub-float v10, v9, v5

    invoke-virtual {v4, v10}, Landroid/view/View;->setTranslationY(F)V

    iget-object v11, p0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v11, p0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setTranslationY(F)V

    return-void
.end method

.method private blacklist startPendingDrag()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Landroid/widget/SemFastScroller;->TAP_TIMEOUT:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/SemFastScroller;->mPendingDrag:J

    return-void
.end method

.method private blacklist transitionPreviewLayout(I)Z
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Landroid/widget/SemFastScroller;->mSections:[Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    if-ltz v1, :cond_0

    array-length v4, v2

    if-ge v1, v4, :cond_0

    aget-object v4, v2, v1

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    iget-object v4, v0, Landroid/widget/SemFastScroller;->mTempBounds:Landroid/graphics/Rect;

    iget-object v5, v0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    iget-boolean v6, v0, Landroid/widget/SemFastScroller;->mShowingPrimary:Z

    if-eqz v6, :cond_1

    iget-object v6, v0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget-object v7, v0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    goto :goto_0

    :cond_1
    iget-object v6, v0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget-object v7, v0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    :goto_0
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {v0, v7, v4}, Landroid/widget/SemFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-direct {v0, v7, v4}, Landroid/widget/SemFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v8, v0, Landroid/widget/SemFastScroller;->mState:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    const-string v8, ""

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget v8, v0, Landroid/widget/SemFastScroller;->mState:I

    const/4 v10, 0x2

    if-ne v8, v10, :cond_3

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    if-ne v8, v10, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/2addr v8, v9

    return v8

    :cond_3
    :goto_1
    iget-object v8, v0, Landroid/widget/SemFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    if-eqz v8, :cond_4

    iget-object v8, v0, Landroid/widget/SemFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_4
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8}, Landroid/widget/SemFastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v10

    const-wide/16 v11, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v10

    const/4 v13, 0x0

    invoke-static {v6, v13}, Landroid/widget/SemFastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v14

    invoke-virtual {v14, v11, v12}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v11

    iget-object v12, v0, Landroid/widget/SemFastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v11, v12}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget v12, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v14

    sub-int/2addr v12, v14

    iput v12, v4, Landroid/graphics/Rect;->left:I

    iget v12, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v14

    sub-int/2addr v12, v14

    iput v12, v4, Landroid/graphics/Rect;->top:I

    iget v12, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v14

    add-int/2addr v12, v14

    iput v12, v4, Landroid/graphics/Rect;->right:I

    iget v12, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v14

    add-int/2addr v12, v14

    iput v12, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v5, v4}, Landroid/widget/SemFastScroller;->animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;

    move-result-object v12

    const-wide/16 v14, 0x64

    invoke-virtual {v12, v14, v15}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, v0, Landroid/widget/SemFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    iget-object v9, v0, Landroid/widget/SemFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v9, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v16

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v17

    sub-int v16, v16, v17

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v17

    sub-int v13, v16, v17

    invoke-virtual {v7}, Landroid/widget/TextView;->getWidth()I

    move-result v14

    if-le v14, v13, :cond_5

    int-to-float v15, v13

    int-to-float v8, v14

    div-float/2addr v15, v8

    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setScaleX(F)V

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8}, Landroid/widget/SemFastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v15

    move-object/from16 v18, v9

    const-wide/16 v8, 0x64

    invoke-virtual {v15, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v15

    move-object/from16 v8, v18

    invoke-virtual {v8, v15}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_2

    :cond_5
    move-object v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setScaleX(F)V

    :goto_2
    invoke-virtual {v6}, Landroid/widget/TextView;->getWidth()I

    move-result v9

    if-le v9, v14, :cond_6

    int-to-float v15, v14

    int-to-float v1, v9

    div-float/2addr v15, v1

    invoke-static {v6, v15}, Landroid/widget/SemFastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v1

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_3

    :cond_6
    move-object/from16 v18, v4

    move-object/from16 v19, v5

    :goto_3
    iget-object v1, v0, Landroid/widget/SemFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ea8f5c3    # 0.33f

    const v15, 0x3e99999a    # 0.3f

    move-object/from16 v16, v2

    move-object/from16 v17, v6

    const/4 v2, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v2, v15, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, v0, Landroid/widget/SemFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    return v1
.end method

.method private blacklist transitionToDragging()V
    .locals 8

    const-string v0, "SemFastScroller"

    const-string/jumbo v1, "transitionToDragging()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/widget/SemFastScroller;->mTrackImage:Landroid/widget/ImageView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v5, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v5, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v1}, Landroid/widget/SemFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v5, 0xa7

    invoke-virtual {v0, v5, v6}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v5, v4, [Landroid/animation/Animator;

    aput-object v0, v5, v3

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const/4 v5, 0x0

    const v6, 0x3e99999a    # 0.3f

    const v7, 0x3ea8f5c3    # 0.33f

    invoke-direct {v3, v7, v5, v6, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    iput-boolean v4, p0, Landroid/widget/SemFastScroller;->mShowingPreview:Z

    return-void
.end method

.method private blacklist transitionToHidden()V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "transitionToHidden() mState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/SemFastScroller;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemFastScroller"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Landroid/widget/SemFastScroller;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->semAutoHide(I)V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v2, p0, Landroid/widget/SemFastScroller;->mShowingPreview:Z

    const/4 v4, -0x1

    iput v4, p0, Landroid/widget/SemFastScroller;->mCurrentSection:I

    iget-object v4, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    const/16 v0, 0xa7

    :cond_1
    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x5

    new-array v5, v5, [Landroid/view/View;

    iget-object v6, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v6, v5, v2

    iget-object v6, p0, Landroid/widget/SemFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v6, v5, v1

    iget-object v6, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v6, v5, v3

    const/4 v3, 0x3

    iget-object v6, p0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v6, v5, v3

    const/4 v3, 0x4

    iget-object v6, p0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v6, v5, v3

    const/4 v3, 0x0

    invoke-static {v4, v3, v5}, Landroid/widget/SemFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v4

    int-to-long v5, v0

    invoke-virtual {v4, v5, v6}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v4

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v4, v1, v2

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e99999a    # 0.3f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3ea8f5c3    # 0.33f

    invoke-direct {v2, v7, v3, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private blacklist transitionToVisible()V
    .locals 10

    const-string v0, "SemFastScroller"

    const-string/jumbo v1, "transitionToVisible()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [Landroid/view/View;

    iget-object v4, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Landroid/widget/SemFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v4, v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v4, v3}, Landroid/widget/SemFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v6, 0xa7

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v8, 0x3

    new-array v8, v8, [Landroid/view/View;

    iget-object v9, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v9, v8, v5

    iget-object v9, p0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v9, v8, v1

    iget-object v9, p0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v9, v8, v2

    const/4 v9, 0x0

    invoke-static {v3, v9, v8}, Landroid/widget/SemFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v3

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    iget-object v6, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v0, v2, v5

    aput-object v3, v2, v1

    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v6, 0x3ea8f5c3    # 0.33f

    const v7, 0x3e99999a    # 0.3f

    invoke-direct {v2, v6, v9, v7, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-boolean v5, p0, Landroid/widget/SemFastScroller;->mShowingPreview:Z

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private blacklist updateAppearance()V
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iget-object v2, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010433

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object v2, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    iput v2, p0, Landroid/widget/SemFastScroller;->mColorPrimary:I

    iget-object v2, p0, Landroid/widget/SemFastScroller;->mTrackImage:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/SemFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Landroid/widget/SemFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/SemFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/SemFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v3, p0, Landroid/widget/SemFastScroller;->mThumbMinWidth:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    iget-object v2, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v3, p0, Landroid/widget/SemFastScroller;->mThumbMinHeight:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    iget-object v2, p0, Landroid/widget/SemFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/SemFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_1
    iget v2, p0, Landroid/widget/SemFastScroller;->mThumbMinWidth:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/widget/SemFastScroller;->mWidth:I

    iget-object v2, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    iget v3, p0, Landroid/widget/SemFastScroller;->mPreviewMinWidth:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setMinimumWidth(I)V

    iget-object v2, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    iget v3, p0, Landroid/widget/SemFastScroller;->mPreviewMinHeight:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setMinimumHeight(I)V

    iget v2, p0, Landroid/widget/SemFastScroller;->mTextAppearance:I

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    iget v4, p0, Landroid/widget/SemFastScroller;->mTextAppearance:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v2, p0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    iget v4, p0, Landroid/widget/SemFastScroller;->mTextAppearance:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_2
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/SemFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/SemFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_3
    iget v2, p0, Landroid/widget/SemFastScroller;->mTextSize:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    const/4 v3, 0x0

    if-lez v2, :cond_4

    iget-object v2, p0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v4, p0, Landroid/widget/SemFastScroller;->mTextSize:F

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v4, p0, Landroid/widget/SemFastScroller;->mTextSize:F

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_4
    iget v2, p0, Landroid/widget/SemFastScroller;->mPreviewMinHeight:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v4, p0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v5, p0, Landroid/widget/SemFastScroller;->mPreviewMinWidth:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMinimumWidth(I)V

    iget-object v4, p0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setMinimumHeight(I)V

    iget-object v4, p0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    iget-object v4, p0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v5, p0, Landroid/widget/SemFastScroller;->mPreviewMinWidth:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMinimumWidth(I)V

    iget-object v4, p0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setMinimumHeight(I)V

    iget-object v4, p0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    invoke-direct {p0}, Landroid/widget/SemFastScroller;->refreshDrawablePressedState()V

    return-void
.end method

.method private blacklist updateContainerRect()V
    .locals 6

    iget-object v0, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->resolvePadding()V

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mContainerRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/widget/SemFastScroller;->mScrollBarTopPadding:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    iget v3, p0, Landroid/widget/SemFastScroller;->mScrollBarBottomPadding:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/widget/SemFastScroller;->mScrollBarStyle:I

    const/high16 v3, 0x1000000

    if-eq v2, v3, :cond_0

    if-nez v2, :cond_2

    :cond_0
    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/SemFastScroller;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/widget/SemFastScroller;->mScrollbarPosition:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    iget v4, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v3

    iput v4, v1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v3

    iput v4, v1, Landroid/graphics/Rect;->left:I

    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist updateLongList(II)V
    .locals 3

    const/4 v0, 0x1

    if-lez p1, :cond_1

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, p0, Landroid/widget/SemFastScroller;->mLongList:Z

    if-eq v2, v1, :cond_2

    iput-boolean v1, p0, Landroid/widget/SemFastScroller;->mLongList:Z

    invoke-direct {p0, v0}, Landroid/widget/SemFastScroller;->onStateDependencyChanged(Z)V

    :cond_2
    return-void
.end method

.method private blacklist updateOffsetAndRange()V
    .locals 5

    iget-object v0, p0, Landroid/widget/SemFastScroller;->mTrackImage:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v2, p0, Landroid/widget/SemFastScroller;->mThumbPosition:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v3, v2

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v4, v2

    :goto_0
    iput v3, p0, Landroid/widget/SemFastScroller;->mThumbOffset:F

    sub-float v2, v4, v3

    iput v2, p0, Landroid/widget/SemFastScroller;->mThumbRange:F

    return-void
.end method


# virtual methods
.method blacklist getEffectState()I
    .locals 1

    iget v0, p0, Landroid/widget/SemFastScroller;->mEffectState:I

    return v0
.end method

.method blacklist getScrollY()F
    .locals 1

    iget v0, p0, Landroid/widget/SemFastScroller;->mScrollY:F

    return v0
.end method

.method public blacklist getWidth()I
    .locals 1

    iget v0, p0, Landroid/widget/SemFastScroller;->mWidth:I

    return v0
.end method

.method public blacklist isAlwaysShowEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemFastScroller;->mAlwaysShow:Z

    return v0
.end method

.method public blacklist isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemFastScroller;->mEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/SemFastScroller;->mLongList:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/SemFastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/widget/SemFastScroller;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    :cond_1
    iget v2, p0, Landroid/widget/SemFastScroller;->mState:I

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/widget/SemFastScroller;->isPointInside(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/widget/SemFastScroller;->setState(I)V

    invoke-direct {p0}, Landroid/widget/SemFastScroller;->postAutoHide()V

    :cond_2
    return v1
.end method

.method public blacklist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p0}, Landroid/widget/SemFastScroller;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const-string v2, "SemFastScroller"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v0, v3}, Landroid/widget/SemFastScroller;->isPointInside(FF)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/widget/SemFastScroller;->cancelPendingDrag()V

    goto :goto_0

    :cond_1
    iget-wide v3, p0, Landroid/widget/SemFastScroller;->mPendingDrag:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_3

    iget-wide v3, p0, Landroid/widget/SemFastScroller;->mPendingDrag:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gtz v0, :cond_3

    invoke-direct {p0}, Landroid/widget/SemFastScroller;->beginDrag()V

    iget v0, p0, Landroid/widget/SemFastScroller;->mInitialTouchY:F

    invoke-direct {p0, v0}, Landroid/widget/SemFastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    iput v0, p0, Landroid/widget/SemFastScroller;->mOldThumbPosition:F

    invoke-direct {p0, v0}, Landroid/widget/SemFastScroller;->scrollTo(F)V

    const-string/jumbo v1, "onInterceptTouchEvent() ACTION_MOVE pendingdrag open()"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Landroid/widget/SemFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :pswitch_1
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->cancelPendingDrag()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onInterceptTouchEvent() ACTION_DOWN ev.getY() = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Landroid/widget/SemFastScroller;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    const/16 v2, 0x1a

    invoke-static {v2}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    iget-object v0, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->isInScrollingContainer()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/widget/SemFastScroller;->mInitialTouchY:F

    invoke-direct {p0}, Landroid/widget/SemFastScroller;->startPendingDrag()V

    :cond_3
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist onItemCountChanged(II)V
    .locals 3

    iget v0, p0, Landroid/widget/SemFastScroller;->mOldItemCount:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Landroid/widget/SemFastScroller;->mOldChildCount:I

    if-eq v0, p1, :cond_3

    :cond_0
    iput p2, p0, Landroid/widget/SemFastScroller;->mOldItemCount:I

    iput p1, p0, Landroid/widget/SemFastScroller;->mOldChildCount:I

    sub-int v0, p2, p1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget v1, p0, Landroid/widget/SemFastScroller;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-direct {p0, v1, p1, p2}, Landroid/widget/SemFastScroller;->getPosFromItemCount(III)F

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/SemFastScroller;->setThumbPos(F)V

    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/widget/SemFastScroller;->updateLongList(II)V

    :cond_3
    return-void
.end method

.method public blacklist onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 2

    iget v0, p0, Landroid/widget/SemFastScroller;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/widget/SemFastScroller;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onScroll(III)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/SemFastScroller;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/SemFastScroller;->setState(I)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget v0, p0, Landroid/widget/SemFastScroller;->mState:I

    if-eq v0, v2, :cond_3

    iget v0, p0, Landroid/widget/SemFastScroller;->mOldThumbPosition:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/widget/SemFastScroller;->mOldThumbPosition:F

    invoke-direct {p0, v0}, Landroid/widget/SemFastScroller;->setThumbPos(F)V

    iput v3, p0, Landroid/widget/SemFastScroller;->mOldThumbPosition:F

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SemFastScroller;->getPosFromItemCount(III)F

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/SemFastScroller;->setThumbPos(F)V

    :cond_3
    :goto_0
    iput-boolean v1, p0, Landroid/widget/SemFastScroller;->mScrollCompleted:Z

    iget v0, p0, Landroid/widget/SemFastScroller;->mState:I

    if-eq v0, v2, :cond_4

    invoke-direct {p0, v1}, Landroid/widget/SemFastScroller;->setState(I)V

    invoke-direct {p0}, Landroid/widget/SemFastScroller;->postAutoHide()V

    :cond_4
    return-void
.end method

.method public blacklist onSectionsChanged()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SemFastScroller;->mListAdapter:Landroid/widget/Adapter;

    return-void
.end method

.method public blacklist onSizeChanged(IIII)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/SemFastScroller;->resetScrollDatas()V

    invoke-virtual {p0}, Landroid/widget/SemFastScroller;->updateLayout()V

    return-void
.end method

.method public blacklist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Landroid/widget/SemFastScroller;->mContainerRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, v0, Landroid/widget/SemFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, v0, Landroid/widget/SemFastScroller;->mScrollY:F

    invoke-virtual {p0}, Landroid/widget/SemFastScroller;->isEnabled()Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_0

    return v8

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x2

    const-string v13, "SemFastScroller"

    const/4 v14, 0x1

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->cancelPendingDrag()V

    iget v7, v0, Landroid/widget/SemFastScroller;->mState:I

    if-ne v7, v12, :cond_1

    invoke-direct {p0, v8}, Landroid/widget/SemFastScroller;->setState(I)V

    :cond_1
    iput v8, v0, Landroid/widget/SemFastScroller;->mEffectState:I

    iput v9, v0, Landroid/widget/SemFastScroller;->mScrollY:F

    goto/16 :goto_2

    :pswitch_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onTouchEvent() ACTION_MOVE.. mState= "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, v0, Landroid/widget/SemFastScroller;->mState:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", mInitialTouchY="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, v0, Landroid/widget/SemFastScroller;->mInitialTouchY:F

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v8, v0, Landroid/widget/SemFastScroller;->mPendingDrag:J

    cmp-long v8, v8, v10

    const-string v9, ", max="

    const-string v10, ", min="

    if-ltz v8, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v11, v0, Landroid/widget/SemFastScroller;->mInitialTouchY:F

    sub-float/2addr v8, v11

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v11, v0, Landroid/widget/SemFastScroller;->mScaledTouchSlop:I

    int-to-float v11, v11

    cmpl-float v8, v8, v11

    if-lez v8, :cond_4

    invoke-direct {p0}, Landroid/widget/SemFastScroller;->beginDrag()V

    iget v8, v0, Landroid/widget/SemFastScroller;->mScrollY:F

    int-to-float v11, v2

    cmpl-float v8, v8, v11

    if-lez v8, :cond_4

    iget v8, v0, Landroid/widget/SemFastScroller;->mScrollY:F

    int-to-float v11, v3

    cmpg-float v8, v8, v11

    if-gez v8, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onTouchEvent() ACTION_MOVE 1 mScrollY="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v11, v0, Landroid/widget/SemFastScroller;->mScrollY:F

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v8, v0, Landroid/widget/SemFastScroller;->mScrollY:F

    int-to-float v11, v2

    add-float/2addr v11, v5

    cmpg-float v8, v8, v11

    if-gez v8, :cond_2

    int-to-float v8, v2

    add-float/2addr v8, v5

    iput v8, v0, Landroid/widget/SemFastScroller;->mScrollY:F

    goto :goto_0

    :cond_2
    iget v8, v0, Landroid/widget/SemFastScroller;->mScrollY:F

    cmpl-float v8, v8, v6

    if-lez v8, :cond_3

    iput v6, v0, Landroid/widget/SemFastScroller;->mScrollY:F

    :cond_3
    :goto_0
    iput v14, v0, Landroid/widget/SemFastScroller;->mEffectState:I

    :cond_4
    iget v8, v0, Landroid/widget/SemFastScroller;->mState:I

    if-ne v8, v12, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v7}, Landroid/widget/SemFastScroller;->getPosFromMotionEvent(F)F

    move-result v7

    iput v7, v0, Landroid/widget/SemFastScroller;->mOldThumbPosition:F

    invoke-direct {p0, v7}, Landroid/widget/SemFastScroller;->setThumbPos(F)V

    iget-boolean v8, v0, Landroid/widget/SemFastScroller;->mScrollCompleted:Z

    if-eqz v8, :cond_5

    invoke-direct {p0, v7}, Landroid/widget/SemFastScroller;->scrollTo(F)V

    :cond_5
    iget v8, v0, Landroid/widget/SemFastScroller;->mScrollY:F

    int-to-float v11, v2

    cmpl-float v8, v8, v11

    if-lez v8, :cond_8

    iget v8, v0, Landroid/widget/SemFastScroller;->mScrollY:F

    int-to-float v11, v3

    cmpg-float v8, v8, v11

    if-gez v8, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onTouchEvent() ACTION_MOVE 2 mScrollY="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v11, v0, Landroid/widget/SemFastScroller;->mScrollY:F

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v8, v0, Landroid/widget/SemFastScroller;->mScrollY:F

    int-to-float v9, v2

    add-float/2addr v9, v5

    cmpg-float v8, v8, v9

    if-gez v8, :cond_6

    int-to-float v8, v2

    add-float/2addr v8, v5

    iput v8, v0, Landroid/widget/SemFastScroller;->mScrollY:F

    goto :goto_1

    :cond_6
    iget v8, v0, Landroid/widget/SemFastScroller;->mScrollY:F

    cmpl-float v8, v8, v6

    if-lez v8, :cond_7

    iput v6, v0, Landroid/widget/SemFastScroller;->mScrollY:F

    :cond_7
    :goto_1
    iput v14, v0, Landroid/widget/SemFastScroller;->mEffectState:I

    :cond_8
    return v14

    :pswitch_2
    iget-wide v7, v0, Landroid/widget/SemFastScroller;->mPendingDrag:J

    cmp-long v7, v7, v10

    if-ltz v7, :cond_9

    invoke-direct {p0}, Landroid/widget/SemFastScroller;->beginDrag()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v7}, Landroid/widget/SemFastScroller;->getPosFromMotionEvent(F)F

    move-result v7

    iput v7, v0, Landroid/widget/SemFastScroller;->mOldThumbPosition:F

    invoke-direct {p0, v7}, Landroid/widget/SemFastScroller;->setThumbPos(F)V

    invoke-direct {p0, v7}, Landroid/widget/SemFastScroller;->scrollTo(F)V

    iput v14, v0, Landroid/widget/SemFastScroller;->mEffectState:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onTouchEvent() ACTION_UP.. open() called with posY "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget v7, v0, Landroid/widget/SemFastScroller;->mState:I

    if-ne v7, v12, :cond_a

    iget-object v7, v0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v7, v0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    invoke-direct {p0, v14}, Landroid/widget/SemFastScroller;->setState(I)V

    invoke-direct {p0}, Landroid/widget/SemFastScroller;->postAutoHide()V

    iput v8, v0, Landroid/widget/SemFastScroller;->mEffectState:I

    iput v9, v0, Landroid/widget/SemFastScroller;->mScrollY:F

    return v14

    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-direct {p0, v8, v9}, Landroid/widget/SemFastScroller;->isPointInside(FF)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, v0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v8}, Landroid/widget/AbsListView;->isInScrollingContainer()Z

    move-result v8

    if-nez v8, :cond_a

    invoke-direct {p0}, Landroid/widget/SemFastScroller;->beginDrag()V

    iput v14, v0, Landroid/widget/SemFastScroller;->mEffectState:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onTouchEvent() ACTION_DOWN.. open() called with posY "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v14

    :cond_a
    :goto_2
    const/4 v7, 0x0

    return v7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist remove()V
    .locals 2

    iget-object v0, p0, Landroid/widget/SemFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/SemFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/SemFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/SemFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/SemFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/SemFastScroller;->mThumbWidthAnimator:Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemFastScroller;->mThumbWidthAnimator:Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;

    invoke-virtual {v0}, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;->dispose()V

    :cond_0
    return-void
.end method

.method public blacklist semSetScrollBarBottomPadding(I)V
    .locals 0

    iput p1, p0, Landroid/widget/SemFastScroller;->mScrollBarBottomPadding:I

    invoke-direct {p0}, Landroid/widget/SemFastScroller;->resetScrollDatas()V

    invoke-virtual {p0}, Landroid/widget/SemFastScroller;->updateLayout()V

    return-void
.end method

.method public blacklist semSetScrollBarTopPadding(I)V
    .locals 0

    iput p1, p0, Landroid/widget/SemFastScroller;->mScrollBarTopPadding:I

    invoke-direct {p0}, Landroid/widget/SemFastScroller;->resetScrollDatas()V

    invoke-virtual {p0}, Landroid/widget/SemFastScroller;->updateLayout()V

    return-void
.end method

.method public blacklist semSetUseOpenThemeResources(Z)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/SemFastScroller;->updateAppearance()V

    return-void
.end method

.method public blacklist setAlwaysShow(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemFastScroller;->mAlwaysShow:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/widget/SemFastScroller;->mAlwaysShow:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/SemFastScroller;->onStateDependencyChanged(Z)V

    :cond_0
    return-void
.end method

.method public blacklist setEnabled(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setEnabled() enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemFastScroller"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Landroid/widget/SemFastScroller;->mEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/widget/SemFastScroller;->mEnabled:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/SemFastScroller;->onStateDependencyChanged(Z)V

    :cond_0
    return-void
.end method

.method public blacklist setScrollBarStyle(I)V
    .locals 1

    iget v0, p0, Landroid/widget/SemFastScroller;->mScrollBarStyle:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/widget/SemFastScroller;->mScrollBarStyle:I

    invoke-direct {p0}, Landroid/widget/SemFastScroller;->resetScrollDatas()V

    invoke-virtual {p0}, Landroid/widget/SemFastScroller;->updateLayout()V

    :cond_0
    return-void
.end method

.method public blacklist setScrollbarPosition(I)V
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    move p1, v1

    :cond_1
    iget v1, p0, Landroid/widget/SemFastScroller;->mScrollbarPosition:I

    if-eq v1, p1, :cond_3

    iput p1, p0, Landroid/widget/SemFastScroller;->mScrollbarPosition:I

    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Landroid/widget/SemFastScroller;->mLayoutFromRight:Z

    iget-object v0, p0, Landroid/widget/SemFastScroller;->mPreviewResId:[I

    iget-boolean v1, p0, Landroid/widget/SemFastScroller;->mLayoutFromRight:Z

    aget v0, v0, v1

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Landroid/widget/SemFastScroller;->mColorPrimary:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-direct {p0}, Landroid/widget/SemFastScroller;->resetScrollDatas()V

    invoke-virtual {p0}, Landroid/widget/SemFastScroller;->updateLayout()V

    :cond_3
    return-void
.end method

.method public blacklist setStyle(I)V
    .locals 8

    iget-object v0, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/R$styleable;->FastScroll:[I

    const v2, 0x10103f7

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/SemFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :pswitch_1
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/SemFastScroller;->mThumbMinWidth:I

    goto :goto_1

    :pswitch_2
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/SemFastScroller;->mThumbMinHeight:I

    goto :goto_1

    :pswitch_3
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/SemFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :pswitch_4
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/widget/SemFastScroller;->mOverlayPosition:I

    goto :goto_1

    :pswitch_5
    iget-object v6, p0, Landroid/widget/SemFastScroller;->mPreviewResId:[I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    const/4 v7, 0x1

    aput v5, v6, v7

    goto :goto_1

    :pswitch_6
    iget-object v6, p0, Landroid/widget/SemFastScroller;->mPreviewResId:[I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, v6, v5

    goto :goto_1

    :pswitch_7
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/widget/SemFastScroller;->mThumbPosition:I

    goto :goto_1

    :pswitch_8
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/SemFastScroller;->mPreviewMinHeight:I

    goto :goto_1

    :pswitch_9
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/SemFastScroller;->mPreviewMinWidth:I

    goto :goto_1

    :pswitch_a
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/SemFastScroller;->mPreviewPadding:I

    goto :goto_1

    :pswitch_b
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/SemFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    :pswitch_c
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Landroid/widget/SemFastScroller;->mTextSize:F

    goto :goto_1

    :pswitch_d
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/widget/SemFastScroller;->mTextAppearance:I

    nop

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v2, p0, Landroid/widget/SemFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_1

    new-instance v2, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;

    iget-object v3, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/widget/SemFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v4, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v2, v3, v4}, Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;-><init>(Landroid/content/Context;Landroid/graphics/drawable/LayerDrawable;)V

    iput-object v2, p0, Landroid/widget/SemFastScroller;->mThumbWidthAnimator:Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;

    goto :goto_2

    :cond_1
    iput-object v3, p0, Landroid/widget/SemFastScroller;->mThumbWidthAnimator:Landroid/widget/SemFastScroller$SemFastScrollThumbAnimator;

    :goto_2
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->updateAppearance()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist stop()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/SemFastScroller;->setState(I)V

    return-void
.end method

.method public blacklist updateLayout()V
    .locals 6

    iget-object v0, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->computeVerticalScrollRange()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/AbsListView;->computeVerticalScrollExtent()I

    move-result v2

    iget v3, p0, Landroid/widget/SemFastScroller;->mListScrollRange:I

    if-lez v3, :cond_0

    iget v3, p0, Landroid/widget/SemFastScroller;->mListScrollRange:I

    if-ne v1, v3, :cond_0

    iget v3, p0, Landroid/widget/SemFastScroller;->mListScrollExtent:I

    if-lez v3, :cond_0

    iget v3, p0, Landroid/widget/SemFastScroller;->mListScrollExtent:I

    if-ne v2, v3, :cond_0

    iget-object v3, p0, Landroid/widget/SemFastScroller;->mContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-gtz v3, :cond_2

    :cond_0
    iget-boolean v3, p0, Landroid/widget/SemFastScroller;->mUpdatingLayout:Z

    if-eqz v3, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/SemFastScroller;->mUpdatingLayout:Z

    iput v1, p0, Landroid/widget/SemFastScroller;->mListScrollRange:I

    iput v2, p0, Landroid/widget/SemFastScroller;->mListScrollExtent:I

    invoke-direct {p0}, Landroid/widget/SemFastScroller;->updateContainerRect()V

    invoke-direct {p0}, Landroid/widget/SemFastScroller;->layoutThumb()V

    invoke-direct {p0}, Landroid/widget/SemFastScroller;->layoutTrack()V

    invoke-direct {p0}, Landroid/widget/SemFastScroller;->updateOffsetAndRange()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/SemFastScroller;->mUpdatingLayout:Z

    iget-object v3, p0, Landroid/widget/SemFastScroller;->mTempBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v4, v3}, Landroid/widget/SemFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v4, p0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v4, v3}, Landroid/widget/SemFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v4, p0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v4, v3}, Landroid/widget/SemFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v4, p0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v4, v3}, Landroid/widget/SemFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-direct {p0, v4, v3}, Landroid/widget/SemFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_2
    return-void
.end method
