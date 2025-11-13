.class public Landroid/widget/RelativeLayout;
.super Landroid/view/ViewGroup;
.source "RelativeLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RelativeLayout$DependencyGraph;,
        Landroid/widget/RelativeLayout$LayoutParams;,
        Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;,
        Landroid/widget/RelativeLayout$ExpandTopBarRunnable;,
        Landroid/widget/RelativeLayout$ReleaseScrollRunnable;,
        Landroid/widget/RelativeLayout$AppWidgetListScrollListener;
    }
.end annotation


# static fields
.field public static final whitelist ABOVE:I = 0x2

.field public static final whitelist ALIGN_BASELINE:I = 0x4

.field public static final whitelist ALIGN_BOTTOM:I = 0x8

.field public static final whitelist ALIGN_END:I = 0x13

.field public static final whitelist ALIGN_LEFT:I = 0x5

.field public static final whitelist ALIGN_PARENT_BOTTOM:I = 0xc

.field public static final whitelist ALIGN_PARENT_END:I = 0x15

.field public static final whitelist ALIGN_PARENT_LEFT:I = 0x9

.field public static final whitelist ALIGN_PARENT_RIGHT:I = 0xb

.field public static final whitelist ALIGN_PARENT_START:I = 0x14

.field public static final whitelist ALIGN_PARENT_TOP:I = 0xa

.field public static final whitelist ALIGN_RIGHT:I = 0x7

.field public static final whitelist ALIGN_START:I = 0x12

.field public static final whitelist ALIGN_TOP:I = 0x6

.field private static final blacklist APPWIDGET_EXPAND_ACTION_DELAY:I = 0x5dc

.field private static final blacklist APPWIDGET_RELEASE_ACTION_DELAY:I = 0x32

.field private static final blacklist APPWIDGET_RELEASE_SCROLL_DURATION:I = 0x190

.field public static final whitelist BELOW:I = 0x3

.field public static final whitelist CENTER_HORIZONTAL:I = 0xe

.field public static final whitelist CENTER_IN_PARENT:I = 0xd

.field public static final whitelist CENTER_VERTICAL:I = 0xf

.field private static final greylist-max-o DEFAULT_WIDTH:I = 0x10000

.field public static final whitelist END_OF:I = 0x11

.field public static final whitelist LEFT_OF:I = 0x0

.field public static final whitelist RIGHT_OF:I = 0x1

