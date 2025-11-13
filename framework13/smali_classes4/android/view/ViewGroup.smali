.class public abstract Landroid/view/ViewGroup;
.super Landroid/view/View;
.source "ViewGroup.java"

# interfaces
.implements Landroid/view/ViewParent;
.implements Landroid/view/ViewManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewGroup$ViewLocationHolder;,
        Landroid/view/ViewGroup$ChildListForAccessibility;,
        Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;,
        Landroid/view/ViewGroup$HoverTarget;,
        Landroid/view/ViewGroup$TouchTarget;,
        Landroid/view/ViewGroup$MarginLayoutParams;,
        Landroid/view/ViewGroup$LayoutParams;,
        Landroid/view/ViewGroup$OnHierarchyChangeListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o ARRAY_CAPACITY_INCREMENT:I = 0xc

.field private static final greylist-max-o ARRAY_INITIAL_CAPACITY:I = 0xc

.field private static final greylist-max-o CHILD_LEFT_INDEX:I = 0x0

.field private static final greylist-max-o CHILD_TOP_INDEX:I = 0x1

.field protected static final whitelist CLIP_TO_PADDING_MASK:I = 0x22

.field private static final greylist-max-r DBG:Z = false

.field private static final greylist-max-o DESCENDANT_FOCUSABILITY_FLAGS:[I

.field private static final greylist-max-o FLAG_ADD_STATES_FROM_CHILDREN:I = 0x2000

.field private static final greylist-max-o FLAG_ALWAYS_DRAWN_WITH_CACHE:I = 0x4000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o FLAG_ANIMATION_CACHE:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final greylist-max-o FLAG_ANIMATION_DONE:I = 0x10

.field private static final greylist-max-o FLAG_CHILDREN_DRAWN_WITH_CACHE:I = 0x8000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final greylist-max-o FLAG_CLEAR_TRANSFORMATION:I = 0x100

.field static final greylist-max-o FLAG_CLIP_CHILDREN:I = 0x1

.field private static final greylist-max-o FLAG_CLIP_TO_PADDING:I = 0x2

.field protected static final greylist-max-p FLAG_DISALLOW_INTERCEPT:I = 0x80000

.field static final greylist-max-o FLAG_INVALIDATE_REQUIRED:I = 0x4

.field static final greylist-max-o FLAG_IS_TRANSITION_GROUP:I = 0x1000000

.field static final greylist-max-o FLAG_IS_TRANSITION_GROUP_SET:I = 0x2000000

.field private static final greylist-max-o FLAG_LAYOUT_MODE_WAS_EXPLICITLY_SET:I = 0x800000

.field private static final greylist-max-o FLAG_MASK_FOCUSABILITY:I = 0x60000

.field private static final greylist-max-o FLAG_NOTIFY_ANIMATION_LISTENER:I = 0x200

.field private static final greylist-max-o FLAG_NOTIFY_CHILDREN_ON_DRAWABLE_STATE_CHANGE:I = 0x10000

.field static final greylist-max-o FLAG_OPTIMIZE_INVALIDATE:I = 0x80

.field private static final greylist-max-o FLAG_PADDING_NOT_NULL:I = 0x20

.field private static final greylist-max-o FLAG_PREVENT_DISPATCH_ATTACHED_TO_WINDOW:I = 0x400000

.field private static final greylist-max-o FLAG_RUN_ANIMATION:I = 0x8

.field private static final greylist-max-o FLAG_SHOW_CONTEXT_MENU_WITH_COORDS:I = 0x20000000

.field private static final greylist-max-o FLAG_SPLIT_MOTION_EVENTS:I = 0x200000

.field private static final greylist-max-o FLAG_START_ACTION_MODE_FOR_CHILD_IS_NOT_TYPED:I = 0x10000000

.field private static final greylist-max-o FLAG_START_ACTION_MODE_FOR_CHILD_IS_TYPED:I = 0x8000000

.field protected static final greylist-max-p FLAG_SUPPORT_STATIC_TRANSFORMATIONS:I = 0x800

.field static final greylist-max-o FLAG_TOUCHSCREEN_BLOCKS_FOCUS:I = 0x4000000

.field protected static final greylist-max-p FLAG_USE_CHILD_DRAWING_ORDER:I = 0x400

.field public static final whitelist FOCUS_AFTER_DESCENDANTS:I = 0x40000

.field public static final whitelist FOCUS_BEFORE_DESCENDANTS:I = 0x20000

.field public static final whitelist FOCUS_BLOCK_DESCENDANTS:I = 0x60000

.field public static final whitelist LAYOUT_MODE_CLIP_BOUNDS:I = 0x0

.field public static greylist-max-o LAYOUT_MODE_DEFAULT:I = 0x0

.field public static final whitelist LAYOUT_MODE_OPTICAL_BOUNDS:I = 0x1

.field private static final greylist-max-o LAYOUT_MODE_UNDEFINED:I = -0x1

.field public static final whitelist PERSISTENT_ALL_CACHES:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PERSISTENT_ANIMATION_CACHE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PERSISTENT_NO_CACHE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PERSISTENT_SCROLLING_CACHE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ViewGroup"

.field private static greylist-max-o sDebugLines:[F


# instance fields
.field private greylist-max-o mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field greylist-max-o mCachePaint:Landroid/graphics/Paint;

.field private greylist-max-o mChildCountWithTransientState:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private greylist-max-o mChildTransformation:Landroid/view/animation/Transformation;

.field greylist-max-o mChildUnhandledKeyListeners:I

.field private greylist-max-p mChildren:[Landroid/view/View;

.field private greylist-max-p mChildrenCount:I

.field private greylist-max-o mChildrenInterestedInDrag:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mCurrentDragChild:Landroid/view/View;

.field private greylist-max-o mCurrentDragStartEvent:Landroid/view/DragEvent;

.field private greylist-max-o mDefaultFocus:Landroid/view/View;

.field protected greylist mDisappearingChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

.field private greylist mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

.field private greylist-max-p mFocused:Landroid/view/View;

.field greylist-max-o mFocusedInCluster:Landroid/view/View;

.field protected greylist-max-p mGroupFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "CLIP_CHILDREN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "CLIP_TO_PADDING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "PADDING_NOT_NULL"
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field private greylist-max-o mHoveredSelf:Z

.field private blacklist mInsetsAnimationDispatchMode:I

.field greylist-max-o mInvalidateRegion:Landroid/graphics/RectF;

.field greylist-max-o mInvalidationTransformation:Landroid/view/animation/Transformation;

.field private greylist-max-o mIsInterestedInDrag:Z

.field private greylist-max-o mLastTouchDownIndex:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private greylist-max-o mLastTouchDownTime:J
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private greylist-max-o mLastTouchDownX:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private greylist-max-o mLastTouchDownY:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private greylist-max-o mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

.field private greylist-max-o mLayoutCalledWhileSuppressed:Z

.field private greylist-max-o mLayoutMode:I

.field private greylist-max-o mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

.field private greylist-max-o mLocalPoint:Landroid/graphics/PointF;

.field private greylist-max-o mNestedScrollAxes:I

.field protected greylist-max-p mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field protected greylist mPersistentDrawingCache:I

.field private greylist-max-o mPreSortedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSemHorizontalScrollbarRectRelativePosX:I

.field private blacklist mSemVerticalScrollbarRectRelativePosY:I

.field private blacklist mSemX:F

.field private blacklist mSemY:F

.field greylist-max-o mSuppressLayout:Z

.field private blacklist mTempLocation:[I

.field private blacklist mTempPoint:Landroid/graphics/Point;

.field private blacklist mTempPosition:[F

.field private blacklist mTempRect:Landroid/graphics/Rect;

.field private greylist-max-o mTooltipHoverTarget:Landroid/view/View;

.field private greylist-max-o mTooltipHoveredSelf:Z

.field private blacklist mTransientIndices:Landroid/util/IntArray;

.field private greylist-max-o mTransientViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mTransition:Landroid/animation/LayoutTransition;

.field private greylist-max-o mTransitioningViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mVisibilityChangingChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAnimationListener(Landroid/view/ViewGroup;)Landroid/view/animation/Animation$AnimationListener;
    .locals 0

    iget-object p0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLayoutAnimationController(Landroid/view/ViewGroup;)Landroid/view/animation/LayoutAnimationController;
    .locals 0

    iget-object p0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLayoutCalledWhileSuppressed(Landroid/view/ViewGroup;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransitioningViews(Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLayoutCalledWhileSuppressed(Landroid/view/ViewGroup;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyAnimationListener(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ViewGroup;->notifyAnimationListener()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smfillDifference(Landroid/graphics/Canvas;IIIIIIIILandroid/graphics/Paint;)V
    .locals 0

    invoke-static/range {p0 .. p9}, Landroid/view/ViewGroup;->fillDifference(Landroid/graphics/Canvas;IIIIIIIILandroid/graphics/Paint;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 388
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/view/ViewGroup;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    .line 558
    const/4 v0, 0x0

    sput v0, Landroid/view/ViewGroup;->LAYOUT_MODE_DEFAULT:I

    .line 646
    new-instance v0, Landroid/view/ViewGroup$1;

    invoke-direct {v0}, Landroid/view/ViewGroup$1;-><init>()V

    sput-object v0, Landroid/view/ViewGroup;->SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

    return-void

    nop

    :array_0
    .array-data 4
        0x20000
        0x40000
        0x60000
    .end array-data
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 695
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 696
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 699
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 700
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 703
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 704
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 707
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 226
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 273
    iput v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    .line 581
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    .line 586
    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    .line 613
    iput v0, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    .line 624
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    .line 625
    iput-object v1, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    .line 631
    iput v0, p0, Landroid/view/ViewGroup;->mChildUnhandledKeyListeners:I

    .line 638
    const/4 v1, 0x1

    iput v1, p0, Landroid/view/ViewGroup;->mInsetsAnimationDispatchMode:I

    .line 2684
    iput v0, p0, Landroid/view/ViewGroup;->mSemHorizontalScrollbarRectRelativePosX:I

    .line 2685
    iput v0, p0, Landroid/view/ViewGroup;->mSemVerticalScrollbarRectRelativePosY:I

    .line 7577
    new-instance v0, Landroid/view/ViewGroup$4;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$4;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    .line 709
    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    .line 710
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 711
    return-void
.end method

.method private greylist-max-o addDisappearingView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 7470
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 7472
    .local v0, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v0, :cond_0

    .line 7473
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    move-object v0, v1

    .line 7476
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7477
    return-void
.end method

.method private greylist-max-o addInArray(Landroid/view/View;I)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 5581
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5582
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5583
    .local v1, "count":I
    array-length v2, v0

    .line 5584
    .local v2, "size":I
    const/4 v3, 0x0

    if-ne p2, v1, :cond_1

    .line 5585
    if-ne v2, v1, :cond_0

    .line 5586
    add-int/lit8 v4, v2, 0xc

    new-array v4, v4, [Landroid/view/View;

    iput-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5587
    invoke-static {v0, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5588
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5590
    :cond_0
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object p1, v0, v3

    goto :goto_1

    .line 5591
    :cond_1
    if-ge p2, v1, :cond_4

    .line 5592
    if-ne v2, v1, :cond_2

    .line 5593
    add-int/lit8 v4, v2, 0xc

    new-array v4, v4, [Landroid/view/View;

    iput-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5594
    invoke-static {v0, v3, v4, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5595
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    add-int/lit8 v4, p2, 0x1

    sub-int v5, v1, p2

    invoke-static {v0, p2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5596
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    goto :goto_0

    .line 5598
    :cond_2
    add-int/lit8 v3, p2, 0x1

    sub-int v4, v1, p2

    invoke-static {v0, p2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5600
    :goto_0
    aput-object p1, v0, p2

    .line 5601
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5602
    iget v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-lt v3, p2, :cond_3

    .line 5603
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 5608
    :cond_3
    :goto_1
    return-void

    .line 5606
    :cond_4
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private greylist-max-o addTouchTarget(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerIdBits"    # I

    .line 3156
    invoke-static {p1, p2}, Landroid/view/ViewGroup$TouchTarget;->obtain(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v0

    .line 3157
    .local v0, "target":Landroid/view/ViewGroup$TouchTarget;
    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    iput-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 3158
    iput-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 3159
    return-object v0
.end method

.method private greylist-max-o addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p4, "preventRequestLayout"    # Z

    .line 5470
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_0

    .line 5473
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->cancel(I)V

    .line 5476
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_12

    .line 5481
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_1

    .line 5482
    invoke-virtual {v0, p0, p1}, Landroid/animation/LayoutTransition;->addChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 5485
    :cond_1
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5486
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 5489
    :cond_2
    if-eqz p4, :cond_3

    .line 5490
    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0

    .line 5492
    :cond_3
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5495
    :goto_0
    if-gez p2, :cond_4

    .line 5496
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5499
    :cond_4
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 5502
    if-eqz p4, :cond_5

    .line 5503
    invoke-virtual {p1, p0}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    goto :goto_1

    .line 5505
    :cond_5
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5507
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->hasUnhandledKeyListener()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5508
    invoke-virtual {p0}, Landroid/view/ViewGroup;->incrementChildUnhandledKeyListeners()V

    .line 5511
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    .line 5512
    .local v0, "childHasFocus":Z
    if-eqz v0, :cond_7

    .line 5513
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 5516
    :cond_7
    iget-object v1, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 5517
    .local v1, "ai":Landroid/view/View$AttachInfo;
    const/high16 v2, 0x400000

    const/4 v3, 0x1

    if-eqz v1, :cond_9

    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v4, v2

    if-nez v4, :cond_9

    .line 5518
    iget-boolean v4, v1, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 5519
    .local v4, "lastKeepOn":Z
    const/4 v5, 0x0

    iput-boolean v5, v1, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 5520
    iget-object v5, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v6, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    invoke-virtual {p1, v5, v6}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 5521
    iget-boolean v5, v1, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-eqz v5, :cond_8

    .line 5522
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 5524
    :cond_8
    iput-boolean v4, v1, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 5527
    .end local v4    # "lastKeepOn":Z
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 5528
    invoke-virtual {p1}, Landroid/view/View;->resetRtlProperties()V

    .line 5531
    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchViewAdded(Landroid/view/View;)V

    .line 5533
    iget v4, p1, Landroid/view/View;->mViewFlags:I

    and-int/2addr v4, v2

    if-ne v4, v2, :cond_b

    .line 5534
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v4, 0x10000

    or-int/2addr v2, v4

    iput v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 5537
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 5538
    invoke-virtual {p0, p1, v3}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 5541
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_d

    .line 5542
    invoke-virtual {p0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 5545
    :cond_d
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    if-eqz v2, :cond_f

    .line 5546
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    .line 5547
    .local v2, "transientCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_f

    .line 5548
    iget-object v4, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v4, v3}, Landroid/util/IntArray;->get(I)I

    move-result v4

    .line 5549
    .local v4, "oldIndex":I
    if-gt p2, v4, :cond_e

    .line 5550
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v3, v6}, Landroid/util/IntArray;->set(II)V

    .line 5547
    .end local v4    # "oldIndex":I
    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 5555
    .end local v2    # "transientCount":I
    .end local v3    # "i":I
    :cond_f
    iget-object v2, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    if-eqz v2, :cond_10

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_10

    .line 5556
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->notifyChildOfDragStart(Landroid/view/View;)Z

    .line 5559
    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->hasDefaultFocus()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 5562
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setDefaultFocus(Landroid/view/View;)V

    .line 5565
    :cond_11
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->touchAccessibilityNodeProviderIfNeeded(Landroid/view/View;)V

    .line 5566
    return-void

    .line 5477
    .end local v0    # "childHasFocus":Z
    .end local v1    # "ai":Landroid/view/View$AttachInfo;
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The specified child already has a parent. You must call removeView() on the child\'s parent first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist applyOpToRegionByBounds(Landroid/graphics/Region;Landroid/view/View;Landroid/graphics/Region$Op;)V
    .locals 9
    .param p0, "region"    # Landroid/graphics/Region;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "op"    # Landroid/graphics/Region$Op;

    .line 7706
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 7707
    .local v0, "locationInWindow":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 7708
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 7709
    .local v1, "x":I
    const/4 v2, 0x1

    aget v8, v0, v2

    .line 7710
    .local v8, "y":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int v5, v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int v6, v8, v2

    move-object v2, p0

    move v3, v1

    move v4, v8

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 7711
    return-void
.end method

.method private greylist-max-o bindLayoutAnimation(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 5672
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v0, p1}, Landroid/view/animation/LayoutAnimationController;->getAnimationForView(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 5673
    .local v0, "a":Landroid/view/animation/Animation;
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 5674
    return-void
.end method

.method private blacklist brokenDispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 7727
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7728
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7729
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 7730
    invoke-virtual {p1}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7731
    goto :goto_1

    .line 7728
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7734
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-object p1
.end method

.method private greylist-max-o cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 3116
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v0, :cond_2

    .line 3117
    const/4 v0, 0x0

    .line 3118
    .local v0, "syntheticEvent":Z
    if-nez p1, :cond_0

    .line 3119
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 3120
    .local v9, "now":J
    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v3, v9

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 3122
    const/16 v1, 0x1002

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 3123
    const/4 v0, 0x1

    .line 3126
    .end local v9    # "now":J
    :cond_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .local v1, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    if-eqz v1, :cond_1

    .line 3127
    iget-object v2, v1, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    invoke-static {v2}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 3128
    const/4 v2, 0x1

    iget-object v3, v1, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    iget v4, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    invoke-direct {p0, p1, v2, v3, v4}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    .line 3126
    iget-object v1, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_0

    .line 3130
    .end local v1    # "target":Landroid/view/ViewGroup$TouchTarget;
    :cond_1
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearTouchTargets()V

    .line 3132
    if-eqz v0, :cond_2

    iget-boolean v1, p1, Landroid/view/MotionEvent;->mRecycled:Z

    if-nez v1, :cond_2

    .line 3133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 3136
    .end local v0    # "syntheticEvent":Z
    :cond_2
    return-void
.end method

.method private greylist-max-o cancelHoverTarget(Landroid/view/View;)V
    .locals 14
    .param p1, "view"    # Landroid/view/View;

    .line 2325
    const/4 v0, 0x0

    .line 2326
    .local v0, "predecessor":Landroid/view/ViewGroup$HoverTarget;
    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 2327
    .local v1, "target":Landroid/view/ViewGroup$HoverTarget;
    :goto_0
    if-eqz v1, :cond_2

    .line 2328
    iget-object v2, v1, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 2329
    .local v2, "next":Landroid/view/ViewGroup$HoverTarget;
    iget-object v3, v1, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    if-ne v3, p1, :cond_1

    .line 2330
    if-nez v0, :cond_0

    .line 2331
    iput-object v2, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_1

    .line 2333
    :cond_0
    iput-object v2, v0, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 2335
    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewGroup$HoverTarget;->recycle()V

    .line 2337
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 2338
    .local v12, "now":J
    const/16 v8, 0xa

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v4, v12

    move-wide v6, v12

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    .line 2340
    .local v3, "event":Landroid/view/MotionEvent;
    const/16 v4, 0x1002

    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->setSource(I)V

    .line 2341
    invoke-virtual {p1, v3}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2342
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 2343
    return-void

    .line 2345
    .end local v3    # "event":Landroid/view/MotionEvent;
    .end local v12    # "now":J
    :cond_1
    move-object v0, v1

    .line 2346
    move-object v1, v2

    .line 2347
    .end local v2    # "next":Landroid/view/ViewGroup$HoverTarget;
    goto :goto_0

    .line 2348
    :cond_2
    return-void
.end method

.method private greylist cancelTouchTarget(Landroid/view/View;)V
    .locals 14
    .param p1, "view"    # Landroid/view/View;

    .line 3190
    const/4 v0, 0x0

    .line 3191
    .local v0, "predecessor":Landroid/view/ViewGroup$TouchTarget;
    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 3192
    .local v1, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    if-eqz v1, :cond_2

    .line 3193
    iget-object v2, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 3194
    .local v2, "next":Landroid/view/ViewGroup$TouchTarget;
    iget-object v3, v1, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-ne v3, p1, :cond_1

    .line 3195
    if-nez v0, :cond_0

    .line 3196
    iput-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_1

    .line 3198
    :cond_0
    iput-object v2, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 3200
    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 3202
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 3203
    .local v12, "now":J
    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v4, v12

    move-wide v6, v12

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    .line 3205
    .local v3, "event":Landroid/view/MotionEvent;
    const/16 v4, 0x1002

    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->setSource(I)V

    .line 3206
    invoke-virtual {p1, v3}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 3207
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 3208
    return-void

    .line 3210
    .end local v3    # "event":Landroid/view/MotionEvent;
    .end local v12    # "now":J
    :cond_1
    move-object v0, v1

    .line 3211
    move-object v1, v2

    .line 3212
    .end local v2    # "next":Landroid/view/ViewGroup$TouchTarget;
    goto :goto_0

    .line 3213
    :cond_2
    return-void
.end method

.method private greylist-max-o clearCachedLayoutMode()V
    .locals 1

    .line 5392
    const/high16 v0, 0x800000

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5393
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    .line 5395
    :cond_0
    return-void
.end method

.method private greylist-max-o clearTouchTargets()V
    .locals 2

    .line 3101
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 3102
    .local v0, "target":Landroid/view/ViewGroup$TouchTarget;
    if-eqz v0, :cond_1

    .line 3104
    :cond_0
    iget-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 3105
    .local v1, "next":Landroid/view/ViewGroup$TouchTarget;
    invoke-virtual {v0}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 3106
    move-object v0, v1

    .line 3107
    .end local v1    # "next":Landroid/view/ViewGroup$TouchTarget;
    if-nez v0, :cond_0

    .line 3108
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 3110
    :cond_1
    return-void
.end method

.method private greylist-max-o dispatchResolvePointerIcon(Landroid/view/MotionEvent;ILandroid/view/View;)Landroid/view/PointerIcon;
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I
    .param p3, "child"    # Landroid/view/View;

    .line 2093
    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2094
    invoke-direct {p0, p1, p3}, Landroid/view/ViewGroup;->getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 2095
    .local v0, "transformedEvent":Landroid/view/MotionEvent;
    invoke-virtual {p3, v0, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v1

    .line 2096
    .local v1, "pointerIcon":Landroid/view/PointerIcon;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 2097
    .end local v0    # "transformedEvent":Landroid/view/MotionEvent;
    goto :goto_0

    .line 2098
    .end local v1    # "pointerIcon":Landroid/view/PointerIcon;
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v1, p3, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 2099
    .local v0, "offsetX":F
    iget v1, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v2, p3, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 2100
    .local v1, "offsetY":F
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2101
    invoke-virtual {p3, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v2

    .line 2102
    .local v2, "pointerIcon":Landroid/view/PointerIcon;
    neg-float v3, v0

    neg-float v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    move-object v1, v2

    .line 2104
    .end local v0    # "offsetX":F
    .end local v2    # "pointerIcon":Landroid/view/PointerIcon;
    .local v1, "pointerIcon":Landroid/view/PointerIcon;
    :goto_0
    return-object v1
.end method

.method private greylist-max-o dispatchTooltipHoverEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "child"    # Landroid/view/View;

    .line 2431
    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2432
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 2433
    .local v0, "transformedEvent":Landroid/view/MotionEvent;
    invoke-virtual {p2, v0}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 2434
    .local v1, "result":Z
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 2435
    .end local v0    # "transformedEvent":Landroid/view/MotionEvent;
    goto :goto_0

    .line 2436
    .end local v1    # "result":Z
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v1, p2, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 2437
    .local v0, "offsetX":F
    iget v1, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v2, p2, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 2438
    .local v1, "offsetY":F
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2439
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 2440
    .local v2, "result":Z
    neg-float v3, v0

    neg-float v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    move v1, v2

    .line 2442
    .end local v0    # "offsetX":F
    .end local v2    # "result":Z
    .local v1, "result":Z
    :goto_0
    return v1
.end method

.method private greylist-max-o dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "child"    # Landroid/view/View;

    .line 2608
    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2609
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 2610
    .local v0, "transformedEvent":Landroid/view/MotionEvent;
    invoke-virtual {p2, v0}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 2611
    .local v1, "handled":Z
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 2612
    .end local v0    # "transformedEvent":Landroid/view/MotionEvent;
    goto :goto_0

    .line 2613
    .end local v1    # "handled":Z
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v1, p2, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 2614
    .local v0, "offsetX":F
    iget v1, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v2, p2, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 2615
    .local v1, "offsetY":F
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2616
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 2617
    .local v2, "handled":Z
    neg-float v3, v0

    neg-float v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    move v1, v2

    .line 2619
    .end local v0    # "offsetX":F
    .end local v2    # "handled":Z
    .local v1, "handled":Z
    :goto_0
    return v1
.end method

.method private greylist-max-o dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "cancel"    # Z
    .param p3, "child"    # Landroid/view/View;
    .param p4, "desiredPointerIdBits"    # I

    .line 3280
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3281
    .local v0, "oldAction":I
    const/4 v1, 0x3

    if-nez p2, :cond_8

    if-ne v0, v1, :cond_0

    goto/16 :goto_4

    .line 3293
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v1

    .line 3294
    .local v1, "oldPointerIdBits":I
    and-int v2, v1, p4

    .line 3298
    .local v2, "newPointerIdBits":I
    if-nez v2, :cond_1

    .line 3299
    const/4 v3, 0x0

    return v3

    .line 3307
    :cond_1
    if-ne v2, v1, :cond_5

    .line 3308
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 3322
    :cond_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .local v3, "transformedEvent":Landroid/view/MotionEvent;
    goto :goto_2

    .line 3309
    .end local v3    # "transformedEvent":Landroid/view/MotionEvent;
    :cond_3
    :goto_0
    if-nez p3, :cond_4

    .line 3310
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .local v3, "handled":Z
    goto :goto_1

    .line 3312
    .end local v3    # "handled":Z
    :cond_4
    iget v3, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v4, p3, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 3313
    .local v3, "offsetX":F
    iget v4, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v5, p3, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 3314
    .local v4, "offsetY":F
    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3316
    invoke-virtual {p3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 3318
    .local v5, "handled":Z
    neg-float v6, v3

    neg-float v7, v4

    invoke-virtual {p1, v6, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    move v3, v5

    .line 3320
    .end local v4    # "offsetY":F
    .end local v5    # "handled":Z
    .local v3, "handled":Z
    :goto_1
    return v3

    .line 3324
    .end local v3    # "handled":Z
    :cond_5
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object v3

    .line 3328
    .local v3, "transformedEvent":Landroid/view/MotionEvent;
    :goto_2
    if-nez p3, :cond_6

    .line 3329
    invoke-super {p0, v3}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .local v4, "handled":Z
    goto :goto_3

    .line 3331
    .end local v4    # "handled":Z
    :cond_6
    iget v4, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v5, p3, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 3332
    .local v4, "offsetX":F
    iget v5, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v6, p3, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 3333
    .local v5, "offsetY":F
    invoke-virtual {v3, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3334
    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v6

    if-nez v6, :cond_7

    .line 3335
    invoke-virtual {p3}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 3338
    :cond_7
    invoke-virtual {p3, v3}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    move v4, v6

    .line 3342
    .end local v5    # "offsetY":F
    .local v4, "handled":Z
    :goto_3
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 3343
    return v4

    .line 3282
    .end local v1    # "oldPointerIdBits":I
    .end local v2    # "newPointerIdBits":I
    .end local v3    # "transformedEvent":Landroid/view/MotionEvent;
    .end local v4    # "handled":Z
    :cond_8
    :goto_4
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 3283
    if-nez p3, :cond_9

    .line 3284
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .local v1, "handled":Z
    goto :goto_5

    .line 3286
    .end local v1    # "handled":Z
    :cond_9
    invoke-virtual {p3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 3288
    .restart local v1    # "handled":Z
    :goto_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 3289
    return v1
.end method

.method private static greylist-max-o drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V
    .locals 7
    .param p0, "c"    # Landroid/graphics/Canvas;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "x1"    # I
    .param p3, "y1"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I
    .param p6, "lw"    # I

    .line 4343
    add-int v4, p2, p4

    invoke-static {p5}, Landroid/view/ViewGroup;->sign(I)I

    move-result v0

    mul-int/2addr v0, p6

    add-int v5, p3, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 4344
    invoke-static {p4}, Landroid/view/ViewGroup;->sign(I)I

    move-result v0

    mul-int/2addr v0, p6

    add-int v5, p2, v0

    add-int v6, p3, p5

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v1 .. v6}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 4345
    return-void
.end method

.method private static greylist-max-o drawRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V
    .locals 3
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "x1"    # I
    .param p3, "y1"    # I
    .param p4, "x2"    # I
    .param p5, "y2"    # I

    .line 9602
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    if-nez v0, :cond_0

    .line 9604
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    .line 9607
    :cond_0
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x0

    int-to-float v2, p2

    aput v2, v0, v1

    .line 9608
    const/4 v1, 0x1

    int-to-float v2, p3

    aput v2, v0, v1

    .line 9609
    const/4 v1, 0x2

    int-to-float v2, p4

    aput v2, v0, v1

    .line 9610
    const/4 v1, 0x3

    int-to-float v2, p3

    aput v2, v0, v1

    .line 9612
    const/4 v1, 0x4

    int-to-float v2, p4

    aput v2, v0, v1

    .line 9613
    const/4 v1, 0x5

    int-to-float v2, p3

    aput v2, v0, v1

    .line 9614
    const/4 v1, 0x6

    int-to-float v2, p4

    aput v2, v0, v1

    .line 9615
    const/4 v1, 0x7

    int-to-float v2, p5

    aput v2, v0, v1

    .line 9617
    const/16 v1, 0x8

    int-to-float v2, p4

    aput v2, v0, v1

    .line 9618
    const/16 v1, 0x9

    int-to-float v2, p5

    aput v2, v0, v1

    .line 9619
    const/16 v1, 0xa

    int-to-float v2, p2

    aput v2, v0, v1

    .line 9620
    const/16 v1, 0xb

    int-to-float v2, p5

    aput v2, v0, v1

    .line 9622
    const/16 v1, 0xc

    int-to-float v2, p2

    aput v2, v0, v1

    .line 9623
    const/16 v1, 0xd

    int-to-float v2, p5

    aput v2, v0, v1

    .line 9624
    const/16 v1, 0xe

    int-to-float v2, p2

    aput v2, v0, v1

    .line 9625
    const/16 v1, 0xf

    int-to-float v2, p3

    aput v2, v0, v1

    .line 9627
    invoke-virtual {p0, v0, p1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 9628
    return-void
.end method

.method private static greylist-max-o drawRectCorners(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;II)V
    .locals 15
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "lineLength"    # I
    .param p7, "lineWidth"    # I

    .line 4349
    move/from16 v7, p6

    move-object v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p6

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-static/range {v0 .. v6}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    .line 4350
    neg-int v5, v7

    move/from16 v3, p4

    invoke-static/range {v0 .. v6}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    .line 4351
    neg-int v4, v7

    move/from16 v2, p3

    move/from16 v3, p2

    move/from16 v5, p6

    invoke-static/range {v0 .. v6}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    .line 4352
    neg-int v12, v7

    neg-int v13, v7

    move-object v8, p0

    move-object/from16 v9, p5

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v14, p7

    invoke-static/range {v8 .. v14}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    .line 4353
    return-void
.end method

.method private greylist-max-o exitHoverTargets()V
    .locals 11

    .line 2314
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    if-eqz v0, :cond_1

    .line 2315
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2316
    .local v9, "now":J
    const/16 v5, 0xa

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v3, v9

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 2318
    .local v0, "event":Landroid/view/MotionEvent;
    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 2319
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2320
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 2322
    .end local v0    # "event":Landroid/view/MotionEvent;
    .end local v9    # "now":J
    :cond_1
    return-void
.end method

.method private greylist-max-o exitTooltipHoverTargets()V
    .locals 11

    .line 2446
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2447
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2448
    .local v9, "now":J
    const/16 v5, 0xa

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v3, v9

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 2450
    .local v0, "event":Landroid/view/MotionEvent;
    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 2451
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2452
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 2454
    .end local v0    # "event":Landroid/view/MotionEvent;
    .end local v9    # "now":J
    :cond_1
    return-void
.end method

.method private static greylist-max-o fillDifference(Landroid/graphics/Canvas;IIIIIIIILandroid/graphics/Paint;)V
    .locals 10
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "x2"    # I
    .param p2, "y2"    # I
    .param p3, "x3"    # I
    .param p4, "y3"    # I
    .param p5, "dx1"    # I
    .param p6, "dy1"    # I
    .param p7, "dx2"    # I
    .param p8, "dy2"    # I
    .param p9, "paint"    # Landroid/graphics/Paint;

    .line 4358
    sub-int v6, p1, p5

    .line 4359
    .local v6, "x1":I
    sub-int v7, p2, p6

    .line 4361
    .local v7, "y1":I
    add-int v8, p3, p7

    .line 4362
    .local v8, "x4":I
    add-int v9, p4, p8

    .line 4364
    .local v9, "y4":I
    move-object v0, p0

    move-object/from16 v1, p9

    move v2, v6

    move v3, v7

    move v4, v8

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 4365
    move v3, p2

    move v4, p1

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 4366
    move v2, p3

    move v4, v8

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 4367
    move v2, v6

    move v3, p4

    move v5, v9

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 4368
    return-void
.end method

.method private static greylist-max-o fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V
    .locals 6
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "x1"    # I
    .param p3, "y1"    # I
    .param p4, "x2"    # I
    .param p5, "y2"    # I

    .line 4327
    if-eq p2, p4, :cond_2

    if-eq p3, p5, :cond_2

    .line 4328
    if-le p2, p4, :cond_0

    .line 4329
    move v0, p2

    .local v0, "tmp":I
    move p2, p4

    move p4, v0

    .line 4331
    .end local v0    # "tmp":I
    :cond_0
    if-le p3, p5, :cond_1

    .line 4332
    move v0, p3

    .restart local v0    # "tmp":I
    move p3, p5

    move p5, v0

    .line 4334
    .end local v0    # "tmp":I
    :cond_1
    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 4336
    :cond_2
    return-void
.end method

.method private greylist-max-o findChildWithAccessibilityFocus()Landroid/view/View;
    .locals 5

    .line 3053
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 3054
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3055
    return-object v1

    .line 3058
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v2

    .line 3059
    .local v2, "current":Landroid/view/View;
    if-nez v2, :cond_1

    .line 3060
    return-object v1

    .line 3063
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 3064
    .local v3, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v4, v3, Landroid/view/View;

    if-eqz v4, :cond_3

    .line 3065
    if-ne v3, p0, :cond_2

    .line 3066
    return-object v2

    .line 3068
    :cond_2
    move-object v2, v3

    check-cast v2, Landroid/view/View;

    .line 3069
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_0

    .line 3072
    :cond_3
    return-object v1
.end method

.method private greylist-max-o getAndVerifyPreorderedIndex(IIZ)I
    .locals 4
    .param p1, "childrenCount"    # I
    .param p2, "i"    # I
    .param p3, "customOrder"    # Z

    .line 2109
    if-eqz p3, :cond_1

    .line 2110
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v0

    .line 2111
    .local v0, "childIndex1":I
    if-ge v0, p1, :cond_0

    .line 2116
    nop

    .line 2117
    .local v0, "childIndex":I
    goto :goto_0

    .line 2112
    .local v0, "childIndex1":I
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getChildDrawingOrder() returned invalid index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (child count is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2118
    .end local v0    # "childIndex1":I
    :cond_1
    move v0, p2

    .line 2120
    .local v0, "childIndex":I
    :goto_0
    return v0
.end method

.method private static greylist-max-o getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;
    .locals 4
    .param p1, "children"    # [Landroid/view/View;
    .param p2, "childIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;[",
            "Landroid/view/View;",
            "I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 3966
    .local p0, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p0, :cond_1

    .line 3967
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3968
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    goto :goto_0

    .line 3969
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid preorderedList contained null child at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3973
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    aget-object v0, p1, p2

    .line 3975
    .restart local v0    # "child":Landroid/view/View;
    :goto_0
    return-object v0
.end method

.method public static whitelist getChildMeasureSpec(III)I
    .locals 8
    .param p0, "spec"    # I
    .param p1, "padding"    # I
    .param p2, "childDimension"    # I

    .line 7375
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 7376
    .local v0, "specMode":I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 7378
    .local v1, "specSize":I
    sub-int v2, v1, p1

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 7380
    .local v2, "size":I
    const/4 v4, 0x0

    .line 7381
    .local v4, "resultSize":I
    const/4 v5, 0x0

    .line 7383
    .local v5, "resultMode":I
    const/4 v6, -0x2

    const/4 v7, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_2

    .line 7386
    :sswitch_0
    if-ltz p2, :cond_0

    .line 7387
    move v4, p2

    .line 7388
    const/high16 v5, 0x40000000    # 2.0f

    goto :goto_2

    .line 7389
    :cond_0
    if-ne p2, v7, :cond_1

    .line 7391
    move v4, v2

    .line 7392
    const/high16 v5, 0x40000000    # 2.0f

    goto :goto_2

    .line 7393
    :cond_1
    if-ne p2, v6, :cond_8

    .line 7396
    move v4, v2

    .line 7397
    const/high16 v5, -0x80000000

    goto :goto_2

    .line 7422
    :sswitch_1
    if-ltz p2, :cond_2

    .line 7424
    move v4, p2

    .line 7425
    const/high16 v5, 0x40000000    # 2.0f

    goto :goto_2

    .line 7426
    :cond_2
    if-ne p2, v7, :cond_4

    .line 7429
    sget-boolean v6, Landroid/view/View;->sUseZeroUnspecifiedMeasureSpec:Z

    if-eqz v6, :cond_3

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    move v4, v3

    .line 7430
    const/4 v5, 0x0

    goto :goto_2

    .line 7431
    :cond_4
    if-ne p2, v6, :cond_8

    .line 7434
    sget-boolean v6, Landroid/view/View;->sUseZeroUnspecifiedMeasureSpec:Z

    if-eqz v6, :cond_5

    goto :goto_1

    :cond_5
    move v3, v2

    :goto_1
    move v4, v3

    .line 7435
    const/4 v5, 0x0

    goto :goto_2

    .line 7403
    :sswitch_2
    if-ltz p2, :cond_6

    .line 7405
    move v4, p2

    .line 7406
    const/high16 v5, 0x40000000    # 2.0f

    goto :goto_2

    .line 7407
    :cond_6
    if-ne p2, v7, :cond_7

    .line 7410
    move v4, v2

    .line 7411
    const/high16 v5, -0x80000000

    goto :goto_2

    .line 7412
    :cond_7
    if-ne p2, v6, :cond_8

    .line 7415
    move v4, v2

    .line 7416
    const/high16 v5, -0x80000000

    .line 7440
    :cond_8
    :goto_2
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist getChildrenForAutofill(I)Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;
    .locals 1
    .param p1, "flags"    # I

    .line 3908
    invoke-static {}, Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;->obtain()Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;

    move-result-object v0

    .line 3909
    .local v0, "children":Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->populateChildrenForAutofill(Ljava/util/ArrayList;I)V

    .line 3910
    return-object v0
.end method

.method private blacklist getChildrenForContentCapture()Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;
    .locals 1

    .line 3937
    invoke-static {}, Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;->obtain()Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;

    move-result-object v0

    .line 3938
    .local v0, "children":Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->populateChildrenForContentCapture(Ljava/util/ArrayList;)V

    .line 3939
    return-object v0
.end method

.method private greylist-max-o getLocalPoint()Landroid/graphics/PointF;
    .locals 1

    .line 1698
    iget-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    .line 1699
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method private blacklist getTempLocationF()[F
    .locals 1

    .line 3223
    iget-object v0, p0, Landroid/view/ViewGroup;->mTempPosition:[F

    if-nez v0, :cond_0

    .line 3224
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/ViewGroup;->mTempPosition:[F

    .line 3226
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTempPosition:[F

    return-object v0
.end method

.method private blacklist getTempPoint()Landroid/graphics/Point;
    .locals 1

    .line 3230
    iget-object v0, p0, Landroid/view/ViewGroup;->mTempPoint:Landroid/graphics/Point;

    if-nez v0, :cond_0

    .line 3231
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTempPoint:Landroid/graphics/Point;

    .line 3233
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTempPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method private blacklist getTempRect()Landroid/graphics/Rect;
    .locals 1

    .line 3216
    iget-object v0, p0, Landroid/view/ViewGroup;->mTempRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 3217
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTempRect:Landroid/graphics/Rect;

    .line 3219
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private greylist-max-o getTouchTarget(Landroid/view/View;)Landroid/view/ViewGroup$TouchTarget;
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 3143
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .local v0, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    if-eqz v0, :cond_1

    .line 3144
    iget-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-ne v1, p1, :cond_0

    .line 3145
    return-object v0

    .line 3143
    :cond_0
    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_0

    .line 3148
    .end local v0    # "target":Landroid/view/ViewGroup$TouchTarget;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "child"    # Landroid/view/View;

    .line 2632
    iget v0, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v1, p2, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 2633
    .local v0, "offsetX":F
    iget v1, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v2, p2, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 2634
    .local v1, "offsetY":F
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 2635
    .local v2, "transformedEvent":Landroid/view/MotionEvent;
    invoke-virtual {v2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2636
    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2637
    invoke-virtual {p2}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 2639
    :cond_0
    return-object v2
.end method

.method private greylist-max-o hasBooleanFlag(I)Z
    .locals 1
    .param p1, "flag"    # I

    .line 7006
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private greylist-max-o hasChildWithZ()Z
    .locals 3

    .line 4627
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v0, v1, :cond_1

    .line 4628
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getZ()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 4627
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4630
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 738
    sget-object v0, Lcom/android/internal/R$styleable;->ViewGroup:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 740
    .local v0, "a":Landroid/content/res/TypedArray;
    sget-object v3, Lcom/android/internal/R$styleable;->ViewGroup:[I

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, v0

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/view/ViewGroup;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 743
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 744
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 745
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 746
    .local v3, "attr":I
    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 790
    :pswitch_0
    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocus(Z)V

    goto/16 :goto_1

    .line 787
    :pswitch_1
    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setTransitionGroup(Z)V

    .line 788
    goto/16 :goto_1

    .line 784
    :pswitch_2
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setLayoutMode(I)V

    .line 785
    goto :goto_1

    .line 778
    :pswitch_3
    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 779
    .local v4, "animateLayoutChanges":Z
    if-eqz v4, :cond_0

    .line 780
    new-instance v5, Landroid/animation/LayoutTransition;

    invoke-direct {v5}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_1

    .line 775
    .end local v4    # "animateLayoutChanges":Z
    :pswitch_4
    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 776
    goto :goto_1

    .line 772
    :pswitch_5
    sget-object v4, Landroid/view/ViewGroup;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    aget v4, v4, v5

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 773
    goto :goto_1

    .line 760
    :pswitch_6
    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    .line 761
    goto :goto_1

    .line 763
    :pswitch_7
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 764
    goto :goto_1

    .line 757
    :pswitch_8
    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setPersistentDrawingCache(I)V

    .line 758
    goto :goto_1

    .line 754
    :pswitch_9
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setAnimationCacheEnabled(Z)V

    .line 755
    goto :goto_1

    .line 766
    :pswitch_a
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 767
    .local v4, "id":I
    if-lez v4, :cond_0

    .line 768
    iget-object v5, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    goto :goto_1

    .line 751
    .end local v4    # "id":I
    :pswitch_b
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 752
    goto :goto_1

    .line 748
    :pswitch_c
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 749
    nop

    .line 744
    .end local v3    # "attr":I
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 795
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 796
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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

.method private greylist-max-o initViewGroup()V
    .locals 3

    .line 715
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isShowingLayoutBounds()Z

    move-result v0

    if-nez v0, :cond_0

    .line 716
    const/16 v0, 0x80

    invoke-virtual {p0, v0, v0}, Landroid/view/ViewGroup;->setFlags(II)V

    .line 718
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 719
    const/4 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 720
    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 721
    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 722
    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 724
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_1

    .line 725
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v2, 0x200000

    or-int/2addr v0, v2

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 728
    :cond_1
    const/high16 v0, 0x20000

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 730
    const/16 v0, 0xc

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 731
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 733
    iput v1, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    .line 734
    return-void
.end method

.method private blacklist newDispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 7738
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7739
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7740
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 7739
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7742
    .end local v1    # "i":I
    :cond_0
    return-object p1
.end method

.method private greylist-max-o notifyAnimationListener()V
    .locals 1

    .line 4671
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4672
    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4674
    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 4675
    new-instance v0, Landroid/view/ViewGroup$3;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$3;-><init>(Landroid/view/ViewGroup;)V

    .line 4681
    .local v0, "end":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 4684
    .end local v0    # "end":Ljava/lang/Runnable;
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 4685
    return-void
.end method

.method private static greylist-max-o obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 1
    .param p0, "event"    # Landroid/view/MotionEvent;

    .line 2547
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-nez v0, :cond_0

    .line 2548
    return-object p0

    .line 2550
    :cond_0
    invoke-static {p0}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method private blacklist offsetRectBetweenParentAndChildDebug(Landroid/view/View;Landroid/graphics/Rect;ZZ)V
    .locals 18
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "offsetFromChildToParent"    # Z
    .param p4, "clipToBounds"    # Z

    .line 6547
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "void offsetRectBetweenParentAndChild() this="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ViewGroup"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6548
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    : descendant="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " rect="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6549
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    : offsetFromChildToParent="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " clipToBounds="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6552
    if-ne v1, v0, :cond_0

    .line 6553
    const-string v5, "    : if (descendant == this) return;"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6554
    return-void

    .line 6557
    :cond_0
    iget-object v5, v1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 6558
    .local v5, "theParent":Landroid/view/ViewParent;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    : ViewParent theParent = descendant.mParent; theParent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6560
    const/4 v7, 0x0

    .line 6562
    .local v7, "count":I
    const-string v8, "    : ========================================"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6563
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    : while #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " (theParent != null)= "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v5, :cond_1

    const/4 v14, 0x1

    goto :goto_0

    :cond_1
    const/4 v14, 0x0

    :goto_0
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, " && (theParent instanceof View)= "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    instance-of v15, v5, Landroid/view/View;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, " && (theParent != this)= "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eq v5, v0, :cond_2

    const/4 v12, 0x1

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    :goto_1
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6566
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "    :    >>  descendant = "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6567
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "    :    >>  theParent = "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6570
    .end local p1    # "descendant":Landroid/view/View;
    .local v1, "descendant":Landroid/view/View;
    :goto_2
    instance-of v9, v5, Landroid/view/View;

    if-eqz v9, :cond_a

    if-eq v5, v0, :cond_a

    .line 6572
    add-int/lit8 v7, v7, 0x1

    .line 6574
    if-eqz v3, :cond_5

    .line 6575
    iget v9, v1, Landroid/view/View;->mLeft:I

    iget v3, v1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v9, v3

    iget v3, v1, Landroid/view/View;->mTop:I

    move-object/from16 v16, v8

    iget v8, v1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v3, v8

    invoke-virtual {v2, v9, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 6577
    if-eqz v4, :cond_4

    .line 6578
    move-object v3, v5

    check-cast v3, Landroid/view/View;

    .line 6579
    .local v3, "p":Landroid/view/View;
    iget v8, v3, Landroid/view/View;->mRight:I

    iget v9, v3, Landroid/view/View;->mLeft:I

    sub-int/2addr v8, v9

    iget v9, v3, Landroid/view/View;->mBottom:I

    move-object/from16 v17, v13

    iget v13, v3, Landroid/view/View;->mTop:I

    sub-int/2addr v9, v13

    const/4 v13, 0x0

    invoke-virtual {v2, v13, v13, v8, v9}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v8

    .line 6581
    .local v8, "intersected":Z
    if-nez v8, :cond_3

    .line 6582
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 6584
    .end local v3    # "p":Landroid/view/View;
    .end local v8    # "intersected":Z
    :cond_3
    const/4 v13, 0x0

    goto :goto_4

    .line 6577
    :cond_4
    move-object/from16 v17, v13

    const/4 v13, 0x0

    goto :goto_4

    .line 6586
    :cond_5
    move-object/from16 v16, v8

    move-object/from16 v17, v13

    if-eqz v4, :cond_6

    .line 6587
    move-object v3, v5

    check-cast v3, Landroid/view/View;

    .line 6588
    .restart local v3    # "p":Landroid/view/View;
    iget v8, v3, Landroid/view/View;->mRight:I

    iget v9, v3, Landroid/view/View;->mLeft:I

    sub-int/2addr v8, v9

    iget v9, v3, Landroid/view/View;->mBottom:I

    iget v13, v3, Landroid/view/View;->mTop:I

    sub-int/2addr v9, v13

    const/4 v13, 0x0

    invoke-virtual {v2, v13, v13, v8, v9}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v8

    .line 6590
    .restart local v8    # "intersected":Z
    if-nez v8, :cond_7

    .line 6591
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_3

    .line 6586
    .end local v3    # "p":Landroid/view/View;
    .end local v8    # "intersected":Z
    :cond_6
    const/4 v13, 0x0

    .line 6594
    :cond_7
    :goto_3
    iget v3, v1, Landroid/view/View;->mScrollX:I

    iget v8, v1, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v8

    iget v8, v1, Landroid/view/View;->mScrollY:I

    iget v9, v1, Landroid/view/View;->mTop:I

    sub-int/2addr v8, v9

    invoke-virtual {v2, v3, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 6598
    :goto_4
    move-object v1, v5

    check-cast v1, Landroid/view/View;

    .line 6599
    iget-object v5, v1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 6601
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v5, :cond_8

    const/4 v8, 0x1

    goto :goto_5

    :cond_8
    move v8, v13

    :goto_5
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    instance-of v8, v5, Landroid/view/View;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eq v5, v0, :cond_9

    const/4 v8, 0x1

    goto :goto_6

    :cond_9
    move v8, v13

    :goto_6
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6604
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6605
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v8, v17

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v3, p3

    move-object v13, v8

    move-object/from16 v8, v16

    goto/16 :goto_2

    .line 6570
    :cond_a
    move-object/from16 v16, v8

    .line 6607
    move-object/from16 v3, v16

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6611
    if-ne v5, v0, :cond_c

    .line 6612
    if-eqz p3, :cond_b

    .line 6613
    iget v3, v1, Landroid/view/View;->mLeft:I

    iget v6, v1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v3, v6

    iget v6, v1, Landroid/view/View;->mTop:I

    iget v8, v1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v6, v8

    invoke-virtual {v2, v3, v6}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_7

    .line 6616
    :cond_b
    iget v3, v1, Landroid/view/View;->mScrollX:I

    iget v6, v1, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v6

    iget v6, v1, Landroid/view/View;->mScrollY:I

    iget v8, v1, Landroid/view/View;->mTop:I

    sub-int/2addr v6, v8

    invoke-virtual {v2, v3, v6}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_7

    .line 6620
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    : #Last  descendant="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6621
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    : #Last  theParent="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6622
    const-string v3, "    : IllegalArgumentException(parameter must be a descendant of this view)"

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6625
    :goto_7
    return-void
.end method

.method private greylist-max-o populateChildrenForAutofill(Ljava/util/ArrayList;I)V
    .locals 7
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 3915
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3916
    .local v0, "childrenCount":I
    if-gtz v0, :cond_0

    .line 3917
    return-void

    .line 3919
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v1

    .line 3920
    .local v1, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v1, :cond_1

    .line 3921
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 3922
    .local v2, "customOrder":Z
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_6

    .line 3923
    invoke-direct {p0, v0, v3, v2}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v4

    .line 3924
    .local v4, "childIndex":I
    if-nez v1, :cond_2

    .line 3925
    iget-object v5, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v5, v5, v4

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 3926
    .local v5, "child":Landroid/view/View;
    :goto_2
    and-int/lit8 v6, p2, 0x1

    if-nez v6, :cond_4

    .line 3927
    invoke-virtual {v5}, Landroid/view/View;->isImportantForAutofill()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_3

    .line 3929
    :cond_3
    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_5

    .line 3930
    move-object v6, v5

    check-cast v6, Landroid/view/ViewGroup;

    invoke-direct {v6, p1, p2}, Landroid/view/ViewGroup;->populateChildrenForAutofill(Ljava/util/ArrayList;I)V

    goto :goto_4

    .line 3928
    :cond_4
    :goto_3
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3922
    .end local v4    # "childIndex":I
    .end local v5    # "child":Landroid/view/View;
    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3933
    .end local v3    # "i":I
    :cond_6
    return-void
.end method

.method private blacklist populateChildrenForContentCapture(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 3944
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3945
    .local v0, "childrenCount":I
    if-gtz v0, :cond_0

    .line 3946
    return-void

    .line 3948
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v1

    .line 3949
    .local v1, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v1, :cond_1

    .line 3950
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 3951
    .local v2, "customOrder":Z
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_5

    .line 3952
    invoke-direct {p0, v0, v3, v2}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v4

    .line 3953
    .local v4, "childIndex":I
    if-nez v1, :cond_2

    .line 3954
    iget-object v5, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v5, v5, v4

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 3955
    .local v5, "child":Landroid/view/View;
    :goto_2
    invoke-virtual {v5}, Landroid/view/View;->isImportantForContentCapture()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3956
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 3957
    :cond_3
    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_4

    .line 3958
    move-object v6, v5

    check-cast v6, Landroid/view/ViewGroup;

    invoke-direct {v6, p1}, Landroid/view/ViewGroup;->populateChildrenForContentCapture(Ljava/util/ArrayList;)V

    .line 3951
    .end local v4    # "childIndex":I
    .end local v5    # "child":Landroid/view/View;
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3961
    .end local v3    # "i":I
    :cond_5
    return-void
.end method

.method private greylist-max-o recreateChildDisplayList(Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .line 4730
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p1, Landroid/view/View;->mRecreateDisplayList:Z

    .line 4731
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v2, 0x7fffffff

    and-int/2addr v0, v2

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 4732
    invoke-virtual {p1}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/graphics/RenderNode;

    .line 4733
    iput-boolean v1, p1, Landroid/view/View;->mRecreateDisplayList:Z

    .line 4734
    return-void
.end method

.method private greylist-max-o removeFromArray(I)V
    .locals 5
    .param p1, "index"    # I

    .line 5612
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5613
    .local v0, "children":[Landroid/view/View;
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    aget-object v3, v0, p1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5615
    :cond_0
    aget-object v1, v0, p1

    if-eqz v1, :cond_1

    .line 5616
    aget-object v1, v0, p1

    iput-object v2, v1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5620
    :cond_1
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5621
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    if-ne p1, v3, :cond_2

    .line 5622
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object v2, v0, v3

    goto :goto_0

    .line 5623
    :cond_2
    if-ltz p1, :cond_5

    if-ge p1, v1, :cond_5

    .line 5624
    add-int/lit8 v3, p1, 0x1

    sub-int v4, v1, p1

    add-int/lit8 v4, v4, -0x1

    invoke-static {v0, v3, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5625
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object v2, v0, v3

    .line 5629
    :goto_0
    iget v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-ne v2, p1, :cond_3

    .line 5630
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/view/ViewGroup;->mLastTouchDownTime:J

    .line 5631
    const/4 v2, -0x1

    iput v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    goto :goto_1

    .line 5632
    :cond_3
    if-le v2, p1, :cond_4

    .line 5633
    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 5635
    :cond_4
    :goto_1
    return-void

    .line 5627
    :cond_5
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method private greylist-max-o removeFromArray(II)V
    .locals 6
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 5639
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5640
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5642
    .local v1, "childrenCount":I
    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 5643
    add-int v2, p1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 5645
    .local v2, "end":I
    if-ne p1, v2, :cond_0

    .line 5646
    return-void

    .line 5649
    :cond_0
    const/4 v3, 0x0

    if-ne v2, v1, :cond_2

    .line 5650
    move v4, p1

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 5651
    aget-object v5, v0, v4

    iput-object v3, v5, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5652
    aput-object v3, v0, v4

    .line 5650
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v4    # "i":I
    :cond_1
    goto :goto_3

    .line 5655
    :cond_2
    move v4, p1

    .restart local v4    # "i":I
    :goto_1
    if-ge v4, v2, :cond_3

    .line 5656
    aget-object v5, v0, v4

    iput-object v3, v5, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5655
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 5661
    .end local v4    # "i":I
    :cond_3
    sub-int v4, v1, v2

    invoke-static {v0, v2, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5663
    sub-int v4, v2, p1

    sub-int v4, v1, v4

    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v1, :cond_4

    .line 5664
    aput-object v3, v0, v4

    .line 5663
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 5668
    .end local v4    # "i":I
    :cond_4
    :goto_3
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    sub-int v4, v2, p1

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5669
    return-void
.end method

.method private greylist-max-o removePointersFromTouchTargets(I)V
    .locals 5
    .param p1, "pointerIdBits"    # I

    .line 3166
    const/4 v0, 0x0

    .line 3167
    .local v0, "predecessor":Landroid/view/ViewGroup$TouchTarget;
    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 3168
    .local v1, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    if-eqz v1, :cond_2

    .line 3169
    iget-object v2, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 3170
    .local v2, "next":Landroid/view/ViewGroup$TouchTarget;
    iget v3, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    and-int/2addr v3, p1

    if-eqz v3, :cond_1

    .line 3171
    iget v3, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    not-int v4, p1

    and-int/2addr v3, v4

    iput v3, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 3172
    iget v3, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    if-nez v3, :cond_1

    .line 3173
    if-nez v0, :cond_0

    .line 3174
    iput-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_1

    .line 3176
    :cond_0
    iput-object v2, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 3178
    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 3179
    move-object v1, v2

    .line 3180
    goto :goto_0

    .line 3183
    :cond_1
    move-object v0, v1

    .line 3184
    move-object v1, v2

    .line 3185
    .end local v2    # "next":Landroid/view/ViewGroup$TouchTarget;
    goto :goto_0

    .line 3186
    :cond_2
    return-void
.end method

.method private greylist-max-o removeViewInternal(ILandroid/view/View;)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;

    .line 5784
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_0

    .line 5785
    invoke-virtual {v0, p0, p2}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 5788
    :cond_0
    const/4 v0, 0x0

    .line 5789
    .local v0, "clearChildFocus":Z
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-ne p2, v1, :cond_1

    .line 5790
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 5791
    const/4 v0, 0x1

    .line 5793
    :cond_1
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-ne p2, v1, :cond_2

    .line 5794
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->clearFocusedInCluster(Landroid/view/View;)V

    .line 5797
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 5799
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 5800
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    .line 5802
    invoke-virtual {p2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 5803
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 5805
    :cond_3
    iget-object v1, p2, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_5

    .line 5806
    invoke-virtual {p2}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_1

    .line 5804
    :cond_4
    :goto_0
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 5809
    :cond_5
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->hasTransientState()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 5810
    invoke-virtual {p0, p2, v2}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 5813
    :cond_6
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 5815
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 5817
    invoke-virtual {p2}, Landroid/view/View;->hasUnhandledKeyListener()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5818
    invoke-virtual {p0}, Landroid/view/ViewGroup;->decrementChildUnhandledKeyListeners()V

    .line 5821
    :cond_7
    iget-object v1, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-ne p2, v1, :cond_8

    .line 5822
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->clearDefaultFocus(Landroid/view/View;)V

    .line 5824
    :cond_8
    if-eqz v0, :cond_9

    .line 5825
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 5826
    invoke-virtual {p0}, Landroid/view/ViewGroup;->rootViewRequestFocus()Z

    move-result v1

    if-nez v1, :cond_9

    .line 5827
    invoke-virtual {p0, p0}, Landroid/view/ViewGroup;->notifyGlobalFocusCleared(Landroid/view/View;)V

    .line 5831
    :cond_9
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    .line 5833
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_a

    .line 5834
    invoke-virtual {p0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 5837
    :cond_a
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    if-nez v1, :cond_b

    goto :goto_2

    :cond_b
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v2

    :goto_2
    move v1, v2

    .line 5838
    .local v1, "transientCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v1, :cond_d

    .line 5839
    iget-object v3, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    .line 5840
    .local v3, "oldIndex":I
    if-ge p1, v3, :cond_c

    .line 5841
    iget-object v4, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v2, v5}, Landroid/util/IntArray;->set(II)V

    .line 5838
    .end local v3    # "oldIndex":I
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 5845
    .end local v2    # "i":I
    :cond_d
    iget-object v2, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    if-eqz v2, :cond_e

    .line 5846
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    invoke-virtual {v2, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 5848
    :cond_e
    return-void
.end method

.method private greylist-max-o removeViewInternal(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 5775
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 5776
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 5777
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    .line 5778
    const/4 v1, 0x1

    return v1

    .line 5780
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o removeViewsInternal(II)V
    .locals 10
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 5890
    add-int v0, p1, p2

    .line 5892
    .local v0, "end":I
    if-ltz p1, :cond_c

    if-ltz p2, :cond_c

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-gt v0, v1, :cond_c

    .line 5896
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 5897
    .local v1, "focused":Landroid/view/View;
    iget-object v2, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 5898
    .local v2, "detach":Z
    :goto_0
    const/4 v4, 0x0

    .line 5899
    .local v4, "clearChildFocus":Z
    const/4 v5, 0x0

    .line 5901
    .local v5, "clearDefaultFocus":Landroid/view/View;
    iget-object v6, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5903
    .local v6, "children":[Landroid/view/View;
    move v7, p1

    .local v7, "i":I
    :goto_1
    if-ge v7, v0, :cond_9

    .line 5904
    aget-object v8, v6, v7

    .line 5906
    .local v8, "view":Landroid/view/View;
    iget-object v9, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v9, :cond_1

    .line 5907
    invoke-virtual {v9, p0, v8}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 5910
    :cond_1
    if-ne v8, v1, :cond_2

    .line 5911
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 5912
    const/4 v4, 0x1

    .line 5914
    :cond_2
    iget-object v9, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-ne v8, v9, :cond_3

    .line 5915
    move-object v5, v8

    .line 5917
    :cond_3
    iget-object v9, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-ne v8, v9, :cond_4

    .line 5918
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->clearFocusedInCluster(Landroid/view/View;)V

    .line 5921
    :cond_4
    invoke-virtual {v8}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 5923
    invoke-direct {p0, v8}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 5924
    invoke-direct {p0, v8}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    .line 5926
    invoke-virtual {v8}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v9

    if-nez v9, :cond_6

    iget-object v9, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v9, :cond_5

    .line 5927
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_2

    .line 5929
    :cond_5
    if-eqz v2, :cond_7

    .line 5930
    invoke-virtual {v8}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_3

    .line 5928
    :cond_6
    :goto_2
    invoke-direct {p0, v8}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 5933
    :cond_7
    :goto_3
    invoke-virtual {v8}, Landroid/view/View;->hasTransientState()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 5934
    invoke-virtual {p0, v8, v3}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 5937
    :cond_8
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 5939
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    .line 5903
    .end local v8    # "view":Landroid/view/View;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 5942
    .end local v7    # "i":I
    :cond_9
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    .line 5944
    if-eqz v5, :cond_a

    .line 5945
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->clearDefaultFocus(Landroid/view/View;)V

    .line 5947
    :cond_a
    if-eqz v4, :cond_b

    .line 5948
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 5949
    invoke-virtual {p0}, Landroid/view/ViewGroup;->rootViewRequestFocus()Z

    move-result v3

    if-nez v3, :cond_b

    .line 5950
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->notifyGlobalFocusCleared(Landroid/view/View;)V

    .line 5953
    :cond_b
    return-void

    .line 5893
    .end local v1    # "focused":Landroid/view/View;
    .end local v2    # "detach":Z
    .end local v4    # "clearChildFocus":Z
    .end local v5    # "clearDefaultFocus":Landroid/view/View;
    .end local v6    # "children":[Landroid/view/View;
    :cond_c
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method private static greylist-max-o resetCancelNextUpFlag(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 3090
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 3091
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 3092
    const/4 v0, 0x1

    return v0

    .line 3094
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o resetTouchState()V
    .locals 2

    .line 3079
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearTouchTargets()V

    .line 3080
    invoke-static {p0}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 3081
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3082
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    .line 3083
    return-void
.end method

.method private greylist-max-o restoreFocusInClusterInternal(I)Z
    .locals 2
    .param p1, "direction"    # I

    .line 3610
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    .line 3612
    invoke-virtual {v0, p1}, Landroid/view/View;->restoreFocusInCluster(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3613
    const/4 v0, 0x1

    return v0

    .line 3615
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->restoreFocusInCluster(I)Z

    move-result v0

    return v0
.end method

.method private greylist-max-o setBooleanFlag(IZ)V
    .locals 2
    .param p1, "flag"    # I
    .param p2, "value"    # Z

    .line 7010
    if-eqz p2, :cond_0

    .line 7011
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0

    .line 7013
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 7015
    :goto_0
    return-void
.end method

.method private greylist-max-o setLayoutMode(IZ)V
    .locals 1
    .param p1, "layoutMode"    # I
    .param p2, "explicitly"    # Z

    .line 7087
    iput p1, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    .line 7088
    const/high16 v0, 0x800000

    invoke-direct {p0, v0, p2}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 7089
    return-void
.end method

.method private greylist-max-o setTouchscreenBlocksFocusNoRefocus(Z)V
    .locals 2
    .param p1, "touchscreenBlocksFocus"    # Z

    .line 1424
    if-eqz p1, :cond_0

    .line 1425
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0

    .line 1427
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1429
    :goto_0
    return-void
.end method

.method private static greylist-max-o sign(I)I
    .locals 1
    .param p0, "x"    # I

    .line 4339
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private greylist-max-o touchAccessibilityNodeProviderIfNeeded(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 5575
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isAutofillCompatibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5576
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 5578
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 2474
    .local p1, "outChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2475
    return-void

    .line 2477
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/view/ViewGroup$ChildListForAccessibility;->obtain(Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$ChildListForAccessibility;

    move-result-object v0

    .line 2479
    .local v0, "children":Landroid/view/ViewGroup$ChildListForAccessibility;
    :try_start_0
    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildCount()I

    move-result v1

    .line 2480
    .local v1, "childrenCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 2481
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2482
    .local v3, "child":Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_2

    .line 2483
    invoke-virtual {v3}, Landroid/view/View;->includeForAccessibility()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2484
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2486
    :cond_1
    invoke-virtual {v3, p1}, Landroid/view/View;->addChildrenForAccessibility(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2480
    .end local v3    # "child":Landroid/view/View;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2491
    .end local v1    # "childrenCount":I
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    .line 2492
    nop

    .line 2493
    return-void

    .line 2491
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    .line 2492
    throw v1
.end method

.method public whitelist addExtraDataToAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "extraDataKey"    # Ljava/lang/String;
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 4034
    const-string v0, "android.view.accessibility.extra.DATA_RENDERING_INFO_KEY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4036
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    move-result-object v0

    .line 4037
    .local v0, "extraRenderingInfo":Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->setLayoutSize(II)V

    .line 4038
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setExtraRenderingInfo(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;)V

    .line 4040
    .end local v0    # "extraRenderingInfo":Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;
    :cond_0
    return-void
.end method

.method public whitelist addFocusables(Ljava/util/ArrayList;II)V
    .locals 10
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 1314
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1316
    .local v0, "focusableCount":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    .line 1317
    .local v1, "descendantFocusability":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->shouldBlockFocusForTouchscreen()Z

    move-result v2

    .line 1318
    .local v2, "blockFocusForTouchscreen":Z
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 1320
    .local v3, "focusSelf":Z
    :goto_1
    const/high16 v5, 0x60000

    if-ne v1, v5, :cond_3

    .line 1321
    if-eqz v3, :cond_2

    .line 1322
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1324
    :cond_2
    return-void

    .line 1327
    :cond_3
    if-eqz v2, :cond_4

    .line 1328
    or-int/lit8 p3, p3, 0x1

    .line 1331
    :cond_4
    const/high16 v5, 0x20000

    if-ne v1, v5, :cond_5

    if-eqz v3, :cond_5

    .line 1332
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1335
    :cond_5
    const/4 v5, 0x0

    .line 1336
    .local v5, "count":I
    iget v6, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    new-array v6, v6, [Landroid/view/View;

    .line 1337
    .local v6, "children":[Landroid/view/View;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    iget v8, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v7, v8, :cond_7

    .line 1338
    iget-object v8, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v8, v8, v7

    .line 1339
    .local v8, "child":Landroid/view/View;
    iget v9, v8, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v9, v9, 0xc

    if-nez v9, :cond_6

    .line 1340
    add-int/lit8 v9, v5, 0x1

    .end local v5    # "count":I
    .local v9, "count":I
    aput-object v8, v6, v5

    move v5, v9

    .line 1337
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "count":I
    .restart local v5    # "count":I
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1343
    .end local v7    # "i":I
    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v7

    invoke-static {v6, v4, v5, p0, v7}, Landroid/view/FocusFinder;->sort([Landroid/view/View;IILandroid/view/ViewGroup;Z)V

    .line 1344
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v5, :cond_8

    .line 1345
    aget-object v7, v6, v4

    invoke-virtual {v7, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1344
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1352
    .end local v4    # "i":I
    :cond_8
    const/high16 v4, 0x40000

    if-ne v1, v4, :cond_9

    if-eqz v3, :cond_9

    .line 1353
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v0, v4, :cond_9

    .line 1354
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1356
    :cond_9
    return-void
.end method

.method public whitelist addKeyboardNavigationClusters(Ljava/util/Collection;I)V
    .locals 7
    .param p2, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1360
    .local p1, "views":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/View;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 1362
    .local v0, "focusableCount":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isKeyboardNavigationCluster()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1365
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTouchscreenBlocksFocus()Z

    move-result v1

    .line 1367
    .local v1, "blockedFocus":Z
    :try_start_0
    invoke-direct {p0, v2}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    .line 1368
    invoke-super {p0, p1, p2}, Landroid/view/View;->addKeyboardNavigationClusters(Ljava/util/Collection;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1370
    invoke-direct {p0, v1}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    .line 1371
    nop

    .line 1372
    .end local v1    # "blockedFocus":Z
    goto :goto_0

    .line 1370
    .restart local v1    # "blockedFocus":Z
    :catchall_0
    move-exception v2

    invoke-direct {p0, v1}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    .line 1371
    throw v2

    .line 1373
    .end local v1    # "blockedFocus":Z
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->addKeyboardNavigationClusters(Ljava/util/Collection;I)V

    .line 1376
    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1378
    return-void

    .line 1381
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v3, 0x60000

    if-ne v1, v3, :cond_2

    .line 1382
    return-void

    .line 1385
    :cond_2
    const/4 v1, 0x0

    .line 1386
    .local v1, "count":I
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    new-array v3, v3, [Landroid/view/View;

    .line 1387
    .local v3, "visibleChildren":[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget v5, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v4, v5, :cond_4

    .line 1388
    iget-object v5, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v5, v5, v4

    .line 1389
    .local v5, "child":Landroid/view/View;
    iget v6, v5, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    if-nez v6, :cond_3

    .line 1390
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "count":I
    .local v6, "count":I
    aput-object v5, v3, v1

    move v1, v6

    .line 1387
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .restart local v1    # "count":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1393
    .end local v4    # "i":I
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v4

    invoke-static {v3, v2, v1, p0, v4}, Landroid/view/FocusFinder;->sort([Landroid/view/View;IILandroid/view/ViewGroup;Z)V

    .line 1394
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_5

    .line 1395
    aget-object v4, v3, v2

    invoke-virtual {v4, p1, p2}, Landroid/view/View;->addKeyboardNavigationClusters(Ljava/util/Collection;I)V

    .line 1394
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1397
    .end local v2    # "i":I
    :cond_5
    return-void
.end method

.method public whitelist addStatesFromChildren()Z
    .locals 1

    .line 8013
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1522
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 1524
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1525
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1527
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1528
    aget-object v3, v1, v2

    .line 1529
    .local v3, "child":Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_0

    .line 1530
    invoke-virtual {v3, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 1527
    .end local v3    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1533
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public greylist addTransientView(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 5082
    if-ltz p2, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 5085
    :cond_0
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-nez v0, :cond_6

    .line 5090
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    if-nez v0, :cond_1

    .line 5091
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    .line 5092
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    .line 5094
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    .line 5095
    .local v0, "oldSize":I
    if-lez v0, :cond_4

    .line 5097
    const/4 v1, 0x0

    .local v1, "insertionIndex":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 5098
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v2, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    if-ge p2, v2, :cond_2

    .line 5099
    goto :goto_1

    .line 5097
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5102
    :cond_3
    :goto_1
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v2, v1, p2}, Landroid/util/IntArray;->add(II)V

    .line 5103
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5104
    .end local v1    # "insertionIndex":I
    goto :goto_2

    .line 5105
    :cond_4
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v1, p2}, Landroid/util/IntArray;->add(I)V

    .line 5106
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5108
    :goto_2
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5109
    iget-object v1, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_5

    .line 5110
    iget-object v1, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v2, v2, 0xc

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 5112
    :cond_5
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 5113
    return-void

    .line 5086
    .end local v0    # "oldSize":I
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The specified view already has a parent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5083
    :cond_7
    :goto_3
    return-void
.end method

.method public whitelist addView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 5208
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 5209
    return-void
.end method

.method public whitelist addView(Landroid/view/View;I)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 5225
    if-eqz p1, :cond_2

    .line 5228
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 5229
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_1

    .line 5230
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 5231
    if-eqz v0, :cond_0

    goto :goto_0

    .line 5232
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "generateDefaultLayoutParams() cannot return null  "

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5236
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 5237
    return-void

    .line 5226
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add a null child view to a ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addView(Landroid/view/View;II)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 5250
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 5251
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5252
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5253
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 5254
    return-void
.end method

.method public whitelist addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 5287
    if-eqz p1, :cond_0

    .line 5294
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 5295
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 5296
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 5297
    return-void

    .line 5288
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add a null child view to a ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 5268
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 5269
    return-void
.end method

.method protected whitelist addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 5431
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result v0

    return v0
.end method

.method protected whitelist addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p4, "preventRequestLayout"    # Z

    .line 5449
    if-eqz p1, :cond_0

    .line 5452
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5453
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 5454
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x200001

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 5455
    const/4 v0, 0x1

    return v0

    .line 5450
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add a null child view to a ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "index"    # I
    .param p4, "count"    # I

    .line 5688
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 5690
    .local v0, "animationParams":Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_0

    .line 5691
    new-instance v1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    invoke-direct {v1}, Landroid/view/animation/LayoutAnimationController$AnimationParameters;-><init>()V

    move-object v0, v1

    .line 5692
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 5695
    :cond_0
    iput p4, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    .line 5696
    iput p3, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    .line 5697
    return-void
.end method

.method protected whitelist attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 6123
    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 6125
    if-gez p2, :cond_0

    .line 6126
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 6129
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 6131
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 6132
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x200001

    and-int/2addr v0, v1

    const v1, -0x8001

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 6135
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setDetached(Z)V

    .line 6136
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 6138
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6139
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 6141
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 6142
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 6141
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->dispatchVisibilityAggregated(Z)Z

    .line 6143
    invoke-virtual {p0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 6144
    return-void
.end method

.method public whitelist bringChildToFront(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 1687
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1688
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 1689
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 1690
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    invoke-direct {p0, p1, v1}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 1691
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 1692
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1693
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 1695
    :cond_0
    return-void
.end method

.method greylist-max-o buildOrderedChildList()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 4642
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4643
    .local v0, "childrenCount":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    invoke-direct {p0}, Landroid/view/ViewGroup;->hasChildWithZ()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 4645
    :cond_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 4646
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    goto :goto_0

    .line 4649
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4650
    iget-object v1, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 4653
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v1

    .line 4654
    .local v1, "customOrder":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 4656
    invoke-direct {p0, v0, v2, v1}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v3

    .line 4657
    .local v3, "childIndex":I
    iget-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v4, v4, v3

    .line 4658
    .local v4, "nextChild":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getZ()F

    move-result v5

    .line 4661
    .local v5, "currentZ":F
    move v6, v2

    .line 4662
    .local v6, "insertIndex":I
    :goto_2
    if-lez v6, :cond_2

    iget-object v7, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    add-int/lit8 v8, v6, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getZ()F

    move-result v7

    cmpl-float v7, v7, v5

    if-lez v7, :cond_2

    .line 4663
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 4665
    :cond_2
    iget-object v7, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v7, v6, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4654
    .end local v3    # "childIndex":I
    .end local v4    # "nextChild":Landroid/view/View;
    .end local v5    # "currentZ":F
    .end local v6    # "insertIndex":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4667
    .end local v2    # "i":I
    :cond_3
    iget-object v2, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    return-object v2

    .line 4643
    .end local v1    # "customOrder":Z
    :cond_4
    :goto_3
    const/4 v1, 0x0

    return-object v1
.end method

.method public greylist-max-o buildTouchDispatchChildList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 3044
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist canAnimate()Z
    .locals 1

    .line 6802
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o captureTransitioningViews(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 8361
    .local p1, "transitioningViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 8362
    return-void

    .line 8364
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8365
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8367
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 8368
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 8369
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8370
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->captureTransitioningViews(Ljava/util/List;)V

    .line 8368
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8373
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_2
    :goto_1
    return-void
.end method

.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 5311
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist childDrawableStateChanged(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 8022
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    .line 8023
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    .line 8025
    :cond_0
    return-void
.end method

.method public whitelist childHasTransientStateChanged(Landroid/view/View;Z)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childHasTransientState"    # Z

    .line 1147
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasTransientState()Z

    move-result v0

    .line 1148
    .local v0, "oldHasTransientState":Z
    if-eqz p2, :cond_0

    .line 1149
    iget v1, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    goto :goto_0

    .line 1151
    :cond_0
    iget v1, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    .line 1154
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasTransientState()Z

    move-result v1

    .line 1155
    .local v1, "newHasTransientState":Z
    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_1

    if-eq v0, v1, :cond_1

    .line 1157
    :try_start_0
    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v2, p0, v1}, Landroid/view/ViewParent;->childHasTransientStateChanged(Landroid/view/View;Z)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1161
    goto :goto_1

    .line 1158
    :catch_0
    move-exception v2

    .line 1159
    .local v2, "e":Ljava/lang/AbstractMethodError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not fully implement ViewParent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ViewGroup"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1163
    .end local v2    # "e":Ljava/lang/AbstractMethodError;
    :cond_1
    :goto_1
    return-void
.end method

.method protected whitelist cleanupLayoutState(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 5464
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 5465
    return-void
.end method

.method public whitelist clearChildFocus(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 1182
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 1183
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 1184
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->clearChildFocus(Landroid/view/View;)V

    .line 1186
    :cond_0
    return-void
.end method

.method greylist-max-o clearDefaultFocus(Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .line 899
    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-eq v0, p1, :cond_0

    if-eqz v0, :cond_0

    .line 900
    invoke-virtual {v0}, Landroid/view/View;->isFocusedByDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 901
    return-void

    .line 904
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    .line 907
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v0, v1, :cond_3

    .line 908
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v1, v1, v0

    .line 909
    .local v1, "sibling":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->isFocusedByDefault()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 910
    iput-object v1, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    .line 911
    return-void

    .line 912
    :cond_1
    iget-object v2, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->hasDefaultFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 913
    iput-object v1, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    .line 907
    .end local v1    # "sibling":Landroid/view/View;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 917
    .end local v0    # "i":I
    :cond_3
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 918
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->clearDefaultFocus(Landroid/view/View;)V

    .line 920
    :cond_4
    return-void
.end method

.method public whitelist clearDisappearingChildren()V
    .locals 5

    .line 7449
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 7450
    .local v0, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_2

    .line 7451
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 7452
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 7453
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 7454
    .local v3, "view":Landroid/view/View;
    iget-object v4, v3, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_0

    .line 7455
    invoke-virtual {v3}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 7457
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 7452
    .end local v3    # "view":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7459
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7460
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 7462
    .end local v1    # "count":I
    :cond_2
    return-void
.end method

.method public whitelist clearFocus()V
    .locals 2

    .line 1193
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1194
    invoke-super {p0}, Landroid/view/View;->clearFocus()V

    goto :goto_0

    .line 1196
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 1197
    .local v0, "focused":Landroid/view/View;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 1198
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 1200
    .end local v0    # "focused":Landroid/view/View;
    :goto_0
    return-void
.end method

.method greylist-max-o clearFocusedInCluster()V
    .locals 4

    .line 945
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findKeyboardNavigationCluster()Landroid/view/View;

    move-result-object v0

    .line 946
    .local v0, "top":Landroid/view/View;
    move-object v1, p0

    .line 948
    .local v1, "parent":Landroid/view/ViewParent;
    :cond_0
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    .line 949
    if-ne v1, v0, :cond_1

    .line 950
    goto :goto_0

    .line 952
    :cond_1
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 953
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    .line 954
    :goto_0
    return-void
.end method

.method greylist-max-o clearFocusedInCluster(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 935
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 936
    return-void

    .line 938
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearFocusedInCluster()V

    .line 939
    return-void
.end method

.method greylist-max-o computeOpticalInsets()Landroid/graphics/Insets;
    .locals 8

    .line 4305
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutModeOptical()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4306
    const/4 v0, 0x0

    .line 4307
    .local v0, "left":I
    const/4 v1, 0x0

    .line 4308
    .local v1, "top":I
    const/4 v2, 0x0

    .line 4309
    .local v2, "right":I
    const/4 v3, 0x0

    .line 4310
    .local v3, "bottom":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v5, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v4, v5, :cond_1

    .line 4311
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4312
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 4313
    invoke-virtual {v5}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v6

    .line 4314
    .local v6, "insets":Landroid/graphics/Insets;
    iget v7, v6, Landroid/graphics/Insets;->left:I

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4315
    iget v7, v6, Landroid/graphics/Insets;->top:I

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 4316
    iget v7, v6, Landroid/graphics/Insets;->right:I

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 4317
    iget v7, v6, Landroid/graphics/Insets;->bottom:I

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 4310
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "insets":Landroid/graphics/Insets;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4320
    .end local v4    # "i":I
    :cond_1
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v4

    return-object v4

    .line 4322
    .end local v0    # "left":I
    .end local v1    # "top":I
    .end local v2    # "right":I
    .end local v3    # "bottom":I
    :cond_2
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object v0
.end method

.method public greylist-max-o createSnapshot(Landroid/view/ViewDebug$CanvasProvider;Z)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "canvasProvider"    # Landroid/view/ViewDebug$CanvasProvider;
    .param p2, "skipChildren"    # Z

    .line 4270
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4271
    .local v0, "count":I
    const/4 v1, 0x0

    .line 4273
    .local v1, "visibilities":[I
    if-eqz p2, :cond_1

    .line 4274
    new-array v1, v0, [I

    .line 4275
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 4276
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4277
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    aput v4, v1, v2

    .line 4278
    aget v4, v1, v2

    if-nez v4, :cond_0

    .line 4279
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, -0xd

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, Landroid/view/View;->mViewFlags:I

    .line 4275
    .end local v3    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4286
    .end local v2    # "i":I
    :cond_1
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->createSnapshot(Landroid/view/ViewDebug$CanvasProvider;Z)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4288
    if-eqz p2, :cond_2

    .line 4289
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 4290
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4291
    .local v4, "child":Landroid/view/View;
    iget v5, v4, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v5, v5, -0xd

    aget v6, v1, v3

    and-int/lit8 v6, v6, 0xc

    or-int/2addr v5, v6

    iput v5, v4, Landroid/view/View;->mViewFlags:I

    .line 4289
    .end local v4    # "child":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4286
    .end local v3    # "i":I
    :cond_2
    return-object v2

    .line 4288
    :catchall_0
    move-exception v2

    if-eqz p2, :cond_3

    .line 4289
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v0, :cond_3

    .line 4290
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4291
    .restart local v4    # "child":Landroid/view/View;
    iget v5, v4, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v5, v5, -0xd

    aget v6, v1, v3

    and-int/lit8 v6, v6, 0xc

    or-int/2addr v5, v6

    iput v5, v4, Landroid/view/View;->mViewFlags:I

    .line 4289
    .end local v4    # "child":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4295
    .end local v3    # "i":I
    :cond_3
    throw v2
.end method

.method protected whitelist debug(I)V
    .locals 5
    .param p1, "depth"    # I

    .line 7204
    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    .line 7207
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    const-string v1, "View"

    if-eqz v0, :cond_0

    .line 7208
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 7209
    .local v0, "output":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "mFocused"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7210
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7211
    iget-object v2, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->debug(I)V

    .line 7213
    .end local v0    # "output":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 7214
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 7215
    .restart local v0    # "output":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "mDefaultFocus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7216
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7217
    iget-object v2, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->debug(I)V

    .line 7219
    .end local v0    # "output":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 7220
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 7221
    .restart local v0    # "output":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "mFocusedInCluster"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7222
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7223
    iget-object v2, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->debug(I)V

    .line 7225
    .end local v0    # "output":Ljava/lang/String;
    :cond_2
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v0, :cond_3

    .line 7226
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 7227
    .restart local v0    # "output":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7228
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7230
    .end local v0    # "output":Ljava/lang/String;
    :cond_3
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 7231
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 7232
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v3, v3, v2

    .line 7233
    .local v3, "child":Landroid/view/View;
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->debug(I)V

    .line 7231
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7236
    .end local v2    # "i":I
    :cond_4
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v2, :cond_5

    .line 7237
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v2

    .line 7238
    .local v2, "output":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7239
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7241
    .end local v2    # "output":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method greylist-max-o decrementChildUnhandledKeyListeners()V
    .locals 1

    .line 8404
    iget v0, p0, Landroid/view/ViewGroup;->mChildUnhandledKeyListeners:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/view/ViewGroup;->mChildUnhandledKeyListeners:I

    .line 8405
    if-nez v0, :cond_0

    .line 8406
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 8407
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->decrementChildUnhandledKeyListeners()V

    .line 8410
    :cond_0
    return-void
.end method

.method protected greylist-max-o destroyHardwareResources()V
    .locals 3

    .line 5412
    invoke-super {p0}, Landroid/view/View;->destroyHardwareResources()V

    .line 5413
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 5414
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 5415
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->destroyHardwareResources()V

    .line 5414
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5417
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected whitelist detachAllViewsFromParent()V
    .locals 6

    .line 6235
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 6236
    .local v0, "count":I
    if-gtz v0, :cond_0

    .line 6237
    return-void

    .line 6240
    :cond_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 6241
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 6243
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 6244
    aget-object v3, v1, v2

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 6245
    aget-object v3, v1, v2

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/view/View;->setDetached(Z)V

    .line 6246
    aput-object v4, v1, v2

    .line 6243
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 6248
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method protected whitelist detachViewFromParent(I)V
    .locals 2
    .param p1, "index"    # I

    .line 6186
    if-ltz p1, :cond_0

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge p1, v0, :cond_0

    .line 6187
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDetached(Z)V

    .line 6189
    :cond_0
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 6190
    return-void
.end method

.method protected whitelist detachViewFromParent(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 6164
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setDetached(Z)V

    .line 6165
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 6166
    return-void
.end method

.method protected whitelist detachViewsFromParent(II)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 6211
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 6212
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int v1, p1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 6213
    .local v0, "end":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 6214
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setDetached(Z)V

    .line 6213
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6216
    .end local v1    # "i":I
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    .line 6217
    return-void
.end method

.method public greylist-max-o dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z
    .locals 5
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .line 1055
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1056
    return v1

    .line 1058
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1059
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1060
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1061
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/view/View;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1062
    return v1

    .line 1059
    .end local v3    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1065
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 7715
    invoke-super {p0, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 7716
    invoke-virtual {p1}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7717
    return-object p1

    .line 7719
    :cond_0
    sget-boolean v0, Landroid/view/View;->sBrokenInsetsDispatch:Z

    if-eqz v0, :cond_1

    .line 7720
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->brokenDispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    .line 7722
    :cond_1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->newDispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method greylist dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V
    .locals 6
    .param p1, "info"    # Landroid/view/View$AttachInfo;
    .param p2, "visibility"    # I

    .line 3685
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3686
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 3687
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3689
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3690
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3691
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3692
    aget-object v3, v1, v2

    .line 3694
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 3695
    nop

    .line 3696
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    invoke-virtual {p0, p2, v4}, Landroid/view/ViewGroup;->combineVisibility(II)I

    move-result v4

    .line 3695
    invoke-virtual {v3, p1, v4}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 3691
    .end local v3    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3699
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    .line 3700
    .local v2, "transientCount":I
    :goto_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_4

    .line 3701
    iget-object v4, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 3703
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_3

    .line 3704
    nop

    .line 3705
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    invoke-virtual {p0, p2, v5}, Landroid/view/ViewGroup;->combineVisibility(II)I

    move-result v5

    .line 3704
    invoke-virtual {v4, p1, v5}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 3700
    .end local v4    # "view":Landroid/view/View;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3708
    .end local v3    # "i":I
    :cond_4
    return-void
.end method

.method greylist-max-o dispatchCancelPendingInputEvents()V
    .locals 4

    .line 4911
    invoke-super {p0}, Landroid/view/View;->dispatchCancelPendingInputEvents()V

    .line 4913
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4914
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4915
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 4916
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchCancelPendingInputEvents()V

    .line 4915
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4918
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public whitelist dispatchCapturedPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2027
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/16 v1, 0x12

    and-int/2addr v0, v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 2029
    invoke-super {p0, p1}, Landroid/view/View;->dispatchCapturedPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2030
    return v2

    .line 2032
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 2034
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchCapturedPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2035
    return v2

    .line 2038
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V
    .locals 5
    .param p1, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p2, "visibility"    # I

    .line 1673
    and-int/lit8 v0, p2, 0xc

    if-nez v0, :cond_0

    .line 1674
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 1675
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1676
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1677
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1678
    aget-object v3, v1, v2

    .line 1679
    .local v3, "child":Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    or-int/2addr v4, p2

    invoke-virtual {v3, p1, v4}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 1677
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1683
    .end local v0    # "count":I
    .end local v1    # "children":[Landroid/view/View;
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public whitelist dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 1646
    invoke-super {p0, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1647
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1651
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1652
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1653
    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    .line 1654
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_1

    .line 1656
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "child of ViewGroup "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was removed during dispatching, index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ViewGroup"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1661
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public whitelist dispatchCreateViewTranslationRequest(Ljava/util/Map;[ILandroid/view/translation/TranslationCapability;Ljava/util/List;)V
    .locals 3
    .param p2, "supportedFormats"    # [I
    .param p3, "capability"    # Landroid/view/translation/TranslationCapability;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/view/autofill/AutofillId;",
            "[J>;[I",
            "Landroid/view/translation/TranslationCapability;",
            "Ljava/util/List<",
            "Landroid/view/translation/ViewTranslationRequest;",
            ">;)V"
        }
    .end annotation

    .line 9687
    .local p1, "viewIds":Ljava/util/Map;, "Ljava/util/Map<Landroid/view/autofill/AutofillId;[J>;"
    .local p4, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/view/translation/ViewTranslationRequest;>;"
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->dispatchCreateViewTranslationRequest(Ljava/util/Map;[ILandroid/view/translation/TranslationCapability;Ljava/util/List;)V

    .line 9688
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 9689
    .local v0, "childCount":I
    if-nez v0, :cond_0

    .line 9690
    return-void

    .line 9692
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9693
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 9694
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/view/View;->dispatchCreateViewTranslationRequest(Ljava/util/Map;[ILandroid/view/translation/TranslationCapability;Ljava/util/List;)V

    .line 9692
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9697
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method greylist-max-r dispatchDetachedFromWindow()V
    .locals 5

    .line 4141
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V

    .line 4144
    invoke-direct {p0}, Landroid/view/ViewGroup;->exitHoverTargets()V

    .line 4145
    invoke-direct {p0}, Landroid/view/ViewGroup;->exitTooltipHoverTargets()V

    .line 4148
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    .line 4151
    iput-object v0, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    .line 4152
    iput-boolean v1, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    .line 4153
    iget-object v2, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    if-eqz v2, :cond_0

    .line 4154
    invoke-virtual {v2}, Landroid/view/DragEvent;->recycle()V

    .line 4155
    iput-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    .line 4158
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4159
    .local v0, "count":I
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4160
    .local v2, "children":[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 4161
    aget-object v4, v2, v3

    invoke-virtual {v4}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 4160
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4163
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearDisappearingChildren()V

    .line 4164
    iget-object v3, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    .line 4165
    .local v1, "transientCount":I
    :goto_1
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v1, :cond_3

    .line 4166
    iget-object v4, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 4167
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 4165
    .end local v4    # "view":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4169
    .end local v3    # "i":I
    :cond_3
    invoke-super {p0}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 4170
    return-void
.end method

.method public whitelist dispatchDisplayHint(I)V
    .locals 4
    .param p1, "hint"    # I

    .line 1564
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 1565
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1566
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1567
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1568
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 1567
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1570
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method greylist-max-o dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/DragEvent;

    .line 1704
    iget v0, p1, Landroid/view/DragEvent;->mAction:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1710
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z

    .line 1711
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    .line 1713
    :cond_0
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/DragEvent;

    .line 1719
    const/4 v0, 0x0

    .line 1720
    .local v0, "retval":Z
    iget v1, p1, Landroid/view/DragEvent;->mX:F

    .line 1721
    .local v1, "tx":F
    iget v2, p1, Landroid/view/DragEvent;->mY:F

    .line 1722
    .local v2, "ty":F
    iget-object v3, p1, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    .line 1725
    .local v3, "td":Landroid/content/ClipData;
    invoke-direct {p0}, Landroid/view/ViewGroup;->getLocalPoint()Landroid/graphics/PointF;

    move-result-object v4

    .line 1727
    .local v4, "localPoint":Landroid/graphics/PointF;
    iget v5, p1, Landroid/view/DragEvent;->mAction:I

    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_4

    .line 1769
    :pswitch_0
    iget-object v5, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    .line 1770
    .local v5, "childrenInterestedInDrag":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/View;>;"
    if-eqz v5, :cond_2

    .line 1771
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 1773
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1774
    const/4 v0, 0x1

    .line 1776
    .end local v8    # "child":Landroid/view/View;
    :cond_0
    goto :goto_0

    .line 1777
    :cond_1
    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    .line 1779
    :cond_2
    iget-object v7, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    if-eqz v7, :cond_3

    .line 1780
    invoke-virtual {v7}, Landroid/view/DragEvent;->recycle()V

    .line 1781
    iput-object v6, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    .line 1784
    :cond_3
    iget-boolean v6, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    if-eqz v6, :cond_5

    .line 1785
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1786
    const/4 v0, 0x1

    .line 1788
    :cond_4
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    .line 1790
    .end local v5    # "childrenInterestedInDrag":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/View;>;"
    :cond_5
    goto/16 :goto_4

    .line 1795
    :pswitch_1
    iget v5, p1, Landroid/view/DragEvent;->mX:F

    iget v7, p1, Landroid/view/DragEvent;->mY:F

    invoke-virtual {p0, v5, v7, v4}, Landroid/view/ViewGroup;->findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;

    move-result-object v5

    .line 1797
    .local v5, "target":Landroid/view/View;
    iget-object v7, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    if-eq v5, v7, :cond_9

    .line 1798
    sget-boolean v7, Landroid/view/ViewGroup;->sCascadedDragDrop:Z

    if-eqz v7, :cond_8

    .line 1803
    iget v7, p1, Landroid/view/DragEvent;->mAction:I

    .line 1806
    .local v7, "action":I
    const/4 v8, 0x0

    iput v8, p1, Landroid/view/DragEvent;->mX:F

    .line 1807
    iput v8, p1, Landroid/view/DragEvent;->mY:F

    .line 1808
    iput-object v6, p1, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    .line 1810
    iget-object v6, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    if-eqz v6, :cond_6

    .line 1811
    const/4 v6, 0x6

    iput v6, p1, Landroid/view/DragEvent;->mAction:I

    .line 1812
    iget-object v6, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    invoke-virtual {v6, p1}, Landroid/view/View;->dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z

    .line 1815
    :cond_6
    if-eqz v5, :cond_7

    .line 1816
    const/4 v6, 0x5

    iput v6, p1, Landroid/view/DragEvent;->mAction:I

    .line 1817
    invoke-virtual {v5, p1}, Landroid/view/View;->dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z

    .line 1820
    :cond_7
    iput v7, p1, Landroid/view/DragEvent;->mAction:I

    .line 1821
    iput v1, p1, Landroid/view/DragEvent;->mX:F

    .line 1822
    iput v2, p1, Landroid/view/DragEvent;->mY:F

    .line 1823
    iput-object v3, p1, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    .line 1825
    .end local v7    # "action":I
    :cond_8
    iput-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    .line 1828
    :cond_9
    if-nez v5, :cond_a

    iget-boolean v6, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    if-eqz v6, :cond_a

    .line 1829
    move-object v5, p0

    .line 1833
    :cond_a
    if-eqz v5, :cond_13

    .line 1834
    if-eq v5, p0, :cond_d

    .line 1835
    iget v6, v4, Landroid/graphics/PointF;->x:F

    iput v6, p1, Landroid/view/DragEvent;->mX:F

    .line 1836
    iget v6, v4, Landroid/graphics/PointF;->y:F

    iput v6, p1, Landroid/view/DragEvent;->mY:F

    .line 1838
    invoke-virtual {v5, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    .line 1840
    iput v1, p1, Landroid/view/DragEvent;->mX:F

    .line 1841
    iput v2, p1, Landroid/view/DragEvent;->mY:F

    .line 1843
    iget-boolean v6, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    if-eqz v6, :cond_13

    .line 1845
    sget-boolean v6, Landroid/view/ViewGroup;->sCascadedDragDrop:Z

    if-eqz v6, :cond_b

    .line 1846
    move v6, v0

    .local v6, "eventWasConsumed":Z
    goto :goto_1

    .line 1848
    .end local v6    # "eventWasConsumed":Z
    :cond_b
    iget-boolean v6, p1, Landroid/view/DragEvent;->mEventHandlerWasCalled:Z

    .line 1851
    .restart local v6    # "eventWasConsumed":Z
    :goto_1
    if-nez v6, :cond_c

    .line 1852
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    .line 1854
    .end local v6    # "eventWasConsumed":Z
    :cond_c
    goto :goto_4

    .line 1856
    :cond_d
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    goto :goto_4

    .line 1730
    .end local v5    # "target":Landroid/view/View;
    :pswitch_2
    iput-object v6, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    .line 1733
    invoke-static {p1}, Landroid/view/DragEvent;->obtain(Landroid/view/DragEvent;)Landroid/view/DragEvent;

    move-result-object v5

    iput-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    .line 1734
    iget-object v5, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    if-nez v5, :cond_e

    .line 1735
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    goto :goto_2

    .line 1737
    :cond_e
    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    .line 1741
    :goto_2
    iget v5, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1742
    .local v5, "count":I
    iget-object v7, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1743
    .local v7, "children":[Landroid/view/View;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v5, :cond_10

    .line 1744
    aget-object v9, v7, v8

    .line 1745
    .local v9, "child":Landroid/view/View;
    iget v10, v9, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v10, v10, -0x4

    iput v10, v9, Landroid/view/View;->mPrivateFlags2:I

    .line 1746
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_f

    .line 1747
    aget-object v10, v7, v8

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->notifyChildOfDragStart(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 1748
    const/4 v0, 0x1

    .line 1743
    .end local v9    # "child":Landroid/view/View;
    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1754
    .end local v8    # "i":I
    :cond_10
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v8

    iput-boolean v8, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    .line 1755
    if-eqz v8, :cond_11

    .line 1756
    const/4 v0, 0x1

    .line 1759
    :cond_11
    if-nez v0, :cond_12

    .line 1762
    iget-object v8, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    invoke-virtual {v8}, Landroid/view/DragEvent;->recycle()V

    .line 1763
    iput-object v6, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    .line 1765
    .end local v5    # "count":I
    .end local v7    # "children":[Landroid/view/View;
    :cond_12
    nop

    .line 1862
    :cond_13
    :goto_4
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 4432
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4433
    .local v2, "childrenCount":I
    iget-object v3, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4434
    .local v3, "children":[Landroid/view/View;
    iget v4, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4436
    .local v4, "flags":I
    and-int/lit8 v5, v4, 0x8

    if-eqz v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4437
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_1

    .line 4438
    aget-object v6, v3, v5

    .line 4439
    .local v6, "child":Landroid/view/View;
    iget v7, v6, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v7, v7, 0xc

    if-nez v7, :cond_0

    .line 4440
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 4441
    .local v7, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, v6, v7, v5, v2}, Landroid/view/ViewGroup;->attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V

    .line 4442
    invoke-direct {v0, v6}, Landroid/view/ViewGroup;->bindLayoutAnimation(Landroid/view/View;)V

    .line 4437
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4446
    .end local v5    # "i":I
    :cond_1
    iget-object v5, v0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 4447
    .local v5, "controller":Landroid/view/animation/LayoutAnimationController;
    invoke-virtual {v5}, Landroid/view/animation/LayoutAnimationController;->willOverlap()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4448
    iget v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v6, v6, 0x80

    iput v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4451
    :cond_2
    invoke-virtual {v5}, Landroid/view/animation/LayoutAnimationController;->start()V

    .line 4453
    iget v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v6, v6, -0x9

    iput v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4454
    and-int/lit8 v6, v6, -0x11

    iput v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4456
    iget-object v6, v0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v6, :cond_3

    .line 4457
    invoke-virtual {v5}, Landroid/view/animation/LayoutAnimationController;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 4461
    .end local v5    # "controller":Landroid/view/animation/LayoutAnimationController;
    :cond_3
    const/4 v5, 0x0

    .line 4462
    .local v5, "clipSaveCount":I
    and-int/lit8 v6, v4, 0x22

    const/16 v7, 0x22

    const/4 v8, 0x0

    if-ne v6, v7, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    move v6, v8

    .line 4463
    .local v6, "clipToPadding":Z
    :goto_1
    if-eqz v6, :cond_5

    .line 4464
    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->save(I)I

    move-result v5

    .line 4465
    iget v7, v0, Landroid/view/ViewGroup;->mScrollX:I

    iget v10, v0, Landroid/view/ViewGroup;->mPaddingLeft:I

    add-int/2addr v7, v10

    iget v10, v0, Landroid/view/ViewGroup;->mScrollY:I

    iget v11, v0, Landroid/view/ViewGroup;->mPaddingTop:I

    add-int/2addr v10, v11

    iget v11, v0, Landroid/view/ViewGroup;->mScrollX:I

    iget v12, v0, Landroid/view/ViewGroup;->mRight:I

    add-int/2addr v11, v12

    iget v12, v0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v11, v12

    iget v12, v0, Landroid/view/ViewGroup;->mPaddingRight:I

    sub-int/2addr v11, v12

    iget v12, v0, Landroid/view/ViewGroup;->mScrollY:I

    iget v13, v0, Landroid/view/ViewGroup;->mBottom:I

    add-int/2addr v12, v13

    iget v13, v0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v12, v13

    iget v13, v0, Landroid/view/ViewGroup;->mPaddingBottom:I

    sub-int/2addr v12, v13

    invoke-virtual {v1, v7, v10, v11, v12}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 4471
    :cond_5
    iget v7, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v7, v7, -0x41

    iput v7, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 4472
    iget v7, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v7, v7, -0x5

    iput v7, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4474
    const/4 v7, 0x0

    .line 4475
    .local v7, "more":Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getDrawingTime()J

    move-result-wide v10

    .line 4477
    .local v10, "drawingTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->enableZ()V

    .line 4478
    iget-object v12, v0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    if-nez v12, :cond_6

    move v12, v8

    goto :goto_2

    :cond_6
    invoke-virtual {v12}, Landroid/util/IntArray;->size()I

    move-result v12

    .line 4479
    .local v12, "transientCount":I
    :goto_2
    if-eqz v12, :cond_7

    move v13, v8

    goto :goto_3

    :cond_7
    const/4 v13, -0x1

    .line 4482
    .local v13, "transientIndex":I
    :goto_3
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->drawsWithRenderNode(Landroid/graphics/Canvas;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 4483
    const/4 v14, 0x0

    goto :goto_4

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v14

    .line 4484
    .local v14, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :goto_4
    if-nez v14, :cond_9

    .line 4485
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v15

    if-eqz v15, :cond_9

    const/4 v8, 0x1

    goto :goto_5

    :cond_9
    nop

    .line 4486
    .local v8, "customOrder":Z
    :goto_5
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_6
    if-ge v15, v2, :cond_12

    .line 4487
    :goto_7
    if-ltz v13, :cond_e

    iget-object v9, v0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v9, v13}, Landroid/util/IntArray;->get(I)I

    move-result v9

    if-ne v9, v15, :cond_e

    .line 4488
    iget-object v9, v0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 4490
    .local v9, "transientChild":Landroid/view/View;
    if-eqz v9, :cond_b

    move/from16 v16, v4

    .end local v4    # "flags":I
    .local v16, "flags":I
    iget v4, v9, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-eqz v4, :cond_a

    .line 4492
    invoke-virtual {v9}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 4493
    :cond_a
    invoke-virtual {v0, v1, v9, v10, v11}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v4

    or-int/2addr v4, v7

    move v7, v4

    .end local v7    # "more":Z
    .local v4, "more":Z
    goto :goto_8

    .line 4490
    .end local v16    # "flags":I
    .local v4, "flags":I
    .restart local v7    # "more":Z
    :cond_b
    move/from16 v16, v4

    .line 4495
    .end local v4    # "flags":I
    .restart local v16    # "flags":I
    :cond_c
    :goto_8
    add-int/lit8 v13, v13, 0x1

    .line 4496
    if-lt v13, v12, :cond_d

    .line 4497
    const/4 v4, -0x1

    move v13, v4

    .line 4499
    .end local v9    # "transientChild":Landroid/view/View;
    :cond_d
    move/from16 v4, v16

    goto :goto_7

    .line 4487
    .end local v16    # "flags":I
    .restart local v4    # "flags":I
    :cond_e
    move/from16 v16, v4

    .line 4501
    .end local v4    # "flags":I
    .restart local v16    # "flags":I
    invoke-direct {v0, v2, v15, v8}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v4

    .line 4502
    .local v4, "childIndex":I
    invoke-static {v14, v3, v4}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    .line 4503
    .local v9, "child":Landroid/view/View;
    if-eqz v9, :cond_10

    move/from16 v17, v2

    .end local v2    # "childrenCount":I
    .local v17, "childrenCount":I
    iget v2, v9, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v2, v2, 0xc

    if-eqz v2, :cond_f

    .line 4504
    invoke-virtual {v9}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 4505
    :cond_f
    invoke-virtual {v0, v1, v9, v10, v11}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v2

    or-int/2addr v2, v7

    move v7, v2

    .end local v7    # "more":Z
    .local v2, "more":Z
    goto :goto_9

    .line 4503
    .end local v17    # "childrenCount":I
    .local v2, "childrenCount":I
    .restart local v7    # "more":Z
    :cond_10
    move/from16 v17, v2

    .line 4486
    .end local v2    # "childrenCount":I
    .end local v4    # "childIndex":I
    .end local v9    # "child":Landroid/view/View;
    .restart local v17    # "childrenCount":I
    :cond_11
    :goto_9
    add-int/lit8 v15, v15, 0x1

    move/from16 v4, v16

    move/from16 v2, v17

    goto :goto_6

    .end local v16    # "flags":I
    .end local v17    # "childrenCount":I
    .restart local v2    # "childrenCount":I
    .local v4, "flags":I
    :cond_12
    move/from16 v17, v2

    move/from16 v16, v4

    .line 4508
    .end local v2    # "childrenCount":I
    .end local v4    # "flags":I
    .end local v15    # "i":I
    .restart local v16    # "flags":I
    .restart local v17    # "childrenCount":I
    :goto_a
    if-ltz v13, :cond_16

    .line 4510
    iget-object v2, v0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 4512
    .local v2, "transientChild":Landroid/view/View;
    if-eqz v2, :cond_14

    iget v4, v2, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-eqz v4, :cond_13

    .line 4514
    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 4515
    :cond_13
    invoke-virtual {v0, v1, v2, v10, v11}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v4

    or-int/2addr v4, v7

    move v7, v4

    .line 4517
    :cond_14
    add-int/lit8 v13, v13, 0x1

    .line 4518
    if-lt v13, v12, :cond_15

    .line 4519
    goto :goto_b

    .line 4521
    .end local v2    # "transientChild":Landroid/view/View;
    :cond_15
    goto :goto_a

    .line 4522
    :cond_16
    :goto_b
    if-eqz v14, :cond_17

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 4525
    :cond_17
    iget-object v2, v0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    if-eqz v2, :cond_18

    .line 4526
    iget-object v2, v0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 4527
    .local v2, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v9, 0x1

    sub-int/2addr v4, v9

    .line 4529
    .local v4, "disappearingCount":I
    move v9, v4

    .local v9, "i":I
    :goto_c
    if-ltz v9, :cond_18

    .line 4530
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    .line 4531
    .local v15, "child":Landroid/view/View;
    invoke-virtual {v0, v1, v15, v10, v11}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v18

    or-int v7, v7, v18

    .line 4529
    .end local v15    # "child":Landroid/view/View;
    add-int/lit8 v9, v9, -0x1

    goto :goto_c

    .line 4534
    .end local v2    # "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "disappearingCount":I
    .end local v9    # "i":I
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->disableZ()V

    .line 4536
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isShowingLayoutBounds()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 4537
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onDebugDraw(Landroid/graphics/Canvas;)V

    .line 4540
    :cond_19
    if-eqz v6, :cond_1a

    .line 4541
    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4545
    :cond_1a
    iget v2, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4547
    .end local v16    # "flags":I
    .local v2, "flags":I
    and-int/lit8 v4, v2, 0x4

    const/4 v9, 0x4

    if-ne v4, v9, :cond_1b

    .line 4548
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 4551
    :cond_1b
    and-int/lit8 v4, v2, 0x10

    if-nez v4, :cond_1c

    and-int/lit16 v4, v2, 0x200

    if-nez v4, :cond_1c

    iget-object v4, v0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 4552
    invoke-virtual {v4}, Landroid/view/animation/LayoutAnimationController;->isDone()Z

    move-result v4

    if-eqz v4, :cond_1c

    if-nez v7, :cond_1c

    .line 4556
    iget v4, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v4, v4, 0x200

    iput v4, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4557
    new-instance v4, Landroid/view/ViewGroup$2;

    invoke-direct {v4, v0}, Landroid/view/ViewGroup$2;-><init>(Landroid/view/ViewGroup;)V

    .line 4563
    .local v4, "end":Ljava/lang/Runnable;
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 4565
    .end local v4    # "end":Ljava/lang/Runnable;
    :cond_1c
    return-void
.end method

.method public whitelist dispatchDrawableHotspotChanged(FF)V
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 4887
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4888
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 4889
    return-void

    .line 4892
    :cond_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4893
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_5

    .line 4894
    aget-object v3, v1, v2

    .line 4897
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isClickable()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->isLongClickable()Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v5

    .line 4898
    .local v4, "nonActionable":Z
    :goto_1
    iget v7, v3, Landroid/view/View;->mViewFlags:I

    const/high16 v8, 0x400000

    and-int/2addr v7, v8

    if-eqz v7, :cond_2

    move v7, v6

    goto :goto_2

    :cond_2
    move v7, v5

    .line 4899
    .local v7, "duplicatesState":Z
    :goto_2
    if-nez v4, :cond_3

    if-eqz v7, :cond_4

    .line 4900
    :cond_3
    invoke-direct {p0}, Landroid/view/ViewGroup;->getTempLocationF()[F

    move-result-object v8

    .line 4901
    .local v8, "point":[F
    aput p1, v8, v5

    .line 4902
    aput p2, v8, v6

    .line 4903
    invoke-virtual {p0, v8, v3}, Landroid/view/ViewGroup;->transformPointToViewLocal([FLandroid/view/View;)V

    .line 4904
    aget v5, v8, v5

    aget v6, v8, v6

    invoke-virtual {v3, v5, v6}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 4893
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "nonActionable":Z
    .end local v7    # "duplicatesState":Z
    .end local v8    # "point":[F
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4907
    .end local v2    # "i":I
    :cond_5
    return-void
.end method

.method public whitelist dispatchFinishTemporaryDetach()V
    .locals 4

    .line 3674
    invoke-super {p0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 3675
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3676
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3677
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 3678
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 3677
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3680
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected whitelist dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 4208
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 4209
    return-void
.end method

.method protected whitelist dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2588
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/16 v1, 0x12

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2590
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 2591
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 2593
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 2595
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2556
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2557
    .local v0, "childrenCount":I
    if-eqz v0, :cond_5

    .line 2558
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 2559
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 2561
    .local v2, "y":F
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v3

    .line 2562
    .local v3, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 2563
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 2564
    .local v5, "customOrder":Z
    :goto_0
    iget-object v6, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2565
    .local v6, "children":[Landroid/view/View;
    add-int/lit8 v7, v0, -0x1

    .local v7, "i":I
    :goto_1
    if-ltz v7, :cond_4

    .line 2566
    invoke-direct {p0, v0, v7, v5}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v8

    .line 2567
    .local v8, "childIndex":I
    invoke-static {v3, v6, v8}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    .line 2568
    .local v9, "child":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->canReceivePointerEvents()Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x0

    .line 2569
    invoke-virtual {p0, v1, v2, v9, v10}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 2570
    goto :goto_2

    .line 2573
    :cond_1
    invoke-direct {p0, p1, v9}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2574
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2575
    :cond_2
    return v4

    .line 2565
    .end local v8    # "childIndex":I
    .end local v9    # "child":Landroid/view/View;
    :cond_3
    :goto_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 2578
    .end local v7    # "i":I
    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2582
    .end local v1    # "x":F
    .end local v2    # "y":F
    .end local v3    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "customOrder":Z
    .end local v6    # "children":[Landroid/view/View;
    :cond_5
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method protected greylist dispatchGetDisplayList()V
    .locals 7

    .line 4698
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4699
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4700
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 4701
    aget-object v3, v1, v2

    .line 4702
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_1

    iget v4, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-eqz v4, :cond_0

    .line 4703
    invoke-virtual {v3}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 4704
    :cond_0
    invoke-direct {p0, v3}, Landroid/view/ViewGroup;->recreateChildDisplayList(Landroid/view/View;)V

    .line 4700
    .end local v3    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4707
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    .line 4708
    .local v2, "transientCount":I
    :goto_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_6

    .line 4709
    iget-object v4, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 4710
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_5

    iget v5, v4, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v5, v5, 0xc

    if-eqz v5, :cond_4

    .line 4711
    invoke-virtual {v4}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 4712
    :cond_4
    invoke-direct {p0, v4}, Landroid/view/ViewGroup;->recreateChildDisplayList(Landroid/view/View;)V

    .line 4708
    .end local v4    # "child":Landroid/view/View;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4715
    .end local v3    # "i":I
    :cond_6
    iget-object v3, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v3, :cond_7

    .line 4716
    iget-object v3, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v3}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v3

    .line 4717
    .local v3, "overlayView":Landroid/view/View;
    invoke-direct {p0, v3}, Landroid/view/ViewGroup;->recreateChildDisplayList(Landroid/view/View;)V

    .line 4719
    .end local v3    # "overlayView":Landroid/view/View;
    :cond_7
    iget-object v3, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    if-eqz v3, :cond_8

    .line 4720
    iget-object v3, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 4721
    .local v3, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 4722
    .local v4, "disappearingCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v4, :cond_8

    .line 4723
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 4724
    .local v6, "child":Landroid/view/View;
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->recreateChildDisplayList(Landroid/view/View;)V

    .line 4722
    .end local v6    # "child":Landroid/view/View;
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 4727
    .end local v3    # "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "disappearingCount":I
    .end local v5    # "i":I
    :cond_8
    return-void
.end method

.method protected whitelist dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 25
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2126
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 2129
    .local v2, "action":I
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 2130
    .local v3, "interceptHover":Z
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2132
    move-object/from16 v4, p1

    .line 2133
    .local v4, "eventNoHistory":Landroid/view/MotionEvent;
    const/4 v5, 0x0

    .line 2137
    .local v5, "handled":Z
    iget-object v6, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 2138
    .local v6, "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    const/4 v7, 0x0

    iput-object v7, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 2139
    const/16 v12, 0xa

    if-nez v3, :cond_d

    if-eq v2, v12, :cond_d

    .line 2140
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    .line 2141
    .local v13, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    .line 2142
    .local v14, "y":F
    iget v15, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2143
    .local v15, "childrenCount":I
    if-eqz v15, :cond_c

    .line 2144
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v8

    .line 2145
    .local v8, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v8, :cond_0

    .line 2146
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v16

    if-eqz v16, :cond_0

    const/16 v16, 0x1

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    :goto_0
    move/from16 v17, v16

    .line 2147
    .local v17, "customOrder":Z
    iget-object v11, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2148
    .local v11, "children":[Landroid/view/View;
    const/16 v18, 0x0

    .line 2149
    .local v18, "lastHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    add-int/lit8 v19, v15, -0x1

    move-object/from16 v12, v18

    move/from16 v10, v19

    .end local v18    # "lastHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .local v10, "i":I
    .local v12, "lastHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    :goto_1
    if-ltz v10, :cond_b

    .line 2150
    move/from16 v9, v17

    .end local v17    # "customOrder":Z
    .local v9, "customOrder":Z
    invoke-direct {v0, v15, v10, v9}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v7

    .line 2152
    .local v7, "childIndex":I
    move/from16 v20, v3

    .end local v3    # "interceptHover":Z
    .local v20, "interceptHover":Z
    invoke-static {v8, v11, v7}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 2154
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->canReceivePointerEvents()Z

    move-result v21

    if-eqz v21, :cond_9

    .line 2155
    move/from16 v21, v7

    const/4 v7, 0x0

    .end local v7    # "childIndex":I
    .local v21, "childIndex":I
    invoke-virtual {v0, v13, v14, v3, v7}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v22

    if-nez v22, :cond_1

    .line 2156
    move-object/from16 v22, v6

    move/from16 v23, v9

    goto/16 :goto_7

    .line 2161
    :cond_1
    move-object v7, v6

    .line 2163
    .local v7, "hoverTarget":Landroid/view/ViewGroup$HoverTarget;
    const/16 v22, 0x0

    move-object/from16 v24, v22

    move-object/from16 v22, v6

    move-object/from16 v6, v24

    .line 2164
    .local v6, "predecessor":Landroid/view/ViewGroup$HoverTarget;
    .local v22, "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    :goto_2
    if-nez v7, :cond_2

    .line 2165
    invoke-static {v3}, Landroid/view/ViewGroup$HoverTarget;->obtain(Landroid/view/View;)Landroid/view/ViewGroup$HoverTarget;

    move-result-object v7

    .line 2166
    const/16 v23, 0x0

    .line 2167
    .local v23, "wasHovered":Z
    move-object/from16 v6, v22

    move/from16 v17, v23

    move/from16 v23, v9

    const/4 v9, 0x0

    goto :goto_4

    .line 2170
    .end local v23    # "wasHovered":Z
    :cond_2
    move/from16 v23, v9

    .end local v9    # "customOrder":Z
    .local v23, "customOrder":Z
    iget-object v9, v7, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    if-ne v9, v3, :cond_8

    .line 2171
    if-eqz v6, :cond_3

    .line 2172
    iget-object v9, v7, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    iput-object v9, v6, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_3

    .line 2174
    :cond_3
    iget-object v9, v7, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    move-object/from16 v22, v9

    .line 2176
    :goto_3
    const/4 v9, 0x0

    iput-object v9, v7, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 2177
    const/16 v17, 0x1

    .line 2178
    .local v17, "wasHovered":Z
    move-object/from16 v6, v22

    .line 2186
    .end local v22    # "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .local v6, "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    :goto_4
    if-eqz v12, :cond_4

    .line 2187
    iput-object v7, v12, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_5

    .line 2189
    :cond_4
    iput-object v7, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 2191
    :goto_5
    move-object v12, v7

    .line 2194
    const/16 v9, 0x9

    if-ne v2, v9, :cond_5

    .line 2195
    if-nez v17, :cond_7

    .line 2197
    invoke-direct {v0, v1, v3}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v9

    or-int/2addr v5, v9

    goto :goto_6

    .line 2200
    :cond_5
    const/4 v9, 0x7

    if-ne v2, v9, :cond_7

    .line 2201
    if-nez v17, :cond_6

    .line 2203
    invoke-static {v4}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 2204
    const/16 v9, 0x9

    invoke-virtual {v4, v9}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2205
    invoke-direct {v0, v4, v3}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v9

    or-int/2addr v5, v9

    .line 2207
    invoke-virtual {v4, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2209
    invoke-direct {v0, v4, v3}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v9

    or-int/2addr v5, v9

    goto :goto_6

    .line 2213
    :cond_6
    invoke-direct {v0, v1, v3}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v9

    or-int/2addr v5, v9

    .line 2216
    :cond_7
    :goto_6
    if-eqz v5, :cond_a

    .line 2217
    goto :goto_8

    .line 2181
    .end local v17    # "wasHovered":Z
    .local v6, "predecessor":Landroid/view/ViewGroup$HoverTarget;
    .restart local v22    # "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    :cond_8
    move-object v6, v7

    .line 2182
    iget-object v7, v7, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    move/from16 v9, v23

    goto :goto_2

    .line 2154
    .end local v21    # "childIndex":I
    .end local v22    # "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .end local v23    # "customOrder":Z
    .local v6, "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .local v7, "childIndex":I
    .restart local v9    # "customOrder":Z
    :cond_9
    move-object/from16 v22, v6

    move/from16 v21, v7

    move/from16 v23, v9

    .line 2149
    .end local v3    # "child":Landroid/view/View;
    .end local v6    # "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .end local v7    # "childIndex":I
    .end local v9    # "customOrder":Z
    .restart local v22    # "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .restart local v23    # "customOrder":Z
    :goto_7
    move-object/from16 v6, v22

    .end local v22    # "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .restart local v6    # "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    :cond_a
    add-int/lit8 v10, v10, -0x1

    move/from16 v3, v20

    move/from16 v17, v23

    const/4 v7, 0x0

    goto/16 :goto_1

    .end local v20    # "interceptHover":Z
    .end local v23    # "customOrder":Z
    .local v3, "interceptHover":Z
    .local v17, "customOrder":Z
    :cond_b
    move/from16 v20, v3

    move-object/from16 v22, v6

    move/from16 v23, v17

    .line 2220
    .end local v3    # "interceptHover":Z
    .end local v10    # "i":I
    .end local v17    # "customOrder":Z
    .restart local v20    # "interceptHover":Z
    .restart local v23    # "customOrder":Z
    :goto_8
    if-eqz v8, :cond_e

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    goto :goto_9

    .line 2143
    .end local v8    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v11    # "children":[Landroid/view/View;
    .end local v12    # "lastHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .end local v20    # "interceptHover":Z
    .end local v23    # "customOrder":Z
    .restart local v3    # "interceptHover":Z
    :cond_c
    move/from16 v20, v3

    .end local v3    # "interceptHover":Z
    .restart local v20    # "interceptHover":Z
    goto :goto_9

    .line 2139
    .end local v13    # "x":F
    .end local v14    # "y":F
    .end local v15    # "childrenCount":I
    .end local v20    # "interceptHover":Z
    .restart local v3    # "interceptHover":Z
    :cond_d
    move/from16 v20, v3

    .line 2225
    .end local v3    # "interceptHover":Z
    .restart local v20    # "interceptHover":Z
    :cond_e
    :goto_9
    if-eqz v6, :cond_11

    .line 2226
    iget-object v3, v6, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    .line 2229
    .local v3, "child":Landroid/view/View;
    const/16 v7, 0xa

    if-ne v2, v7, :cond_f

    .line 2231
    invoke-direct {v0, v1, v3}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v7

    or-int/2addr v5, v7

    goto :goto_a

    .line 2236
    :cond_f
    const/4 v7, 0x7

    if-ne v2, v7, :cond_10

    .line 2237
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->isHoverExitPending()Z

    move-result v7

    .line 2238
    .local v7, "hoverExitPending":Z
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->setHoverExitPending(Z)V

    .line 2239
    invoke-direct {v0, v1, v3}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    .line 2241
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->setHoverExitPending(Z)V

    .line 2243
    .end local v7    # "hoverExitPending":Z
    :cond_10
    invoke-static {v4}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 2244
    const/16 v7, 0xa

    invoke-virtual {v4, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2245
    invoke-direct {v0, v4, v3}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    .line 2247
    invoke-virtual {v4, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2250
    :goto_a
    iget-object v7, v6, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 2251
    .local v7, "nextOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    invoke-virtual {v6}, Landroid/view/ViewGroup$HoverTarget;->recycle()V

    .line 2252
    move-object v6, v7

    .line 2253
    .end local v3    # "child":Landroid/view/View;
    .end local v7    # "nextOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    goto :goto_9

    .line 2257
    :cond_11
    if-nez v5, :cond_12

    const/16 v3, 0xa

    if-eq v2, v3, :cond_12

    .line 2258
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->isHoverExitPending()Z

    move-result v3

    if-nez v3, :cond_12

    const/4 v3, 0x1

    goto :goto_b

    :cond_12
    const/4 v3, 0x0

    .line 2259
    .local v3, "newHoveredSelf":Z
    :goto_b
    iget-boolean v7, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    if-ne v3, v7, :cond_13

    .line 2260
    if-eqz v3, :cond_18

    .line 2262
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    or-int/2addr v5, v7

    goto :goto_d

    .line 2265
    :cond_13
    if-eqz v7, :cond_16

    .line 2267
    const/16 v7, 0xa

    if-ne v2, v7, :cond_14

    .line 2269
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    or-int/2addr v5, v7

    goto :goto_c

    .line 2273
    :cond_14
    const/4 v7, 0x7

    if-ne v2, v7, :cond_15

    .line 2274
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2276
    :cond_15
    invoke-static {v4}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 2277
    const/16 v7, 0xa

    invoke-virtual {v4, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2278
    invoke-super {v0, v4}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2279
    invoke-virtual {v4, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2281
    :goto_c
    const/4 v7, 0x0

    iput-boolean v7, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    .line 2284
    :cond_16
    if-eqz v3, :cond_18

    .line 2286
    const/16 v7, 0x9

    if-ne v2, v7, :cond_17

    .line 2288
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    or-int/2addr v5, v7

    .line 2289
    const/4 v7, 0x1

    iput-boolean v7, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    goto :goto_d

    .line 2290
    :cond_17
    const/4 v7, 0x7

    if-ne v2, v7, :cond_18

    .line 2292
    invoke-static {v4}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 2293
    const/16 v7, 0x9

    invoke-virtual {v4, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2294
    invoke-super {v0, v4}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    or-int/2addr v5, v7

    .line 2295
    invoke-virtual {v4, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2297
    invoke-super {v0, v4}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    or-int/2addr v5, v7

    .line 2298
    const/4 v7, 0x1

    iput-boolean v7, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    .line 2304
    :cond_18
    :goto_d
    iget-boolean v7, v4, Landroid/view/MotionEvent;->mRecycled:Z

    if-nez v7, :cond_19

    if-eq v4, v1, :cond_19

    .line 2306
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 2310
    :cond_19
    return v5
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1967
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1968
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 1971
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/16 v2, 0x12

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    .line 1973
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1974
    return v1

    .line 1976
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    const/16 v2, 0x10

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2

    .line 1978
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1979
    return v1

    .line 1983
    :cond_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_3

    .line 1984
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 1986
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1955
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/16 v1, 0x12

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 1957
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1958
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 1960
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1962
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dispatchKeyEventTextMultiSelection(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 9726
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->WIDGET_PEN_SUPPORTED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 9727
    return v1

    .line 9729
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 9730
    .local v0, "count":I
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 9731
    .local v2, "children":[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 9732
    aget-object v4, v2, v3

    .line 9733
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchKeyEventTextMultiSelection(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 9734
    const/4 v1, 0x1

    return v1

    .line 9731
    .end local v4    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9737
    .end local v3    # "i":I
    :cond_2
    return v1
.end method

.method public whitelist dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1991
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/16 v1, 0x12

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 1993
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1994
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 1996
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1998
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o dispatchMovedToDisplay(Landroid/view/Display;Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "config"    # Landroid/content/res/Configuration;

    .line 3723
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchMovedToDisplay(Landroid/view/Display;Landroid/content/res/Configuration;)V

    .line 3725
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3726
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3727
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 3728
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->dispatchMovedToDisplay(Landroid/view/Display;Landroid/content/res/Configuration;)V

    .line 3727
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3730
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public whitelist dispatchPointerCaptureChanged(Z)V
    .locals 4
    .param p1, "hasCapture"    # Z

    .line 2043
    invoke-direct {p0}, Landroid/view/ViewGroup;->exitHoverTargets()V

    .line 2045
    invoke-super {p0, p1}, Landroid/view/View;->dispatchPointerCaptureChanged(Z)V

    .line 2046
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2047
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2048
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2049
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPointerCaptureChanged(Z)V

    .line 2048
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2051
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public greylist-max-o dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 3735
    const/4 v0, 0x0

    .line 3736
    .local v0, "handled":Z
    invoke-virtual {p0}, Landroid/view/ViewGroup;->includeForAccessibility()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3737
    invoke-super {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 3738
    if-eqz v0, :cond_0

    .line 3739
    return v0

    .line 3743
    :cond_0
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/view/ViewGroup$ChildListForAccessibility;->obtain(Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$ChildListForAccessibility;

    move-result-object v1

    .line 3745
    .local v1, "children":Landroid/view/ViewGroup$ChildListForAccessibility;
    :try_start_0
    invoke-virtual {v1}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildCount()I

    move-result v2

    .line 3746
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 3747
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3748
    .local v4, "child":Landroid/view/View;
    iget v5, v4, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v5, v5, 0xc

    if-nez v5, :cond_1

    .line 3749
    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v5

    .line 3750
    if-eqz v0, :cond_1

    .line 3751
    nop

    .line 3756
    invoke-virtual {v1}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    .line 3751
    return v0

    .line 3746
    .end local v4    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3756
    .end local v2    # "childCount":I
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v1}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    .line 3757
    nop

    .line 3758
    const/4 v2, 0x0

    return v2

    .line 3756
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    .line 3757
    throw v2
.end method

.method public whitelist dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 5
    .param p1, "structure"    # Landroid/view/ViewStructure;
    .param p2, "flags"    # I

    .line 3859
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 3861
    invoke-virtual {p1}, Landroid/view/ViewStructure;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3862
    return-void

    .line 3865
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3866
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_1

    .line 3867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchProvideAutofillStructure(): not laid out, ignoring "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " children of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3868
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3867
    const-string v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3870
    :cond_1
    return-void

    .line 3873
    :cond_2
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->getChildrenForAutofill(I)Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;

    move-result-object v0

    .line 3874
    .local v0, "children":Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;
    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;->size()I

    move-result v1

    .line 3875
    .local v1, "childrenCount":I
    invoke-virtual {p1, v1}, Landroid/view/ViewStructure;->setChildCount(I)V

    .line 3876
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 3877
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 3878
    .local v3, "child":Landroid/view/View;
    invoke-virtual {p1, v2}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    move-result-object v4

    .line 3879
    .local v4, "cstructure":Landroid/view/ViewStructure;
    invoke-virtual {v3, v4, p2}, Landroid/view/View;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 3876
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "cstructure":Landroid/view/ViewStructure;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3881
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;->recycle()V

    .line 3882
    return-void
.end method

.method public blacklist dispatchProvideContentCaptureStructure()V
    .locals 4

    .line 3887
    invoke-super {p0}, Landroid/view/View;->dispatchProvideContentCaptureStructure()V

    .line 3889
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3891
    :cond_0
    invoke-direct {p0}, Landroid/view/ViewGroup;->getChildrenForContentCapture()Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;

    move-result-object v0

    .line 3892
    .local v0, "children":Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;
    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;->size()I

    move-result v1

    .line 3893
    .local v1, "childrenCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3894
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 3895
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->dispatchProvideContentCaptureStructure()V

    .line 3893
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3897
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;->recycle()V

    .line 3898
    return-void
.end method

.method public whitelist dispatchProvideStructure(Landroid/view/ViewStructure;)V
    .locals 16
    .param p1, "structure"    # Landroid/view/ViewStructure;

    .line 3768
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchProvideStructure(Landroid/view/ViewStructure;)V

    .line 3769
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isAssistBlocked()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewStructure;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_8

    .line 3772
    :cond_0
    iget v3, v1, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3773
    .local v3, "childrenCount":I
    if-gtz v3, :cond_1

    .line 3774
    return-void

    .line 3777
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3778
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_2

    .line 3779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchProvideStructure(): not laid out, ignoring "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " children of "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3780
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getAccessibilityViewId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3779
    const-string v4, "View"

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3782
    :cond_2
    return-void

    .line 3785
    :cond_3
    invoke-virtual {v2, v3}, Landroid/view/ViewStructure;->setChildCount(I)V

    .line 3786
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v4

    .line 3788
    .local v4, "tempPreorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v4, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 3789
    .local v0, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v0, :cond_5

    .line 3790
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v6

    goto :goto_1

    :cond_5
    move v7, v5

    .line 3791
    .local v7, "customOrder":Z
    :goto_1
    const/4 v8, 0x0

    move v9, v8

    move v8, v7

    move-object v7, v0

    .end local v0    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v7, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v8, "customOrder":Z
    .local v9, "i":I
    :goto_2
    if-ge v9, v3, :cond_c

    .line 3794
    :try_start_0
    invoke-direct {v1, v3, v9, v8}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3839
    .local v0, "childIndex":I
    goto/16 :goto_7

    .line 3795
    .end local v0    # "childIndex":I
    :catch_0
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 3796
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    move v10, v9

    .line 3797
    .local v10, "childIndex":I
    iget-object v11, v1, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v12, 0x17

    if-ge v11, v12, :cond_b

    .line 3798
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad getChildDrawingOrder while collecting assist @ "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "ViewGroup"

    invoke-static {v12, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3803
    const/4 v8, 0x0

    .line 3804
    if-lez v9, :cond_a

    .line 3811
    new-array v11, v3, [I

    .line 3812
    .local v11, "permutation":[I
    new-instance v12, Landroid/util/SparseBooleanArray;

    invoke-direct {v12}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 3814
    .local v12, "usedIndices":Landroid/util/SparseBooleanArray;
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_3
    if-ge v13, v9, :cond_6

    .line 3815
    invoke-virtual {v1, v3, v13}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v14

    aput v14, v11, v13

    .line 3816
    aget v14, v11, v13

    invoke-virtual {v12, v14, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3814
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 3820
    .end local v13    # "j":I
    :cond_6
    const/4 v13, 0x0

    .line 3821
    .local v13, "nextIndex":I
    move v14, v9

    .local v14, "j":I
    :goto_4
    if-ge v14, v3, :cond_8

    .line 3822
    :goto_5
    invoke-virtual {v12, v13, v5}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 3823
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 3825
    :cond_7
    aput v13, v11, v14

    .line 3826
    add-int/lit8 v13, v13, 0x1

    .line 3821
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 3829
    .end local v14    # "j":I
    :cond_8
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v7, v14

    .line 3830
    const/4 v14, 0x0

    .restart local v14    # "j":I
    :goto_6
    if-ge v14, v3, :cond_9

    .line 3831
    aget v15, v11, v14

    .line 3832
    .local v15, "index":I
    iget-object v5, v1, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v5, v5, v15

    .line 3833
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3830
    .end local v5    # "child":Landroid/view/View;
    .end local v15    # "index":I
    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x0

    goto :goto_6

    .line 3835
    .end local v11    # "permutation":[I
    .end local v12    # "usedIndices":Landroid/util/SparseBooleanArray;
    .end local v13    # "nextIndex":I
    .end local v14    # "j":I
    :cond_9
    move v0, v10

    goto :goto_7

    .line 3804
    :cond_a
    move v0, v10

    .line 3840
    .end local v10    # "childIndex":I
    .local v0, "childIndex":I
    :goto_7
    iget-object v5, v1, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    invoke-static {v7, v5, v0}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 3842
    .restart local v5    # "child":Landroid/view/View;
    invoke-virtual {v2, v9}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    move-result-object v10

    .line 3843
    .local v10, "cstructure":Landroid/view/ViewStructure;
    invoke-virtual {v5, v10}, Landroid/view/View;->dispatchProvideStructure(Landroid/view/ViewStructure;)V

    .line 3791
    .end local v0    # "childIndex":I
    .end local v5    # "child":Landroid/view/View;
    .end local v10    # "cstructure":Landroid/view/ViewStructure;
    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x0

    goto/16 :goto_2

    .line 3837
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    .local v10, "childIndex":I
    :cond_b
    throw v0

    .line 3845
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v9    # "i":I
    .end local v10    # "childIndex":I
    :cond_c
    if-eqz v7, :cond_d

    .line 3846
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 3848
    :cond_d
    return-void

    .line 3770
    .end local v3    # "childrenCount":I
    .end local v4    # "tempPreorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v8    # "customOrder":Z
    :cond_e
    :goto_8
    return-void
.end method

.method protected whitelist dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 4213
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 4214
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4215
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4216
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 4217
    aget-object v3, v1, v2

    .line 4218
    .local v3, "c":Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    const/high16 v5, 0x20000000

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_0

    .line 4219
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 4216
    .end local v3    # "c":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4222
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method protected whitelist dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 4188
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 4189
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4190
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4191
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 4192
    aget-object v3, v1, v2

    .line 4193
    .local v3, "c":Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    const/high16 v5, 0x20000000

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_0

    .line 4194
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 4191
    .end local v3    # "c":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4197
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method greylist-max-o dispatchScreenStateChanged(I)V
    .locals 4
    .param p1, "screenState"    # I

    .line 3712
    invoke-super {p0, p1}, Landroid/view/View;->dispatchScreenStateChanged(I)V

    .line 3714
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3715
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3716
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 3717
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchScreenStateChanged(I)V

    .line 3716
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3719
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public whitelist dispatchScrollCaptureSearch(Landroid/graphics/Rect;Landroid/graphics/Point;Ljava/util/function/Consumer;)V
    .locals 11
    .param p1, "localVisibleRect"    # Landroid/graphics/Rect;
    .param p2, "windowOffset"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Point;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/ScrollCaptureTarget;",
            ">;)V"
        }
    .end annotation

    .line 7867
    .local p3, "targets":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/ScrollCaptureTarget;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v1, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    iget v2, p0, Landroid/view/ViewGroup;->mRight:I

    iget v3, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v4, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7869
    return-void

    .line 7873
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->dispatchScrollCaptureSearch(Landroid/graphics/Rect;Landroid/graphics/Point;Ljava/util/function/Consumer;)V

    .line 7876
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollCaptureHint()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 7877
    return-void

    .line 7880
    :cond_1
    invoke-direct {p0}, Landroid/view/ViewGroup;->getTempRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 7881
    .local v0, "tmpRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 7882
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_5

    .line 7883
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7885
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_2

    .line 7886
    goto :goto_1

    .line 7893
    :cond_2
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7896
    invoke-direct {p0}, Landroid/view/ViewGroup;->getTempPoint()Landroid/graphics/Point;

    move-result-object v4

    .line 7897
    .local v4, "childWindowOffset":Landroid/graphics/Point;
    iget v5, p2, Landroid/graphics/Point;->x:I

    iget v6, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Point;->set(II)V

    .line 7899
    iget v5, v3, Landroid/view/View;->mLeft:I

    iget v6, p0, Landroid/view/ViewGroup;->mScrollX:I

    sub-int/2addr v5, v6

    .line 7900
    .local v5, "dx":I
    iget v6, v3, Landroid/view/View;->mTop:I

    iget v7, p0, Landroid/view/ViewGroup;->mScrollY:I

    sub-int/2addr v6, v7

    .line 7902
    .local v6, "dy":I
    neg-int v7, v5

    neg-int v8, v6

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 7903
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Point;->offset(II)V

    .line 7905
    const/4 v7, 0x1

    .line 7908
    .local v7, "rectIsVisible":Z
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 7909
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v10, v8, v9}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v7

    .line 7912
    :cond_3
    if-eqz v7, :cond_4

    .line 7913
    invoke-virtual {v3, v0, v4, p3}, Landroid/view/View;->dispatchScrollCaptureSearch(Landroid/graphics/Rect;Landroid/graphics/Point;Ljava/util/function/Consumer;)V

    .line 7882
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childWindowOffset":Landroid/graphics/Point;
    .end local v5    # "dx":I
    .end local v6    # "dy":I
    .end local v7    # "rectIsVisible":Z
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7916
    .end local v2    # "i":I
    :cond_5
    return-void
.end method

.method public whitelist dispatchSetActivated(Z)V
    .locals 4
    .param p1, "activated"    # Z

    .line 4849
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4850
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4851
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 4852
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setActivated(Z)V

    .line 4851
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4854
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected whitelist dispatchSetPressed(Z)V
    .locals 5
    .param p1, "pressed"    # Z

    .line 4858
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4859
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4860
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 4861
    aget-object v3, v0, v2

    .line 4865
    .local v3, "child":Landroid/view/View;
    if-eqz p1, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->isClickable()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->isLongClickable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4866
    :cond_0
    invoke-virtual {v3, p1}, Landroid/view/View;->setPressed(Z)V

    .line 4860
    .end local v3    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4869
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public whitelist dispatchSetSelected(Z)V
    .locals 4
    .param p1, "selected"    # Z

    .line 4840
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4841
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4842
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 4843
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setSelected(Z)V

    .line 4842
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4845
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public whitelist dispatchStartTemporaryDetach()V
    .locals 4

    .line 3659
    invoke-super {p0}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 3660
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3661
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3662
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 3663
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 3662
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3665
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public whitelist dispatchSystemUiVisibilityChanged(I)V
    .locals 4
    .param p1, "visible"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1930
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    .line 1932
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1933
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1934
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1935
    aget-object v3, v1, v2

    .line 1936
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    .line 1934
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1938
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected whitelist dispatchThawSelfOnly(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 4233
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 4234
    return-void
.end method

.method greylist-max-o dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2352
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->semDispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 31
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 2691
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-boolean v2, Landroid/view/ViewRootImpl;->DEBUG_TOUCH_EVENT:Z

    const-string v3, "ViewGroup"

    if-eqz v2, :cond_0

    .line 2692
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchTouchEvent "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2695
    :cond_0
    iget-object v2, v0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 2696
    iget-object v2, v0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v2, v1, v4}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 2701
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->isTargetAccessibilityFocus()Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isAccessibilityFocusedViewOrHost()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2702
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 2706
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    .line 2803
    iget-boolean v2, v0, Landroid/view/ViewGroup;->mSemScrollingByScrollbar:Z

    if-eqz v2, :cond_15

    .line 2804
    return v4

    .line 2742
    :pswitch_0
    iget-boolean v2, v0, Landroid/view/ViewGroup;->mSemScrollingByScrollbar:Z

    if-eqz v2, :cond_15

    .line 2743
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 2744
    .local v2, "newX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 2745
    .local v3, "newY":F
    const/4 v6, 0x0

    .line 2751
    .local v6, "Movement":I
    iget-boolean v7, v0, Landroid/view/ViewGroup;->mSemScrollingVertical:Z

    if-eqz v7, :cond_3

    .line 2752
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->computeVerticalScrollOffset()I

    move-result v7

    .line 2753
    .local v7, "Offset":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->computeVerticalScrollExtent()I

    move-result v8

    .line 2754
    .local v8, "Extent":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->computeVerticalScrollRange()I

    move-result v9

    .line 2755
    .local v9, "Range":I
    iget v10, v0, Landroid/view/ViewGroup;->mSemY:F

    sub-float v10, v3, v10

    .local v10, "Delta":F
    goto :goto_0

    .line 2757
    .end local v7    # "Offset":I
    .end local v8    # "Extent":I
    .end local v9    # "Range":I
    .end local v10    # "Delta":F
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->computeHorizontalScrollOffset()I

    move-result v7

    .line 2758
    .restart local v7    # "Offset":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->computeHorizontalScrollExtent()I

    move-result v8

    .line 2759
    .restart local v8    # "Extent":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->computeHorizontalScrollRange()I

    move-result v9

    .line 2760
    .restart local v9    # "Range":I
    iget v10, v0, Landroid/view/ViewGroup;->mSemX:F

    sub-float v10, v2, v10

    .line 2763
    .restart local v10    # "Delta":F
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isSemUsingAdapterView()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 2764
    if-nez v8, :cond_4

    move v11, v5

    goto :goto_1

    :cond_4
    div-int v11, v9, v8

    int-to-float v11, v11

    mul-float/2addr v11, v10

    float-to-int v11, v11

    :goto_1
    move v6, v11

    .line 2765
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->semGetItemCount()I

    move-result v11

    .line 2767
    .local v11, "itemCount":I
    if-le v11, v4, :cond_6

    .line 2769
    iget-boolean v12, v0, Landroid/view/ViewGroup;->mSemScrollingVertical:Z

    if-eqz v12, :cond_5

    .line 2770
    int-to-float v12, v11

    iget v13, v0, Landroid/view/ViewGroup;->mSemVerticalScrollbarRectRelativePosY:I

    int-to-float v13, v13

    sub-float v13, v3, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    mul-float/2addr v12, v13

    float-to-int v12, v12

    .local v12, "target":I
    goto :goto_2

    .line 2772
    .end local v12    # "target":I
    :cond_5
    int-to-float v12, v11

    iget v13, v0, Landroid/view/ViewGroup;->mSemHorizontalScrollbarRectRelativePosX:I

    int-to-float v13, v13

    sub-float v13, v2, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    mul-float/2addr v12, v13

    float-to-int v12, v12

    .line 2774
    .restart local v12    # "target":I
    :goto_2
    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->semSetSelection(I)V

    .line 2775
    .end local v12    # "target":I
    goto :goto_3

    .line 2776
    :cond_6
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->semSmoothScrollBy(I)V

    .line 2778
    .end local v11    # "itemCount":I
    :goto_3
    goto :goto_a

    .line 2779
    :cond_7
    if-nez v8, :cond_8

    move v11, v5

    goto :goto_5

    :cond_8
    iget-boolean v11, v0, Landroid/view/ViewGroup;->mSemScrollingVertical:Z

    if-eqz v11, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v11

    goto :goto_4

    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v11

    :goto_4
    add-int/2addr v11, v9

    div-int/2addr v11, v8

    int-to-float v11, v11

    mul-float/2addr v11, v10

    float-to-int v11, v11

    :goto_5
    move v6, v11

    .line 2781
    if-gez v6, :cond_d

    .line 2782
    iget-boolean v11, v0, Landroid/view/ViewGroup;->mSemScrollingVertical:Z

    if-eqz v11, :cond_b

    .line 2783
    add-int v11, v6, v7

    if-ltz v11, :cond_a

    move v11, v6

    goto :goto_6

    :cond_a
    neg-int v11, v7

    :goto_6
    invoke-virtual {v0, v5, v11}, Landroid/view/ViewGroup;->scrollBy(II)V

    goto :goto_a

    .line 2785
    :cond_b
    add-int v11, v6, v7

    if-ltz v11, :cond_c

    move v11, v6

    goto :goto_7

    :cond_c
    neg-int v11, v7

    :goto_7
    invoke-virtual {v0, v11, v5}, Landroid/view/ViewGroup;->scrollBy(II)V

    goto :goto_a

    .line 2787
    :cond_d
    if-lez v6, :cond_11

    .line 2788
    iget-boolean v11, v0, Landroid/view/ViewGroup;->mSemScrollingVertical:Z

    if-eqz v11, :cond_f

    .line 2789
    add-int v11, v6, v7

    add-int/2addr v11, v8

    if-gt v11, v9, :cond_e

    move v11, v6

    goto :goto_8

    :cond_e
    sub-int v11, v9, v8

    sub-int/2addr v11, v7

    :goto_8
    invoke-virtual {v0, v5, v11}, Landroid/view/ViewGroup;->scrollBy(II)V

    goto :goto_a

    .line 2791
    :cond_f
    add-int v11, v6, v7

    add-int/2addr v11, v8

    if-gt v11, v9, :cond_10

    move v11, v6

    goto :goto_9

    :cond_10
    sub-int v11, v9, v8

    sub-int/2addr v11, v7

    :goto_9
    invoke-virtual {v0, v11, v5}, Landroid/view/ViewGroup;->scrollBy(II)V

    .line 2796
    :cond_11
    :goto_a
    iput v2, v0, Landroid/view/ViewGroup;->mSemX:F

    .line 2797
    iput v3, v0, Landroid/view/ViewGroup;->mSemY:F

    .line 2798
    return v4

    .line 2732
    .end local v2    # "newX":F
    .end local v3    # "newY":F
    .end local v6    # "Movement":I
    .end local v7    # "Offset":I
    .end local v8    # "Extent":I
    .end local v9    # "Range":I
    .end local v10    # "Delta":F
    :pswitch_1
    iget-boolean v2, v0, Landroid/view/ViewGroup;->mSemScrollingByScrollbar:Z

    if-eqz v2, :cond_15

    .line 2733
    iput-boolean v5, v0, Landroid/view/ViewGroup;->mSemScrollingByScrollbar:Z

    .line 2734
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    move-result v2

    if-nez v2, :cond_12

    .line 2735
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    .line 2737
    :cond_12
    return v4

    .line 2708
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup;->mSemX:F

    .line 2709
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup;->mSemY:F

    .line 2711
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isVerticalScrollBarEnabled()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->semIsShowingScrollbar()Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, v0, Landroid/view/ViewGroup;->mSemVerticalScrollbarRect:Landroid/graphics/Rect;

    iget v6, v0, Landroid/view/ViewGroup;->mSemX:F

    float-to-int v6, v6

    .line 2712
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v0, Landroid/view/ViewGroup;->mSemY:F

    float-to-int v7, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2713
    iput-boolean v4, v0, Landroid/view/ViewGroup;->mSemScrollingByScrollbar:Z

    .line 2714
    iput-boolean v4, v0, Landroid/view/ViewGroup;->mSemScrollingVertical:Z

    .line 2715
    iget v2, v0, Landroid/view/ViewGroup;->mSemY:F

    float-to-int v2, v2

    iget-object v6, v0, Landroid/view/ViewGroup;->mSemVerticalScrollbarRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v6

    iput v2, v0, Landroid/view/ViewGroup;->mSemVerticalScrollbarRectRelativePosY:I

    .line 2716
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    .line 2718
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isHorizontalScrollBarEnabled()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->semIsShowingScrollbar()Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, v0, Landroid/view/ViewGroup;->mSemHorizontalScrollbarRect:Landroid/graphics/Rect;

    iget v6, v0, Landroid/view/ViewGroup;->mSemX:F

    float-to-int v6, v6

    .line 2719
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v0, Landroid/view/ViewGroup;->mSemY:F

    float-to-int v7, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2720
    iput-boolean v4, v0, Landroid/view/ViewGroup;->mSemScrollingByScrollbar:Z

    .line 2721
    iput-boolean v5, v0, Landroid/view/ViewGroup;->mSemScrollingVertical:Z

    .line 2722
    iget v2, v0, Landroid/view/ViewGroup;->mSemX:F

    float-to-int v2, v2

    iget-object v6, v0, Landroid/view/ViewGroup;->mSemHorizontalScrollbarRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v6

    iput v2, v0, Landroid/view/ViewGroup;->mSemHorizontalScrollbarRectRelativePosX:I

    .line 2723
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    .line 2725
    :cond_14
    iget-boolean v2, v0, Landroid/view/ViewGroup;->mSemScrollingByScrollbar:Z

    if-eqz v2, :cond_15

    .line 2726
    return v4

    .line 2810
    :cond_15
    const/4 v2, 0x0

    .line 2811
    .local v2, "handled":Z
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 2812
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 2813
    .local v6, "action":I
    and-int/lit16 v7, v6, 0xff

    .line 2816
    .local v7, "actionMasked":I
    const/16 v8, 0xd3

    if-eqz v7, :cond_16

    if-ne v7, v8, :cond_17

    .line 2823
    :cond_16
    invoke-direct/range {p0 .. p1}, Landroid/view/ViewGroup;->cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V

    .line 2824
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->resetTouchState()V

    .line 2829
    :cond_17
    if-eqz v7, :cond_19

    if-eq v7, v8, :cond_19

    iget-object v9, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v9, :cond_18

    goto :goto_b

    .line 2844
    :cond_18
    const/4 v9, 0x1

    .local v9, "intercepted":Z
    goto :goto_e

    .line 2834
    .end local v9    # "intercepted":Z
    :cond_19
    :goto_b
    iget v9, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v10, 0x80000

    and-int/2addr v9, v10

    if-eqz v9, :cond_1a

    move v9, v4

    goto :goto_c

    :cond_1a
    move v9, v5

    .line 2835
    .local v9, "disallowIntercept":Z
    :goto_c
    if-nez v9, :cond_1b

    .line 2836
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    .line 2837
    .local v10, "intercepted":Z
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->setAction(I)V

    move v9, v10

    goto :goto_d

    .line 2839
    .end local v10    # "intercepted":Z
    :cond_1b
    const/4 v10, 0x0

    move v9, v10

    .line 2841
    .local v9, "intercepted":Z
    :goto_d
    nop

    .line 2849
    :goto_e
    if-nez v9, :cond_1c

    iget-object v10, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v10, :cond_1d

    .line 2850
    :cond_1c
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 2854
    :cond_1d
    invoke-static/range {p0 .. p0}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    move-result v10

    if-nez v10, :cond_1f

    const/4 v10, 0x3

    if-ne v7, v10, :cond_1e

    goto :goto_f

    :cond_1e
    move v10, v5

    goto :goto_10

    :cond_1f
    :goto_f
    move v10, v4

    .line 2858
    .local v10, "canceled":Z
    :goto_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v11

    const/16 v12, 0x2002

    if-ne v11, v12, :cond_20

    move v11, v4

    goto :goto_11

    :cond_20
    move v11, v5

    .line 2859
    .local v11, "isMouseEvent":Z
    :goto_11
    iget v12, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v13, 0x200000

    and-int/2addr v12, v13

    if-eqz v12, :cond_21

    if-nez v11, :cond_21

    move v12, v4

    goto :goto_12

    :cond_21
    move v12, v5

    .line 2861
    .local v12, "split":Z
    :goto_12
    const/4 v13, 0x0

    .line 2862
    .local v13, "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    const/4 v14, 0x0

    .line 2863
    .local v14, "alreadyDispatchedToNewTouchTarget":Z
    const/4 v15, 0x7

    if-nez v10, :cond_37

    if-nez v9, :cond_37

    .line 2869
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->isTargetAccessibilityFocus()Z

    move-result v16

    if-eqz v16, :cond_22

    .line 2870
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->findChildWithAccessibilityFocus()Landroid/view/View;

    move-result-object v16

    goto :goto_13

    :cond_22
    const/16 v16, 0x0

    .line 2872
    .local v16, "childWithAccessibilityFocus":Landroid/view/View;
    :goto_13
    if-eqz v7, :cond_25

    if-eq v7, v8, :cond_25

    if-eqz v12, :cond_23

    const/4 v8, 0x5

    if-eq v7, v8, :cond_25

    :cond_23
    if-ne v7, v15, :cond_24

    goto :goto_14

    :cond_24
    move/from16 v22, v2

    move/from16 v24, v6

    move/from16 v26, v11

    move v6, v12

    move/from16 v21, v14

    const/4 v2, 0x0

    goto/16 :goto_22

    .line 2878
    :cond_25
    :goto_14
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    .line 2879
    .local v8, "actionIndex":I
    if-eqz v12, :cond_26

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    shl-int v17, v4, v17

    goto :goto_15

    .line 2880
    :cond_26
    const/16 v17, -0x1

    :goto_15
    move/from16 v18, v17

    .line 2884
    .local v18, "idBitsToAssign":I
    move/from16 v15, v18

    .end local v18    # "idBitsToAssign":I
    .local v15, "idBitsToAssign":I
    invoke-direct {v0, v15}, Landroid/view/ViewGroup;->removePointersFromTouchTargets(I)V

    .line 2886
    iget v4, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2887
    .local v4, "childrenCount":I
    if-nez v13, :cond_34

    if-eqz v4, :cond_34

    .line 2889
    if-eqz v11, :cond_27

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXCursorPosition()F

    move-result v19

    goto :goto_16

    :cond_27
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    :goto_16
    move/from16 v20, v19

    .line 2891
    .local v20, "x":F
    if-eqz v11, :cond_28

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYCursorPosition()F

    move-result v19

    goto :goto_17

    :cond_28
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    :goto_17
    move/from16 v21, v19

    .line 2894
    .local v21, "y":F
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->buildTouchDispatchChildList()Ljava/util/ArrayList;

    move-result-object v5

    .line 2895
    .local v5, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v5, :cond_29

    .line 2896
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v22

    if-eqz v22, :cond_29

    const/16 v22, 0x1

    goto :goto_18

    :cond_29
    const/16 v22, 0x0

    :goto_18
    move/from16 v23, v22

    .line 2897
    .local v23, "customOrder":Z
    move/from16 v22, v2

    .end local v2    # "handled":Z
    .local v22, "handled":Z
    iget-object v2, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2898
    .local v2, "children":[Landroid/view/View;
    add-int/lit8 v24, v4, -0x1

    move/from16 v25, v8

    move/from16 v8, v24

    move/from16 v24, v6

    move-object/from16 v6, v16

    .end local v16    # "childWithAccessibilityFocus":Landroid/view/View;
    .local v6, "childWithAccessibilityFocus":Landroid/view/View;
    .local v8, "i":I
    .local v24, "action":I
    .local v25, "actionIndex":I
    :goto_19
    if-ltz v8, :cond_33

    .line 2899
    move/from16 v26, v11

    move-object/from16 v16, v13

    move/from16 v11, v23

    .end local v13    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .end local v23    # "customOrder":Z
    .local v11, "customOrder":Z
    .local v16, "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .local v26, "isMouseEvent":Z
    invoke-direct {v0, v4, v8, v11}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v13

    .line 2901
    .local v13, "childIndex":I
    move/from16 v23, v8

    .end local v8    # "i":I
    .local v23, "i":I
    invoke-static {v5, v2, v13}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    .line 2908
    .local v8, "child":Landroid/view/View;
    if-eqz v6, :cond_2b

    .line 2909
    if-eq v6, v8, :cond_2a

    .line 2910
    move-object/from16 v30, v2

    move-object/from16 v27, v6

    move v6, v12

    move-object/from16 v13, v16

    move/from16 v28, v20

    move/from16 v29, v21

    move/from16 v8, v23

    const/4 v2, 0x0

    move/from16 v20, v11

    move/from16 v21, v14

    goto/16 :goto_1e

    .line 2912
    :cond_2a
    const/4 v6, 0x0

    .line 2913
    move/from16 v23, v4

    .line 2916
    :cond_2b
    invoke-virtual {v8}, Landroid/view/View;->canReceivePointerEvents()Z

    move-result v27

    if-eqz v27, :cond_32

    .line 2917
    move-object/from16 v27, v6

    move/from16 v6, v20

    move/from16 v20, v11

    move/from16 v11, v21

    move/from16 v21, v14

    const/4 v14, 0x0

    .end local v14    # "alreadyDispatchedToNewTouchTarget":Z
    .local v6, "x":F
    .local v11, "y":F
    .local v20, "customOrder":Z
    .local v21, "alreadyDispatchedToNewTouchTarget":Z
    .local v27, "childWithAccessibilityFocus":Landroid/view/View;
    invoke-virtual {v0, v6, v11, v8, v14}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v28

    if-nez v28, :cond_2c

    move-object/from16 v30, v2

    move/from16 v28, v6

    move/from16 v29, v11

    move v6, v12

    const/4 v2, 0x0

    goto/16 :goto_1d

    .line 2922
    :cond_2c
    invoke-direct {v0, v8}, Landroid/view/ViewGroup;->getTouchTarget(Landroid/view/View;)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v14

    .line 2923
    .end local v16    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .local v14, "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    if-eqz v14, :cond_2d

    .line 2926
    move/from16 v28, v6

    .end local v6    # "x":F
    .local v28, "x":F
    iget v6, v14, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    or-int/2addr v6, v15

    iput v6, v14, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 2927
    move-object/from16 v30, v2

    move/from16 v29, v11

    move v6, v12

    move-object v13, v14

    move/from16 v14, v21

    move-object/from16 v16, v27

    const/4 v2, 0x0

    goto/16 :goto_1f

    .line 2930
    .end local v28    # "x":F
    .restart local v6    # "x":F
    :cond_2d
    move/from16 v28, v6

    .end local v6    # "x":F
    .restart local v28    # "x":F
    invoke-static {v8}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 2931
    const/4 v6, 0x0

    invoke-direct {v0, v1, v6, v8, v15}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v16

    if-eqz v16, :cond_31

    .line 2933
    move/from16 v29, v11

    move v6, v12

    .end local v11    # "y":F
    .end local v12    # "split":Z
    .local v6, "split":Z
    .local v29, "y":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v11

    iput-wide v11, v0, Landroid/view/ViewGroup;->mLastTouchDownTime:J

    .line 2934
    if-eqz v5, :cond_30

    .line 2936
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1a
    if-ge v11, v4, :cond_2f

    .line 2937
    aget-object v12, v2, v13

    move-object/from16 v30, v2

    .end local v2    # "children":[Landroid/view/View;
    .local v30, "children":[Landroid/view/View;
    iget-object v2, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v2, v2, v11

    if-ne v12, v2, :cond_2e

    .line 2938
    iput v11, v0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 2939
    goto :goto_1b

    .line 2936
    :cond_2e
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v30

    goto :goto_1a

    .end local v30    # "children":[Landroid/view/View;
    .restart local v2    # "children":[Landroid/view/View;
    :cond_2f
    move-object/from16 v30, v2

    .end local v2    # "children":[Landroid/view/View;
    .end local v11    # "j":I
    .restart local v30    # "children":[Landroid/view/View;
    :goto_1b
    goto :goto_1c

    .line 2943
    .end local v30    # "children":[Landroid/view/View;
    .restart local v2    # "children":[Landroid/view/View;
    :cond_30
    move-object/from16 v30, v2

    .end local v2    # "children":[Landroid/view/View;
    .restart local v30    # "children":[Landroid/view/View;
    iput v13, v0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 2945
    :goto_1c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup;->mLastTouchDownX:F

    .line 2946
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup;->mLastTouchDownY:F

    .line 2947
    invoke-direct {v0, v8, v15}, Landroid/view/ViewGroup;->addTouchTarget(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v2

    .line 2948
    .end local v14    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .local v2, "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    const/4 v14, 0x1

    .line 2949
    .end local v21    # "alreadyDispatchedToNewTouchTarget":Z
    .local v14, "alreadyDispatchedToNewTouchTarget":Z
    move-object v13, v2

    move-object/from16 v16, v27

    const/4 v2, 0x0

    goto :goto_1f

    .line 2954
    .end local v6    # "split":Z
    .end local v29    # "y":F
    .end local v30    # "children":[Landroid/view/View;
    .local v2, "children":[Landroid/view/View;
    .local v11, "y":F
    .restart local v12    # "split":Z
    .local v14, "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .restart local v21    # "alreadyDispatchedToNewTouchTarget":Z
    :cond_31
    move-object/from16 v30, v2

    move/from16 v29, v11

    move v6, v12

    .end local v2    # "children":[Landroid/view/View;
    .end local v11    # "y":F
    .end local v12    # "split":Z
    .restart local v6    # "split":Z
    .restart local v29    # "y":F
    .restart local v30    # "children":[Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    move-object v13, v14

    move/from16 v8, v23

    goto :goto_1e

    .line 2916
    .end local v27    # "childWithAccessibilityFocus":Landroid/view/View;
    .end local v28    # "x":F
    .end local v29    # "y":F
    .end local v30    # "children":[Landroid/view/View;
    .restart local v2    # "children":[Landroid/view/View;
    .local v6, "childWithAccessibilityFocus":Landroid/view/View;
    .local v11, "customOrder":Z
    .restart local v12    # "split":Z
    .local v14, "alreadyDispatchedToNewTouchTarget":Z
    .restart local v16    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .local v20, "x":F
    .local v21, "y":F
    :cond_32
    move-object/from16 v30, v2

    move-object/from16 v27, v6

    move v6, v12

    move/from16 v28, v20

    move/from16 v29, v21

    const/4 v2, 0x0

    move/from16 v20, v11

    move/from16 v21, v14

    .line 2918
    .end local v2    # "children":[Landroid/view/View;
    .end local v11    # "customOrder":Z
    .end local v12    # "split":Z
    .end local v14    # "alreadyDispatchedToNewTouchTarget":Z
    .local v6, "split":Z
    .local v20, "customOrder":Z
    .local v21, "alreadyDispatchedToNewTouchTarget":Z
    .restart local v27    # "childWithAccessibilityFocus":Landroid/view/View;
    .restart local v28    # "x":F
    .restart local v29    # "y":F
    .restart local v30    # "children":[Landroid/view/View;
    :goto_1d
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 2919
    move-object/from16 v13, v16

    move/from16 v8, v23

    .line 2898
    .end local v16    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .end local v23    # "i":I
    .local v8, "i":I
    .local v13, "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    :goto_1e
    const/4 v11, -0x1

    add-int/2addr v8, v11

    move v12, v6

    move/from16 v23, v20

    move/from16 v14, v21

    move/from16 v11, v26

    move-object/from16 v6, v27

    move/from16 v20, v28

    move/from16 v21, v29

    move-object/from16 v2, v30

    goto/16 :goto_19

    .end local v26    # "isMouseEvent":Z
    .end local v27    # "childWithAccessibilityFocus":Landroid/view/View;
    .end local v28    # "x":F
    .end local v29    # "y":F
    .end local v30    # "children":[Landroid/view/View;
    .restart local v2    # "children":[Landroid/view/View;
    .local v6, "childWithAccessibilityFocus":Landroid/view/View;
    .local v11, "isMouseEvent":Z
    .restart local v12    # "split":Z
    .restart local v14    # "alreadyDispatchedToNewTouchTarget":Z
    .local v20, "x":F
    .local v21, "y":F
    .local v23, "customOrder":Z
    :cond_33
    move-object/from16 v30, v2

    move-object/from16 v27, v6

    move/from16 v26, v11

    move v6, v12

    move-object/from16 v16, v13

    move/from16 v28, v20

    move/from16 v29, v21

    move/from16 v20, v23

    const/4 v2, 0x0

    move/from16 v23, v8

    move/from16 v21, v14

    .end local v2    # "children":[Landroid/view/View;
    .end local v8    # "i":I
    .end local v11    # "isMouseEvent":Z
    .end local v12    # "split":Z
    .end local v13    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .end local v14    # "alreadyDispatchedToNewTouchTarget":Z
    .local v6, "split":Z
    .restart local v16    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .local v20, "customOrder":Z
    .local v21, "alreadyDispatchedToNewTouchTarget":Z
    .local v23, "i":I
    .restart local v26    # "isMouseEvent":Z
    .restart local v27    # "childWithAccessibilityFocus":Landroid/view/View;
    .restart local v28    # "x":F
    .restart local v29    # "y":F
    .restart local v30    # "children":[Landroid/view/View;
    move-object/from16 v16, v27

    .line 2956
    .end local v21    # "alreadyDispatchedToNewTouchTarget":Z
    .end local v23    # "i":I
    .end local v27    # "childWithAccessibilityFocus":Landroid/view/View;
    .restart local v13    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .restart local v14    # "alreadyDispatchedToNewTouchTarget":Z
    .local v16, "childWithAccessibilityFocus":Landroid/view/View;
    :goto_1f
    if-eqz v5, :cond_35

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_20

    .line 2887
    .end local v5    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v20    # "customOrder":Z
    .end local v22    # "handled":Z
    .end local v24    # "action":I
    .end local v25    # "actionIndex":I
    .end local v26    # "isMouseEvent":Z
    .end local v28    # "x":F
    .end local v29    # "y":F
    .end local v30    # "children":[Landroid/view/View;
    .local v2, "handled":Z
    .local v6, "action":I
    .local v8, "actionIndex":I
    .restart local v11    # "isMouseEvent":Z
    .restart local v12    # "split":Z
    :cond_34
    move/from16 v22, v2

    move/from16 v24, v6

    move/from16 v25, v8

    move/from16 v26, v11

    move v6, v12

    move/from16 v21, v14

    const/4 v2, 0x0

    .line 2959
    .end local v2    # "handled":Z
    .end local v8    # "actionIndex":I
    .end local v11    # "isMouseEvent":Z
    .end local v12    # "split":Z
    .end local v14    # "alreadyDispatchedToNewTouchTarget":Z
    .local v6, "split":Z
    .restart local v21    # "alreadyDispatchedToNewTouchTarget":Z
    .restart local v22    # "handled":Z
    .restart local v24    # "action":I
    .restart local v25    # "actionIndex":I
    .restart local v26    # "isMouseEvent":Z
    move/from16 v14, v21

    .end local v21    # "alreadyDispatchedToNewTouchTarget":Z
    .restart local v14    # "alreadyDispatchedToNewTouchTarget":Z
    :cond_35
    :goto_20
    if-nez v13, :cond_38

    iget-object v5, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v5, :cond_38

    .line 2962
    iget-object v5, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object v13, v5

    .line 2963
    :goto_21
    iget-object v5, v13, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v5, :cond_36

    .line 2964
    iget-object v13, v13, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_21

    .line 2966
    :cond_36
    iget v5, v13, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    or-int/2addr v5, v15

    iput v5, v13, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    goto :goto_23

    .line 2863
    .end local v4    # "childrenCount":I
    .end local v15    # "idBitsToAssign":I
    .end local v16    # "childWithAccessibilityFocus":Landroid/view/View;
    .end local v22    # "handled":Z
    .end local v24    # "action":I
    .end local v25    # "actionIndex":I
    .end local v26    # "isMouseEvent":Z
    .restart local v2    # "handled":Z
    .local v6, "action":I
    .restart local v11    # "isMouseEvent":Z
    .restart local v12    # "split":Z
    :cond_37
    move/from16 v22, v2

    move/from16 v24, v6

    move/from16 v26, v11

    move v6, v12

    move/from16 v21, v14

    const/4 v2, 0x0

    .line 2972
    .end local v2    # "handled":Z
    .end local v11    # "isMouseEvent":Z
    .end local v12    # "split":Z
    .end local v14    # "alreadyDispatchedToNewTouchTarget":Z
    .local v6, "split":Z
    .restart local v21    # "alreadyDispatchedToNewTouchTarget":Z
    .restart local v22    # "handled":Z
    .restart local v24    # "action":I
    .restart local v26    # "isMouseEvent":Z
    :goto_22
    move/from16 v14, v21

    .end local v21    # "alreadyDispatchedToNewTouchTarget":Z
    .restart local v14    # "alreadyDispatchedToNewTouchTarget":Z
    :cond_38
    :goto_23
    iget-object v4, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-nez v4, :cond_39

    .line 2974
    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v10, v3, v2}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v2

    .end local v22    # "handled":Z
    .restart local v2    # "handled":Z
    goto :goto_29

    .line 2979
    .end local v2    # "handled":Z
    .restart local v22    # "handled":Z
    :cond_39
    const/4 v4, 0x0

    .line 2980
    .local v4, "predecessor":Landroid/view/ViewGroup$TouchTarget;
    iget-object v5, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2981
    .local v5, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_24
    if-eqz v5, :cond_41

    .line 2982
    iget-object v8, v5, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 2983
    .local v8, "next":Landroid/view/ViewGroup$TouchTarget;
    if-eqz v14, :cond_3a

    if-ne v5, v13, :cond_3a

    .line 2984
    const/4 v11, 0x1

    move/from16 v22, v11

    .end local v22    # "handled":Z
    .local v11, "handled":Z
    goto :goto_28

    .line 2987
    .end local v11    # "handled":Z
    .restart local v22    # "handled":Z
    :cond_3a
    iget-object v11, v5, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-eqz v11, :cond_40

    .line 2988
    iget-object v11, v5, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    invoke-static {v11}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    move-result v11

    if-nez v11, :cond_3c

    if-eqz v9, :cond_3b

    goto :goto_25

    :cond_3b
    move v11, v2

    goto :goto_26

    :cond_3c
    :goto_25
    const/4 v11, 0x1

    .line 2990
    .local v11, "cancelChild":Z
    :goto_26
    iget-object v12, v5, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    iget v15, v5, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    invoke-direct {v0, v1, v11, v12, v15}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v12

    if-eqz v12, :cond_3d

    .line 2992
    const/4 v12, 0x1

    move/from16 v22, v12

    .line 2994
    :cond_3d
    if-eqz v11, :cond_3f

    .line 2995
    if-nez v4, :cond_3e

    .line 2996
    iput-object v8, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_27

    .line 2998
    :cond_3e
    iput-object v8, v4, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 3000
    :goto_27
    invoke-virtual {v5}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 3001
    move-object v5, v8

    .line 3002
    goto :goto_24

    .line 3004
    .end local v11    # "cancelChild":Z
    :cond_3f
    goto :goto_28

    .line 3005
    :cond_40
    const-string v11, "Skip dispatching event because target.child is null."

    invoke-static {v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3009
    :goto_28
    move-object v4, v5

    .line 3010
    move-object v5, v8

    .line 3011
    .end local v8    # "next":Landroid/view/ViewGroup$TouchTarget;
    goto :goto_24

    .line 2981
    :cond_41
    move/from16 v2, v22

    .line 3015
    .end local v4    # "predecessor":Landroid/view/ViewGroup$TouchTarget;
    .end local v5    # "target":Landroid/view/ViewGroup$TouchTarget;
    .end local v22    # "handled":Z
    .restart local v2    # "handled":Z
    :goto_29
    if-nez v10, :cond_43

    const/4 v3, 0x1

    if-eq v7, v3, :cond_43

    const/16 v3, 0xd4

    if-eq v7, v3, :cond_43

    const/4 v3, 0x7

    if-ne v7, v3, :cond_42

    goto :goto_2a

    .line 3022
    :cond_42
    if-eqz v6, :cond_45

    const/4 v3, 0x6

    if-ne v7, v3, :cond_45

    .line 3023
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 3024
    .local v3, "actionIndex":I
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    const/4 v5, 0x1

    shl-int v4, v5, v4

    .line 3025
    .local v4, "idBitsToRemove":I
    invoke-direct {v0, v4}, Landroid/view/ViewGroup;->removePointersFromTouchTargets(I)V

    goto :goto_2b

    .line 3021
    .end local v3    # "actionIndex":I
    .end local v4    # "idBitsToRemove":I
    :cond_43
    :goto_2a
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->resetTouchState()V

    goto :goto_2b

    .line 2811
    .end local v6    # "split":Z
    .end local v7    # "actionMasked":I
    .end local v9    # "intercepted":Z
    .end local v10    # "canceled":Z
    .end local v13    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .end local v14    # "alreadyDispatchedToNewTouchTarget":Z
    .end local v24    # "action":I
    .end local v26    # "isMouseEvent":Z
    :cond_44
    move/from16 v22, v2

    .line 3029
    :cond_45
    :goto_2b
    if-nez v2, :cond_46

    iget-object v3, v0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v3, :cond_46

    .line 3030
    iget-object v3, v0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 3032
    :cond_46
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2003
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2004
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onTrackballEvent(Landroid/view/MotionEvent;I)V

    .line 2007
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/16 v2, 0x12

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    .line 2009
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2010
    return v1

    .line 2012
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    const/16 v2, 0x10

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2

    .line 2014
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2015
    return v1

    .line 2019
    :cond_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_3

    .line 2020
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 2022
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o dispatchUnhandledKeyEvent(Landroid/view/KeyEvent;)Landroid/view/View;
    .locals 5
    .param p1, "evt"    # Landroid/view/KeyEvent;

    .line 8414
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasUnhandledKeyListener()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 8415
    return-object v1

    .line 8417
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v0

    .line 8418
    .local v0, "orderedViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_3

    .line 8420
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 8421
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 8422
    .local v3, "v":Landroid/view/View;
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchUnhandledKeyEvent(Landroid/view/KeyEvent;)Landroid/view/View;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8423
    .local v4, "consumer":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 8424
    nop

    .line 8428
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8424
    return-object v4

    .line 8420
    .end local v3    # "v":Landroid/view/View;
    .end local v4    # "consumer":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 8428
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8429
    goto :goto_2

    .line 8428
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8429
    throw v1

    .line 8431
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "i":I
    :goto_1
    if-ltz v2, :cond_5

    .line 8432
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 8433
    .restart local v3    # "v":Landroid/view/View;
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchUnhandledKeyEvent(Landroid/view/KeyEvent;)Landroid/view/View;

    move-result-object v4

    .line 8434
    .restart local v4    # "consumer":Landroid/view/View;
    if-eqz v4, :cond_4

    .line 8435
    return-object v4

    .line 8431
    .end local v3    # "v":Landroid/view/View;
    .end local v4    # "consumer":Landroid/view/View;
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 8439
    .end local v2    # "i":I
    :cond_5
    :goto_2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onUnhandledKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 8440
    return-object p0

    .line 8442
    :cond_6
    return-object v1
.end method

.method public whitelist dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .line 1172
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1173
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1172
    :goto_0
    return v0
.end method

.method greylist dispatchViewAdded(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 5349
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 5350
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_0

    .line 5351
    invoke-interface {v0, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 5354
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/view/View;->mOnAddRemoveListener:Landroid/view/View$OnAddRemoveListener;

    if-eqz v0, :cond_1

    .line 5355
    iget-object v0, p1, Landroid/view/View;->mOnAddRemoveListener:Landroid/view/View$OnAddRemoveListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnAddRemoveListener;->onViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 5358
    :cond_1
    return-void
.end method

.method greylist dispatchViewRemoved(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 5371
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 5372
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_0

    .line 5373
    invoke-interface {v0, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 5376
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/view/View;->mOnAddRemoveListener:Landroid/view/View$OnAddRemoveListener;

    if-eqz v0, :cond_1

    .line 5377
    iget-object v0, p1, Landroid/view/View;->mOnAddRemoveListener:Landroid/view/View$OnAddRemoveListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnAddRemoveListener;->onViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 5380
    :cond_1
    return-void
.end method

.method greylist-max-o dispatchVisibilityAggregated(Z)Z
    .locals 4
    .param p1, "isVisible"    # Z

    .line 1630
    invoke-super {p0, p1}, Landroid/view/View;->dispatchVisibilityAggregated(Z)Z

    move-result p1

    .line 1631
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1632
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1633
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1637
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 1638
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchVisibilityAggregated(Z)Z

    .line 1633
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1641
    .end local v2    # "i":I
    :cond_1
    return p1
.end method

.method protected whitelist dispatchVisibilityChanged(Landroid/view/View;I)V
    .locals 4
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 1610
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 1611
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1612
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1613
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1614
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 1613
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1616
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public whitelist dispatchWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasFocus"    # Z

    .line 1512
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 1513
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1514
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1515
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1516
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 1515
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1518
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public whitelist dispatchWindowInsetsAnimationEnd(Landroid/view/WindowInsetsAnimation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/WindowInsetsAnimation;

    .line 7841
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowInsetsAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    .line 7842
    iget v0, p0, Landroid/view/ViewGroup;->mInsetsAnimationDispatchMode:I

    if-nez v0, :cond_0

    .line 7843
    return-void

    .line 7845
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7846
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7847
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchWindowInsetsAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    .line 7846
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7849
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public whitelist dispatchWindowInsetsAnimationPrepare(Landroid/view/WindowInsetsAnimation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/WindowInsetsAnimation;

    .line 7786
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowInsetsAnimationPrepare(Landroid/view/WindowInsetsAnimation;)V

    .line 7790
    iget v0, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit16 v0, v0, 0x800

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 7791
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFrameworkOptionalFitsSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 7792
    .local v0, "isOptionalFitSystemWindows":Z
    :goto_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_2

    .line 7793
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/view/View$ListenerInfo;->mWindowInsetsAnimationCallback:Landroid/view/WindowInsetsAnimation$Callback;

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mContentOnApplyWindowInsetsListener:Landroid/view/Window$OnContentApplyWindowInsetsListener;

    if-eqz v2, :cond_2

    .line 7795
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowSystemUiVisibility()I

    move-result v2

    and-int/lit16 v2, v2, 0x600

    if-nez v2, :cond_2

    .line 7796
    iput v1, p0, Landroid/view/ViewGroup;->mInsetsAnimationDispatchMode:I

    .line 7797
    return-void

    .line 7800
    :cond_2
    iget v1, p0, Landroid/view/ViewGroup;->mInsetsAnimationDispatchMode:I

    if-nez v1, :cond_3

    .line 7801
    return-void

    .line 7803
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 7804
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 7805
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowInsetsAnimationPrepare(Landroid/view/WindowInsetsAnimation;)V

    .line 7804
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 7807
    .end local v2    # "i":I
    :cond_4
    return-void
.end method

.method public whitelist dispatchWindowInsetsAnimationProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .locals 3
    .param p1, "insets"    # Landroid/view/WindowInsets;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowInsets;",
            "Ljava/util/List<",
            "Landroid/view/WindowInsetsAnimation;",
            ">;)",
            "Landroid/view/WindowInsets;"
        }
    .end annotation

    .line 7828
    .local p2, "runningAnimations":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInsetsAnimation;>;"
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchWindowInsetsAnimationProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 7829
    iget v0, p0, Landroid/view/ViewGroup;->mInsetsAnimationDispatchMode:I

    if-nez v0, :cond_0

    .line 7830
    return-object p1

    .line 7832
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7833
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7834
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->dispatchWindowInsetsAnimationProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;

    .line 7833
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7836
    .end local v1    # "i":I
    :cond_1
    return-object p1
.end method

.method public whitelist dispatchWindowInsetsAnimationStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;
    .locals 3
    .param p1, "animation"    # Landroid/view/WindowInsetsAnimation;
    .param p2, "bounds"    # Landroid/view/WindowInsetsAnimation$Bounds;

    .line 7813
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchWindowInsetsAnimationStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;

    move-result-object p2

    .line 7814
    iget v0, p0, Landroid/view/ViewGroup;->mInsetsAnimationDispatchMode:I

    if-nez v0, :cond_0

    .line 7815
    return-object p2

    .line 7817
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7818
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7819
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->dispatchWindowInsetsAnimationStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;

    .line 7818
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7821
    .end local v1    # "i":I
    :cond_1
    return-object p2
.end method

.method public whitelist dispatchWindowSystemUiVisiblityChanged(I)V
    .locals 4
    .param p1, "visible"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1917
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    .line 1919
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1920
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1921
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1922
    aget-object v3, v1, v2

    .line 1923
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    .line 1921
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1925
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public whitelist dispatchWindowVisibilityChanged(I)V
    .locals 4
    .param p1, "visibility"    # I

    .line 1620
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 1621
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1622
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1623
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1624
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 1623
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1626
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected whitelist drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .line 4748
    invoke-virtual {p2, p1, p0, p3, p4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;Landroid/view/ViewGroup;J)Z

    move-result v0

    return v0
.end method

.method protected whitelist drawableStateChanged()V
    .locals 6

    .line 7930
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 7932
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_2

    .line 7933
    and-int/lit16 v0, v0, 0x2000

    if-nez v0, :cond_1

    .line 7938
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 7939
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 7941
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 7942
    aget-object v3, v0, v2

    .line 7943
    .local v3, "child":Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    const/high16 v5, 0x400000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 7944
    invoke-virtual {v3}, Landroid/view/View;->refreshDrawableState()V

    .line 7941
    .end local v3    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7934
    .end local v0    # "children":[Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "addStateFromChildren cannot be enabled if a child has duplicateParentState set to true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7948
    :cond_2
    return-void
.end method

.method protected greylist-max-r encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 4
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 9634
    invoke-super {p0, p1}, Landroid/view/View;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 9636
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const-string v1, "focus:descendantFocusability"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 9637
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v0

    const-string v1, "drawing:clipChildren"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 9638
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v0

    const-string v1, "drawing:clipToPadding"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 9639
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v0

    const-string v1, "drawing:childrenDrawingOrderEnabled"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 9640
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPersistentDrawingCache()I

    move-result v0

    const-string v1, "drawing:persistentDrawingCache"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 9642
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 9643
    .local v0, "n":I
    int-to-short v1, v0

    const-string/jumbo v2, "meta:__childCount__"

    invoke-virtual {p1, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;S)V

    .line 9644
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9645
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "meta:__child__"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/ViewHierarchyEncoder;->addPropertyKey(Ljava/lang/String;)V

    .line 9646
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->encode(Landroid/view/ViewHierarchyEncoder;)V

    .line 9644
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9648
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public whitelist endViewTransition(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 7556
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 7557
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7558
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 7559
    .local v0, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7560
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7561
    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 7562
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7563
    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7565
    :cond_0
    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_1

    .line 7566
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 7568
    :cond_1
    iget-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_2

    .line 7569
    const/4 v1, 0x0

    iput-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 7572
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 7575
    .end local v0    # "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_3
    return-void
.end method

.method public whitelist findFocus()Landroid/view/View;
    .locals 1

    .line 1258
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1259
    return-object p0

    .line 1262
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1263
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1265
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method greylist-max-o findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "outLocalPoint"    # Landroid/graphics/PointF;

    .line 1868
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1869
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1870
    .local v1, "children":[Landroid/view/View;
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 1871
    aget-object v3, v1, v2

    .line 1872
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->canAcceptDrag()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1873
    goto :goto_1

    .line 1876
    :cond_0
    invoke-virtual {p0, p1, p2, v3, p3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1877
    return-object v3

    .line 1870
    .end local v3    # "child":Landroid/view/View;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1880
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method public greylist-max-o findNamedViews(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 8378
    .local p1, "namedElements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mGhostView:Landroid/view/GhostView;

    if-nez v0, :cond_0

    .line 8379
    return-void

    .line 8381
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->findNamedViews(Ljava/util/Map;)V

    .line 8382
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 8383
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 8384
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8385
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->findNamedViews(Ljava/util/Map;)V

    .line 8383
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8387
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public whitelist findOnBackInvokedDispatcherForChild(Landroid/view/View;Landroid/view/View;)Landroid/window/OnBackInvokedDispatcher;
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "requester"    # Landroid/view/View;

    .line 9713
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 9714
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 9715
    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->findOnBackInvokedDispatcherForChild(Landroid/view/View;Landroid/view/View;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v1

    return-object v1

    .line 9717
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public greylist-max-o findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 6
    .param p1, "accessibilityId"    # I

    .line 1467
    invoke-super {p0, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 1468
    .local v0, "foundView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1469
    return-object v0

    .line 1472
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1473
    return-object v2

    .line 1476
    :cond_1
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1477
    .local v1, "childrenCount":I
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1478
    .local v3, "children":[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_3

    .line 1479
    aget-object v5, v3, v4

    .line 1480
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 1481
    if-eqz v0, :cond_2

    .line 1482
    return-object v0

    .line 1478
    .end local v5    # "child":Landroid/view/View;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1486
    .end local v4    # "i":I
    :cond_3
    return-object v2
.end method

.method public greylist-max-o findViewByAutofillIdTraversal(I)Landroid/view/View;
    .locals 5
    .param p1, "autofillId"    # I

    .line 1492
    invoke-super {p0, p1}, Landroid/view/View;->findViewByAutofillIdTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 1493
    .local v0, "foundView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1494
    return-object v0

    .line 1497
    :cond_0
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1498
    .local v1, "childrenCount":I
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1499
    .local v2, "children":[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 1500
    aget-object v4, v2, v3

    .line 1501
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4, p1}, Landroid/view/View;->findViewByAutofillIdTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 1502
    if-eqz v0, :cond_1

    .line 1503
    return-object v0

    .line 1499
    .end local v4    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1507
    .end local v3    # "i":I
    :cond_2
    const/4 v3, 0x0

    return-object v3
.end method

.method protected greylist-max-o findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p2, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/util/function/Predicate<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .line 5021
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/view/View;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5022
    return-object p0

    .line 5025
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5026
    .local v0, "where":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5028
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 5029
    aget-object v3, v0, v2

    .line 5031
    .local v3, "v":Landroid/view/View;
    if-eq v3, p2, :cond_1

    iget v4, v3, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    .line 5032
    invoke-virtual {v3, p1}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v3

    .line 5034
    if-eqz v3, :cond_1

    .line 5035
    return-object v3

    .line 5028
    .end local v3    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5040
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method protected greylist-max-o findViewTraversal(I)Landroid/view/View;
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 4966
    iget v0, p0, Landroid/view/ViewGroup;->mID:I

    if-ne p1, v0, :cond_0

    .line 4967
    return-object p0

    .line 4970
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4971
    .local v0, "where":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4973
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 4974
    aget-object v3, v0, v2

    .line 4975
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_1

    iget v4, v3, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    .line 4977
    invoke-virtual {v3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 4979
    if-eqz v3, :cond_1

    .line 4980
    return-object v3

    .line 4973
    .end local v3    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4985
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method protected greylist-max-o findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 5
    .param p1, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 4993
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTag:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4994
    return-object p0

    .line 4997
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4998
    .local v0, "where":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5000
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 5001
    aget-object v3, v0, v2

    .line 5003
    .local v3, "v":Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    .line 5004
    invoke-virtual {v3, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    .line 5006
    if-eqz v3, :cond_1

    .line 5007
    return-object v3

    .line 5000
    .end local v3    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5012
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method public whitelist findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .locals 5
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation

    .line 1452
    .local p1, "outViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 1453
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1454
    .local v0, "childrenCount":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1455
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1456
    aget-object v3, v1, v2

    .line 1457
    .local v3, "child":Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_0

    iget v4, v3, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_0

    .line 1459
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 1455
    .end local v3    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1462
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method greylist-max-o finishAnimatingView(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .line 7487
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 7488
    .local v0, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_1

    .line 7489
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7490
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7492
    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    .line 7493
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 7496
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 7497
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 7501
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v1

    if-nez v1, :cond_2

    .line 7502
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 7505
    :cond_2
    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 7506
    invoke-virtual {p1}, Landroid/view/View;->onAnimationEnd()V

    .line 7509
    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x10001

    and-int/2addr v1, v2

    iput v1, p1, Landroid/view/View;->mPrivateFlags:I

    .line 7511
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 7513
    :cond_3
    return-void
.end method

.method public whitelist focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .line 1078
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isRootNamespace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1082
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1083
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    .line 1084
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1086
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist focusableViewAvailable(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 958
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_2

    .line 961
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_2

    .line 963
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->shouldBlockFocusForTouchscreen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 971
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x40000

    if-ne v0, v1, :cond_2

    .line 972
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    .line 974
    :cond_2
    return-void
.end method

.method public whitelist gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 12
    .param p1, "region"    # Landroid/graphics/Region;

    .line 7631
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x200

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 7632
    .local v0, "meOpaque":Z
    :goto_0
    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 7634
    return v2

    .line 7636
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    .line 7642
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 7643
    .local v3, "childrenCount":I
    const/4 v4, 0x1

    .line 7644
    .local v4, "noneOfTheChildrenAreTransparent":Z
    if-lez v3, :cond_6

    .line 7645
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v5

    .line 7646
    .local v5, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v5, :cond_2

    .line 7647
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v2

    goto :goto_1

    :cond_2
    move v6, v1

    .line 7648
    .local v6, "customOrder":Z
    :goto_1
    iget-object v7, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 7649
    .local v7, "children":[Landroid/view/View;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v3, :cond_5

    .line 7650
    invoke-direct {p0, v3, v8, v6}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v9

    .line 7651
    .local v9, "childIndex":I
    invoke-static {v5, v7, v9}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    .line 7652
    .local v10, "child":Landroid/view/View;
    iget v11, v10, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v11, v11, 0xc

    if-eqz v11, :cond_3

    invoke-virtual {v10}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 7653
    :cond_3
    invoke-virtual {v10, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 7654
    const/4 v4, 0x0

    .line 7649
    .end local v9    # "childIndex":I
    .end local v10    # "child":Landroid/view/View;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 7658
    .end local v8    # "i":I
    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 7660
    .end local v5    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v6    # "customOrder":Z
    .end local v7    # "children":[Landroid/view/View;
    :cond_6
    if-nez v0, :cond_7

    if-eqz v4, :cond_8

    :cond_7
    move v1, v2

    :cond_8
    return v1
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 7199
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 7170
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 7188
    return-object p1
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 4044
    const-class v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .line 7279
    if-ltz p1, :cond_1

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 7282
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v0, v0, p1

    return-object v0

    .line 7280
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getChildCount()I
    .locals 1

    .line 7268
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    return v0
.end method

.method public final whitelist getChildDrawingOrder(I)I
    .locals 1
    .param p1, "drawingPosition"    # I

    .line 4623
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v0

    return v0
.end method

.method protected whitelist getChildDrawingOrder(II)I
    .locals 0
    .param p1, "childCount"    # I
    .param p2, "drawingPosition"    # I

    .line 4606
    return p2
.end method

.method protected whitelist getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .line 4951
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o getChildTransformation()Landroid/view/animation/Transformation;
    .locals 1

    .line 4955
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    if-nez v0, :cond_0

    .line 4956
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    .line 4958
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    return-object v0
.end method

.method public whitelist getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;
    .param p3, "offset"    # Landroid/graphics/Point;

    .line 6702
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;Z)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;Z)Z
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;
    .param p3, "offset"    # Landroid/graphics/Point;
    .param p4, "forceParentCheck"    # Z

    .line 6716
    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 6717
    .local v0, "rect":Landroid/graphics/RectF;
    :goto_0
    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 6719
    invoke-virtual {p1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6720
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 6723
    :cond_1
    iget v1, p1, Landroid/view/View;->mLeft:I

    iget v2, p0, Landroid/view/ViewGroup;->mScrollX:I

    sub-int/2addr v1, v2

    .line 6724
    .local v1, "dx":I
    iget v2, p1, Landroid/view/View;->mTop:I

    iget v3, p0, Landroid/view/ViewGroup;->mScrollY:I

    sub-int/2addr v2, v3

    .line 6726
    .local v2, "dy":I
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 6728
    if-eqz p3, :cond_4

    .line 6729
    invoke-virtual {p1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v3

    if-nez v3, :cond_3

    .line 6730
    iget-object v3, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    goto :goto_1

    .line 6731
    :cond_2
    const/4 v3, 0x2

    new-array v3, v3, [F

    :goto_1
    nop

    .line 6732
    .local v3, "position":[F
    iget v4, p3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 6733
    iget v4, p3, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    const/4 v6, 0x1

    aput v4, v3, v6

    .line 6734
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 6735
    aget v4, v3, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p3, Landroid/graphics/Point;->x:I

    .line 6736
    aget v4, v3, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p3, Landroid/graphics/Point;->y:I

    .line 6738
    .end local v3    # "position":[F
    :cond_3
    iget v3, p3, Landroid/graphics/Point;->x:I

    add-int/2addr v3, v1

    iput v3, p3, Landroid/graphics/Point;->x:I

    .line 6739
    iget v3, p3, Landroid/graphics/Point;->y:I

    add-int/2addr v3, v2

    iput v3, p3, Landroid/graphics/Point;->y:I

    .line 6742
    :cond_4
    iget v3, p0, Landroid/view/ViewGroup;->mRight:I

    iget v4, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v3, v4

    .line 6743
    .local v3, "width":I
    iget v4, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v5, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v4, v5

    .line 6745
    .local v4, "height":I
    const/4 v5, 0x1

    .line 6746
    .local v5, "rectIsVisible":Z
    iget-object v6, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v6, Landroid/view/ViewGroup;

    .line 6747
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 6749
    :cond_5
    int-to-float v6, v3

    int-to-float v7, v4

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v8, v6, v7}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v5

    .line 6752
    :cond_6
    if-nez p4, :cond_7

    if-eqz v5, :cond_8

    :cond_7
    iget v6, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/16 v7, 0x22

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_8

    .line 6755
    iget v6, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    int-to-float v6, v6

    iget v7, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    int-to-float v7, v7

    iget v8, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    sub-int v8, v3, v8

    int-to-float v8, v8

    iget v9, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    sub-int v9, v4, v9

    int-to-float v9, v9

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v5

    .line 6759
    :cond_8
    if-nez p4, :cond_9

    if-eqz v5, :cond_a

    :cond_9
    iget-object v6, p0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    if-eqz v6, :cond_a

    .line 6761
    iget-object v6, p0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget-object v7, p0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    iget-object v8, p0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    iget-object v9, p0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v5

    .line 6764
    :cond_a
    iget v6, v0, Landroid/graphics/RectF;->left:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    iget v7, v0, Landroid/graphics/RectF;->top:F

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v7, v7

    iget v8, v0, Landroid/graphics/RectF;->right:F

    float-to-double v8, v8

    .line 6765
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    .line 6764
    invoke-virtual {p2, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 6767
    if-nez p4, :cond_b

    if-eqz v5, :cond_d

    :cond_b
    iget-object v6, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_d

    .line 6768
    iget-object v6, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_c

    .line 6769
    iget-object v6, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v6, Landroid/view/ViewGroup;

    .line 6770
    invoke-virtual {v6, p0, p2, p3, p4}, Landroid/view/ViewGroup;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;Z)Z

    move-result v5

    goto :goto_2

    .line 6772
    :cond_c
    iget-object v6, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v6, p0, p2, p3}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v5

    .line 6775
    :cond_d
    :goto_2
    return v5
.end method

.method public whitelist getClipChildren()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .line 4777
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist getClipToPadding()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .line 4835
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    move-result v0

    return v0
.end method

.method greylist-max-o getDeepestFocusedChild()Landroid/view/View;
    .locals 3

    .line 1226
    move-object v0, p0

    .line 1227
    .local v0, "v":Landroid/view/View;
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1228
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1229
    return-object v0

    .line 1231
    :cond_0
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 1233
    :cond_2
    return-object v1
.end method

.method public whitelist getDescendantFocusability()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x20000
                to = "FOCUS_BEFORE_DESCENDANTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x40000
                to = "FOCUS_AFTER_DESCENDANTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x60000
                to = "FOCUS_BLOCK_DESCENDANTS"
            .end subannotation
        }
    .end annotation

    .line 818
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x60000

    and-int/2addr v0, v1

    return v0
.end method

.method public whitelist getFocusedChild()Landroid/view/View;
    .locals 1

    .line 1222
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    return-object v0
.end method

.method public whitelist getLayoutAnimation()Landroid/view/animation/LayoutAnimationController;
    .locals 1

    .line 6847
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    return-object v0
.end method

.method public whitelist getLayoutAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    .line 7925
    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method public whitelist getLayoutMode()I
    .locals 2

    .line 7135
    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 7136
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 7137
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutMode()I

    move-result v0

    goto :goto_0

    :cond_0
    sget v0, Landroid/view/ViewGroup;->LAYOUT_MODE_DEFAULT:I

    .line 7138
    .local v0, "inheritedLayoutMode":I
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/view/ViewGroup;->setLayoutMode(IZ)V

    .line 7140
    .end local v0    # "inheritedLayoutMode":I
    :cond_1
    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    return v0
.end method

.method public whitelist getLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 1

    .line 5886
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    return-object v0
.end method

.method public whitelist getNestedScrollAxes()I
    .locals 1

    .line 8350
    iget v0, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    return v0
.end method

.method greylist-max-o getNumChildrenForAccessibility()I
    .locals 4

    .line 4104
    const/4 v0, 0x0

    .line 4105
    .local v0, "numChildrenForAccessibility":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 4106
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4107
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->includeForAccessibility()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4108
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4109
    :cond_0
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 4110
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    .line 4111
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getNumChildrenForAccessibility()I

    move-result v3

    add-int/2addr v0, v3

    .line 4105
    .end local v2    # "child":Landroid/view/View;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4114
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public whitelist getOverlay()Landroid/view/ViewGroupOverlay;
    .locals 2

    .line 4585
    iget-object v0, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    if-nez v0, :cond_0

    .line 4586
    new-instance v0, Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/ViewGroupOverlay;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    .line 4588
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    check-cast v0, Landroid/view/ViewGroupOverlay;

    return-object v0
.end method

.method public bridge synthetic whitelist getOverlay()Landroid/view/ViewOverlay;
    .locals 1

    .line 139
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPersistentDrawingCache()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "ANIMATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "SCROLLING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "ALL"
            .end subannotation
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7054
    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    return v0
.end method

.method greylist-max-o getScrollIndicatorBounds(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "out"    # Landroid/graphics/Rect;

    .line 4753
    invoke-super {p0, p1}, Landroid/view/View;->getScrollIndicatorBounds(Landroid/graphics/Rect;)V

    .line 4757
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4758
    .local v0, "clipToPadding":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 4759
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 4760
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 4761
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 4762
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 4764
    :cond_1
    return-void
.end method

.method public whitelist getTouchscreenBlocksFocus()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

    .line 1437
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist getTransientView(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .line 5189
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 5192
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    .line 5190
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getTransientViewCount()I
    .locals 1

    .line 5155
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public greylist-max-o getTransientViewIndex(I)I
    .locals 1
    .param p1, "position"    # I

    .line 5170
    if-ltz p1, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 5173
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->get(I)I

    move-result v0

    return v0

    .line 5171
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method greylist-max-o handleFocusGainInternal(ILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 845
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 846
    invoke-virtual {v0, p0}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 847
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 848
    iput-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    .line 850
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->handleFocusGainInternal(ILandroid/graphics/Rect;)V

    .line 851
    return-void
.end method

.method greylist-max-o hasDefaultFocus()Z
    .locals 1

    .line 924
    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/view/View;->hasDefaultFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public whitelist hasFocus()Z
    .locals 1

    .line 1243
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method greylist-max-o hasFocusable(ZZ)Z
    .locals 3
    .param p1, "allowAutoFocus"    # Z
    .param p2, "dispatchExplicit"    # Z

    .line 1275
    iget v0, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1276
    return v1

    .line 1280
    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusable()I

    move-result v0

    const/16 v2, 0x10

    if-eq v0, v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1281
    const/4 v0, 0x1

    return v0

    .line 1285
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    .line 1286
    .local v0, "descendantFocusability":I
    const/high16 v2, 0x60000

    if-eq v0, v2, :cond_3

    .line 1287
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->hasFocusableChild(Z)Z

    move-result v1

    return v1

    .line 1290
    :cond_3
    return v1
.end method

.method greylist-max-o hasFocusableChild(Z)Z
    .locals 5
    .param p1, "dispatchExplicit"    # Z

    .line 1295
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1296
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1298
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 1299
    aget-object v3, v1, v2

    .line 1303
    .local v3, "child":Landroid/view/View;
    if-eqz p1, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->hasExplicitFocusable()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-nez p1, :cond_2

    .line 1304
    invoke-virtual {v3}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1305
    :cond_1
    const/4 v4, 0x1

    return v4

    .line 1298
    .end local v3    # "child":Landroid/view/View;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1309
    .end local v2    # "i":I
    :cond_3
    const/4 v2, 0x0

    return v2
.end method

.method protected greylist-max-o hasHoveredChild()Z
    .locals 1

    .line 2459
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist hasTransientState()Z
    .locals 1

    .line 1167
    iget v0, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    if-gtz v0, :cond_1

    invoke-super {p0}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method greylist-max-o hasUnhandledKeyListener()Z
    .locals 1

    .line 8391
    iget v0, p0, Landroid/view/ViewGroup;->mChildUnhandledKeyListeners:I

    if-gtz v0, :cond_1

    invoke-super {p0}, Landroid/view/View;->hasUnhandledKeyListener()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist hasWindowInsetsAnimationCallback()Z
    .locals 6

    .line 7759
    invoke-super {p0}, Landroid/view/View;->hasWindowInsetsAnimationCallback()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 7760
    return v1

    .line 7766
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit16 v0, v0, 0x800

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 7767
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFrameworkOptionalFitsSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    .line 7768
    .local v0, "isOptionalFitSystemWindows":Z
    :goto_1
    if-eqz v0, :cond_3

    iget-object v3, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mContentOnApplyWindowInsetsListener:Landroid/view/Window$OnContentApplyWindowInsetsListener;

    if-eqz v3, :cond_3

    .line 7770
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowSystemUiVisibility()I

    move-result v3

    and-int/lit16 v3, v3, 0x600

    if-nez v3, :cond_3

    .line 7771
    return v2

    .line 7774
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 7775
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v3, :cond_5

    .line 7776
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->hasWindowInsetsAnimationCallback()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 7777
    return v1

    .line 7775
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 7780
    .end local v4    # "i":I
    :cond_5
    return v2
.end method

.method greylist-max-o incrementChildUnhandledKeyListeners()V
    .locals 2

    .line 8395
    iget v0, p0, Landroid/view/ViewGroup;->mChildUnhandledKeyListeners:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mChildUnhandledKeyListeners:I

    .line 8396
    if-ne v0, v1, :cond_0

    .line 8397
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 8398
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->incrementChildUnhandledKeyListeners()V

    .line 8401
    :cond_0
    return-void
.end method

.method public whitelist indexOfChild(Landroid/view/View;)I
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .line 7251
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 7252
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 7253
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 7254
    aget-object v3, v1, v2

    if-ne v3, p1, :cond_0

    .line 7255
    return v2

    .line 7253
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7258
    .end local v2    # "i":I
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method protected greylist-max-o internalSetPadding(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 4177
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->internalSetPadding(IIII)V

    .line 4179
    iget v0, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v1, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    or-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    or-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 4180
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0

    .line 4182
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4184
    :goto_0
    return-void
.end method

.method public final whitelist invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 17
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dirty"    # Landroid/graphics/Rect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6296
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 6297
    .local v3, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v3, :cond_0

    iget-boolean v4, v3, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    if-eqz v4, :cond_0

    .line 6299
    invoke-virtual {v0, v1, v1}, Landroid/view/ViewGroup;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    .line 6300
    return-void

    .line 6303
    :cond_0
    move-object/from16 v4, p0

    .line 6304
    .local v4, "parent":Landroid/view/ViewParent;
    if-eqz v3, :cond_f

    .line 6308
    iget v5, v1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v5, v5, 0x40

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    move v5, v7

    goto :goto_0

    :cond_1
    move v5, v6

    .line 6313
    .local v5, "drawAnimation":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    .line 6317
    .local v8, "childMatrix":Landroid/graphics/Matrix;
    iget v9, v1, Landroid/view/View;->mLayerType:I

    if-eqz v9, :cond_2

    .line 6318
    iget v9, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/high16 v10, -0x80000000

    or-int/2addr v9, v10

    iput v9, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 6319
    iget v9, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const v10, -0x8001

    and-int/2addr v9, v10

    iput v9, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 6322
    :cond_2
    iget-object v9, v3, Landroid/view/View$AttachInfo;->mInvalidateChildLocation:[I

    .line 6323
    .local v9, "location":[I
    iget v10, v1, Landroid/view/View;->mLeft:I

    aput v10, v9, v6

    .line 6324
    iget v6, v1, Landroid/view/View;->mTop:I

    aput v6, v9, v7

    .line 6325
    invoke-virtual {v8}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v6

    if-eqz v6, :cond_3

    iget v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v6, v6, 0x800

    if-eqz v6, :cond_7

    .line 6327
    :cond_3
    iget-object v6, v3, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 6328
    .local v6, "boundingRect":Landroid/graphics/RectF;
    invoke-virtual {v6, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 6330
    iget v10, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v10, v10, 0x800

    if-eqz v10, :cond_6

    .line 6331
    iget-object v10, v3, Landroid/view/View$AttachInfo;->mTmpTransformation:Landroid/view/animation/Transformation;

    .line 6332
    .local v10, "t":Landroid/view/animation/Transformation;
    invoke-virtual {v0, v1, v10}, Landroid/view/ViewGroup;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v11

    .line 6333
    .local v11, "transformed":Z
    if-eqz v11, :cond_4

    .line 6334
    iget-object v12, v3, Landroid/view/View$AttachInfo;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 6335
    .local v12, "transformMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v10}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 6336
    invoke-virtual {v8}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v13

    if-nez v13, :cond_5

    .line 6337
    invoke-virtual {v12, v8}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    goto :goto_1

    .line 6340
    .end local v12    # "transformMatrix":Landroid/graphics/Matrix;
    :cond_4
    move-object v12, v8

    .line 6342
    .end local v10    # "t":Landroid/view/animation/Transformation;
    .end local v11    # "transformed":Z
    .restart local v12    # "transformMatrix":Landroid/graphics/Matrix;
    :cond_5
    :goto_1
    goto :goto_2

    .line 6343
    .end local v12    # "transformMatrix":Landroid/graphics/Matrix;
    :cond_6
    move-object v12, v8

    .line 6345
    .restart local v12    # "transformMatrix":Landroid/graphics/Matrix;
    :goto_2
    invoke-virtual {v12, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 6346
    iget v10, v6, Landroid/graphics/RectF;->left:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v10, v10

    iget v11, v6, Landroid/graphics/RectF;->top:F

    float-to-double v13, v11

    .line 6347
    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v11, v13

    iget v13, v6, Landroid/graphics/RectF;->right:F

    float-to-double v13, v13

    .line 6348
    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v13, v13

    iget v14, v6, Landroid/graphics/RectF;->bottom:F

    float-to-double v14, v14

    .line 6349
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v14, v14

    .line 6346
    invoke-virtual {v2, v10, v11, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 6353
    .end local v6    # "boundingRect":Landroid/graphics/RectF;
    .end local v12    # "transformMatrix":Landroid/graphics/Matrix;
    :cond_7
    :goto_3
    const/4 v6, 0x0

    .line 6354
    .local v6, "view":Landroid/view/View;
    instance-of v10, v4, Landroid/view/View;

    if-eqz v10, :cond_8

    .line 6355
    move-object v6, v4

    check-cast v6, Landroid/view/View;

    .line 6358
    :cond_8
    if-eqz v5, :cond_a

    .line 6359
    if-eqz v6, :cond_9

    .line 6360
    iget v10, v6, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v10, v10, 0x40

    iput v10, v6, Landroid/view/View;->mPrivateFlags:I

    goto :goto_4

    .line 6361
    :cond_9
    instance-of v10, v4, Landroid/view/ViewRootImpl;

    if-eqz v10, :cond_a

    .line 6362
    move-object v10, v4

    check-cast v10, Landroid/view/ViewRootImpl;

    iput-boolean v7, v10, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    .line 6368
    :cond_a
    :goto_4
    if-eqz v6, :cond_b

    .line 6369
    iget v10, v6, Landroid/view/View;->mPrivateFlags:I

    const/high16 v11, 0x200000

    and-int/2addr v10, v11

    if-eq v10, v11, :cond_b

    .line 6370
    iget v10, v6, Landroid/view/View;->mPrivateFlags:I

    const v12, -0x200001

    and-int/2addr v10, v12

    or-int/2addr v10, v11

    iput v10, v6, Landroid/view/View;->mPrivateFlags:I

    .line 6374
    :cond_b
    invoke-interface {v4, v9, v2}, Landroid/view/ViewParent;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v4

    .line 6375
    if-eqz v6, :cond_d

    .line 6377
    invoke-virtual {v6}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    .line 6378
    .local v10, "m":Landroid/graphics/Matrix;
    invoke-virtual {v10}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v11

    if-nez v11, :cond_c

    .line 6379
    iget-object v11, v3, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 6380
    .local v11, "boundingRect":Landroid/graphics/RectF;
    invoke-virtual {v11, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 6381
    invoke-virtual {v10, v11}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 6382
    iget v12, v11, Landroid/graphics/RectF;->left:F

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v12, v12

    iget v13, v11, Landroid/graphics/RectF;->top:F

    float-to-double v13, v13

    .line 6383
    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v13, v13

    iget v14, v11, Landroid/graphics/RectF;->right:F

    float-to-double v14, v14

    .line 6384
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v14, v14

    iget v15, v11, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v16, v8

    .end local v8    # "childMatrix":Landroid/graphics/Matrix;
    .local v16, "childMatrix":Landroid/graphics/Matrix;
    float-to-double v7, v15

    .line 6385
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    .line 6382
    invoke-virtual {v2, v12, v13, v14, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5

    .line 6378
    .end local v11    # "boundingRect":Landroid/graphics/RectF;
    .end local v16    # "childMatrix":Landroid/graphics/Matrix;
    .restart local v8    # "childMatrix":Landroid/graphics/Matrix;
    :cond_c
    move-object/from16 v16, v8

    .end local v8    # "childMatrix":Landroid/graphics/Matrix;
    .restart local v16    # "childMatrix":Landroid/graphics/Matrix;
    goto :goto_5

    .line 6375
    .end local v10    # "m":Landroid/graphics/Matrix;
    .end local v16    # "childMatrix":Landroid/graphics/Matrix;
    .restart local v8    # "childMatrix":Landroid/graphics/Matrix;
    :cond_d
    move-object/from16 v16, v8

    .line 6388
    .end local v6    # "view":Landroid/view/View;
    .end local v8    # "childMatrix":Landroid/graphics/Matrix;
    .restart local v16    # "childMatrix":Landroid/graphics/Matrix;
    :goto_5
    if-nez v4, :cond_e

    goto :goto_6

    :cond_e
    move-object/from16 v8, v16

    const/4 v7, 0x1

    goto :goto_3

    .line 6390
    .end local v5    # "drawAnimation":Z
    .end local v9    # "location":[I
    .end local v16    # "childMatrix":Landroid/graphics/Matrix;
    :cond_f
    :goto_6
    return-void
.end method

.method public whitelist invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 6
    .param p1, "location"    # [I
    .param p2, "dirty"    # Landroid/graphics/Rect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6406
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const v1, 0x8020

    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    .line 6408
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v1, v0, 0x90

    const/16 v2, 0x80

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_2

    .line 6410
    aget v0, p1, v4

    iget v1, p0, Landroid/view/ViewGroup;->mScrollX:I

    sub-int/2addr v0, v1

    aget v1, p1, v3

    iget v2, p0, Landroid/view/ViewGroup;->mScrollY:I

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 6412
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v3

    if-nez v0, :cond_0

    .line 6413
    iget v0, p0, Landroid/view/ViewGroup;->mRight:I

    iget v1, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v2, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v1, v2

    invoke-virtual {p2, v4, v4, v0, v1}, Landroid/graphics/Rect;->union(IIII)V

    .line 6416
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mLeft:I

    .line 6417
    .local v0, "left":I
    iget v1, p0, Landroid/view/ViewGroup;->mTop:I

    .line 6419
    .local v1, "top":I
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    .line 6420
    iget v2, p0, Landroid/view/ViewGroup;->mRight:I

    sub-int/2addr v2, v0

    iget v5, p0, Landroid/view/ViewGroup;->mBottom:I

    sub-int/2addr v5, v1

    invoke-virtual {p2, v4, v4, v2, v5}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6421
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 6425
    :cond_1
    aput v0, p1, v4

    .line 6426
    aput v1, p1, v3

    .line 6427
    .end local v0    # "left":I
    .end local v1    # "top":I
    goto :goto_1

    .line 6429
    :cond_2
    and-int/2addr v0, v3

    if-ne v0, v3, :cond_3

    .line 6430
    iget v0, p0, Landroid/view/ViewGroup;->mRight:I

    iget v1, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v2, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v1, v2

    invoke-virtual {p2, v4, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 6433
    :cond_3
    iget v0, p0, Landroid/view/ViewGroup;->mRight:I

    iget v1, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v2, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v1, v2

    invoke-virtual {p2, v4, v4, v0, v1}, Landroid/graphics/Rect;->union(IIII)V

    .line 6435
    :goto_0
    iget v0, p0, Landroid/view/ViewGroup;->mLeft:I

    aput v0, p1, v4

    .line 6436
    iget v0, p0, Landroid/view/ViewGroup;->mTop:I

    aput v0, p1, v3

    .line 6438
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 6440
    :goto_1
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 6441
    iget v0, p0, Landroid/view/ViewGroup;->mLayerType:I

    if-eqz v0, :cond_4

    .line 6442
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 6445
    :cond_4
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    return-object v0

    .line 6448
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method greylist-max-o invalidateInheritedLayoutMode(I)V
    .locals 3
    .param p1, "layoutModeOfRoot"    # I

    .line 7105
    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    if-eq v0, p1, :cond_2

    const/high16 v0, 0x800000

    .line 7107
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 7110
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Landroid/view/ViewGroup;->setLayoutMode(IZ)V

    .line 7113
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .local v1, "N":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 7114
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->invalidateInheritedLayoutMode(I)V

    .line 7113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7116
    .end local v0    # "i":I
    .end local v1    # "N":I
    :cond_1
    return-void

    .line 7108
    :cond_2
    :goto_1
    return-void
.end method

.method public whitelist isAlwaysDrawnWithCacheEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6905
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/16 v1, 0x4000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isAnimationCacheEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6867
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected whitelist isChildrenDrawingOrderEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .line 6985
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected whitelist isChildrenDrawnWithCacheEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6948
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method greylist-max-o isLayoutModeOptical()Z
    .locals 2

    .line 4300
    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist isLayoutSuppressed()Z
    .locals 1

    .line 7625
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    return v0
.end method

.method public whitelist isMotionEventSplittingEnabled()Z
    .locals 2

    .line 3378
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected blacklist isSemUsingAdapterView()Z
    .locals 1

    .line 2681
    const/4 v0, 0x0

    return v0
.end method

.method public final greylist-max-o isShowingContextMenuWithCoords()Z
    .locals 2

    .line 990
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected greylist isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "child"    # Landroid/view/View;
    .param p4, "outLocalPoint"    # Landroid/graphics/PointF;

    .line 3245
    invoke-direct {p0}, Landroid/view/ViewGroup;->getTempLocationF()[F

    move-result-object v0

    .line 3246
    .local v0, "point":[F
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 3247
    const/4 v2, 0x1

    aput p2, v0, v2

    .line 3248
    invoke-virtual {p0, v0, p3}, Landroid/view/ViewGroup;->transformPointToViewLocal([FLandroid/view/View;)V

    .line 3249
    aget v3, v0, v1

    aget v4, v0, v2

    invoke-virtual {p3, v3, v4}, Landroid/view/View;->pointInView(FF)Z

    move-result v3

    .line 3250
    .local v3, "isInView":Z
    if-eqz v3, :cond_0

    if-eqz p4, :cond_0

    .line 3251
    aget v1, v0, v1

    aget v2, v0, v2

    invoke-virtual {p4, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 3253
    :cond_0
    return v3
.end method

.method public whitelist isTransitionGroup()Z
    .locals 4

    .line 3395
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x2000000

    and-int/2addr v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 3396
    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    move v2, v3

    :cond_0
    return v2

    .line 3398
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    .line 3399
    .local v0, "outlineProvider":Landroid/view/ViewOutlineProvider;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTransitionName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    sget-object v1, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    if-eq v0, v1, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    return v2
.end method

.method greylist-max-o isViewTransitioning(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 7521
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist jumpDrawablesToCurrentState()V
    .locals 4

    .line 7952
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 7953
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 7954
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 7955
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 7956
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 7955
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7958
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public final whitelist layout(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .line 6780
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isChangingLayout()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6781
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_1

    .line 6782
    invoke-virtual {v0, p0}, Landroid/animation/LayoutTransition;->layoutChange(Landroid/view/ViewGroup;)V

    .line 6784
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 6787
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    .line 6789
    :goto_0
    return-void
.end method

.method public blacklist makeFrameworkOptionalFitsSystemWindows()V
    .locals 4

    .line 1554
    invoke-super {p0}, Landroid/view/View;->makeFrameworkOptionalFitsSystemWindows()V

    .line 1555
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1556
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1557
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1558
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/View;->makeFrameworkOptionalFitsSystemWindows()V

    .line 1557
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1560
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public greylist makeOptionalFitsSystemWindows()V
    .locals 4

    .line 1541
    invoke-super {p0}, Landroid/view/View;->makeOptionalFitsSystemWindows()V

    .line 1542
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1543
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1544
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1545
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/View;->makeOptionalFitsSystemWindows()V

    .line 1544
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1547
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected whitelist measureChild(Landroid/view/View;II)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .line 7316
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 7318
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 7320
    .local v1, "childWidthMeasureSpec":I
    iget v2, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    iget v3, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 7323
    .local v2, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 7324
    return-void
.end method

.method protected whitelist measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .line 7343
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 7345
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 7348
    .local v1, "childWidthMeasureSpec":I
    iget v2, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    iget v3, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    add-int/2addr v2, p5

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 7352
    .local v2, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 7353
    return-void
.end method

.method protected whitelist measureChildren(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 7295
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 7296
    .local v0, "size":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 7297
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 7298
    aget-object v3, v1, v2

    .line 7299
    .local v3, "child":Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 7300
    invoke-virtual {p0, v3, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 7297
    .end local v3    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7303
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method greylist-max-o notifyChildOfDragStart(Landroid/view/View;)Z
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .line 1890
    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    iget v0, v0, Landroid/view/DragEvent;->mX:F

    .line 1891
    .local v0, "tx":F
    iget-object v1, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    iget v1, v1, Landroid/view/DragEvent;->mY:F

    .line 1893
    .local v1, "ty":F
    invoke-direct {p0}, Landroid/view/ViewGroup;->getTempLocationF()[F

    move-result-object v2

    .line 1894
    .local v2, "point":[F
    const/4 v3, 0x0

    aput v0, v2, v3

    .line 1895
    const/4 v4, 0x1

    aput v1, v2, v4

    .line 1896
    invoke-virtual {p0, v2, p1}, Landroid/view/ViewGroup;->transformPointToViewLocal([FLandroid/view/View;)V

    .line 1898
    iget-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    aget v6, v2, v3

    iput v6, v5, Landroid/view/DragEvent;->mX:F

    .line 1899
    iget-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    aget v6, v2, v4

    iput v6, v5, Landroid/view/DragEvent;->mY:F

    .line 1900
    iget-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    invoke-virtual {p1, v5}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v5

    .line 1901
    .local v5, "canAccept":Z
    iget-object v6, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    iput v0, v6, Landroid/view/DragEvent;->mX:F

    .line 1902
    iget-object v6, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    iput v1, v6, Landroid/view/DragEvent;->mY:F

    .line 1903
    iget-object v6, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    iput-boolean v3, v6, Landroid/view/DragEvent;->mEventHandlerWasCalled:Z

    .line 1904
    if-eqz v5, :cond_0

    .line 1905
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1906
    invoke-virtual {p1}, Landroid/view/View;->canAcceptDrag()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1907
    iget v3, p1, Landroid/view/View;->mPrivateFlags2:I

    or-int/2addr v3, v4

    iput v3, p1, Landroid/view/View;->mPrivateFlags2:I

    .line 1908
    invoke-virtual {p1}, Landroid/view/View;->refreshDrawableState()V

    .line 1911
    :cond_0
    return v5
.end method

.method public whitelist notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "source"    # Landroid/view/View;
    .param p3, "changeType"    # I

    .line 4051
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityLiveRegion()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4052
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    goto :goto_0

    .line 4054
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    .line 4056
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p2, p3}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 4060
    goto :goto_0

    .line 4057
    :catch_0
    move-exception v0

    .line 4058
    .local v0, "e":Ljava/lang/AbstractMethodError;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not fully implement ViewParent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "View"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4062
    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :cond_1
    :goto_0
    return-void
.end method

.method public greylist-max-o notifySubtreeAccessibilityStateChangedIfNeeded()V
    .locals 2

    .line 4067
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4072
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getImportantForAccessibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 4073
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isImportantForAccessibility()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 4074
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v0

    .line 4075
    .local v0, "a11yParent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 4076
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 4077
    return-void

    .line 4080
    .end local v0    # "a11yParent":Landroid/view/ViewParent;
    :cond_1
    invoke-super {p0}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 4081
    return-void

    .line 4068
    :cond_2
    :goto_0
    return-void
.end method

.method public greylist offsetChildrenTopAndBottom(I)V
    .locals 6
    .param p1, "offset"    # I

    .line 6637
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 6638
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 6639
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .line 6641
    .local v2, "invalidate":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 6642
    aget-object v4, v1, v3

    .line 6643
    .local v4, "v":Landroid/view/View;
    iget v5, v4, Landroid/view/View;->mTop:I

    add-int/2addr v5, p1

    iput v5, v4, Landroid/view/View;->mTop:I

    .line 6644
    iget v5, v4, Landroid/view/View;->mBottom:I

    add-int/2addr v5, p1

    iput v5, v4, Landroid/view/View;->mBottom:I

    .line 6645
    iget-object v5, v4, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    if-eqz v5, :cond_0

    .line 6646
    const/4 v2, 0x1

    .line 6647
    iget-object v5, v4, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v5, p1}, Landroid/graphics/RenderNode;->offsetTopAndBottom(I)Z

    .line 6641
    .end local v4    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6651
    .end local v3    # "i":I
    :cond_1
    if-eqz v2, :cond_2

    .line 6652
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3}, Landroid/view/ViewGroup;->invalidateViewProperty(ZZ)V

    .line 6654
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 6655
    return-void
.end method

.method public final whitelist offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .line 6458
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 6459
    return-void
.end method

.method greylist-max-o offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V
    .locals 7
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "offsetFromChildToParent"    # Z
    .param p4, "clipToBounds"    # Z

    .line 6479
    move-object v0, p1

    .line 6483
    .local v0, "descendant_debug":Landroid/view/View;
    if-ne p1, p0, :cond_0

    .line 6484
    return-void

    .line 6487
    :cond_0
    iget-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 6490
    .local v1, "theParent":Landroid/view/ViewParent;
    :goto_0
    if-eqz v1, :cond_5

    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_5

    if-eq v1, p0, :cond_5

    .line 6494
    const/4 v2, 0x0

    if-eqz p3, :cond_2

    .line 6495
    iget v3, p1, Landroid/view/View;->mLeft:I

    iget v4, p1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v3, v4

    iget v4, p1, Landroid/view/View;->mTop:I

    iget v5, p1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 6497
    if-eqz p4, :cond_4

    .line 6498
    move-object v3, v1

    check-cast v3, Landroid/view/View;

    .line 6499
    .local v3, "p":Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mRight:I

    iget v5, v3, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    iget v5, v3, Landroid/view/View;->mBottom:I

    iget v6, v3, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v6

    invoke-virtual {p2, v2, v2, v4, v5}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v2

    .line 6501
    .local v2, "intersected":Z
    if-nez v2, :cond_1

    .line 6502
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 6504
    .end local v2    # "intersected":Z
    .end local v3    # "p":Landroid/view/View;
    :cond_1
    goto :goto_1

    .line 6506
    :cond_2
    if-eqz p4, :cond_3

    .line 6507
    move-object v3, v1

    check-cast v3, Landroid/view/View;

    .line 6508
    .restart local v3    # "p":Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mRight:I

    iget v5, v3, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    iget v5, v3, Landroid/view/View;->mBottom:I

    iget v6, v3, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v6

    invoke-virtual {p2, v2, v2, v4, v5}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v2

    .line 6510
    .restart local v2    # "intersected":Z
    if-nez v2, :cond_3

    .line 6511
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 6514
    .end local v2    # "intersected":Z
    .end local v3    # "p":Landroid/view/View;
    :cond_3
    iget v2, p1, Landroid/view/View;->mScrollX:I

    iget v3, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/view/View;->mScrollY:I

    iget v4, p1, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 6518
    :cond_4
    :goto_1
    move-object p1, v1

    check-cast p1, Landroid/view/View;

    .line 6519
    iget-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_0

    .line 6524
    :cond_5
    if-ne v1, p0, :cond_7

    .line 6525
    if-eqz p3, :cond_6

    .line 6526
    iget v2, p1, Landroid/view/View;->mLeft:I

    iget v3, p1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/view/View;->mTop:I

    iget v4, p1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_2

    .line 6529
    :cond_6
    iget v2, p1, Landroid/view/View;->mScrollX:I

    iget v3, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/view/View;->mScrollY:I

    iget v4, p1, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 6538
    :goto_2
    return-void

    .line 6534
    :cond_7
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChildDebug(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 6536
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "parameter must be a descendant of this view"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final whitelist offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .line 6468
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 6469
    return-void
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 0

    .line 5399
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 5400
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearCachedLayoutMode()V

    .line 5401
    return-void
.end method

.method protected greylist onChildVisibilityChanged(Landroid/view/View;II)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "oldVisibility"    # I
    .param p3, "newVisibility"    # I

    .line 1583
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_2

    .line 1584
    if-nez p3, :cond_0

    .line 1585
    invoke-virtual {v0, p0, p1, p2}, Landroid/animation/LayoutTransition;->showChild(Landroid/view/ViewGroup;Landroid/view/View;I)V

    goto :goto_0

    .line 1587
    :cond_0
    invoke-virtual {v0, p0, p1, p3}, Landroid/animation/LayoutTransition;->hideChild(Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 1588
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1591
    iget-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1592
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    .line 1594
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1595
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 1601
    :cond_2
    :goto_0
    if-nez p3, :cond_3

    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    if-eqz v0, :cond_3

    .line 1602
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1603
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->notifyChildOfDragStart(Landroid/view/View;)Z

    .line 1606
    :cond_3
    return-void
.end method

.method protected whitelist onCreateDrawableState(I)[I
    .locals 5
    .param p1, "extraSpace"    # I

    .line 7962
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-nez v0, :cond_0

    .line 7963
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    return-object v0

    .line 7966
    :cond_0
    const/4 v0, 0x0

    .line 7967
    .local v0, "need":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 7968
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 7969
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    .line 7971
    .local v3, "childState":[I
    if-eqz v3, :cond_1

    .line 7972
    array-length v4, v3

    add-int/2addr v0, v4

    .line 7968
    .end local v3    # "childState":[I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7976
    .end local v2    # "i":I
    :cond_2
    add-int v2, p1, v0

    invoke-super {p0, v2}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v2

    .line 7978
    .local v2, "state":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_4

    .line 7979
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getDrawableState()[I

    move-result-object v4

    .line 7981
    .local v4, "childState":[I
    if-eqz v4, :cond_3

    .line 7982
    invoke-static {v2, v4}, Landroid/view/ViewGroup;->mergeDrawableStates([I[I)[I

    move-result-object v2

    .line 7978
    .end local v4    # "childState":[I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 7986
    .end local v3    # "i":I
    :cond_4
    return-object v2
.end method

.method protected greylist-max-o onDebugDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 4384
    invoke-static {}, Landroid/view/ViewGroup;->getDebugPaint()Landroid/graphics/Paint;

    move-result-object v8

    .line 4388
    .local v8, "paint":Landroid/graphics/Paint;
    const/high16 v0, -0x10000

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 4389
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4391
    const/4 v0, 0x0

    move v6, v0

    .local v6, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/16 v9, 0x8

    const/4 v1, 0x1

    if-ge v6, v0, :cond_1

    .line 4392
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4393
    .local v7, "c":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v9, :cond_0

    .line 4394
    invoke-virtual {v7}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v9

    .line 4396
    .local v9, "insets":Landroid/graphics/Insets;
    nop

    .line 4397
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v2, v9, Landroid/graphics/Insets;->left:I

    add-int/2addr v2, v0

    .line 4398
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v0

    iget v3, v9, Landroid/graphics/Insets;->top:I

    add-int/2addr v3, v0

    .line 4399
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v0

    iget v4, v9, Landroid/graphics/Insets;->right:I

    sub-int/2addr v0, v4

    add-int/lit8 v4, v0, -0x1

    .line 4400
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v5, v9, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v0, v5

    add-int/lit8 v5, v0, -0x1

    .line 4396
    move-object v0, p1

    move-object v1, v8

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->drawRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 4391
    .end local v7    # "c":Landroid/view/View;
    .end local v9    # "insets":Landroid/graphics/Insets;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 4407
    .end local v6    # "i":I
    :cond_1
    const/16 v0, 0x3f

    const/4 v2, 0x0

    const/16 v3, 0xff

    invoke-static {v0, v3, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 4408
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4410
    invoke-virtual {p0, p1, v8}, Landroid/view/ViewGroup;->onDebugDrawMargins(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 4415
    sget v0, Landroid/view/ViewGroup;->DEBUG_CORNERS_COLOR:I

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 4416
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4418
    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->dipsToPixels(I)I

    move-result v10

    .line 4419
    .local v10, "lineLength":I
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->dipsToPixels(I)I

    move-result v11

    .line 4420
    .local v11, "lineWidth":I
    const/4 v0, 0x0

    move v12, v0

    .local v12, "i":I
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v12, v0, :cond_3

    .line 4421
    invoke-virtual {p0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 4422
    .local v13, "c":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v9, :cond_2

    .line 4423
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v4

    move-object v0, p1

    move-object v5, v8

    move v6, v10

    move v7, v11

    invoke-static/range {v0 .. v7}, Landroid/view/ViewGroup;->drawRectCorners(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;II)V

    .line 4420
    .end local v13    # "c":Landroid/view/View;
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 4428
    .end local v10    # "lineLength":I
    .end local v11    # "lineWidth":I
    .end local v12    # "i":I
    :cond_3
    return-void
.end method

.method protected greylist-max-o onDebugDrawMargins(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 4374
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4375
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4376
    .local v1, "c":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v2, v1, p1, p2}, Landroid/view/ViewGroup$LayoutParams;->onDebugDraw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 4374
    .end local v1    # "c":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4378
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public whitelist onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;

    .line 6261
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    iget v1, p2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x40

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 6263
    iget v0, p2, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x200001

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 6266
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/2addr v0, v1

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 6269
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 6273
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mLayerType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 6276
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/high16 v1, -0x7fe00000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 6277
    move-object p2, p0

    .line 6280
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_2

    .line 6281
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    .line 6283
    :cond_2
    return-void
.end method

.method public final blacklist onDescendantUnbufferedRequested()V
    .locals 4

    .line 9654
    const/4 v0, 0x0

    .line 9655
    .local v0, "focusedChildNonPointerSource":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 9656
    iget v1, v1, Landroid/view/View;->mUnbufferedInputSource:I

    and-int/lit8 v0, v1, -0x3

    .line 9659
    :cond_0
    iput v0, p0, Landroid/view/ViewGroup;->mUnbufferedInputSource:I

    .line 9664
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v1, v2, :cond_2

    .line 9665
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v2, v2, v1

    .line 9666
    .local v2, "child":Landroid/view/View;
    iget v3, v2, Landroid/view/View;->mUnbufferedInputSource:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 9667
    iget v3, p0, Landroid/view/ViewGroup;->mUnbufferedInputSource:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Landroid/view/ViewGroup;->mUnbufferedInputSource:I

    .line 9668
    goto :goto_1

    .line 9664
    .end local v2    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9671
    .end local v1    # "i":I
    :cond_2
    :goto_1
    iget-object v1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_3

    .line 9672
    iget-object v1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1}, Landroid/view/ViewParent;->onDescendantUnbufferedRequested()V

    .line 9674
    :cond_3
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 0

    .line 5405
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 5406
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearCachedLayoutMode()V

    .line 5407
    return-void
.end method

.method public greylist-max-r onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3993
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3994
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3995
    return-void

    .line 3997
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_2

    .line 3998
    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTempArrayList:Ljava/util/ArrayList;

    .line 3999
    .local v0, "childrenForAccessibility":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4000
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    .line 4001
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4004
    .local v1, "childrenForAccessibilityCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 4005
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 4006
    .local v3, "child":Landroid/view/View;
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChildUnchecked(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4004
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4008
    .end local v2    # "i":I
    :catch_0
    move-exception v2

    .line 4009
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 4010
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    nop

    .line 4013
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4015
    .end local v0    # "childrenForAccessibility":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v1    # "childrenForAccessibilityCount":I
    :cond_2
    const-string v0, "android.view.accessibility.extra.DATA_RENDERING_INFO_KEY"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAvailableExtraData(Ljava/util/List;)V

    .line 4017
    return-void
.end method

.method public whitelist onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2534
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2535
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2536
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 2537
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 2538
    .local v2, "y":F
    const/4 v3, 0x7

    if-eq v0, v3, :cond_0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_1

    .line 2539
    :cond_0
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->isOnScrollbar(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2540
    const/4 v3, 0x1

    return v3

    .line 2543
    .end local v0    # "action":I
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 3481
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3482
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 3483
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3484
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->isOnScrollbarThumb(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3485
    return v0

    .line 3487
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract whitelist onLayout(ZIIII)V
.end method

.method public whitelist onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .line 8326
    invoke-virtual {p0, p2, p3, p4}, Landroid/view/ViewGroup;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public whitelist onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .line 8335
    invoke-virtual {p0, p2, p3}, Landroid/view/ViewGroup;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public whitelist onNestedPrePerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .line 4130
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .line 8317
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, p4, v0}, Landroid/view/ViewGroup;->dispatchNestedPreScroll(II[I[I)Z

    .line 8318
    return-void
.end method

.method public whitelist onNestedScroll(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .line 8308
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->dispatchNestedScroll(IIII[I)Z

    .line 8309
    return-void
.end method

.method public whitelist onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .line 8285
    iput p3, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    .line 8286
    return-void
.end method

.method protected whitelist onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 3556
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3557
    .local v0, "count":I
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    .line 3558
    const/4 v1, 0x0

    .line 3559
    .local v1, "index":I
    const/4 v2, 0x1

    .line 3560
    .local v2, "increment":I
    move v3, v0

    .local v3, "end":I
    goto :goto_0

    .line 3562
    .end local v1    # "index":I
    .end local v2    # "increment":I
    .end local v3    # "end":I
    :cond_0
    add-int/lit8 v1, v0, -0x1

    .line 3563
    .restart local v1    # "index":I
    const/4 v2, -0x1

    .line 3564
    .restart local v2    # "increment":I
    const/4 v3, -0x1

    .line 3566
    .restart local v3    # "end":I
    :goto_0
    iget-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3567
    .local v4, "children":[Landroid/view/View;
    move v5, v1

    .local v5, "i":I
    :goto_1
    if-eq v5, v3, :cond_2

    .line 3568
    aget-object v6, v4, v5

    .line 3569
    .local v6, "child":Landroid/view/View;
    iget v7, v6, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v7, v7, 0xc

    if-nez v7, :cond_1

    .line 3570
    invoke-virtual {v6, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3571
    const/4 v7, 0x1

    return v7

    .line 3567
    .end local v6    # "child":Landroid/view/View;
    :cond_1
    add-int/2addr v5, v2

    goto :goto_1

    .line 3575
    .end local v5    # "i":I
    :cond_2
    const/4 v5, 0x0

    return v5
.end method

.method public whitelist onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1124
    iget-object v0, p0, Landroid/view/ViewGroup;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 1125
    iget-object v0, p0, Landroid/view/ViewGroup;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0

    .line 1127
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1139
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .line 2055
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 2056
    .local v0, "x":F
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 2057
    .local v1, "y":F
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->isOnScrollbarThumb(FF)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isDraggingScrollBar()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_3

    .line 2061
    :cond_0
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2062
    .local v2, "childrenCount":I
    if-eqz v2, :cond_6

    .line 2063
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v3

    .line 2064
    .local v3, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v3, :cond_1

    .line 2065
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 2066
    .local v4, "customOrder":Z
    :goto_0
    iget-object v5, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2067
    .local v5, "children":[Landroid/view/View;
    add-int/lit8 v6, v2, -0x1

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_5

    .line 2068
    invoke-direct {p0, v2, v6, v4}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v7

    .line 2069
    .local v7, "childIndex":I
    invoke-static {v3, v5, v7}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    .line 2071
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->canReceivePointerEvents()Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x0

    .line 2072
    invoke-virtual {p0, v0, v1, v8, v9}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 2073
    goto :goto_2

    .line 2075
    :cond_2
    nop

    .line 2076
    invoke-direct {p0, p1, p2, v8}, Landroid/view/ViewGroup;->dispatchResolvePointerIcon(Landroid/view/MotionEvent;ILandroid/view/View;)Landroid/view/PointerIcon;

    move-result-object v9

    .line 2077
    .local v9, "pointerIcon":Landroid/view/PointerIcon;
    if-eqz v9, :cond_4

    .line 2078
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2079
    :cond_3
    return-object v9

    .line 2067
    .end local v7    # "childIndex":I
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "pointerIcon":Landroid/view/PointerIcon;
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 2082
    .end local v6    # "i":I
    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2087
    .end local v3    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "customOrder":Z
    .end local v5    # "children":[Landroid/view/View;
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v3

    return-object v3

    .line 2058
    .end local v2    # "childrenCount":I
    :cond_7
    :goto_3
    iget-object v2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const/16 v3, 0x3e8

    invoke-static {v2, v3}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v2

    return-object v2
.end method

.method protected greylist-max-o onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .line 8355
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 8356
    return-void
.end method

.method public whitelist onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .line 8277
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onStopNestedScroll(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 8297
    invoke-virtual {p0}, Landroid/view/ViewGroup;->stopNestedScroll()V

    .line 8298
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    .line 8299
    return-void
.end method

.method public whitelist onViewAdded(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .line 5367
    return-void
.end method

.method public whitelist onViewRemoved(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .line 5389
    return-void
.end method

.method protected blacklist pointInHoveredChild(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2465
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    if-eqz v0, :cond_0

    .line 2466
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    iget-object v2, v2, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v0

    return v0

    .line 2469
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist recomputeViewAttributes(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 1665
    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v0, :cond_0

    .line 1666
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    .line 1667
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 1669
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_0
    return-void
.end method

.method public whitelist removeAllViews()V
    .locals 1

    .line 5964
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 5965
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 5966
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 5967
    return-void
.end method

.method public whitelist removeAllViewsInLayout()V
    .locals 10

    .line 5983
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5984
    .local v0, "count":I
    if-gtz v0, :cond_0

    .line 5985
    return-void

    .line 5988
    :cond_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5989
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5991
    iget-object v3, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 5992
    .local v3, "focused":Landroid/view/View;
    iget-object v4, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v2

    .line 5993
    .local v4, "detach":Z
    :goto_0
    const/4 v5, 0x0

    .line 5995
    .local v5, "clearChildFocus":Z
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 5997
    add-int/lit8 v6, v0, -0x1

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_8

    .line 5998
    aget-object v7, v1, v6

    .line 6000
    .local v7, "view":Landroid/view/View;
    iget-object v8, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v8, :cond_2

    .line 6001
    invoke-virtual {v8, p0, v7}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 6004
    :cond_2
    const/4 v8, 0x0

    if-ne v7, v3, :cond_3

    .line 6005
    invoke-virtual {v7, v8}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 6006
    const/4 v5, 0x1

    .line 6009
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 6011
    invoke-direct {p0, v7}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 6012
    invoke-direct {p0, v7}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    .line 6014
    invoke-virtual {v7}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v9

    if-nez v9, :cond_5

    iget-object v9, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v9, :cond_4

    .line 6015
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_2

    .line 6017
    :cond_4
    if-eqz v4, :cond_6

    .line 6018
    invoke-virtual {v7}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_3

    .line 6016
    :cond_5
    :goto_2
    invoke-direct {p0, v7}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 6021
    :cond_6
    :goto_3
    invoke-virtual {v7}, Landroid/view/View;->hasTransientState()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 6022
    invoke-virtual {p0, v7, v2}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 6025
    :cond_7
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    .line 6027
    iput-object v8, v7, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 6028
    aput-object v8, v1, v6

    .line 5997
    .end local v7    # "view":Landroid/view/View;
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 6031
    .end local v6    # "i":I
    :cond_8
    iget-object v2, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-eqz v2, :cond_9

    .line 6032
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->clearDefaultFocus(Landroid/view/View;)V

    .line 6034
    :cond_9
    iget-object v2, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-eqz v2, :cond_a

    .line 6035
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->clearFocusedInCluster(Landroid/view/View;)V

    .line 6037
    :cond_a
    if-eqz v5, :cond_b

    .line 6038
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 6039
    invoke-virtual {p0}, Landroid/view/ViewGroup;->rootViewRequestFocus()Z

    move-result v2

    if-nez v2, :cond_b

    .line 6040
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->notifyGlobalFocusCleared(Landroid/view/View;)V

    .line 6043
    :cond_b
    return-void
.end method

.method protected whitelist removeDetachedView(Landroid/view/View;Z)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .line 6066
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_0

    .line 6067
    invoke-virtual {v0, p0, p1}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 6070
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 6071
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 6073
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 6074
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->clearDefaultFocus(Landroid/view/View;)V

    .line 6076
    :cond_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 6077
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->clearFocusedInCluster(Landroid/view/View;)V

    .line 6080
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 6082
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 6083
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    .line 6085
    if-eqz p2, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 6086
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6087
    :cond_5
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    goto :goto_0

    .line 6088
    :cond_6
    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_7

    .line 6089
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 6092
    :cond_7
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6093
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 6096
    :cond_8
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    .line 6097
    return-void
.end method

.method public greylist removeTransientView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 5125
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    if-nez v0, :cond_0

    .line 5126
    return-void

    .line 5128
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 5129
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 5130
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_2

    .line 5131
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5132
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v2, v1}, Landroid/util/IntArray;->remove(I)V

    .line 5133
    const/4 v2, 0x0

    iput-object v2, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5134
    iget-object v2, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_1

    .line 5135
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 5137
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 5138
    return-void

    .line 5129
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5141
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method public whitelist removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 5708
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5709
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 5710
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 5712
    :cond_0
    return-void
.end method

.method public whitelist removeViewAt(I)V
    .locals 1
    .param p1, "index"    # I

    .line 5753
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    .line 5754
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 5755
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 5756
    return-void
.end method

.method public whitelist removeViewInLayout(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 5725
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)Z

    .line 5726
    return-void
.end method

.method public whitelist removeViews(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 5769
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    .line 5770
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 5771
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 5772
    return-void
.end method

.method public whitelist removeViewsInLayout(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 5740
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    .line 5741
    return-void
.end method

.method public whitelist requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .line 858
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_0

    .line 859
    return-void

    .line 863
    :cond_0
    invoke-super {p0, p2}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 866
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eq v0, p1, :cond_2

    .line 867
    if-eqz v0, :cond_1

    .line 868
    invoke-virtual {v0, p2}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 871
    :cond_1
    iput-object p1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 873
    :cond_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_3

    .line 874
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 876
    :cond_3
    return-void
.end method

.method public whitelist requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .line 1091
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist requestDisallowInterceptTouchEvent(Z)V
    .locals 3
    .param p1, "disallowIntercept"    # Z

    .line 3426
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x80000

    and-int v2, v0, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ne p1, v2, :cond_1

    .line 3428
    return-void

    .line 3431
    :cond_1
    if-eqz p1, :cond_2

    .line 3432
    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_1

    .line 3434
    :cond_2
    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3438
    :goto_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_3

    .line 3439
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3441
    :cond_3
    return-void
.end method

.method public whitelist requestFocus(ILandroid/graphics/Rect;)Z
    .locals 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 3510
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    .line 3513
    .local v0, "descendantFocusability":I
    sparse-switch v0, :sswitch_data_0

    .line 3529
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "descendant focusability must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS but is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3515
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 3516
    .local v1, "result":Z
    goto :goto_2

    .line 3524
    .end local v1    # "result":Z
    :sswitch_1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 3525
    .local v1, "took":Z
    if-eqz v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    .line 3526
    .local v2, "result":Z
    :goto_0
    move v1, v2

    goto :goto_2

    .line 3518
    .end local v1    # "took":Z
    .end local v2    # "result":Z
    :sswitch_2
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 3519
    .restart local v1    # "took":Z
    if-eqz v1, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v2

    .line 3521
    .restart local v2    # "result":Z
    :goto_1
    move v1, v2

    .line 3533
    .end local v2    # "result":Z
    .local v1, "result":Z
    :goto_2
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutValid()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_2

    .line 3534
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 3536
    :cond_2
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x20000 -> :sswitch_2
        0x40000 -> :sswitch_1
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1096
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    .line 1097
    .local v0, "parent":Landroid/view/ViewParent;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1098
    return v1

    .line 1100
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    .line 1101
    .local v2, "propagate":Z
    if-nez v2, :cond_1

    .line 1102
    return v1

    .line 1104
    :cond_1
    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    return v1
.end method

.method public greylist-max-o requestTransitionStart(Landroid/animation/LayoutTransition;)V
    .locals 1
    .param p1, "transition"    # Landroid/animation/LayoutTransition;

    .line 8051
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 8052
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 8053
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->requestTransitionStart(Landroid/animation/LayoutTransition;)V

    .line 8055
    :cond_0
    return-void
.end method

.method public whitelist requestTransparentRegion(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 7665
    if-eqz p1, :cond_0

    .line 7666
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 7667
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 7668
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 7671
    :cond_0
    return-void
.end method

.method protected blacklist resetResolvedDrawables()V
    .locals 4

    .line 8248
    invoke-super {p0}, Landroid/view/View;->resetResolvedDrawables()V

    .line 8250
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 8251
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 8252
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8253
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8254
    invoke-virtual {v2}, Landroid/view/View;->resetResolvedDrawables()V

    .line 8251
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8257
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public blacklist resetResolvedLayoutDirection()V
    .locals 4

    .line 8180
    invoke-super {p0}, Landroid/view/View;->resetResolvedLayoutDirection()V

    .line 8182
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 8183
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 8184
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8185
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8186
    invoke-virtual {v2}, Landroid/view/View;->resetResolvedLayoutDirection()V

    .line 8183
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8189
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public blacklist resetResolvedPadding()V
    .locals 4

    .line 8231
    invoke-super {p0}, Landroid/view/View;->resetResolvedPadding()V

    .line 8233
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 8234
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 8235
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8236
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8237
    invoke-virtual {v2}, Landroid/view/View;->resetResolvedPadding()V

    .line 8234
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8240
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public blacklist resetResolvedTextAlignment()V
    .locals 4

    .line 8214
    invoke-super {p0}, Landroid/view/View;->resetResolvedTextAlignment()V

    .line 8216
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 8217
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 8218
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8219
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isTextAlignmentInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8220
    invoke-virtual {v2}, Landroid/view/View;->resetResolvedTextAlignment()V

    .line 8217
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8223
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public blacklist resetResolvedTextDirection()V
    .locals 4

    .line 8197
    invoke-super {p0}, Landroid/view/View;->resetResolvedTextDirection()V

    .line 8199
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 8200
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 8201
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8202
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isTextDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8203
    invoke-virtual {v2}, Landroid/view/View;->resetResolvedTextDirection()V

    .line 8200
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8206
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method greylist-max-o resetSubtreeAccessibilityStateChanged()V
    .locals 4

    .line 4085
    invoke-super {p0}, Landroid/view/View;->resetSubtreeAccessibilityStateChanged()V

    .line 4086
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4087
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4088
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 4090
    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 4091
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->resetSubtreeAccessibilityStateChanged()V

    .line 4088
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4095
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public blacklist resetSubtreeAutofillIds()V
    .locals 4

    .line 3981
    invoke-super {p0}, Landroid/view/View;->resetSubtreeAutofillIds()V

    .line 3982
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3983
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3984
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3985
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->resetSubtreeAutofillIds()V

    .line 3984
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3987
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected greylist-max-o resolveDrawables()V
    .locals 4

    .line 8151
    invoke-super {p0}, Landroid/view/View;->resolveDrawables()V

    .line 8152
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 8153
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 8154
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8155
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->areDrawablesResolved()Z

    move-result v3

    if-nez v3, :cond_0

    .line 8156
    invoke-virtual {v2}, Landroid/view/View;->resolveDrawables()V

    .line 8153
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8159
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public greylist-max-o resolveLayoutDirection()Z
    .locals 5

    .line 8081
    invoke-super {p0}, Landroid/view/View;->resolveLayoutDirection()Z

    move-result v0

    .line 8082
    .local v0, "result":Z
    if-eqz v0, :cond_1

    .line 8083
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 8084
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8085
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 8086
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8087
    invoke-virtual {v3}, Landroid/view/View;->resolveLayoutDirection()Z

    .line 8084
    .end local v3    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8091
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    return v0
.end method

.method public greylist-max-o resolveLayoutParams()V
    .locals 3

    .line 8166
    invoke-super {p0}, Landroid/view/View;->resolveLayoutParams()V

    .line 8167
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 8168
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 8169
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8170
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->resolveLayoutParams()V

    .line 8168
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8172
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public greylist-max-r resolvePadding()V
    .locals 4

    .line 8136
    invoke-super {p0}, Landroid/view/View;->resolvePadding()V

    .line 8137
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 8138
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 8139
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8140
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->isPaddingResolved()Z

    move-result v3

    if-nez v3, :cond_0

    .line 8141
    invoke-virtual {v2}, Landroid/view/View;->resolvePadding()V

    .line 8138
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8144
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public greylist-max-o resolveRtlPropertiesIfNeeded()Z
    .locals 5

    .line 8062
    invoke-super {p0}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()Z

    move-result v0

    .line 8064
    .local v0, "result":Z
    if-eqz v0, :cond_1

    .line 8065
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 8066
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8067
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 8068
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8069
    invoke-virtual {v3}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()Z

    .line 8066
    .end local v3    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8073
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    return v0
.end method

.method public greylist-max-o resolveTextAlignment()Z
    .locals 5

    .line 8117
    invoke-super {p0}, Landroid/view/View;->resolveTextAlignment()Z

    move-result v0

    .line 8118
    .local v0, "result":Z
    if-eqz v0, :cond_1

    .line 8119
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 8120
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8121
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 8122
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isTextAlignmentInherited()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8123
    invoke-virtual {v3}, Landroid/view/View;->resolveTextAlignment()Z

    .line 8120
    .end local v3    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8127
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    return v0
.end method

.method public greylist-max-o resolveTextDirection()Z
    .locals 5

    .line 8099
    invoke-super {p0}, Landroid/view/View;->resolveTextDirection()Z

    move-result v0

    .line 8100
    .local v0, "result":Z
    if-eqz v0, :cond_1

    .line 8101
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 8102
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8103
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 8104
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isTextDirectionInherited()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8105
    invoke-virtual {v3}, Landroid/view/View;->resolveTextDirection()Z

    .line 8102
    .end local v3    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8109
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    return v0
.end method

.method public whitelist restoreDefaultFocus()Z
    .locals 2

    .line 3580
    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3581
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    .line 3583
    invoke-virtual {v0}, Landroid/view/View;->restoreDefaultFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3584
    const/4 v0, 0x1

    return v0

    .line 3586
    :cond_0
    invoke-super {p0}, Landroid/view/View;->restoreDefaultFocus()Z

    move-result v0

    return v0
.end method

.method public blacklist restoreFocusInCluster(I)Z
    .locals 2
    .param p1, "direction"    # I

    .line 3596
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isKeyboardNavigationCluster()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3597
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTouchscreenBlocksFocus()Z

    move-result v0

    .line 3599
    .local v0, "blockedFocus":Z
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    .line 3600
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->restoreFocusInClusterInternal(I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3602
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    .line 3600
    return v1

    .line 3602
    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    .line 3603
    throw v1

    .line 3605
    .end local v0    # "blockedFocus":Z
    :cond_0
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->restoreFocusInClusterInternal(I)Z

    move-result v0

    return v0
.end method

.method public blacklist restoreFocusNotInCluster()Z
    .locals 8

    .line 3623
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    const/16 v1, 0x82

    if-eqz v0, :cond_0

    .line 3626
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->restoreFocusInCluster(I)Z

    move-result v0

    return v0

    .line 3628
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isKeyboardNavigationCluster()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_7

    iget v0, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_1

    goto :goto_1

    .line 3631
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    .line 3632
    .local v0, "descendentFocusability":I
    const/high16 v3, 0x60000

    const/4 v4, 0x0

    if-ne v0, v3, :cond_2

    .line 3633
    invoke-super {p0, v1, v4}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    return v1

    .line 3635
    :cond_2
    const/high16 v3, 0x20000

    const/4 v5, 0x1

    if-ne v0, v3, :cond_3

    .line 3636
    invoke-super {p0, v1, v4}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3637
    return v5

    .line 3639
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v6, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v3, v6, :cond_5

    .line 3640
    iget-object v6, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v6, v6, v3

    .line 3641
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->isKeyboardNavigationCluster()Z

    move-result v7

    if-nez v7, :cond_4

    .line 3642
    invoke-virtual {v6}, Landroid/view/View;->restoreFocusNotInCluster()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3643
    return v5

    .line 3639
    .end local v6    # "child":Landroid/view/View;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3646
    .end local v3    # "i":I
    :cond_5
    const/high16 v3, 0x40000

    if-ne v0, v3, :cond_6

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->hasFocusableChild(Z)Z

    move-result v3

    if-nez v3, :cond_6

    .line 3647
    invoke-super {p0, v1, v4}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    return v1

    .line 3649
    :cond_6
    return v2

    .line 3629
    .end local v0    # "descendentFocusability":I
    :cond_7
    :goto_1
    return v2
.end method

.method public whitelist scheduleLayoutAnimation()V
    .locals 1

    .line 6823
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 6824
    return-void
.end method

.method public blacklist semDispatchFindView(FFZ)Landroid/view/View;
    .locals 17
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "findImage"    # Z

    .line 9745
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget v3, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 9746
    .local v3, "childrenCount":I
    const/4 v4, 0x0

    if-eqz v3, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_0

    move/from16 v15, p3

    goto/16 :goto_5

    .line 9752
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v5

    .line 9753
    .local v5, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v5, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 9754
    .local v6, "customOrder":Z
    :goto_0
    iget-object v7, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 9755
    .local v7, "children":[Landroid/view/View;
    add-int/lit8 v8, v3, -0x1

    .local v8, "i":I
    :goto_1
    if-ltz v8, :cond_8

    .line 9756
    if-eqz v6, :cond_2

    invoke-virtual {v0, v3, v8}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v9

    goto :goto_2

    :cond_2
    move v9, v8

    .line 9757
    .local v9, "childIndex":I
    :goto_2
    if-nez v5, :cond_3

    aget-object v10, v7, v9

    goto :goto_3

    :cond_3
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 9758
    .local v10, "child":Landroid/view/View;
    :goto_3
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-eqz v11, :cond_4

    .line 9759
    move/from16 v15, p3

    goto :goto_4

    .line 9761
    :cond_4
    invoke-virtual {v0, v1, v2, v10, v4}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 9762
    iget v11, v0, Landroid/view/ViewGroup;->mScrollX:I

    iget v12, v10, Landroid/view/View;->mLeft:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    invoke-virtual {v10}, Landroid/view/View;->getTranslationX()F

    move-result v12

    sub-float/2addr v11, v12

    .line 9763
    .local v11, "offsetX":F
    iget v12, v0, Landroid/view/ViewGroup;->mScrollY:I

    iget v13, v10, Landroid/view/View;->mTop:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    invoke-virtual {v10}, Landroid/view/View;->getTranslationY()F

    move-result v13

    sub-float/2addr v12, v13

    .line 9764
    .local v12, "offsetY":F
    add-float v13, v1, v11

    .line 9765
    .local v13, "newX":F
    add-float v14, v2, v12

    .line 9766
    .local v14, "newY":F
    move/from16 v15, p3

    invoke-virtual {v10, v13, v14, v15}, Landroid/view/View;->semDispatchFindView(FFZ)Landroid/view/View;

    move-result-object v16

    .line 9767
    .local v16, "ret":Landroid/view/View;
    if-eqz v16, :cond_7

    .line 9768
    if-eqz v5, :cond_5

    .line 9769
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 9771
    :cond_5
    return-object v16

    .line 9761
    .end local v11    # "offsetX":F
    .end local v12    # "offsetY":F
    .end local v13    # "newX":F
    .end local v14    # "newY":F
    .end local v16    # "ret":Landroid/view/View;
    :cond_6
    move/from16 v15, p3

    .line 9755
    .end local v9    # "childIndex":I
    .end local v10    # "child":Landroid/view/View;
    :cond_7
    :goto_4
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    :cond_8
    move/from16 v15, p3

    .line 9775
    .end local v8    # "i":I
    if-eqz v5, :cond_9

    .line 9776
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 9778
    :cond_9
    return-object v4

    .line 9746
    .end local v5    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v6    # "customOrder":Z
    .end local v7    # "children":[Landroid/view/View;
    :cond_a
    move/from16 v15, p3

    .line 9747
    :goto_5
    return-object v4
.end method

.method public blacklist semDispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2358
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 2359
    .local v2, "action":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    .line 2416
    :pswitch_1
    iget-object v5, v0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 2417
    invoke-virtual {v5, v1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2418
    iput-object v3, v0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    goto/16 :goto_4

    .line 2419
    :cond_0
    iget-boolean v3, v0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    if-eqz v3, :cond_a

    .line 2420
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2421
    iput-boolean v4, v0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    goto/16 :goto_4

    .line 2361
    :pswitch_2
    goto/16 :goto_4

    .line 2364
    :pswitch_3
    const/4 v5, 0x0

    .line 2367
    .local v5, "newTarget":Landroid/view/View;
    iget v6, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2368
    .local v6, "childrenCount":I
    const/4 v7, 0x1

    if-eqz v6, :cond_5

    .line 2369
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 2370
    .local v8, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 2372
    .local v9, "y":F
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v10

    .line 2373
    .local v10, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v10, :cond_1

    .line 2374
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v11

    if-eqz v11, :cond_1

    move v11, v7

    goto :goto_0

    :cond_1
    move v11, v4

    .line 2375
    .local v11, "customOrder":Z
    :goto_0
    iget-object v12, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2376
    .local v12, "children":[Landroid/view/View;
    add-int/lit8 v13, v6, -0x1

    .local v13, "i":I
    :goto_1
    if-ltz v13, :cond_4

    .line 2377
    nop

    .line 2378
    invoke-direct {v0, v6, v13, v11}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v14

    .line 2379
    .local v14, "childIndex":I
    nop

    .line 2380
    invoke-static {v10, v12, v14}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v15

    .line 2381
    .local v15, "child":Landroid/view/View;
    invoke-virtual {v15}, Landroid/view/View;->canReceivePointerEvents()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 2382
    invoke-virtual {v0, v8, v9, v15, v3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 2383
    goto :goto_2

    .line 2385
    :cond_2
    invoke-direct {v0, v1, v15}, Landroid/view/ViewGroup;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 2386
    move-object v3, v15

    .line 2387
    .end local v5    # "newTarget":Landroid/view/View;
    .local v3, "newTarget":Landroid/view/View;
    move-object v5, v3

    goto :goto_3

    .line 2376
    .end local v3    # "newTarget":Landroid/view/View;
    .end local v14    # "childIndex":I
    .end local v15    # "child":Landroid/view/View;
    .restart local v5    # "newTarget":Landroid/view/View;
    :cond_3
    :goto_2
    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    .line 2390
    .end local v13    # "i":I
    :cond_4
    :goto_3
    if-eqz v10, :cond_5

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 2393
    .end local v8    # "x":F
    .end local v9    # "y":F
    .end local v10    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v11    # "customOrder":Z
    .end local v12    # "children":[Landroid/view/View;
    :cond_5
    iget-object v3, v0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    const/16 v8, 0xa

    if-eq v3, v5, :cond_7

    .line 2394
    if-eqz v3, :cond_6

    .line 2395
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2396
    iget-object v3, v0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2397
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2399
    :cond_6
    iput-object v5, v0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    .line 2402
    :cond_7
    iget-object v3, v0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    if-eqz v3, :cond_9

    .line 2403
    iget-boolean v3, v0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    if-eqz v3, :cond_8

    .line 2404
    iput-boolean v4, v0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    .line 2405
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2406
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2407
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2409
    :cond_8
    return v7

    .line 2412
    :cond_9
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    iput-boolean v3, v0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    .line 2413
    return v3

    .line 2425
    .end local v5    # "newTarget":Landroid/view/View;
    .end local v6    # "childrenCount":I
    :cond_a
    :goto_4
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected blacklist semGetItemCount()I
    .locals 1

    .line 2672
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist semOffsetChildrenLeftAndRight(I)V
    .locals 6
    .param p1, "offset"    # I

    .line 6679
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 6680
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 6681
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .line 6683
    .local v2, "invalidate":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 6684
    aget-object v4, v1, v3

    .line 6685
    .local v4, "v":Landroid/view/View;
    iget v5, v4, Landroid/view/View;->mLeft:I

    add-int/2addr v5, p1

    iput v5, v4, Landroid/view/View;->mLeft:I

    .line 6686
    iget v5, v4, Landroid/view/View;->mRight:I

    add-int/2addr v5, p1

    iput v5, v4, Landroid/view/View;->mRight:I

    .line 6687
    iget-object v5, v4, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    if-eqz v5, :cond_0

    .line 6688
    const/4 v2, 0x1

    .line 6689
    iget-object v5, v4, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v5, p1}, Landroid/graphics/RenderNode;->offsetLeftAndRight(I)Z

    .line 6683
    .end local v4    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6693
    .end local v3    # "i":I
    :cond_1
    if-eqz v2, :cond_2

    .line 6694
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3}, Landroid/view/ViewGroup;->invalidateViewProperty(ZZ)V

    .line 6696
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 6697
    return-void
.end method

.method public blacklist semOffsetChildrenTopAndBottom(I)V
    .locals 0
    .param p1, "offset"    # I

    .line 6668
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 6669
    return-void
.end method

.method public blacklist semSetSelection(I)V
    .locals 0
    .param p1, "position"    # I

    .line 2663
    return-void
.end method

.method public blacklist semSmoothScrollBy(I)V
    .locals 0
    .param p1, "distance"    # I

    .line 2653
    return-void
.end method

.method public whitelist setAddStatesFromChildren(Z)V
    .locals 1
    .param p1, "addsStates"    # Z

    .line 7996
    if-eqz p1, :cond_0

    .line 7997
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0

    .line 7999
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 8002
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    .line 8003
    return-void
.end method

.method public whitelist setAlwaysDrawnWithCacheEnabled(Z)V
    .locals 1
    .param p1, "always"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6930
    const/16 v0, 0x4000

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 6931
    return-void
.end method

.method public whitelist setAnimationCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6886
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 6887
    return-void
.end method

.method protected whitelist setChildrenDrawingCacheEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4256
    if-nez p1, :cond_0

    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    const/4 v1, 0x3

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_1

    .line 4257
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4258
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4259
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 4260
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 4259
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4263
    .end local v0    # "children":[Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method protected whitelist setChildrenDrawingOrderEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 7002
    const/16 v0, 0x400

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 7003
    return-void
.end method

.method protected whitelist setChildrenDrawnWithCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6970
    const v0, 0x8000

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 6971
    return-void
.end method

.method public whitelist setClipChildren(Z)V
    .locals 5
    .param p1, "clipChildren"    # Z

    .line 4789
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4790
    .local v0, "previousValue":Z
    :goto_0
    if-eq p1, v0, :cond_3

    .line 4791
    invoke-direct {p0, v1, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 4792
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v2, v3, :cond_2

    .line 4793
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4794
    .local v3, "child":Landroid/view/View;
    iget-object v4, v3, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    if-eqz v4, :cond_1

    .line 4795
    iget-object v4, v3, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v4, p1}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    .line 4792
    .end local v3    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4798
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 4800
    :cond_3
    return-void
.end method

.method public whitelist setClipToPadding(Z)V
    .locals 2
    .param p1, "clipToPadding"    # Z

    .line 4814
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    move-result v1

    if-eq v1, p1, :cond_0

    .line 4815
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 4816
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 4818
    :cond_0
    return-void
.end method

.method greylist-max-o setDefaultFocus(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 880
    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isFocusedByDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 881
    return-void

    .line 884
    :cond_0
    iput-object p1, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    .line 886
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 887
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setDefaultFocus(Landroid/view/View;)V

    .line 889
    :cond_1
    return-void
.end method

.method public whitelist setDescendantFocusability(I)V
    .locals 2
    .param p1, "focusability"    # I

    .line 830
    sparse-switch p1, :sswitch_data_0

    .line 836
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 834
    :sswitch_0
    nop

    .line 839
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x60001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 840
    const/high16 v1, 0x60000

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 841
    return-void

    :sswitch_data_0
    .sparse-switch
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V
    .locals 1
    .param p1, "controller"    # Landroid/view/animation/LayoutAnimationController;

    .line 6833
    iput-object p1, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 6834
    if-eqz p1, :cond_0

    .line 6835
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 6837
    :cond_0
    return-void
.end method

.method public whitelist setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .param p1, "animationListener"    # Landroid/view/animation/Animation$AnimationListener;

    .line 8038
    iput-object p1, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 8039
    return-void
.end method

.method public whitelist setLayoutMode(I)V
    .locals 1
    .param p1, "layoutMode"    # I

    .line 7154
    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    if-eq v0, p1, :cond_1

    .line 7155
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->invalidateInheritedLayoutMode(I)V

    .line 7156
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->setLayoutMode(IZ)V

    .line 7157
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 7159
    :cond_1
    return-void
.end method

.method public whitelist setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .locals 2
    .param p1, "transition"    # Landroid/animation/LayoutTransition;

    .line 5865
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_0

    .line 5866
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    .line 5867
    .local v0, "previousTransition":Landroid/animation/LayoutTransition;
    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->cancel()V

    .line 5868
    iget-object v1, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->removeTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 5870
    .end local v0    # "previousTransition":Landroid/animation/LayoutTransition;
    :cond_0
    iput-object p1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    .line 5871
    if-eqz p1, :cond_1

    .line 5872
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-virtual {p1, v0}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 5874
    :cond_1
    return-void
.end method

.method public whitelist setMotionEventSplittingEnabled(Z)V
    .locals 2
    .param p1, "split"    # Z

    .line 3365
    if-eqz p1, :cond_0

    .line 3366
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0

    .line 3368
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3370
    :goto_0
    return-void
.end method

.method public whitelist setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 5344
    iput-object p1, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 5345
    return-void
.end method

.method public whitelist setPersistentDrawingCache(I)V
    .locals 1
    .param p1, "drawingCacheToKeep"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7083
    and-int/lit8 v0, p1, 0x3

    iput v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    .line 7084
    return-void
.end method

.method protected whitelist setStaticTransformationsEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 4935
    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 4936
    return-void
.end method

.method public whitelist setTouchscreenBlocksFocus(Z)V
    .locals 2
    .param p1, "touchscreenBlocksFocus"    # Z

    .line 1407
    if-eqz p1, :cond_1

    .line 1408
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1409
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isKeyboardNavigationCluster()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1410
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDeepestFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 1411
    .local v0, "focusedChild":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1412
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    .line 1413
    .local v1, "newFocus":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1414
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1417
    .end local v0    # "focusedChild":Landroid/view/View;
    .end local v1    # "newFocus":Landroid/view/View;
    :cond_0
    goto :goto_0

    .line 1419
    :cond_1
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1421
    :cond_2
    :goto_0
    return-void
.end method

.method public whitelist setTransitionGroup(Z)V
    .locals 2
    .param p1, "isTransitionGroup"    # Z

    .line 3415
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3416
    if-eqz p1, :cond_0

    .line 3417
    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0

    .line 3419
    :cond_0
    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3421
    :goto_0
    return-void
.end method

.method public whitelist setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/view/WindowInsetsAnimation$Callback;

    .line 7748
    invoke-super {p0, p1}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    .line 7749
    if-eqz p1, :cond_0

    .line 7750
    invoke-virtual {p1}, Landroid/view/WindowInsetsAnimation$Callback;->getDispatchMode()I

    move-result v0

    goto :goto_0

    .line 7751
    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Landroid/view/ViewGroup;->mInsetsAnimationDispatchMode:I

    .line 7752
    return-void
.end method

.method greylist-max-o shouldBlockFocusForTouchscreen()Z
    .locals 2

    .line 1444
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTouchscreenBlocksFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 1445
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.touchscreen"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1446
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isKeyboardNavigationCluster()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1447
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->findKeyboardNavigationCluster()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1444
    :goto_0
    return v0
.end method

.method public whitelist shouldDelayChildPressedState()Z
    .locals 1

    .line 8269
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist showContextMenuForChild(Landroid/view/View;)Z
    .locals 2
    .param p1, "originalView"    # Landroid/view/View;

    .line 978
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isShowingContextMenuWithCoords()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 981
    return v1

    .line 983
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public whitelist showContextMenuForChild(Landroid/view/View;FF)Z
    .locals 3
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 996
    const v0, -0x20000001

    :try_start_0
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 997
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 998
    nop

    .line 1001
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 998
    return v2

    .line 1001
    :cond_0
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1002
    nop

    .line 1003
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 1001
    :catchall_0
    move-exception v1

    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v2

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1002
    throw v1
.end method

.method public whitelist startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 3
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .line 1008
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x8000000

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    .line 1011
    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    const v1, -0x10000001

    :try_start_0
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1012
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1014
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1012
    return-object v0

    .line 1014
    :catchall_0
    move-exception v0

    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1015
    throw v0

    .line 1018
    :cond_0
    sget-object v0, Landroid/view/ViewGroup;->SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

    return-object v0
.end method

.method public whitelist startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 3
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    .line 1025
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    if-nez p3, :cond_0

    .line 1029
    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    const v1, -0x8000001

    :try_start_0
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1030
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1032
    .local v0, "mode":Landroid/view/ActionMode;
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1033
    nop

    .line 1034
    sget-object v1, Landroid/view/ViewGroup;->SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

    if-eq v0, v1, :cond_0

    .line 1035
    return-object v0

    .line 1032
    .end local v0    # "mode":Landroid/view/ActionMode;
    :catchall_0
    move-exception v0

    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1033
    throw v0

    .line 1038
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    .line 1040
    :try_start_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 1041
    :catch_0
    move-exception v0

    .line 1043
    .local v0, "ame":Ljava/lang/AbstractMethodError;
    iget-object v1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p1, p2}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    return-object v1

    .line 1046
    .end local v0    # "ame":Ljava/lang/AbstractMethodError;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist startLayoutAnimation()V
    .locals 1

    .line 6810
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_0

    .line 6811
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 6812
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 6814
    :cond_0
    return-void
.end method

.method public whitelist startViewTransition(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 7537
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-ne v0, p0, :cond_1

    .line 7538
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 7539
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    .line 7541
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7543
    :cond_1
    return-void
.end method

.method public blacklist subtractObscuredTouchableRegion(Landroid/graphics/Region;Landroid/view/View;)V
    .locals 8
    .param p1, "touchableRegion"    # Landroid/graphics/Region;
    .param p2, "view"    # Landroid/view/View;

    .line 7678
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 7679
    .local v0, "childrenCount":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildTouchDispatchChildList()Ljava/util/ArrayList;

    move-result-object v1

    .line 7680
    .local v1, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 7681
    .local v2, "customOrder":Z
    :goto_0
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 7682
    .local v3, "children":[Landroid/view/View;
    add-int/lit8 v4, v0, -0x1

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_3

    .line 7683
    invoke-direct {p0, v0, v4, v2}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v5

    .line 7684
    .local v5, "childIndex":I
    invoke-static {v1, v3, v5}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    .line 7685
    .local v6, "child":Landroid/view/View;
    if-ne v6, p2, :cond_1

    .line 7687
    goto :goto_3

    .line 7689
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->canReceivePointerEvents()Z

    move-result v7

    if-nez v7, :cond_2

    .line 7691
    goto :goto_2

    .line 7693
    :cond_2
    sget-object v7, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-static {p1, v6, v7}, Landroid/view/ViewGroup;->applyOpToRegionByBounds(Landroid/graphics/Region;Landroid/view/View;Landroid/graphics/Region$Op;)V

    .line 7682
    .end local v5    # "childIndex":I
    .end local v6    # "child":Landroid/view/View;
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 7697
    .end local v4    # "i":I
    :cond_3
    :goto_3
    sget-object v4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-static {p1, p0, v4}, Landroid/view/ViewGroup;->applyOpToRegionByBounds(Landroid/graphics/Region;Landroid/view/View;Landroid/graphics/Region$Op;)V

    .line 7699
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 7700
    .local v4, "parent":Landroid/view/ViewParent;
    if-eqz v4, :cond_4

    .line 7701
    invoke-interface {v4, p1, p0}, Landroid/view/ViewParent;->subtractObscuredTouchableRegion(Landroid/graphics/Region;Landroid/view/View;)V

    .line 7703
    :cond_4
    return-void
.end method

.method public whitelist suppressLayout(Z)V
    .locals 1
    .param p1, "suppress"    # Z

    .line 7609
    iput-boolean p1, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    .line 7610
    if-nez p1, :cond_0

    .line 7611
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    if-eqz v0, :cond_0

    .line 7612
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 7613
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    .line 7616
    :cond_0
    return-void
.end method

.method public greylist-max-r transformPointToViewLocal([FLandroid/view/View;)V
    .locals 4
    .param p1, "point"    # [F
    .param p2, "child"    # Landroid/view/View;

    .line 3261
    const/4 v0, 0x0

    aget v1, p1, v0

    iget v2, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v3, p2, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 3262
    const/4 v0, 0x1

    aget v1, p1, v0

    iget v2, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v3, p2, Landroid/view/View;->mTop:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 3264
    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3265
    invoke-virtual {p2}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 3267
    :cond_0
    return-void
.end method

.method greylist-max-o unFocus(Landroid/view/View;)V
    .locals 1
    .param p1, "focused"    # Landroid/view/View;

    .line 1207
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1208
    invoke-super {p0, p1}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    goto :goto_0

    .line 1210
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 1211
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 1213
    :goto_0
    return-void
.end method

.method greylist-max-o updateLocalSystemUiVisibility(II)Z
    .locals 6
    .param p1, "localValue"    # I
    .param p2, "localChanges"    # I

    .line 1942
    invoke-super {p0, p1, p2}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    move-result v0

    .line 1944
    .local v0, "changed":Z
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1945
    .local v1, "count":I
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1946
    .local v2, "children":[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1947
    aget-object v4, v2, v3

    .line 1948
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4, p1, p2}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    move-result v5

    or-int/2addr v0, v5

    .line 1946
    .end local v4    # "child":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1950
    .end local v3    # "i":I
    :cond_0
    return v0
.end method

.method public whitelist updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 5301
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5304
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-ne v0, p0, :cond_0

    .line 5307
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5308
    return-void

    .line 5305
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given view not a child of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5302
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid LayoutParams supplied to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