.field private static final greylist-max-o RULES_HORIZONTAL:[I

.field private static final greylist-max-o RULES_VERTICAL:[I

.field public static final whitelist START_OF:I = 0x10

.field private static final blacklist TAG:Ljava/lang/String; = "RelativeLayout"

.field public static final whitelist TRUE:I = -0x1

.field private static final greylist-max-o VALUE_NOT_SET:I = -0x80000000

.field private static final greylist-max-o VERB_COUNT:I = 0x16


# instance fields
.field private greylist-max-o mAllowBrokenMeasureSpecs:Z

.field private blacklist mAppWidgetImmersiveEnabled:Z

.field private blacklist mAppWidgetListView:Landroid/widget/AbsListView;

.field private blacklist mAppWidgetToolBar:Landroid/view/View;

.field private greylist-max-o mBaselineView:Landroid/view/View;

.field private final greylist-max-o mContentBounds:Landroid/graphics/Rect;

.field private greylist-max-o mDirtyHierarchy:Z

.field private blacklist mExpandOffsetAnimator:Landroid/animation/ValueAnimator;

.field private blacklist mExpandTopBarRunnable:Landroid/widget/RelativeLayout$ExpandTopBarRunnable;

.field private final greylist-max-o mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

.field private greylist-max-p mGravity:I

.field private greylist-max-o mIgnoreGravity:I

.field private greylist-max-o mMeasureVerticalWithPaddingMargin:Z

.field private blacklist mReleaseScrollRunnable:Landroid/widget/RelativeLayout$ReleaseScrollRunnable;

.field private blacklist mScrollListener:Landroid/widget/RelativeLayout$AppWidgetListScrollListener;

.field private final greylist-max-o mSelfBounds:Landroid/graphics/Rect;

.field private greylist-max-o mSortedHorizontalChildren:[Landroid/view/View;

.field private greylist-max-o mSortedVerticalChildren:[Landroid/view/View;

.field private greylist-max-o mTopToBottomLeftToRightSet:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAppWidgetListView(Landroid/widget/RelativeLayout;)Landroid/widget/AbsListView;
    .locals 0

    iget-object p0, p0, Landroid/widget/RelativeLayout;->mAppWidgetListView:Landroid/widget/AbsListView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAppWidgetToolBar(Landroid/widget/RelativeLayout;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroid/widget/RelativeLayout;->mAppWidgetToolBar:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExpandTopBarRunnable(Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout$ExpandTopBarRunnable;
    .locals 0

    iget-object p0, p0, Landroid/widget/RelativeLayout;->mExpandTopBarRunnable:Landroid/widget/RelativeLayout$ExpandTopBarRunnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReleaseScrollRunnable(Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout$ReleaseScrollRunnable;
    .locals 0

    iget-object p0, p0, Landroid/widget/RelativeLayout;->mReleaseScrollRunnable:Landroid/widget/RelativeLayout$ReleaseScrollRunnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmExpandTopBarRunnable(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$ExpandTopBarRunnable;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/RelativeLayout;->mExpandTopBarRunnable:Landroid/widget/RelativeLayout$ExpandTopBarRunnable;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmReleaseScrollRunnable(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$ReleaseScrollRunnable;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/RelativeLayout;->mReleaseScrollRunnable:Landroid/widget/RelativeLayout$ReleaseScrollRunnable;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x6

    const/16 v4, 0x8

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Landroid/widget/RelativeLayout;->RULES_VERTICAL:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/widget/RelativeLayout;->RULES_HORIZONTAL:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x5
        0x7
        0x10
        0x11
        0x12
        0x13
    .end array-data
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    const v1, 0x800033

    iput v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/RelativeLayout;->mContentBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/RelativeLayout;->mSelfBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    new-instance v1, Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout$DependencyGraph;-><init>(Landroid/widget/RelativeLayout$DependencyGraph-IA;)V

    iput-object v1, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    iput-boolean v0, p0, Landroid/widget/RelativeLayout;->mMeasureVerticalWithPaddingMargin:Z

    iput-boolean v0, p0, Landroid/widget/RelativeLayout;->mAppWidgetImmersiveEnabled:Z

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;->queryCompatibilityModes(Landroid/content/Context;)V

    return-void
.end method

.method private greylist-max-o applyHorizontalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;I[I)V
    .locals 4

    const/high16 v0, -0x80000000

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_0

    :cond_0
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_1

    aget v0, p3, v0

    if-eqz v0, :cond_1

    if-ltz p2, :cond_1

    iget v0, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v0, p2, v0

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_1

    :cond_2
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_3

    aget v0, p3, v0

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v2

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    :cond_3
    :goto_1
    const/4 v0, 0x5

    invoke-direct {p0, p3, v0}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v2

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_2

    :cond_4
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_5

    aget v0, p3, v0

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v2

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    :cond_5
    :goto_2
    const/4 v0, 0x7

    invoke-direct {p0, p3, v0}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_3

    :cond_6
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_7

    aget v0, p3, v0

    if-eqz v0, :cond_7

    if-ltz p2, :cond_7

    iget v0, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v0, p2, v0

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    :cond_7
    :goto_3
    const/16 v0, 0x9

    aget v0, p3, v0

    if-eqz v0, :cond_8

    iget v0, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v2

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    :cond_8
    const/16 v0, 0xb

    aget v0, p3, v0

    if-eqz v0, :cond_9

    if-ltz p2, :cond_9

    iget v0, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v0, p2, v0

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    :cond_9
    return-void
.end method

.method private greylist-max-o applyVerticalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;II)V
    .locals 6

    invoke-virtual {p1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;->getRelatedViewBaselineOffset([I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    if-eq p3, v3, :cond_0

    sub-int/2addr v1, p3

    :cond_0
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    return-void

    :cond_1
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v5, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_0

    :cond_2
    iget-boolean v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v4, :cond_3

    aget v2, v0, v2

    if-eqz v2, :cond_3

    if-ltz p2, :cond_3

    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int v2, p2, v2

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v4

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    :cond_3
    :goto_0
    const/4 v2, 0x3

    invoke-direct {p0, v0, v2}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget v5, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_1

    :cond_4
    iget-boolean v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v4, :cond_5

    aget v2, v0, v2

    if-eqz v2, :cond_5

    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    :cond_5
    :goto_1
    const/4 v2, 0x6

    invoke-direct {p0, v0, v2}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_2

    :cond_6
    iget-boolean v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v4, :cond_7

    aget v2, v0, v2

    if-eqz v2, :cond_7

    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    :cond_7
    :goto_2
    const/16 v2, 0x8

    invoke-direct {p0, v0, v2}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v4

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_3

    :cond_8
    iget-boolean v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v4, :cond_9

    aget v2, v0, v2

    if-eqz v2, :cond_9

    if-ltz p2, :cond_9

    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int v2, p2, v2

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v4

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    :cond_9
    :goto_3
    const/16 v2, 0xa

    aget v2, v0, v2

    if-eqz v2, :cond_a

    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    :cond_a
    const/16 v2, 0xc

    aget v2, v0, v2

    if-eqz v2, :cond_b

    if-ltz p2, :cond_b

    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int v2, p2, v2

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v4

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    :cond_b
    return-void
.end method

.method private static greylist-max-o centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v1, p2, v0

    div-int/lit8 v1, v1, 0x2

    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    add-int v2, v1, v0

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    return-void
.end method

.method private static greylist-max-o centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int v1, p2, v0

    div-int/lit8 v1, v1, 0x2

    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    add-int v2, v1, v0

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    return-void
.end method

.method private greylist-max-o compareLayoutPosition(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 3

    invoke-static {p1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {p1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    sub-int/2addr v1, v2

    return v1
.end method

.method private greylist-max-o getChildMeasureSpec(IIIIIIII)I
    .locals 13

    move v0, p1

    move v1, p2

    move/from16 v2, p3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-gez p8, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    const/high16 v7, -0x80000000

    if-eqz v6, :cond_3

    move-object v8, p0

    iget-boolean v9, v8, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    if-nez v9, :cond_4

    if-eq v0, v7, :cond_1

    if-eq v1, v7, :cond_1

    sub-int v7, v1, v0

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/high16 v3, 0x40000000    # 2.0f

    goto :goto_1

    :cond_1
    if-ltz v2, :cond_2

    move/from16 v4, p3

    const/high16 v3, 0x40000000    # 2.0f

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_1
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    return v5

    :cond_3
    move-object v8, p0

    :cond_4
    move v9, p1

    move v10, p2

    if-ne v9, v7, :cond_5

    add-int v9, p6, p4

    :cond_5
    if-ne v10, v7, :cond_6

    sub-int v11, p8, p7

    sub-int v10, v11, p5

    :cond_6
    sub-int v11, v10, v9

    const/high16 v12, 0x40000000    # 2.0f

    if-eq v0, v7, :cond_8

    if-eq v1, v7, :cond_8

    if-eqz v6, :cond_7

    move v12, v5

    :cond_7
    move v3, v12

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_2

    :cond_8
    if-ltz v2, :cond_a

    const/high16 v3, 0x40000000    # 2.0f

    if-ltz v11, :cond_9

    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_2

    :cond_9
    move/from16 v4, p3

    goto :goto_2

    :cond_a
    const/4 v7, -0x1

    if-ne v2, v7, :cond_c

    if-eqz v6, :cond_b

    move v12, v5

    :cond_b
    move v3, v12

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_2

    :cond_c
    const/4 v5, -0x2

    if-ne v2, v5, :cond_e

    if-ltz v11, :cond_d

    const/high16 v3, -0x80000000

    move v4, v11

    goto :goto_2

    :cond_d
    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_e
    :goto_2
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    return v5
.end method

.method private greylist-max-o getRelatedView([II)Landroid/view/View;
    .locals 6

    aget v0, p1, p2

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v2, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-static {v2}, Landroid/widget/RelativeLayout$DependencyGraph;->-$$Nest$fgetmKeyNodes(Landroid/widget/RelativeLayout$DependencyGraph;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    iget-object v3, v2, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    :goto_0
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutDirection()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object p1

    iget-object v4, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-static {v4}, Landroid/widget/RelativeLayout$DependencyGraph;->-$$Nest$fgetmKeyNodes(Landroid/widget/RelativeLayout$DependencyGraph;)Landroid/util/SparseArray;

    move-result-object v4

    aget v5, p1, p2

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    if-eqz v2, :cond_2

    iget-object v4, v2, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, v2, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1

    :cond_3
    return-object v3

    :cond_4
    return-object v1
.end method

.method private greylist-max-o getRelatedViewBaselineOffset([I)I
    .locals 5

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Landroid/widget/RelativeLayout;->getRelatedView([II)Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v4, v3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    add-int/2addr v4, v2

    return v4

    :cond_0
    return v1
.end method

.method private greylist-max-o getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;->getRelatedView([II)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    return-object v2

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private greylist-max-o initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    sget-object v0, Lcom/android/internal/R$styleable;->RelativeLayout:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget-object v3, Lcom/android/internal/R$styleable;->RelativeLayout:[I

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, v0

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/widget/RelativeLayout;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/RelativeLayout;->mGravity:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private greylist-max-o measureChild(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V
    .locals 10

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v5, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v6, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v7, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    move-object v0, p0

    move v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    move-result v0

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v5, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v6, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget v7, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v8, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    move-object v1, p0

    move v9, p4

    invoke-direct/range {v1 .. v9}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private greylist-max-o measureChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V
    .locals 9

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v5, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v6, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v7, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    move-object v0, p0

    move v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    move-result v0

    const/4 v1, 0x0

    if-gez p4, :cond_1

    iget-boolean v2, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    if-nez v2, :cond_1

    iget v2, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    if-ltz v2, :cond_0

    iget v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_2

    :cond_0
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_2

    :cond_1
    iget-boolean v2, p0, Landroid/widget/RelativeLayout;->mMeasureVerticalWithPaddingMargin:Z

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    sub-int v2, p4, v2

    iget v3, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int/2addr v2, v3

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_0
    iget v2, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_1

    :cond_3
    const/high16 v2, -0x80000000

    :goto_1
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move v1, v3

    :goto_2
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private greylist-max-o positionAtEdge(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v0, p3, v0

    iget v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v1

    invoke-static {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    invoke-static {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    :goto_0
    return-void
.end method

.method private greylist-max-o positionChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z
    .locals 5

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    const/4 v3, 0x1

    const/high16 v4, -0x80000000

    if-ne v2, v4, :cond_0

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-eq v2, v4, :cond_0

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_2

    :cond_0
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-eq v2, v4, :cond_1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v2, v4

    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_2

    :cond_1
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-ne v2, v4, :cond_5

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-ne v2, v4, :cond_5

    const/16 v2, 0xd

    aget v2, v1, v2

    if-nez v2, :cond_3

    const/16 v2, 0xe

    aget v2, v1, v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->positionAtEdge(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_2

    :cond_3
    :goto_0
    if-nez p4, :cond_4

    invoke-static {p1, p2, p3}, Landroid/widget/RelativeLayout;->centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->positionAtEdge(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    :goto_1
    return v3

    :cond_5
    :goto_2
    const/16 v2, 0x15

    aget v2, v1, v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    return v3
.end method

.method private greylist-max-o positionChildVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z
    .locals 4

    invoke-virtual {p2}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    const/4 v2, 0x1

    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-eq v1, v3, :cond_0

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_2

    :cond_0
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-eq v1, v3, :cond_1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-ne v1, v3, :cond_1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v1, v3

    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_2

    :cond_1
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-ne v1, v3, :cond_5

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-ne v1, v3, :cond_5

    const/16 v1, 0xd

    aget v1, v0, v1

    if-nez v1, :cond_3

    const/16 v1, 0xf

    aget v1, v0, v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v3

    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v1, v3

    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_2

    :cond_3
    :goto_0
    if-nez p4, :cond_4

    invoke-static {p1, p2, p3}, Landroid/widget/RelativeLayout;->centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_1

    :cond_4
    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v3

    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v1, v3

    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    :goto_1
    return v2

    :cond_5
    :goto_2
    const/16 v1, 0xc

    aget v1, v0, v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    return v2
.end method

.method private greylist-max-o queryCompatibilityModes(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x11

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Landroid/widget/RelativeLayout;->mMeasureVerticalWithPaddingMargin:Z

    return-void
.end method

.method private greylist-max-o sortChildren()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    array-length v1, v1

    if-eq v1, v0, :cond_1

    :cond_0
    new-array v1, v0, [Landroid/view/View;

    iput-object v1, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    :cond_1
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    array-length v1, v1

    if-eq v1, v0, :cond_3

    :cond_2
    new-array v1, v0, [Landroid/view/View;

    iput-object v1, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    :cond_3
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout$DependencyGraph;->clear()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$DependencyGraph;->add(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    sget-object v3, Landroid/widget/RelativeLayout;->RULES_VERTICAL:[I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$DependencyGraph;->getSortedViews([Landroid/view/View;[I)V

    iget-object v2, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    sget-object v3, Landroid/widget/RelativeLayout;->RULES_HORIZONTAL:[I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$DependencyGraph;->getSortedViews([Landroid/view/View;[I)V

    return-void
.end method


# virtual methods
.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroid/widget/RelativeLayout$LayoutParams;

    return v0
.end method

.method public greylist-max-o dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator-IA;)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    const/4 v0, 0x1

    return v0

    :cond_2
    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    sget-boolean v0, Landroid/widget/RelativeLayout;->sPreserveMarginParamsInLayoutParamConversion:Z

    if-eqz v0, :cond_1

    instance-of v0, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/widget/RelativeLayout$LayoutParams;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBaseline()I
    .locals 1

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    :goto_0
    return v0
.end method

.method public whitelist getGravity()I
    .locals 1

    iget v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    return v0
.end method

.method public whitelist getIgnoreGravity()I
    .locals 1

    iget v0, p0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    return v0
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mAppWidgetListView:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mAppWidgetListView:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mExpandTopBarRunnable:Landroid/widget/RelativeLayout$ExpandTopBarRunnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mAppWidgetListView:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mReleaseScrollRunnable:Landroid/widget/RelativeLayout$ReleaseScrollRunnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mExpandTopBarRunnable:Landroid/widget/RelativeLayout$ExpandTopBarRunnable;

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mReleaseScrollRunnable:Landroid/widget/RelativeLayout$ReleaseScrollRunnable;

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mAppWidgetListView:Landroid/widget/AbsListView;

    :cond_0
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 8

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    iget-boolean v1, p0, Landroid/widget/RelativeLayout;->mAppWidgetImmersiveEnabled:Z

    if-eqz v1, :cond_1

    move v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    const/4 v6, 0x0

    add-int v7, v1, v4

    invoke-virtual {v3, v6, v1, v5, v7}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2

    nop

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v5

    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v6

    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 39

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-boolean v2, v0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    invoke-direct/range {p0 .. p0}, Landroid/widget/RelativeLayout;->sortChildren()V

    :cond_0
    const/4 v1, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    if-eqz v6, :cond_1

    move v1, v8

    :cond_1
    if-eqz v7, :cond_2

    move v3, v9

    :cond_2
    const/high16 v10, 0x40000000    # 2.0f

    if-ne v6, v10, :cond_3

    move v4, v1

    :cond_3
    if-ne v7, v10, :cond_4

    move v5, v3

    :cond_4
    const/4 v11, 0x0

    iget v12, v0, Landroid/widget/RelativeLayout;->mGravity:I

    const v13, 0x800007

    and-int/2addr v12, v13

    const v13, 0x800003

    if-eq v12, v13, :cond_5

    if-eqz v12, :cond_5

    const/4 v13, 0x1

    goto :goto_0

    :cond_5
    move v13, v2

    :goto_0
    iget v15, v0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/lit8 v12, v15, 0x70

    const/16 v15, 0x30

    if-eq v12, v15, :cond_6

    if-eqz v12, :cond_6

    const/4 v15, 0x1

    goto :goto_1

    :cond_6
    move v15, v2

    :goto_1
    const v16, 0x7fffffff

    const v17, 0x7fffffff

    const/high16 v18, -0x80000000

    const/high16 v19, -0x80000000

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v2, -0x1

    if-nez v13, :cond_7

    if-eqz v15, :cond_8

    :cond_7
    iget v14, v0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    if-eq v14, v2, :cond_8

    iget v14, v0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    invoke-virtual {v0, v14}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    :cond_8
    if-eq v6, v10, :cond_9

    const/4 v14, 0x1

    goto :goto_2

    :cond_9
    const/4 v14, 0x0

    :goto_2
    if-eq v7, v10, :cond_a

    const/16 v22, 0x1

    goto :goto_3

    :cond_a
    const/16 v22, 0x0

    :goto_3
    move/from16 v10, v22

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getLayoutDirection()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v23

    if-eqz v23, :cond_b

    move/from16 v23, v4

    const/4 v4, -0x1

    if-ne v1, v4, :cond_c

    const/high16 v1, 0x10000

    goto :goto_4

    :cond_b
    move/from16 v23, v4

    :cond_c
    :goto_4
    iget-object v4, v0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    move/from16 v22, v5

    array-length v5, v4

    const/16 v24, 0x0

    move/from16 v28, v6

    move/from16 v6, v24

    :goto_5
    move/from16 v29, v7

    if-ge v6, v5, :cond_e

    aget-object v7, v4, v6

    move-object/from16 v24, v4

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v4

    move/from16 v25, v5

    const/16 v5, 0x8

    if-eq v4, v5, :cond_d

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v5

    invoke-direct {v0, v4, v1, v5}, Landroid/widget/RelativeLayout;->applyHorizontalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;I[I)V

    invoke-direct {v0, v7, v4, v1, v3}, Landroid/widget/RelativeLayout;->measureChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V

    invoke-direct {v0, v7, v4, v1, v14}, Landroid/widget/RelativeLayout;->positionChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z

    move-result v26

    if-eqz v26, :cond_d

    const/16 v20, 0x1

    :cond_d
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, v24

    move/from16 v5, v25

    move/from16 v7, v29

    goto :goto_5

    :cond_e
    move-object/from16 v24, v4

    move/from16 v25, v5

    iget-object v4, v0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    array-length v5, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v7, 0x0

    move/from16 v30, v18

    move/from16 v31, v19

    move/from16 v19, v2

    move/from16 v18, v12

    move/from16 v12, v16

    move/from16 v2, v17

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v8, v22

    move v9, v7

    move/from16 v7, v23

    :goto_6
    if-ge v9, v5, :cond_1b

    move/from16 v32, v5

    aget-object v5, v4, v9

    move-object/from16 v33, v4

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v4

    move/from16 v22, v9

    const/16 v9, 0x8

    if-eq v4, v9, :cond_19

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5}, Landroid/view/View;->getBaseline()I

    move-result v9

    invoke-direct {v0, v4, v3, v9}, Landroid/widget/RelativeLayout;->applyVerticalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;II)V

    invoke-direct {v0, v5, v4, v1, v3}, Landroid/widget/RelativeLayout;->measureChild(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V

    invoke-direct {v0, v5, v4, v3, v10}, Landroid/widget/RelativeLayout;->positionChildVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z

    move-result v9

    if-eqz v9, :cond_f

    const/16 v21, 0x1

    :cond_f
    const/16 v9, 0x13

    if-eqz v14, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v23

    if-eqz v23, :cond_11

    if-ge v6, v9, :cond_10

    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v23

    sub-int v9, v1, v23

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    move/from16 v34, v3

    goto :goto_7

    :cond_10
    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v9

    sub-int v9, v1, v9

    move/from16 v34, v3

    iget v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v9, v3

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_7

    :cond_11
    move/from16 v34, v3

    const/16 v3, 0x13

    if-ge v6, v3, :cond_12

    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_7

    :cond_12
    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    iget v9, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v9

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_7

    :cond_13
    move/from16 v34, v3

    :goto_7
    if-eqz v10, :cond_15

    const/16 v3, 0x13

    if-ge v6, v3, :cond_14

    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_8

    :cond_14
    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    iget v9, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v9

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    :cond_15
    :goto_8
    if-ne v5, v11, :cond_16

    if-eqz v15, :cond_17

    :cond_16
    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    iget v9, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v3, v9

    invoke-static {v12, v3}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    iget v9, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr v3, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_17
    if-ne v5, v11, :cond_18

    if-eqz v13, :cond_1a

    :cond_18
    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    iget v9, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v9

    move/from16 v9, v30

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v9

    move/from16 v23, v2

    iget v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v9, v2

    move/from16 v2, v31

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v31, v2

    move/from16 v30, v3

    move/from16 v2, v23

    goto :goto_9

    :cond_19
    move/from16 v34, v3

    move/from16 v9, v30

    move/from16 v3, v31

    :cond_1a
    :goto_9
    add-int/lit8 v9, v22, 0x1

    move/from16 v5, v32

    move-object/from16 v4, v33

    move/from16 v3, v34

    goto/16 :goto_6

    :cond_1b
    move/from16 v34, v3

    move-object/from16 v33, v4

    move/from16 v32, v5

    move/from16 v22, v9

    move/from16 v9, v30

    move/from16 v3, v31

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v22, 0x0

    move/from16 v30, v6

    move/from16 v6, v22

    :goto_a
    move/from16 v31, v1

    move/from16 v1, v32

    if-ge v6, v1, :cond_1e

    aget-object v22, v33, v6

    move-object/from16 v32, v11

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getVisibility()I

    move-result v11

    move/from16 v35, v2

    const/16 v2, 0x8

    if-eq v11, v2, :cond_1d

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v4, :cond_1c

    if-eqz v5, :cond_1c

    invoke-direct {v0, v2, v5}, Landroid/widget/RelativeLayout;->compareLayoutPosition(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v11

    if-gez v11, :cond_1d

    :cond_1c
    move-object/from16 v4, v22

    move-object v5, v2

    :cond_1d
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v11, v32

    move/from16 v2, v35

    move/from16 v32, v1

    move/from16 v1, v31

    goto :goto_a

    :cond_1e
    move/from16 v35, v2

    move-object/from16 v32, v11

    iput-object v4, v0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    if-eqz v14, :cond_26

    iget v6, v0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    add-int/2addr v7, v6

    iget-object v6, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v6, :cond_1f

    iget-object v6, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v6, :cond_1f

    iget-object v6, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getSuggestedMinimumWidth()I

    move-result v6

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    move/from16 v11, p1

    invoke-static {v6, v11}, Landroid/widget/RelativeLayout;->resolveSize(II)I

    move-result v7

    if-eqz v20, :cond_25

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v1, :cond_24

    aget-object v2, v33, v6

    move-object/from16 v36, v4

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    move-object/from16 v37, v5

    const/16 v5, 0x8

    if-eq v4, v5, :cond_22

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    move/from16 v5, v19

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v19

    const/16 v22, 0xd

    aget v23, v19, v22

    if-nez v23, :cond_21

    const/16 v23, 0xe

    aget v23, v19, v23

    if-eqz v23, :cond_20

    goto :goto_c

    :cond_20
    const/16 v23, 0xb

    aget v23, v19, v23

    if-eqz v23, :cond_23

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    iget v11, v0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v11, v7, v11

    sub-int v11, v11, v23

    invoke-static {v4, v11}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v11

    add-int v11, v11, v23

    invoke-static {v4, v11}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_d

    :cond_21
    :goto_c
    invoke-static {v2, v4, v7}, Landroid/widget/RelativeLayout;->centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_d

    :cond_22
    move/from16 v5, v19

    :cond_23
    :goto_d
    add-int/lit8 v6, v6, 0x1

    move/from16 v11, p1

    move/from16 v19, v5

    move-object/from16 v4, v36

    move-object/from16 v5, v37

    goto :goto_b

    :cond_24
    move-object/from16 v36, v4

    move-object/from16 v37, v5

    move/from16 v5, v19

    goto :goto_e

    :cond_25
    move-object/from16 v36, v4

    move-object/from16 v37, v5

    move/from16 v5, v19

    goto :goto_e

    :cond_26
    move-object/from16 v36, v4

    move-object/from16 v37, v5

    move/from16 v5, v19

    :goto_e
    if-eqz v10, :cond_2e

    iget v2, v0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    add-int/2addr v8, v2

    iget-object v2, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v2, :cond_27

    iget-object v2, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v2, :cond_27

    iget-object v2, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    :cond_27
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v4, p2

    invoke-static {v2, v4}, Landroid/widget/RelativeLayout;->resolveSize(II)I

    move-result v8

    if-eqz v21, :cond_2d

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_2c

    aget-object v6, v33, v2

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v4, 0x8

    if-eq v11, v4, :cond_2b

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v11

    const/16 v19, 0xd

    aget v22, v11, v19

    if-nez v22, :cond_2a

    const/16 v22, 0xf

    aget v22, v11, v22

    if-eqz v22, :cond_28

    move/from16 v38, v10

    goto :goto_10

    :cond_28
    const/16 v22, 0xc

    aget v22, v11, v22

    if-eqz v22, :cond_29

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    move/from16 v38, v10

    iget v10, v0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int v10, v8, v10

    sub-int v10, v10, v22

    invoke-static {v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v10

    add-int v10, v10, v22

    invoke-static {v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_11

    :cond_29
    move/from16 v38, v10

    goto :goto_11

    :cond_2a
    move/from16 v38, v10

    :goto_10
    invoke-static {v6, v4, v8}, Landroid/widget/RelativeLayout;->centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_11

    :cond_2b
    move/from16 v38, v10

    const/16 v19, 0xd

    :goto_11
    add-int/lit8 v2, v2, 0x1

    move/from16 v4, p2

    move/from16 v10, v38

    goto :goto_f

    :cond_2c
    move/from16 v38, v10

    goto :goto_12

    :cond_2d
    move/from16 v38, v10

    goto :goto_12

    :cond_2e
    move/from16 v38, v10

    :goto_12
    if-nez v13, :cond_30

    if-eqz v15, :cond_2f

    goto :goto_13

    :cond_2f
    move/from16 v22, v3

    move-object/from16 v3, v32

    goto/16 :goto_18

    :cond_30
    :goto_13
    iget-object v2, v0, Landroid/widget/RelativeLayout;->mSelfBounds:Landroid/graphics/Rect;

    iget v4, v0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v6, v0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v10, v0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v10, v7, v10

    iget v11, v0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int v11, v8, v11

    invoke-virtual {v2, v4, v6, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, v0, Landroid/widget/RelativeLayout;->mContentBounds:Landroid/graphics/Rect;

    iget v6, v0, Landroid/widget/RelativeLayout;->mGravity:I

    sub-int v23, v9, v12

    sub-int v24, v3, v35

    move/from16 v22, v6

    move-object/from16 v25, v2

    move-object/from16 v26, v4

    move/from16 v27, v5

    invoke-static/range {v22 .. v27}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    iget v6, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v12

    iget v10, v4, Landroid/graphics/Rect;->top:I

    sub-int v10, v10, v35

    if-nez v6, :cond_32

    if-eqz v10, :cond_31

    goto :goto_14

    :cond_31
    move/from16 v22, v3

    move-object/from16 v3, v32

    goto/16 :goto_18

    :cond_32
    :goto_14
    const/4 v11, 0x0

    :goto_15
    if-ge v11, v1, :cond_37

    move-object/from16 v19, v2

    aget-object v2, v33, v11

    move/from16 v22, v3

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    move-object/from16 v23, v4

    const/16 v4, 0x8

    if-eq v3, v4, :cond_35

    move-object/from16 v3, v32

    if-eq v2, v3, :cond_34

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v13, :cond_33

    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v24

    move-object/from16 v25, v2

    add-int v2, v24, v6

    invoke-static {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    add-int/2addr v2, v6

    invoke-static {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_16

    :cond_33
    move-object/from16 v25, v2

    :goto_16
    if-eqz v15, :cond_36

    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    add-int/2addr v2, v10

    invoke-static {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    add-int/2addr v2, v10

    invoke-static {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_17

    :cond_34
    move-object/from16 v25, v2

    goto :goto_17

    :cond_35
    move-object/from16 v25, v2

    move-object/from16 v3, v32

    :cond_36
    :goto_17
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v32, v3

    move-object/from16 v2, v19

    move/from16 v3, v22

    move-object/from16 v4, v23

    goto :goto_15

    :cond_37
    move-object/from16 v19, v2

    move/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v3, v32

    :goto_18
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_39

    sub-int v2, v31, v7

    const/4 v4, 0x0

    :goto_19
    if-ge v4, v1, :cond_39

    aget-object v6, v33, v4

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_38

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v10}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v19

    sub-int v11, v19, v2

    invoke-static {v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    invoke-static {v10}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v11

    sub-int/2addr v11, v2

    invoke-static {v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_39
    invoke-virtual {v0, v7, v8}, Landroid/widget/RelativeLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public whitelist onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 4

    iget-boolean v0, p0, Landroid/widget/RelativeLayout;->mAppWidgetImmersiveEnabled:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onNestedPreScroll(Landroid/view/View;II[I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p3, :cond_2

    iget-object v2, p0, Landroid/widget/RelativeLayout;->mAppWidgetToolBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Landroid/widget/RelativeLayout;->mAppWidgetToolBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    if-le p3, v2, :cond_1

    iget-object v2, p0, Landroid/widget/RelativeLayout;->mAppWidgetToolBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    aput v2, p4, v1

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mAppWidgetToolBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    neg-int v0, v1

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mAppWidgetToolBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mAppWidgetListView:Landroid/widget/AbsListView;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->offsetTopAndBottom(I)V

    goto :goto_0

    :cond_1
    aput p3, p4, v1

    neg-int v0, p3

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mAppWidgetToolBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mAppWidgetListView:Landroid/widget/AbsListView;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->offsetTopAndBottom(I)V

    goto :goto_0

    :cond_2
    if-gez p3, :cond_4

    iget-object v2, p0, Landroid/widget/RelativeLayout;->mAppWidgetToolBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v3, p0, Landroid/widget/RelativeLayout;->mAppWidgetToolBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v2, p0, Landroid/widget/RelativeLayout;->mAppWidgetToolBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-ge p3, v2, :cond_3

    iget-object v2, p0, Landroid/widget/RelativeLayout;->mAppWidgetToolBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, p3, v2

    aput v2, p4, v1

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mAppWidgetToolBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v0, v1

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mAppWidgetToolBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mAppWidgetListView:Landroid/widget/AbsListView;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->offsetTopAndBottom(I)V

    goto :goto_0

    :cond_3
    aput p3, p4, v1

    neg-int v0, p3

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mAppWidgetToolBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mAppWidgetListView:Landroid/widget/AbsListView;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->offsetTopAndBottom(I)V

    :cond_4
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onNestedPreScroll(Landroid/view/View;II[I)V

    return-void
.end method

.method public whitelist onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/RelativeLayout;->mAppWidgetImmersiveEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public whitelist requestLayout()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    return-void
.end method

.method public blacklist semEnableAppWidgetImmersiveScroll(Z)V
    .locals 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "RelativeLayout"

    if-eq v0, v1, :cond_0

    const-string v0, "Invalid child count for ImmersiveScroll"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/AbsListView;

    if-nez v1, :cond_1

    const-string v0, "Second view must ListView"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/RelativeLayout;->mAppWidgetToolBar:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView;

    iput-object v1, p0, Landroid/widget/RelativeLayout;->mAppWidgetListView:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mAppWidgetListView:Landroid/widget/AbsListView;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->setNestedScrollingEnabled(Z)V

    new-instance v1, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$AppWidgetListScrollListener-IA;)V

    iput-object v1, p0, Landroid/widget/RelativeLayout;->mScrollListener:Landroid/widget/RelativeLayout$AppWidgetListScrollListener;

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mAppWidgetListView:Landroid/widget/AbsListView;

    iget-object v3, p0, Landroid/widget/RelativeLayout;->mScrollListener:Landroid/widget/RelativeLayout$AppWidgetListScrollListener;

    invoke-virtual {v1, v3}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iput-boolean v0, p0, Landroid/widget/RelativeLayout;->mAppWidgetImmersiveEnabled:Z

    new-instance v0, Landroid/widget/RelativeLayout$ReleaseScrollRunnable;

    invoke-direct {v0, p0, v2}, Landroid/widget/RelativeLayout$ReleaseScrollRunnable;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$ReleaseScrollRunnable-IA;)V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mReleaseScrollRunnable:Landroid/widget/RelativeLayout$ReleaseScrollRunnable;

    new-instance v0, Landroid/widget/RelativeLayout$ExpandTopBarRunnable;

    invoke-direct {v0, p0, v2}, Landroid/widget/RelativeLayout$ExpandTopBarRunnable;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$ExpandTopBarRunnable-IA;)V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mExpandTopBarRunnable:Landroid/widget/RelativeLayout$ExpandTopBarRunnable;

    return-void
.end method

.method public blacklist semSetListViewId(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const-string v0, "RelativeLayout"

    const-string v1, "This appwidget feature is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist semSetToolBarViewId(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const-string v0, "RelativeLayout"

    const-string v1, "This appwidget feature is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist setGravity(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    if-eq v0, p1, :cond_2

    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const v0, 0x800003

    or-int/2addr p1, v0

    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    or-int/lit8 p1, p1, 0x30

    :cond_1
    iput p1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_2
    return-void
.end method

.method public whitelist setHorizontalGravity(I)V
    .locals 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const v0, 0x800007

    and-int v1, p1, v0

    iget v2, p0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/2addr v0, v2

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    const v2, -0x800008

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public whitelist setIgnoreGravity(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    return-void
.end method

.method public whitelist setVerticalGravity(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    and-int/lit8 v0, p1, 0x70

    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    if-eq v1, v0, :cond_0

    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public whitelist shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
