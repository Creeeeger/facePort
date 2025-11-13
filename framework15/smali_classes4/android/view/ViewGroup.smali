.class public abstract Landroid/view/ViewGroup;
.super Landroid/view/View;
.source "ViewGroup.java"

# interfaces
.implements Landroid/view/ViewParent;
.implements Landroid/view/ViewManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewGroup$HoverTarget;,
        Landroid/view/ViewGroup$ChildListForAccessibility;,
        Landroid/view/ViewGroup$TouchTarget;,
        Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;,
        Landroid/view/ViewGroup$LayoutParams;,
        Landroid/view/ViewGroup$OnHierarchyChangeListener;,
        Landroid/view/ViewGroup$MarginLayoutParams;,
        Landroid/view/ViewGroup$ViewLocationHolder;
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
    .locals 3

    const/high16 v0, 0x40000

    const/high16 v1, 0x60000

    const/high16 v2, 0x20000

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/view/ViewGroup;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    const/4 v0, 0x0

    sput v0, Landroid/view/ViewGroup;->LAYOUT_MODE_DEFAULT:I

    new-instance v0, Landroid/view/ViewGroup$1;

    invoke-direct {v0}, Landroid/view/ViewGroup$1;-><init>()V

    sput-object v0, Landroid/view/ViewGroup;->SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    iput v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    iput v0, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    iput-object v1, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    iput v0, p0, Landroid/view/ViewGroup;->mChildUnhandledKeyListeners:I

    const/4 v1, 0x1

    iput v1, p0, Landroid/view/ViewGroup;->mInsetsAnimationDispatchMode:I

    iput v0, p0, Landroid/view/ViewGroup;->mSemHorizontalScrollbarRectRelativePosX:I

    iput v0, p0, Landroid/view/ViewGroup;->mSemVerticalScrollbarRectRelativePosY:I

    new-instance v0, Landroid/view/ViewGroup$4;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$4;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private greylist-max-o addDisappearingView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private greylist-max-o addInArray(Landroid/view/View;I)V
    .locals 6

    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    array-length v2, v0

    const/4 v3, 0x0

    if-ne p2, v1, :cond_1

    if-ne v2, v1, :cond_0

    add-int/lit8 v4, v2, 0xc

    new-array v4, v4, [Landroid/view/View;

    iput-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    iget-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    invoke-static {v0, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    :cond_0
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object p1, v0, v3

    goto :goto_1

    :cond_1
    if-ge p2, v1, :cond_4

    if-ne v2, v1, :cond_2

    add-int/lit8 v4, v2, 0xc

    new-array v4, v4, [Landroid/view/View;

    iput-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    iget-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    invoke-static {v0, v3, v4, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    add-int/lit8 v4, p2, 0x1

    sub-int v5, v1, p2

    invoke-static {v0, p2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    goto :goto_0

    :cond_2
    add-int/lit8 v3, p2, 0x1

    sub-int v4, v1, p2

    invoke-static {v0, p2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    aput-object p1, v0, p2

    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-lt v3, p2, :cond_3

    iget v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    :cond_3
    :goto_1
    return-void

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

    invoke-static {p1, p2}, Landroid/view/ViewGroup$TouchTarget;->obtain(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    iput-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    iput-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    return-object v0
.end method

.method private greylist-max-o addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 7

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->cancel(I)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_13

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1}, Landroid/animation/LayoutTransition;->addChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    :cond_2
    if-eqz p4, :cond_3

    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0

    :cond_3
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    if-gez p2, :cond_4

    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    :cond_4
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    if-eqz p4, :cond_5

    invoke-virtual {p1, p0}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    goto :goto_1

    :cond_5
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->hasUnhandledKeyListener()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->incrementChildUnhandledKeyListeners()V

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    :cond_7
    iget-object v1, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/high16 v2, 0x400000

    const/4 v3, 0x1

    if-eqz v1, :cond_9

    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v4, v2

    if-nez v4, :cond_9

    iget-boolean v4, v1, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    const/4 v5, 0x0

    iput-boolean v5, v1, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    iget-object v5, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v6, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    invoke-virtual {p1, v5, v6}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    iget-boolean v5, v1, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-eqz v5, :cond_8

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    :cond_8
    iput-boolean v4, v1, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->resetRtlProperties()V

    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchViewAdded(Landroid/view/View;)V

    iget v4, p1, Landroid/view/View;->mViewFlags:I

    and-int/2addr v4, v2

    if-ne v4, v2, :cond_b

    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v4, 0x10000

    or-int/2addr v2, v4

    iput v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p0, p1, v3}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_d

    invoke-virtual {p0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    :cond_d
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    if-eqz v2, :cond_f

    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_f

    iget-object v4, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v4, v3}, Landroid/util/IntArray;->get(I)I

    move-result v4

    if-gt p2, v4, :cond_e

    iget-object v5, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v3, v6}, Landroid/util/IntArray;->set(II)V

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_f
    iget-object v2, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    if-eqz v2, :cond_10

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->notifyChildOfDragStart(Landroid/view/View;)Z

    goto :goto_3

    :cond_10
    nop

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/view/ViewParent;->requestSendStickyDragStartedEvent(Landroid/view/View;)V

    :cond_11
    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->hasDefaultFocus()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setDefaultFocus(Landroid/view/View;)V

    :cond_12
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->touchAccessibilityNodeProviderIfNeeded(Landroid/view/View;)V

    return-void

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The specified child already has a parent. You must call removeView() on the child\'s parent first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist applyOpToRegionByBounds(Landroid/graphics/Region;Landroid/view/View;Landroid/graphics/Region$Op;)V
    .locals 9

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v8, v0, v2

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

    return-void
.end method

.method private greylist-max-o bindLayoutAnimation(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v0, p1}, Landroid/view/animation/LayoutAnimationController;->getAnimationForView(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private blacklist brokenDispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p1
.end method

.method private greylist-max-o cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V
    .locals 11

    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-wide v1, v9

    move-wide v3, v9

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    const/16 v1, 0x1002

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setSource(I)V

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, v1, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, v1, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    invoke-static {v2}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    :cond_1
    iget-object v2, v1, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    iget v3, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    const/4 v4, 0x1

    invoke-direct {p0, p1, v4, v2, v3}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    iget-object v1, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearTouchTargets()V

    if-eqz v0, :cond_3

    iget-boolean v1, p1, Landroid/view/MotionEvent;->mRecycled:Z

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    :cond_3
    return-void
.end method

.method private greylist-max-o cancelHoverTarget(Landroid/view/View;)V
    .locals 14

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, v1, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    iget-object v3, v1, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    if-ne v3, p1, :cond_1

    if-nez v0, :cond_0

    iput-object v2, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_1

    :cond_0
    iput-object v2, v0, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewGroup$HoverTarget;->recycle()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v8, 0xa

    const/4 v9, 0x0

    move-wide v4, v12

    move-wide v6, v12

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    const/16 v4, 0x1002

    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->setSource(I)V

    invoke-virtual {p1, v3}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    return-void

    :cond_1
    move-object v0, v1

    move-object v1, v2

    goto :goto_0

    :cond_2
    return-void
.end method

.method private greylist cancelTouchTarget(Landroid/view/View;)V
    .locals 14

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    iget-object v3, v1, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-ne v3, p1, :cond_1

    if-nez v0, :cond_0

    iput-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_1

    :cond_0
    iput-object v2, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-wide v4, v12

    move-wide v6, v12

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    const/16 v4, 0x1002

    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->setSource(I)V

    invoke-virtual {p1, v3}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    return-void

    :cond_1
    move-object v0, v1

    move-object v1, v2

    goto :goto_0

    :cond_2
    return-void
.end method

.method private greylist-max-o clearCachedLayoutMode()V
    .locals 1

    const/high16 v0, 0x800000

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    :cond_0
    return-void
.end method

.method private greylist-max-o clearTouchTargets()V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    invoke-virtual {v0}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    move-object v0, v1

    if-nez v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    :cond_1
    return-void
.end method

.method private greylist-max-o dispatchResolvePointerIcon(Landroid/view/MotionEvent;ILandroid/view/View;)Landroid/view/PointerIcon;
    .locals 5

    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p3}, Landroid/view/ViewGroup;->getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v1, p3, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v2, p3, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {p3, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v2

    neg-float v3, v0

    neg-float v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    move-object v1, v2

    :goto_0
    return-object v1
.end method

.method private greylist-max-o dispatchTooltipHoverEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 5

    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v1, p2, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v2, p2, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    neg-float v3, v0

    neg-float v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    move v1, v2

    :goto_0
    return v1
.end method

.method private greylist-max-o dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 5

    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v1, p2, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v2, p2, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    neg-float v3, v0

    neg-float v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    move v1, v2

    :goto_0
    return v1
.end method

.method private greylist-max-o dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-nez p2, :cond_8

    if-ne v0, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v1

    and-int v2, v1, p4

    if-nez v2, :cond_1

    const/4 v3, 0x0

    return v3

    :cond_1
    if-ne v2, v1, :cond_5

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    goto :goto_2

    :cond_3
    :goto_0
    if-nez p3, :cond_4

    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_1

    :cond_4
    iget v3, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v4, p3, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v5, p3, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {p3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    neg-float v6, v3

    neg-float v7, v4

    invoke-virtual {p1, v6, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    move v3, v5

    :goto_1
    return v3

    :cond_5
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object v3

    :goto_2
    if-nez p3, :cond_6

    invoke-super {p0, v3}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_3

    :cond_6
    iget v4, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v5, p3, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v6, p3, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {p3}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    :cond_7
    invoke-virtual {p3, v3}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    move v4, v6

    :goto_3
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    return v4

    :cond_8
    :goto_4
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    if-nez p3, :cond_9

    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_5

    :cond_9
    invoke-virtual {p3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    return v1
.end method

.method private static greylist-max-o drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V
    .locals 7

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

    return-void
.end method

.method private static greylist-max-o drawRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V
    .locals 3

    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    if-nez v0, :cond_0

    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    :cond_0
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x0

    int-to-float v2, p2

    aput v2, v0, v1

    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x1

    int-to-float v2, p3

    aput v2, v0, v1

    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x2

    int-to-float v2, p4

    aput v2, v0, v1

    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x3

    int-to-float v2, p3

    aput v2, v0, v1

    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x4

    int-to-float v2, p4

    aput v2, v0, v1

    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x5

    int-to-float v2, p3

    aput v2, v0, v1

    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x6

    int-to-float v2, p4

    aput v2, v0, v1

    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x7

    int-to-float v2, p5

    aput v2, v0, v1

    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0x8

    int-to-float v2, p4

    aput v2, v0, v1

    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0x9

    int-to-float v2, p5

    aput v2, v0, v1

    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0xa

    int-to-float v2, p2

    aput v2, v0, v1

    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0xb

    int-to-float v2, p5

    aput v2, v0, v1

    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0xc

    int-to-float v2, p2

    aput v2, v0, v1

    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0xd

    int-to-float v2, p5

    aput v2, v0, v1

    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0xe

    int-to-float v2, p2

    aput v2, v0, v1

    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0xf

    int-to-float v2, p3

    aput v2, v0, v1

    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    return-void
.end method

.method private static greylist-max-o drawRectCorners(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;II)V
    .locals 15

    move/from16 v7, p6

    move-object v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p6

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-static/range {v0 .. v6}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    neg-int v5, v7

    move/from16 v3, p4

    invoke-static/range {v0 .. v6}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    neg-int v4, v7

    move/from16 v2, p3

    move/from16 v3, p2

    move/from16 v5, p6

    invoke-static/range {v0 .. v6}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    neg-int v12, v7

    neg-int v13, v7

    move-object v8, p0

    move-object/from16 v9, p5

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v14, p7

    invoke-static/range {v8 .. v14}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    return-void
.end method

.method private greylist-max-o exitHoverTargets()V
    .locals 11

    iget-boolean v0, p0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x0

    move-wide v1, v9

    move-wide v3, v9

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_1
    return-void
.end method

.method private greylist-max-o exitTooltipHoverTargets()V
    .locals 11

    iget-boolean v0, p0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x0

    move-wide v1, v9

    move-wide v3, v9

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_1
    return-void
.end method

.method private static greylist-max-o fillDifference(Landroid/graphics/Canvas;IIIIIIIILandroid/graphics/Paint;)V
    .locals 10

    sub-int v6, p1, p5

    sub-int v7, p2, p6

    add-int v8, p3, p7

    add-int v9, p4, p8

    move-object v0, p0

    move-object/from16 v1, p9

    move v2, v6

    move v3, v7

    move v4, v8

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    move v3, p2

    move v4, p1

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    move v2, p3

    move v4, v8

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    move v2, v6

    move v3, p4

    move v5, v9

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    return-void
.end method

.method private static greylist-max-o fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V
    .locals 6

    if-eq p2, p4, :cond_2

    if-eq p3, p5, :cond_2

    if-le p2, p4, :cond_0

    move v0, p2

    move p2, p4

    move p4, v0

    :cond_0
    if-le p3, p5, :cond_1

    move v0, p3

    move p3, p5

    move p5, v0

    :cond_1
    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method private greylist-max-o findChildWithAccessibilityFocus()Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    :goto_0
    instance-of v4, v3, Landroid/view/View;

    if-eqz v4, :cond_3

    if-ne v3, p0, :cond_2

    return-object v2

    :cond_2
    move-object v2, v3

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private greylist-max-o getAndVerifyPreorderedIndex(IIZ)I
    .locals 4

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v0

    if-ge v0, p1, :cond_0

    nop

    goto :goto_0

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

    :cond_1
    move v0, p2

    :goto_0
    return v0
.end method

.method private static greylist-max-o getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;
    .locals 4
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

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    goto :goto_0

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

    :cond_1
    aget-object v0, p1, p2

    :goto_0
    return-object v0
.end method

.method private blacklist getAutofillManager()Landroid/view/autofill/AutofillManager;
    .locals 2

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    return-object v0
.end method

.method public static whitelist getChildMeasureSpec(III)I
    .locals 7

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/4 v2, 0x0

    sub-int v3, v1, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x2

    const/4 v6, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    if-ltz p2, :cond_0

    move v3, p2

    const/high16 v4, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    if-ne p2, v6, :cond_1

    move v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    goto :goto_0

    :cond_1
    if-ne p2, v5, :cond_6

    move v3, v2

    const/high16 v4, -0x80000000

    goto :goto_0

    :sswitch_1
    if-ltz p2, :cond_2

    move v3, p2

    const/high16 v4, 0x40000000    # 2.0f

    goto :goto_0

    :cond_2
    if-ne p2, v6, :cond_3

    move v3, v2

    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    if-ne p2, v5, :cond_6

    move v3, v2

    const/4 v4, 0x0

    goto :goto_0

    :sswitch_2
    if-ltz p2, :cond_4

    move v3, p2

    const/high16 v4, 0x40000000    # 2.0f

    goto :goto_0

    :cond_4
    if-ne p2, v6, :cond_5

    move v3, v2

    const/high16 v4, -0x80000000

    goto :goto_0

    :cond_5
    if-ne p2, v5, :cond_6

    move v3, v2

    const/high16 v4, -0x80000000

    :cond_6
    :goto_0
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    return v5

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

    invoke-static {}, Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;->obtain()Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->populateChildrenForAutofill(Ljava/util/ArrayList;I)V

    return-object v0
.end method

.method private blacklist getChildrenForContentCapture()Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;
    .locals 1

    invoke-static {}, Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;->obtain()Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->populateChildrenForContentCapture(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method private greylist-max-o getLocalPoint()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method private blacklist getTempLocationF()[F
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mTempPosition:[F

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/ViewGroup;->mTempPosition:[F

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTempPosition:[F

    return-object v0
.end method

.method private blacklist getTempPoint()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mTempPoint:Landroid/graphics/Point;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTempPoint:Landroid/graphics/Point;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTempPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method private blacklist getTempRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mTempRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTempRect:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private greylist-max-o getTouchTarget(Landroid/view/View;)Landroid/view/ViewGroup$TouchTarget;
    .locals 2

    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;
    .locals 4

    iget v0, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v1, p2, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v2, p2, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    :cond_0
    return-object v2
.end method

.method private greylist-max-o hasBooleanFlag(I)Z
    .locals 1

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

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getZ()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    sget-object v0, Lcom/android/internal/R$styleable;->ViewGroup:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget-object v3, Lcom/android/internal/R$styleable;->ViewGroup:[I

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, v0

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/view/ViewGroup;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocus(Z)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setTransitionGroup(Z)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setLayoutMode(I)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v5, Landroid/animation/LayoutTransition;

    invoke-direct {v5}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    goto :goto_1

    :pswitch_5
    sget-object v4, Landroid/view/ViewGroup;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    aget v4, v4, v5

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    goto :goto_1

    :pswitch_7
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    goto :goto_1

    :pswitch_8
    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setPersistentDrawingCache(I)V

    goto :goto_1

    :pswitch_9
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setAnimationCacheEnabled(Z)V

    goto :goto_1

    :pswitch_a
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-lez v4, :cond_0

    iget-object v5, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    goto :goto_1

    :pswitch_b
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    goto :goto_1

    :pswitch_c
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    nop

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

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

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isShowingLayoutBounds()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x80

    invoke-virtual {p0, v0, v0}, Landroid/view/ViewGroup;->setFlags(II)V

    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/4 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v2, 0x200000

    or-int/2addr v0, v2

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v0, 0x20000

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    const/16 v0, 0xc

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iput v1, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    return-void
.end method

.method private blacklist isOnTop(Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p3, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iget-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    add-int/lit8 v5, v0, -0x1

    :goto_1
    if-ltz v5, :cond_3

    invoke-direct {p0, v0, v5, v3}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v6

    invoke-static {p3, v4, v6}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    if-ne v7, p1, :cond_1

    return v1

    :cond_1
    if-ne v7, p2, :cond_2

    return v2

    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method private blacklist newDispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private greylist-max-o notifyAnimationListener()V
    .locals 1

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/ViewGroup$3;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$3;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    return-void
.end method

.method private static greylist-max-o obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method private blacklist offsetRectBetweenParentAndChildDebug(Landroid/view/View;Landroid/graphics/Rect;ZZ)V
    .locals 18

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

    if-ne v1, v0, :cond_0

    const-string v5, "    : if (descendant == this) return;"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v5, v1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

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

    const/4 v7, 0x0

    const-string v8, "    : ========================================"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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

    :goto_2
    instance-of v9, v5, Landroid/view/View;

    if-eqz v9, :cond_a

    if-eq v5, v0, :cond_a

    add-int/lit8 v7, v7, 0x1

    if-eqz v3, :cond_5

    iget v9, v1, Landroid/view/View;->mLeft:I

    iget v3, v1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v9, v3

    iget v3, v1, Landroid/view/View;->mTop:I

    move-object/from16 v16, v8

    iget v8, v1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v3, v8

    invoke-virtual {v2, v9, v3}, Landroid/graphics/Rect;->offset(II)V

    if-eqz v4, :cond_4

    move-object v3, v5

    check-cast v3, Landroid/view/View;

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

    if-nez v8, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->setEmpty()V

    :cond_3
    const/4 v13, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v17, v13

    const/4 v13, 0x0

    goto :goto_4

    :cond_5
    move-object/from16 v16, v8

    move-object/from16 v17, v13

    if-eqz v4, :cond_6

    move-object v3, v5

    check-cast v3, Landroid/view/View;

    iget v8, v3, Landroid/view/View;->mRight:I

    iget v9, v3, Landroid/view/View;->mLeft:I

    sub-int/2addr v8, v9

    iget v9, v3, Landroid/view/View;->mBottom:I

    iget v13, v3, Landroid/view/View;->mTop:I

    sub-int/2addr v9, v13

    const/4 v13, 0x0

    invoke-virtual {v2, v13, v13, v8, v9}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_3

    :cond_6
    const/4 v13, 0x0

    :cond_7
    :goto_3
    iget v3, v1, Landroid/view/View;->mScrollX:I

    iget v8, v1, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v8

    iget v8, v1, Landroid/view/View;->mScrollY:I

    iget v9, v1, Landroid/view/View;->mTop:I

    sub-int/2addr v8, v9

    invoke-virtual {v2, v3, v8}, Landroid/graphics/Rect;->offset(II)V

    :goto_4
    move-object v1, v5

    check-cast v1, Landroid/view/View;

    iget-object v5, v1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

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

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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

    :cond_a
    move-object/from16 v16, v8

    move-object/from16 v3, v16

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v5, v0, :cond_c

    if-eqz p3, :cond_b

    iget v3, v1, Landroid/view/View;->mLeft:I

    iget v6, v1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v3, v6

    iget v6, v1, Landroid/view/View;->mTop:I

    iget v8, v1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v6, v8

    invoke-virtual {v2, v3, v6}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_7

    :cond_b
    iget v3, v1, Landroid/view/View;->mScrollX:I

    iget v6, v1, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v6

    iget v6, v1, Landroid/view/View;->mScrollY:I

    iget v8, v1, Landroid/view/View;->mTop:I

    sub-int/2addr v6, v8

    invoke-virtual {v2, v3, v6}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_7

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

    const-string v3, "    : IllegalArgumentException(parameter must be a descendant of this view)"

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    return-void
.end method

.method private greylist-max-o populateChildrenForAutofill(Ljava/util/ArrayList;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0}, Landroid/view/ViewGroup;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_9

    invoke-direct {p0, v0, v4, v2}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v5

    if-nez v1, :cond_2

    iget-object v6, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v6, v6, v5

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    :goto_2
    and-int/lit8 v7, p2, 0x1

    if-nez v7, :cond_7

    invoke-virtual {v6}, Landroid/view/View;->isImportantForAutofill()Z

    move-result v7

    if-nez v7, :cond_7

    instance-of v7, v6, Landroid/webkit/WebView;

    if-eqz v7, :cond_3

    invoke-direct {p0, v3}, Landroid/view/ViewGroup;->shouldAlwaysIncludeWebview(Landroid/view/autofill/AutofillManager;)Z

    move-result v7

    if-nez v7, :cond_7

    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->isMatchingAutofillableHeuristics()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Landroid/view/View;->isActivityDeniedForAutofillForUnimportantView()Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_4
    invoke-direct {p0, v3}, Landroid/view/ViewGroup;->shouldIncludeAllChildrenViewWithAutofillTypeNotNone(Landroid/view/autofill/AutofillManager;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Landroid/view/View;->getAutofillType()I

    move-result v7

    if-nez v7, :cond_7

    :cond_5
    invoke-direct {p0, v3}, Landroid/view/ViewGroup;->shouldIncludeAllChildrenViews(Landroid/view/autofill/AutofillManager;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-direct {p0, v3}, Landroid/view/ViewGroup;->shouldIncludeInvisibleView(Landroid/view/autofill/AutofillManager;)Z

    move-result v7

    if-eqz v7, :cond_6

    instance-of v7, v6, Landroid/view/ViewGroup;

    if-eqz v7, :cond_6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_3

    :cond_6
    instance-of v7, v6, Landroid/view/ViewGroup;

    if-eqz v7, :cond_8

    move-object v7, v6

    check-cast v7, Landroid/view/ViewGroup;

    invoke-direct {v7, p1, p2}, Landroid/view/ViewGroup;->populateChildrenForAutofill(Ljava/util/ArrayList;I)V

    goto :goto_4

    :cond_7
    :goto_3
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_9
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

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_5

    invoke-direct {p0, v0, v3, v2}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v4

    if-nez v1, :cond_2

    iget-object v5, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v5, v5, v4

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    :goto_2
    invoke-virtual {v5}, Landroid/view/View;->isImportantForContentCapture()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_4

    move-object v6, v5

    check-cast v6, Landroid/view/ViewGroup;

    invoke-direct {v6, p1}, Landroid/view/ViewGroup;->populateChildrenForContentCapture(Ljava/util/ArrayList;)V

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private greylist-max-o recreateChildDisplayList(Landroid/view/View;)V
    .locals 3

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

    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v2, 0x7fffffff

    and-int/2addr v0, v2

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    invoke-virtual {p1}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/graphics/RenderNode;

    iput-boolean v1, p1, Landroid/view/View;->mRecreateDisplayList:Z

    return-void
.end method

.method private greylist-max-o removeFromArray(I)V
    .locals 5

    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    aget-object v3, v0, p1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    aget-object v1, v0, p1

    if-eqz v1, :cond_1

    aget-object v1, v0, p1

    iput-object v2, v1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    :cond_1
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v3, v1, -0x1

    if-ne p1, v3, :cond_2

    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object v2, v0, v3

    goto :goto_0

    :cond_2
    if-ltz p1, :cond_5

    if-ge p1, v1, :cond_5

    add-int/lit8 v3, p1, 0x1

    sub-int v4, v1, p1

    add-int/lit8 v4, v4, -0x1

    invoke-static {v0, v3, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object v2, v0, v3

    :goto_0
    iget v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-ne v2, p1, :cond_3

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/view/ViewGroup;->mLastTouchDownTime:J

    const/4 v2, -0x1

    iput v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    goto :goto_1

    :cond_3
    iget v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-le v2, p1, :cond_4

    iget v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    :cond_4
    :goto_1
    return-void

    :cond_5
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method private greylist-max-o removeFromArray(II)V
    .locals 6

    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int v2, p1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ne p1, v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    if-ne v2, v1, :cond_2

    move v4, p1

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    iput-object v3, v5, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    aput-object v3, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    goto :goto_3

    :cond_2
    move v4, p1

    :goto_1
    if-ge v4, v2, :cond_3

    aget-object v5, v0, v4

    iput-object v3, v5, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    sub-int v4, v1, v2

    invoke-static {v0, v2, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v4, v2, p1

    sub-int v4, v1, v4

    :goto_2
    if-ge v4, v1, :cond_4

    aput-object v3, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    sub-int v4, v2, p1

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    return-void
.end method

.method private greylist-max-o removePointersFromTouchTargets(I)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    iget v3, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    and-int/2addr v3, p1

    if-eqz v3, :cond_1

    iget v3, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    not-int v4, p1

    and-int/2addr v3, v4

    iput v3, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    iget v3, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    if-nez v3, :cond_1

    if-nez v0, :cond_0

    iput-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_1

    :cond_0
    iput-object v2, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    move-object v1, v2

    goto :goto_0

    :cond_1
    move-object v0, v1

    move-object v1, v2

    goto :goto_0

    :cond_2
    return-void
.end method

.method private greylist-max-o removeViewInternal(ILandroid/view/View;)V
    .locals 6

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p2}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-ne p2, v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    const/4 v0, 0x1

    :cond_1
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-ne p2, v1, :cond_2

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->clearFocusedInCluster(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->clearAccessibilityFocus()V

    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    invoke-virtual {p2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, p2, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_1

    :cond_4
    :goto_0
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    :cond_5
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->hasTransientState()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {p0, p2, v2}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    :cond_6
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    invoke-virtual {p2}, Landroid/view/View;->hasUnhandledKeyListener()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->decrementChildUnhandledKeyListeners()V

    :cond_7
    iget-object v1, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-ne p2, v1, :cond_8

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->clearDefaultFocus(Landroid/view/View;)V

    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->rootViewRequestFocus()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p0, p0}, Landroid/view/ViewGroup;->notifyGlobalFocusCleared(Landroid/view/View;)V

    :cond_9
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_a

    invoke-virtual {p0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    :cond_a
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    if-nez v1, :cond_b

    goto :goto_2

    :cond_b
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v2

    :goto_2
    move v1, v2

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_d

    iget-object v3, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    if-ge p1, v3, :cond_c

    iget-object v4, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v2, v5}, Landroid/util/IntArray;->set(II)V

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_d
    iget-object v2, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    if-eqz v2, :cond_e

    iget-object v2, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    invoke-virtual {v2, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_e
    return-void
.end method

.method private greylist-max-o removeViewInternal(Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o removeViewsInternal(II)V
    .locals 10

    add-int v0, p1, p2

    if-ltz p1, :cond_c

    if-ltz p2, :cond_c

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-gt v0, v1, :cond_c

    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget-object v2, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    move v7, p1

    :goto_1
    if-ge v7, v0, :cond_9

    aget-object v8, v6, v7

    iget-object v9, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v9, :cond_1

    iget-object v9, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v9, p0, v8}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    :cond_1
    if-ne v8, v1, :cond_2

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    const/4 v4, 0x1

    :cond_2
    iget-object v9, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-ne v8, v9, :cond_3

    move-object v5, v8

    :cond_3
    iget-object v9, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-ne v8, v9, :cond_4

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->clearFocusedInCluster(Landroid/view/View;)V

    :cond_4
    invoke-virtual {v8}, Landroid/view/View;->clearAccessibilityFocus()V

    invoke-direct {p0, v8}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    invoke-direct {p0, v8}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    invoke-virtual {v8}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v9

    if-nez v9, :cond_6

    iget-object v9, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v9, :cond_5

    iget-object v9, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_7

    invoke-virtual {v8}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_3

    :cond_6
    :goto_2
    invoke-direct {p0, v8}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    :cond_7
    :goto_3
    invoke-virtual {v8}, Landroid/view/View;->hasTransientState()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {p0, v8, v3}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    :cond_8
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_9
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    if-eqz v5, :cond_a

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->clearDefaultFocus(Landroid/view/View;)V

    :cond_a
    if-eqz v4, :cond_b

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->rootViewRequestFocus()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->notifyGlobalFocusCleared(Landroid/view/View;)V

    :cond_b
    return-void

    :cond_c
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method private static greylist-max-o resetCancelNextUpFlag(Landroid/view/View;)Z
    .locals 2

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o resetTouchState()V
    .locals 2

    invoke-direct {p0}, Landroid/view/ViewGroup;->clearTouchTargets()V

    invoke-static {p0}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    return-void
.end method

.method private greylist-max-o restoreFocusInClusterInternal(I)Z
    .locals 2

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

    invoke-virtual {v0, p1}, Landroid/view/View;->restoreFocusInCluster(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->restoreFocusInCluster(I)Z

    move-result v0

    return v0
.end method

.method private greylist-max-o setBooleanFlag(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    :goto_0
    return-void
.end method

.method private greylist-max-o setLayoutMode(IZ)V
    .locals 1

    iput p1, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    const/high16 v0, 0x800000

    invoke-direct {p0, v0, p2}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    return-void
.end method

.method private greylist-max-o setTouchscreenBlocksFocusNoRefocus(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    :goto_0
    return-void
.end method

.method private blacklist shouldAlwaysIncludeWebview(Landroid/view/autofill/AutofillManager;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/autofill/AutofillManager;->shouldAlwaysIncludeWebviewInAssistStructure()Z

    move-result v0

    return v0
.end method

.method private blacklist shouldIncludeAllChildrenViewWithAutofillTypeNotNone(Landroid/view/autofill/AutofillManager;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/autofill/AutofillManager;->shouldIncludeAllChildrenViewsWithAutofillTypeNotNoneInAssistStructure()Z

    move-result v0

    return v0
.end method

.method private blacklist shouldIncludeAllChildrenViews(Landroid/view/autofill/AutofillManager;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/autofill/AutofillManager;->shouldIncludeAllChildrenViewInAssistStructure()Z

    move-result v0

    return v0
.end method

.method private blacklist shouldIncludeInvisibleView(Landroid/view/autofill/AutofillManager;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/autofill/AutofillManager;->shouldIncludeInvisibleViewInAssistStructure()Z

    move-result v0

    return v0
.end method

.method private static greylist-max-o sign(I)I
    .locals 1

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

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isAutofillCompatibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

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

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/view/ViewGroup$ChildListForAccessibility;->obtain(Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$ChildListForAccessibility;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget v4, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->includeForAccessibility()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v3, p1}, Landroid/view/View;->addChildrenForAccessibility(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    nop

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    throw v1
.end method

.method public whitelist addExtraDataToAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "android.view.accessibility.extra.DATA_RENDERING_INFO_KEY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->setLayoutSize(II)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setExtraRenderingInfo(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;)V

    :cond_0
    return-void
.end method

.method public whitelist addFocusables(Ljava/util/ArrayList;II)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->shouldBlockFocusForTouchscreen()Z

    move-result v2

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

    :goto_1
    const/high16 v5, 0x60000

    if-ne v1, v5, :cond_3

    if-eqz v3, :cond_2

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_2
    return-void

    :cond_3
    if-eqz v2, :cond_4

    or-int/lit8 p3, p3, 0x1

    :cond_4
    const/high16 v5, 0x20000

    if-ne v1, v5, :cond_5

    if-eqz v3, :cond_5

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_5
    const/4 v5, 0x0

    iget v6, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    new-array v6, v6, [Landroid/view/View;

    const/4 v7, 0x0

    :goto_2
    iget v8, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v7, v8, :cond_7

    iget-object v8, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v8, v8, v7

    iget v9, v8, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v9, v9, 0xc

    if-nez v9, :cond_6

    add-int/lit8 v9, v5, 0x1

    aput-object v8, v6, v5

    move v5, v9

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v7

    invoke-static {v6, v4, v5, p0, v7}, Landroid/view/FocusFinder;->sort([Landroid/view/View;IILandroid/view/ViewGroup;Z)V

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v5, :cond_8

    aget-object v7, v6, v4

    invoke-virtual {v7, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    const/high16 v4, 0x40000

    if-ne v1, v4, :cond_9

    if-eqz v3, :cond_9

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v0, v4, :cond_9

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_9
    return-void
.end method

.method public whitelist addKeyboardNavigationClusters(Ljava/util/Collection;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isKeyboardNavigationCluster()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTouchscreenBlocksFocus()Z

    move-result v1

    :try_start_0
    invoke-direct {p0, v2}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    invoke-super {p0, p1, p2}, Landroid/view/View;->addKeyboardNavigationClusters(Ljava/util/Collection;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v1}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    nop

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-direct {p0, v1}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    throw v2

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->addKeyboardNavigationClusters(Ljava/util/Collection;I)V

    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v3, 0x60000

    if-ne v1, v3, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x0

    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    new-array v3, v3, [Landroid/view/View;

    const/4 v4, 0x0

    :goto_1
    iget v5, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v4, v5, :cond_4

    iget-object v5, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v5, v5, v4

    iget v6, v5, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    if-nez v6, :cond_3

    add-int/lit8 v6, v1, 0x1

    aput-object v5, v3, v1

    move v1, v6

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v4

    invoke-static {v3, v2, v1, p0, v4}, Landroid/view/FocusFinder;->sort([Landroid/view/View;IILandroid/view/ViewGroup;Z)V

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_5

    aget-object v4, v3, v2

    invoke-virtual {v4, p1, p2}, Landroid/view/View;->addKeyboardNavigationClusters(Ljava/util/Collection;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public whitelist addStatesFromChildren()Z
    .locals 1

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

    invoke-super {p0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    iget v4, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_0

    invoke-virtual {v3, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public greylist addTransientView(Landroid/view/View;I)V
    .locals 3

    if-ltz p2, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v2, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    if-ge p2, v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v2, v1, p2}, Landroid/util/IntArray;->add(II)V

    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v1, p2}, Landroid/util/IntArray;->add(I)V

    iget-object v1, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    iget-object v1, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v2, v2, 0xc

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    :cond_5
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->invalidate(Z)V

    return-void

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

    :cond_7
    :goto_3
    return-void
.end method

.method public whitelist addView(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public whitelist addView(Landroid/view/View;I)V
    .locals 3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "generateDefaultLayoutParams() cannot return null  "

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add a null child view to a ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addView(Landroid/view/View;II)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public whitelist addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add a null child view to a ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected whitelist addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result v0

    return v0
.end method

.method protected whitelist addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x200001

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    const/4 v0, 0x1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add a null child view to a ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 2

    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    if-nez v0, :cond_0

    new-instance v1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    invoke-direct {v1}, Landroid/view/animation/LayoutAnimationController$AnimationParameters;-><init>()V

    move-object v0, v1

    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    :cond_0
    iput p4, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    iput p3, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    return-void
.end method

.method protected whitelist attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-gez p2, :cond_0

    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x200001

    and-int/2addr v0, v1

    const v1, -0x8001

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setDetached(Z)V

    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    nop

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->dispatchVisibilityAggregated(Z)Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    return-void
.end method

.method public whitelist bringChildToFront(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->removeFromArray(I)V

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    invoke-direct {p0, p1, v1}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

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

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    invoke-direct {p0}, Landroid/view/ViewGroup;->hasChildWithZ()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    invoke-direct {p0, v0, v2, v1}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v3

    iget-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/view/View;->getZ()F

    move-result v5

    move v6, v2

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

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_2
    iget-object v7, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v7, v6, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    return-object v2

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

    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method blacklist calculateAccessibilityDataSensitive()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->calculateAccessibilityDataSensitive()V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/View;->calculateAccessibilityDataSensitive()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected whitelist canAnimate()Z
    .locals 1

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

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->captureTransitioningViews(Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

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

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method public whitelist childHasTransientStateChanged(Landroid/view/View;Z)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasTransientState()Z

    move-result v0

    if-eqz p2, :cond_0

    iget v1, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasTransientState()Z

    move-result v1

    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_1

    if-eq v0, v1, :cond_1

    :try_start_0
    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v2, p0, v1}, Landroid/view/ViewParent;->childHasTransientStateChanged(Landroid/view/View;Z)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v4}, Landroid/view/ViewParent;->getClass()Ljava/lang/Class;

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

    :cond_1
    :goto_1
    return-void
.end method

.method protected whitelist cleanupLayoutState(Landroid/view/View;)V
    .locals 1

    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    return-void
.end method

.method public whitelist clearChildFocus(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->clearChildFocus(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method greylist-max-o clearDefaultFocus(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocusedByDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/View;->isFocusedByDefault()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    return-void

    :cond_1
    iget-object v2, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->hasDefaultFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->clearDefaultFocus(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method public whitelist clearDisappearingChildren()V
    .locals 5

    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-object v4, v3, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->dispatchDetachedFromWindow()V

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_2
    return-void
.end method

.method public whitelist clearFocus()V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->clearFocus()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    :goto_0
    return-void
.end method

.method greylist-max-o clearFocusedInCluster()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->findKeyboardNavigationCluster()Landroid/view/View;

    move-result-object v0

    move-object v1, p0

    :cond_0
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-ne v1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    :goto_0
    return-void
.end method

.method greylist-max-o clearFocusedInCluster(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearFocusedInCluster()V

    return-void
.end method

.method greylist-max-o computeOpticalInsets()Landroid/graphics/Insets;
    .locals 8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutModeOptical()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v4, v5, :cond_1

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v6

    iget v7, v6, Landroid/graphics/Insets;->left:I

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v7, v6, Landroid/graphics/Insets;->top:I

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v7, v6, Landroid/graphics/Insets;->right:I

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v7, v6, Landroid/graphics/Insets;->bottom:I

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v4

    return-object v4

    :cond_2
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object v0
.end method

.method public greylist-max-o createSnapshot(Landroid/view/ViewDebug$CanvasProvider;Z)Landroid/graphics/Bitmap;
    .locals 7

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    aput v4, v1, v2

    aget v4, v1, v2

    if-nez v4, :cond_0

    iget v4, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, -0xd

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, Landroid/view/View;->mViewFlags:I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->createSnapshot(Landroid/view/ViewDebug$CanvasProvider;Z)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_2

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget v5, v4, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v5, v5, -0xd

    aget v6, v1, v3

    and-int/lit8 v6, v6, 0xc

    or-int/2addr v5, v6

    iput v5, v4, Landroid/view/View;->mViewFlags:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v2

    :catchall_0
    move-exception v2

    if-eqz p2, :cond_3

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_3

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget v5, v4, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v5, v5, -0xd

    aget v6, v1, v3

    and-int/lit8 v6, v6, 0xc

    or-int/2addr v5, v6

    iput v5, v4, Landroid/view/View;->mViewFlags:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    throw v2
.end method

.method protected whitelist debug(I)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    const-string v1, "View"

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mFocused"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->debug(I)V

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mDefaultFocus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->debug(I)V

    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mFocusedInCluster"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->debug(I)V

    :cond_2
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v3, v3, v2

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->debug(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v2, :cond_5

    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method greylist-max-o decrementChildUnhandledKeyListeners()V
    .locals 1

    iget v0, p0, Landroid/view/ViewGroup;->mChildUnhandledKeyListeners:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/view/ViewGroup;->mChildUnhandledKeyListeners:I

    iget v0, p0, Landroid/view/ViewGroup;->mChildUnhandledKeyListeners:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->decrementChildUnhandledKeyListeners()V

    :cond_0
    return-void
.end method

.method protected greylist-max-o destroyHardwareResources()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->destroyHardwareResources()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->destroyHardwareResources()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected whitelist detachAllViewsFromParent()V
    .locals 6

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_1

    aget-object v3, v1, v2

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    aget-object v3, v1, v2

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/view/View;->setDetached(Z)V

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected whitelist detachViewFromParent(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDetached(Z)V

    :cond_0
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    return-void
.end method

.method protected whitelist detachViewFromParent(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setDetached(Z)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->removeFromArray(I)V

    return-void
.end method

.method protected whitelist detachViewsFromParent(II)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int v1, p1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, p1

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setDetached(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    return-void
.end method

.method public greylist-max-o dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z
    .locals 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/view/View;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    sget-boolean v0, Landroid/view/View;->sBrokenInsetsDispatch:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->brokenDispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->newDispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method greylist dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V
    .locals 6

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    nop

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    invoke-virtual {p0, p2, v4}, Landroid/view/ViewGroup;->combineVisibility(II)I

    move-result v4

    invoke-virtual {v3, p1, v4}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    :goto_1
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_2

    iget-object v4, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    nop

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    invoke-virtual {p0, p2, v5}, Landroid/view/ViewGroup;->combineVisibility(II)I

    move-result v5

    invoke-virtual {v4, p1, v5}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method greylist-max-o dispatchCancelPendingInputEvents()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->dispatchCancelPendingInputEvents()V

    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchCancelPendingInputEvents()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public whitelist dispatchCapturedPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/16 v1, 0x12

    and-int/2addr v0, v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchCapturedPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchCapturedPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V
    .locals 5

    and-int/lit8 v0, p2, 0xc

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    iget v4, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    or-int/2addr v4, p2

    invoke-virtual {v3, p1, v4}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public whitelist dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_1

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

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public whitelist dispatchCreateViewTranslationRequest(Ljava/util/Map;[ILandroid/view/translation/TranslationCapability;Ljava/util/List;)V
    .locals 3
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

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->dispatchCreateViewTranslationRequest(Ljava/util/Map;[ILandroid/view/translation/TranslationCapability;Ljava/util/List;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/view/View;->dispatchCreateViewTranslationRequest(Ljava/util/Map;[ILandroid/view/translation/TranslationCapability;Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method greylist-max-r dispatchDetachedFromWindow()V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Landroid/view/ViewGroup;->exitHoverTargets()V

    invoke-direct {p0}, Landroid/view/ViewGroup;->exitTooltipHoverTargets()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    iput-boolean v1, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    iget-object v2, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    invoke-virtual {v2}, Landroid/view/DragEvent;->recycle()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, v2, v3

    invoke-virtual {v4}, Landroid/view/View;->dispatchDetachedFromWindow()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearDisappearingChildren()V

    iget-object v3, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    :goto_1
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_3

    iget-object v4, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->dispatchDetachedFromWindow()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-super {p0}, Landroid/view/View;->dispatchDetachedFromWindow()V

    return-void
.end method

.method public whitelist dispatchDisplayHint(I)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method greylist-max-o dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z
    .locals 2

    iget v0, p1, Landroid/view/DragEvent;->mAction:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

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

    const/4 v0, 0x0

    iget v1, p1, Landroid/view/DragEvent;->mX:F

    iget v2, p1, Landroid/view/DragEvent;->mY:F

    iget-object v3, p1, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    invoke-direct {p0}, Landroid/view/ViewGroup;->getLocalPoint()Landroid/graphics/PointF;

    move-result-object v4

    iget v5, p1, Landroid/view/DragEvent;->mAction:I

    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    iget-object v5, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v0, 0x1

    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    :cond_2
    iget-object v7, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    invoke-virtual {v7}, Landroid/view/DragEvent;->recycle()V

    iput-object v6, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    :cond_3
    iget-boolean v6, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    if-eqz v6, :cond_5

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v0, 0x1

    :cond_4
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    :cond_5
    goto/16 :goto_5

    :pswitch_1
    iget v5, p1, Landroid/view/DragEvent;->mX:F

    iget v7, p1, Landroid/view/DragEvent;->mY:F

    invoke-virtual {p0, v5, v7, v4}, Landroid/view/ViewGroup;->findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;

    move-result-object v5

    sget-boolean v7, Landroid/view/ViewGroup;->sCascadedDragDrop:Z

    if-eqz v7, :cond_8

    iget-object v7, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    if-eq v5, v7, :cond_8

    iget v7, p1, Landroid/view/DragEvent;->mAction:I

    const/4 v8, 0x0

    iput v8, p1, Landroid/view/DragEvent;->mX:F

    iput v8, p1, Landroid/view/DragEvent;->mY:F

    iput-object v6, p1, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    iget-object v6, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    if-eqz v6, :cond_6

    const/4 v6, 0x6

    iput v6, p1, Landroid/view/DragEvent;->mAction:I

    iget-object v6, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    invoke-virtual {v6, p1}, Landroid/view/View;->dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z

    :cond_6
    if-eqz v5, :cond_7

    const/4 v6, 0x5

    iput v6, p1, Landroid/view/DragEvent;->mAction:I

    invoke-virtual {v5, p1}, Landroid/view/View;->dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z

    :cond_7
    iput v7, p1, Landroid/view/DragEvent;->mAction:I

    iput v1, p1, Landroid/view/DragEvent;->mX:F

    iput v2, p1, Landroid/view/DragEvent;->mY:F

    iput-object v3, p1, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    iput-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    :cond_8
    if-nez v5, :cond_9

    iget-boolean v6, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    if-eqz v6, :cond_9

    move-object v5, p0

    :cond_9
    if-eqz v5, :cond_13

    if-eq v5, p0, :cond_c

    iget v6, v4, Landroid/graphics/PointF;->x:F

    iput v6, p1, Landroid/view/DragEvent;->mX:F

    iget v6, v4, Landroid/graphics/PointF;->y:F

    iput v6, p1, Landroid/view/DragEvent;->mY:F

    invoke-virtual {v5, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    iput v1, p1, Landroid/view/DragEvent;->mX:F

    iput v2, p1, Landroid/view/DragEvent;->mY:F

    iget-boolean v6, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    if-eqz v6, :cond_13

    sget-boolean v6, Landroid/view/ViewGroup;->sCascadedDragDrop:Z

    if-eqz v6, :cond_a

    move v6, v0

    goto :goto_1

    :cond_a
    iget-boolean v6, p1, Landroid/view/DragEvent;->mEventHandlerWasCalled:Z

    :goto_1
    if-nez v6, :cond_b

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    :cond_b
    goto :goto_5

    :cond_c
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    goto :goto_5

    :pswitch_2
    iput-object v6, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    invoke-static {p1}, Landroid/view/DragEvent;->obtain(Landroid/view/DragEvent;)Landroid/view/DragEvent;

    move-result-object v5

    iput-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    iget-object v5, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    if-nez v5, :cond_d

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    goto :goto_2

    :cond_d
    iget-object v5, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    :goto_2
    iget v5, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v7, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v5, :cond_10

    aget-object v9, v7, v8

    if-nez v9, :cond_e

    goto :goto_4

    :cond_e
    iget v10, v9, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v10, v10, -0x4

    iput v10, v9, Landroid/view/View;->mPrivateFlags2:I

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_f

    aget-object v10, v7, v8

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->notifyChildOfDragStart(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_f

    const/4 v0, 0x1

    :cond_f
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_10
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v8

    iput-boolean v8, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    iget-boolean v8, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    if-eqz v8, :cond_11

    const/4 v0, 0x1

    :cond_11
    if-nez v0, :cond_12

    iget-object v8, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    invoke-virtual {v8}, Landroid/view/DragEvent;->recycle()V

    iput-object v6, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    :cond_12
    nop

    :cond_13
    :goto_5
    return v0

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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v3, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    iget v4, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v5, v4, 0x8

    if-eqz v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    aget-object v6, v3, v5

    iget v7, v6, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v7, v7, 0xc

    if-nez v7, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v6, v7, v5, v2}, Landroid/view/ViewGroup;->attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V

    invoke-direct {v0, v6}, Landroid/view/ViewGroup;->bindLayoutAnimation(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, v0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v5}, Landroid/view/animation/LayoutAnimationController;->willOverlap()Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v6, v6, 0x80

    iput v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    :cond_2
    invoke-virtual {v5}, Landroid/view/animation/LayoutAnimationController;->start()V

    iget v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v6, v6, -0x9

    iput v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    iget v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v6, v6, -0x11

    iput v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    iget-object v6, v0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v6, :cond_3

    iget-object v6, v0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v5}, Landroid/view/animation/LayoutAnimationController;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    :cond_3
    const/4 v5, 0x0

    and-int/lit8 v6, v4, 0x22

    const/16 v7, 0x22

    const/4 v8, 0x0

    if-ne v6, v7, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    move v6, v8

    :goto_1
    if-eqz v6, :cond_5

    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->save(I)I

    move-result v5

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

    :cond_5
    iget v7, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v7, v7, -0x41

    iput v7, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    iget v7, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v7, v7, -0x5

    iput v7, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getDrawingTime()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->enableZ()V

    iget-object v12, v0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    if-nez v12, :cond_6

    move v12, v8

    goto :goto_2

    :cond_6
    iget-object v12, v0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v12}, Landroid/util/IntArray;->size()I

    move-result v12

    :goto_2
    if-eqz v12, :cond_7

    move v13, v8

    goto :goto_3

    :cond_7
    const/4 v13, -0x1

    :goto_3
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->drawsWithRenderNode(Landroid/graphics/Canvas;)Z

    move-result v14

    if-eqz v14, :cond_8

    const/4 v14, 0x0

    goto :goto_4

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v14

    :goto_4
    if-nez v14, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v15

    if-eqz v15, :cond_9

    const/4 v8, 0x1

    goto :goto_5

    :cond_9
    nop

    :goto_5
    const/4 v15, 0x0

    :goto_6
    if-ge v15, v2, :cond_12

    :goto_7
    if-ltz v13, :cond_e

    iget-object v9, v0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v9, v13}, Landroid/util/IntArray;->get(I)I

    move-result v9

    if-ne v9, v15, :cond_e

    iget-object v9, v0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    if-eqz v9, :cond_b

    move/from16 v16, v4

    iget v4, v9, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-eqz v4, :cond_a

    invoke-virtual {v9}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_c

    :cond_a
    invoke-virtual {v0, v1, v9, v10, v11}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v4

    or-int/2addr v4, v7

    move v7, v4

    goto :goto_8

    :cond_b
    move/from16 v16, v4

    :cond_c
    :goto_8
    add-int/lit8 v13, v13, 0x1

    if-lt v13, v12, :cond_d

    const/4 v4, -0x1

    move v13, v4

    :cond_d
    move/from16 v4, v16

    goto :goto_7

    :cond_e
    move/from16 v16, v4

    invoke-direct {v0, v2, v15, v8}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v4

    invoke-static {v14, v3, v4}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_10

    move/from16 v17, v2

    iget v2, v9, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v2, v2, 0xc

    if-eqz v2, :cond_f

    invoke-virtual {v9}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_11

    :cond_f
    invoke-virtual {v0, v1, v9, v10, v11}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v2

    or-int/2addr v2, v7

    move v7, v2

    goto :goto_9

    :cond_10
    move/from16 v17, v2

    :cond_11
    :goto_9
    add-int/lit8 v15, v15, 0x1

    move/from16 v4, v16

    move/from16 v2, v17

    goto :goto_6

    :cond_12
    move/from16 v17, v2

    move/from16 v16, v4

    :goto_a
    if-ltz v13, :cond_16

    iget-object v2, v0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_14

    iget v4, v2, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-eqz v4, :cond_13

    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_14

    :cond_13
    invoke-virtual {v0, v1, v2, v10, v11}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v4

    or-int/2addr v4, v7

    move v7, v4

    :cond_14
    add-int/lit8 v13, v13, 0x1

    if-lt v13, v12, :cond_15

    goto :goto_b

    :cond_15
    goto :goto_a

    :cond_16
    :goto_b
    if-eqz v14, :cond_17

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    :cond_17
    iget-object v2, v0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    if-eqz v2, :cond_18

    iget-object v2, v0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v9, 0x1

    sub-int/2addr v4, v9

    move v9, v4

    :goto_c
    if-ltz v9, :cond_18

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    invoke-virtual {v0, v1, v15, v10, v11}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v18

    or-int v7, v7, v18

    add-int/lit8 v9, v9, -0x1

    goto :goto_c

    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->disableZ()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isShowingLayoutBounds()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onDebugDraw(Landroid/graphics/Canvas;)V

    :cond_19
    if-eqz v6, :cond_1a

    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1a
    iget v2, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v4, v2, 0x4

    const/4 v9, 0x4

    if-ne v4, v9, :cond_1b

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->invalidate(Z)V

    :cond_1b
    and-int/lit8 v4, v2, 0x10

    if-nez v4, :cond_1c

    and-int/lit16 v4, v2, 0x200

    if-nez v4, :cond_1c

    iget-object v4, v0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v4}, Landroid/view/animation/LayoutAnimationController;->isDone()Z

    move-result v4

    if-eqz v4, :cond_1c

    if-nez v7, :cond_1c

    iget v4, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v4, v4, 0x200

    iput v4, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    new-instance v4, Landroid/view/ViewGroup$2;

    invoke-direct {v4, v0}, Landroid/view/ViewGroup$2;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_1c
    return-void
.end method

.method public whitelist dispatchDrawableHotspotChanged(FF)V
    .locals 9

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    aget-object v3, v1, v2

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

    :goto_1
    iget v7, v3, Landroid/view/View;->mViewFlags:I

    const/high16 v8, 0x400000

    and-int/2addr v7, v8

    if-eqz v7, :cond_2

    move v7, v6

    goto :goto_2

    :cond_2
    move v7, v5

    :goto_2
    if-nez v4, :cond_3

    if-eqz v7, :cond_4

    :cond_3
    invoke-direct {p0}, Landroid/view/ViewGroup;->getTempLocationF()[F

    move-result-object v8

    aput p1, v8, v5

    aput p2, v8, v6

    invoke-virtual {p0, v8, v3}, Landroid/view/ViewGroup;->transformPointToViewLocal([FLandroid/view/View;)V

    aget v5, v8, v5

    aget v6, v8, v6

    invoke-virtual {v3, v5, v6}, Landroid/view/View;->drawableHotspotChanged(FF)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public whitelist dispatchFinishTemporaryDetach()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

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

    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected whitelist dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/16 v1, 0x12

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getXDispatchLocation(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getYDispatchLocation(I)F

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    nop

    :goto_0
    iget-object v6, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    add-int/lit8 v7, v0, -0x1

    :goto_1
    if-ltz v7, :cond_4

    invoke-direct {p0, v0, v7, v1}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v8

    invoke-static {v4, v6, v8}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->canReceivePointerEvents()Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x0

    invoke-virtual {p0, v2, v3, v9, v10}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v10

    if-nez v10, :cond_1

    goto :goto_2

    :cond_1
    invoke-direct {p0, p1, v9}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_3

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :cond_2
    return v5

    :cond_3
    :goto_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :cond_5
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method protected greylist dispatchGetDisplayList()V
    .locals 7

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, v1, v2

    if-eqz v3, :cond_1

    iget v4, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-direct {p0, v3}, Landroid/view/ViewGroup;->recreateChildDisplayList(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    :goto_1
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_6

    iget-object v4, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_5

    iget v5, v4, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v5, v5, 0xc

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v5

    if-eqz v5, :cond_5

    :cond_4
    invoke-direct {p0, v4}, Landroid/view/ViewGroup;->recreateChildDisplayList(Landroid/view/View;)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    iget-object v3, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v3}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/view/ViewGroup;->recreateChildDisplayList(Landroid/view/View;)V

    :cond_7
    iget-object v3, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    if-eqz v3, :cond_8

    iget-object v3, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_8

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->recreateChildDisplayList(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    return-void
.end method

.method protected whitelist dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    move-object/from16 v4, p1

    const/4 v5, 0x0

    iget-object v6, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    const/4 v7, 0x0

    iput-object v7, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    const/4 v10, 0x0

    const/16 v12, 0xa

    if-nez v3, :cond_d

    if-eq v2, v12, :cond_d

    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getXDispatchLocation(I)F

    move-result v13

    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getYDispatchLocation(I)F

    move-result v14

    iget v15, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v15, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v10

    if-nez v10, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v16

    if-eqz v16, :cond_0

    const/16 v16, 0x1

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    :goto_0
    move/from16 v17, v16

    iget-object v11, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/16 v18, 0x0

    add-int/lit8 v19, v15, -0x1

    move-object/from16 v12, v18

    move/from16 v9, v19

    :goto_1
    if-ltz v9, :cond_b

    move/from16 v8, v17

    invoke-direct {v0, v15, v9, v8}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v7

    move/from16 v20, v3

    invoke-static {v10, v11, v7}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->canReceivePointerEvents()Z

    move-result v21

    if-eqz v21, :cond_9

    move/from16 v21, v7

    const/4 v7, 0x0

    invoke-virtual {v0, v13, v14, v3, v7}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v22

    if-nez v22, :cond_1

    move-object/from16 v22, v6

    move/from16 v23, v8

    const/4 v6, 0x0

    goto/16 :goto_7

    :cond_1
    move-object v7, v6

    const/16 v22, 0x0

    move-object/from16 v25, v22

    move-object/from16 v22, v6

    move-object/from16 v6, v25

    :goto_2
    if-nez v7, :cond_2

    invoke-static {v3}, Landroid/view/ViewGroup$HoverTarget;->obtain(Landroid/view/View;)Landroid/view/ViewGroup$HoverTarget;

    move-result-object v7

    const/16 v23, 0x0

    move/from16 v17, v23

    const/4 v6, 0x0

    move/from16 v23, v8

    goto :goto_4

    :cond_2
    move/from16 v23, v8

    iget-object v8, v7, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    if-ne v8, v3, :cond_8

    if-eqz v6, :cond_3

    iget-object v8, v7, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    iput-object v8, v6, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    move-object/from16 v8, v22

    goto :goto_3

    :cond_3
    iget-object v8, v7, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    :goto_3
    move-object/from16 v24, v6

    const/4 v6, 0x0

    iput-object v6, v7, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    const/16 v17, 0x1

    move-object/from16 v22, v8

    :goto_4
    if-eqz v12, :cond_4

    iput-object v7, v12, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_5

    :cond_4
    iput-object v7, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    :goto_5
    move-object v12, v7

    const/16 v8, 0x9

    if-ne v2, v8, :cond_5

    if-nez v17, :cond_7

    invoke-direct {v0, v1, v3}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v8

    or-int/2addr v5, v8

    goto :goto_6

    :cond_5
    const/4 v8, 0x7

    if-ne v2, v8, :cond_7

    if-nez v17, :cond_6

    invoke-static {v4}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    const/16 v8, 0x9

    invoke-virtual {v4, v8}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-direct {v0, v4, v3}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v8

    or-int/2addr v5, v8

    invoke-virtual {v4, v2}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-direct {v0, v4, v3}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v8

    or-int/2addr v5, v8

    goto :goto_6

    :cond_6
    invoke-direct {v0, v1, v3}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v8

    or-int/2addr v5, v8

    :cond_7
    :goto_6
    if-eqz v5, :cond_a

    move-object/from16 v6, v22

    goto :goto_8

    :cond_8
    move-object/from16 v24, v6

    const/4 v6, 0x0

    move-object v8, v7

    iget-object v7, v7, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    move-object v6, v8

    move/from16 v8, v23

    goto :goto_2

    :cond_9
    move-object/from16 v22, v6

    move/from16 v21, v7

    move/from16 v23, v8

    const/4 v6, 0x0

    :cond_a
    :goto_7
    add-int/lit8 v9, v9, -0x1

    move-object v7, v6

    move/from16 v3, v20

    move-object/from16 v6, v22

    move/from16 v17, v23

    goto/16 :goto_1

    :cond_b
    move/from16 v20, v3

    move-object/from16 v22, v6

    move/from16 v23, v17

    :goto_8
    if-eqz v10, :cond_e

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    goto :goto_9

    :cond_c
    move/from16 v20, v3

    goto :goto_9

    :cond_d
    move/from16 v20, v3

    :cond_e
    :goto_9
    if-eqz v6, :cond_11

    iget-object v3, v6, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    const/16 v7, 0xa

    if-ne v2, v7, :cond_f

    invoke-direct {v0, v1, v3}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v7

    or-int/2addr v5, v7

    goto :goto_a

    :cond_f
    const/4 v7, 0x7

    if-ne v2, v7, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->isHoverExitPending()Z

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->setHoverExitPending(Z)V

    invoke-direct {v0, v1, v3}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->setHoverExitPending(Z)V

    :cond_10
    invoke-static {v4}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    const/16 v7, 0xa

    invoke-virtual {v4, v7}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-direct {v0, v4, v3}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    invoke-virtual {v4, v2}, Landroid/view/MotionEvent;->setAction(I)V

    :goto_a
    iget-object v7, v6, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    invoke-virtual {v6}, Landroid/view/ViewGroup$HoverTarget;->recycle()V

    move-object v6, v7

    goto :goto_9

    :cond_11
    if-nez v5, :cond_12

    const/16 v3, 0xa

    if-eq v2, v3, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->isHoverExitPending()Z

    move-result v3

    if-nez v3, :cond_12

    const/4 v3, 0x1

    goto :goto_b

    :cond_12
    const/4 v3, 0x0

    :goto_b
    iget-boolean v7, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    if-ne v3, v7, :cond_13

    if-eqz v3, :cond_18

    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    or-int/2addr v5, v7

    goto :goto_d

    :cond_13
    iget-boolean v7, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    if-eqz v7, :cond_16

    const/16 v7, 0xa

    if-ne v2, v7, :cond_14

    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    or-int/2addr v5, v7

    goto :goto_c

    :cond_14
    const/4 v7, 0x7

    if-ne v2, v7, :cond_15

    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    :cond_15
    invoke-static {v4}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    const/16 v7, 0xa

    invoke-virtual {v4, v7}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {v0, v4}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v4, v2}, Landroid/view/MotionEvent;->setAction(I)V

    :goto_c
    const/4 v7, 0x0

    iput-boolean v7, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    :cond_16
    if-eqz v3, :cond_18

    const/16 v7, 0x9

    if-ne v2, v7, :cond_17

    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    or-int/2addr v5, v7

    const/4 v7, 0x1

    iput-boolean v7, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    goto :goto_d

    :cond_17
    const/4 v7, 0x7

    if-ne v2, v7, :cond_18

    invoke-static {v4}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    const/16 v7, 0x9

    invoke-virtual {v4, v7}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {v0, v4}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    or-int/2addr v5, v7

    invoke-virtual {v4, v2}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {v0, v4}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    or-int/2addr v5, v7

    const/4 v7, 0x1

    iput-boolean v7, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    :cond_18
    :goto_d
    iget-boolean v7, v4, Landroid/view/MotionEvent;->mRecycled:Z

    if-nez v7, :cond_19

    if-eq v4, v1, :cond_19

    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    :cond_19
    return v5
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/16 v2, 0x12

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    const/16 v2, 0x10

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2

    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/16 v1, 0x12

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dispatchKeyEventTextMultiSelection(Landroid/view/KeyEvent;)Z
    .locals 6

    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->WIDGET_PEN_SUPPORTED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, v2, v3

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchKeyEventTextMultiSelection(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public whitelist dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/16 v1, 0x12

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o dispatchMovedToDisplay(Landroid/view/Display;Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchMovedToDisplay(Landroid/view/Display;Landroid/content/res/Configuration;)V

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->dispatchMovedToDisplay(Landroid/view/Display;Landroid/content/res/Configuration;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public whitelist dispatchPointerCaptureChanged(Z)V
    .locals 4

    invoke-direct {p0}, Landroid/view/ViewGroup;->exitHoverTargets()V

    invoke-super {p0, p1}, Landroid/view/View;->dispatchPointerCaptureChanged(Z)V

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPointerCaptureChanged(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public greylist-max-o dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->includeForAccessibility(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/4 v2, 0x1

    invoke-static {p0, v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->obtain(Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$ChildListForAccessibility;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget v6, v5, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    if-nez v6, :cond_1

    invoke-virtual {v5, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v6

    if-eqz v0, :cond_1

    nop

    invoke-virtual {v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    return v0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    nop

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    throw v1
.end method

.method public whitelist dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    invoke-virtual {p1}, Landroid/view/ViewStructure;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_1

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

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->getChildrenForAutofill(I)Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/ViewStructure;->setChildCount(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Landroid/view/View;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;->recycle()V

    return-void
.end method

.method public blacklist dispatchProvideContentCaptureStructure()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->dispatchProvideContentCaptureStructure()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/view/ViewGroup;->getChildrenForContentCapture()Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->dispatchProvideContentCaptureStructure()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;->recycle()V

    return-void
.end method

.method public whitelist dispatchProvideStructure(Landroid/view/ViewStructure;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/view/View;->dispatchProvideStructure(Landroid/view/ViewStructure;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isAssistBlocked()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroid/view/ViewStructure;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-gtz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLaidOut()Z

    move-result v1

    if-nez v1, :cond_3

    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchProvideStructure(): not laid out, ignoring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " children of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityViewId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "View"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setChildCount(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_6

    :try_start_0
    invoke-direct {p0, v0, v4, v3}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v6, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    invoke-static {v2, v6, v5}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p1, v4}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->dispatchProvideStructure(Landroid/view/ViewStructure;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :catch_0
    move-exception v5

    move v6, v4

    throw v5

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_7
    return-void

    :cond_8
    :goto_3
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

    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    iget v4, v3, Landroid/view/View;->mViewFlags:I

    const/high16 v5, 0x20000000

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_0

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

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

    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    iget v4, v3, Landroid/view/View;->mViewFlags:I

    const/high16 v5, 0x20000000

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_0

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method greylist-max-o dispatchScreenStateChanged(I)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->dispatchScreenStateChanged(I)V

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchScreenStateChanged(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public whitelist dispatchScrollCaptureSearch(Landroid/graphics/Rect;Landroid/graphics/Point;Ljava/util/function/Consumer;)V
    .locals 11
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

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->dispatchScrollCaptureSearch(Landroid/graphics/Rect;Landroid/graphics/Point;Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollCaptureHint()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Landroid/view/ViewGroup;->getTempRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Landroid/view/ViewGroup;->getTempPoint()Landroid/graphics/Point;

    move-result-object v4

    iget v5, p2, Landroid/graphics/Point;->x:I

    iget v6, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Point;->set(II)V

    iget v5, v3, Landroid/view/View;->mLeft:I

    iget v6, p0, Landroid/view/ViewGroup;->mScrollX:I

    sub-int/2addr v5, v6

    iget v6, v3, Landroid/view/View;->mTop:I

    iget v7, p0, Landroid/view/ViewGroup;->mScrollY:I

    sub-int/2addr v6, v7

    neg-int v7, v5

    neg-int v8, v6

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Point;->offset(II)V

    const/4 v7, 0x1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v10, v8, v9}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v7

    :cond_3
    if-eqz v7, :cond_4

    invoke-virtual {v3, v0, v4, p3}, Landroid/view/View;->dispatchScrollCaptureSearch(Landroid/graphics/Rect;Landroid/graphics/Point;Ljava/util/function/Consumer;)V

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public whitelist dispatchSetActivated(Z)V
    .locals 4

    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setActivated(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected whitelist dispatchSetPressed(Z)V
    .locals 5

    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-eqz p1, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->isClickable()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->isLongClickable()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    invoke-virtual {v3, p1}, Landroid/view/View;->setPressed(Z)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public whitelist dispatchSetSelected(Z)V
    .locals 4

    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public whitelist dispatchStartTemporaryDetach()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public whitelist dispatchSystemUiVisibilityChanged(I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

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

    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    return-void
.end method

.method greylist-max-o dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->semDispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-boolean v2, Landroid/view/ViewRootImpl;->DEBUG_TOUCH_EVENT:Z

    const-string v3, "ViewGroup"

    if-eqz v2, :cond_0

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

    :cond_0
    iget-object v2, v0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v2, v1, v4}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->isTargetAccessibilityFocus()Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isAccessibilityFocusedViewOrHost()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    move v2, v4

    iget-boolean v4, v0, Landroid/view/ViewGroup;->mSemScrollingByScrollbar:Z

    if-eqz v4, :cond_1a

    return v2

    :pswitch_0
    iget-boolean v2, v0, Landroid/view/ViewGroup;->mSemScrollingByScrollbar:Z

    if-eqz v2, :cond_1a

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v6, 0x0

    iget-boolean v7, v0, Landroid/view/ViewGroup;->mSemScrollingVertical:Z

    if-eqz v7, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->computeVerticalScrollOffset()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->computeVerticalScrollExtent()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->computeVerticalScrollRange()I

    move-result v9

    iget v10, v0, Landroid/view/ViewGroup;->mSemY:F

    sub-float v10, v3, v10

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->computeHorizontalScrollOffset()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->computeHorizontalScrollExtent()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->computeHorizontalScrollRange()I

    move-result v9

    iget v10, v0, Landroid/view/ViewGroup;->mSemX:F

    sub-float v10, v2, v10

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isSemUsingAdapterView()Z

    move-result v11

    if-eqz v11, :cond_b

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

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->semGetItemCount()I

    move-result v11

    if-le v11, v4, :cond_a

    iget-boolean v12, v0, Landroid/view/ViewGroup;->mSemScrollingVertical:Z

    if-eqz v12, :cond_9

    iget v12, v0, Landroid/view/ViewGroup;->mAppWidgetScrollBarBottomPadding:I

    if-nez v12, :cond_6

    iget v12, v0, Landroid/view/ViewGroup;->mAppWidgetScrollBarTopPadding:I

    if-eqz v12, :cond_5

    goto :goto_2

    :cond_5
    move v12, v5

    goto :goto_3

    :cond_6
    :goto_2
    move v12, v4

    :goto_3
    const/4 v13, 0x0

    if-eqz v12, :cond_7

    iget v14, v0, Landroid/view/ViewGroup;->mAppWidgetScrollBarBottomPadding:I

    int-to-float v14, v14

    mul-float/2addr v14, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v15, v3

    iget v4, v0, Landroid/view/ViewGroup;->mAppWidgetScrollBarTopPadding:I

    int-to-float v4, v4

    mul-float/2addr v15, v4

    sub-float/2addr v14, v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v13, v14, v4

    :cond_7
    int-to-float v4, v11

    if-eqz v12, :cond_8

    move v14, v13

    goto :goto_4

    :cond_8
    iget v14, v0, Landroid/view/ViewGroup;->mSemVerticalScrollbarRectRelativePosY:I

    neg-int v14, v14

    int-to-float v14, v14

    :goto_4
    add-float/2addr v14, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    mul-float/2addr v4, v14

    float-to-int v4, v4

    goto :goto_5

    :cond_9
    int-to-float v4, v11

    iget v12, v0, Landroid/view/ViewGroup;->mSemHorizontalScrollbarRectRelativePosX:I

    int-to-float v12, v12

    sub-float v12, v2, v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    mul-float/2addr v4, v12

    float-to-int v4, v4

    :goto_5
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->semSetSelection(I)V

    goto :goto_6

    :cond_a
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->semSmoothScrollBy(I)V

    :goto_6
    goto :goto_d

    :cond_b
    if-nez v8, :cond_c

    move v4, v5

    goto :goto_8

    :cond_c
    iget-boolean v4, v0, Landroid/view/ViewGroup;->mSemScrollingVertical:Z

    if-eqz v4, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    goto :goto_7

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    :goto_7
    add-int/2addr v4, v9

    div-int/2addr v4, v8

    int-to-float v4, v4

    mul-float/2addr v4, v10

    float-to-int v4, v4

    :goto_8
    move v6, v4

    if-gez v6, :cond_11

    iget-boolean v4, v0, Landroid/view/ViewGroup;->mSemScrollingVertical:Z

    if-eqz v4, :cond_f

    add-int v4, v6, v7

    if-ltz v4, :cond_e

    move v4, v6

    goto :goto_9

    :cond_e
    neg-int v4, v7

    :goto_9
    invoke-virtual {v0, v5, v4}, Landroid/view/ViewGroup;->scrollBy(II)V

    goto :goto_d

    :cond_f
    add-int v4, v6, v7

    if-ltz v4, :cond_10

    move v4, v6

    goto :goto_a

    :cond_10
    neg-int v4, v7

    :goto_a
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->scrollBy(II)V

    goto :goto_d

    :cond_11
    if-lez v6, :cond_15

    iget-boolean v4, v0, Landroid/view/ViewGroup;->mSemScrollingVertical:Z

    if-eqz v4, :cond_13

    add-int v4, v6, v7

    add-int/2addr v4, v8

    if-gt v4, v9, :cond_12

    move v4, v6

    goto :goto_b

    :cond_12
    sub-int v4, v9, v8

    sub-int/2addr v4, v7

    :goto_b
    invoke-virtual {v0, v5, v4}, Landroid/view/ViewGroup;->scrollBy(II)V

    goto :goto_d

    :cond_13
    add-int v4, v6, v7

    add-int/2addr v4, v8

    if-gt v4, v9, :cond_14

    move v4, v6

    goto :goto_c

    :cond_14
    sub-int v4, v9, v8

    sub-int/2addr v4, v7

    :goto_c
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->scrollBy(II)V

    :cond_15
    :goto_d
    iput v2, v0, Landroid/view/ViewGroup;->mSemX:F

    iput v3, v0, Landroid/view/ViewGroup;->mSemY:F

    const/4 v4, 0x1

    return v4

    :pswitch_1
    iget-boolean v2, v0, Landroid/view/ViewGroup;->mSemScrollingByScrollbar:Z

    if-eqz v2, :cond_1a

    iput-boolean v5, v0, Landroid/view/ViewGroup;->mSemScrollingByScrollbar:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    move-result v2

    if-nez v2, :cond_16

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    :cond_16
    const/4 v2, 0x1

    return v2

    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup;->mSemX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup;->mSemY:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isVerticalScrollBarEnabled()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->semIsShowingScrollbar()Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, v0, Landroid/view/ViewGroup;->mSemVerticalScrollbarRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/view/ViewGroup;->mSemX:F

    float-to-int v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v6

    add-int/2addr v4, v6

    iget v6, v0, Landroid/view/ViewGroup;->mSemY:F

    float-to-int v6, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/view/ViewGroup;->mSemScrollingByScrollbar:Z

    iput-boolean v2, v0, Landroid/view/ViewGroup;->mSemScrollingVertical:Z

    iget v2, v0, Landroid/view/ViewGroup;->mSemY:F

    float-to-int v2, v2

    iget-object v4, v0, Landroid/view/ViewGroup;->mSemVerticalScrollbarRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v4

    iput v2, v0, Landroid/view/ViewGroup;->mSemVerticalScrollbarRectRelativePosY:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    :cond_17
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isHorizontalScrollBarEnabled()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->semIsShowingScrollbar()Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, v0, Landroid/view/ViewGroup;->mSemHorizontalScrollbarRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/view/ViewGroup;->mSemX:F

    float-to-int v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v6

    add-int/2addr v4, v6

    iget v6, v0, Landroid/view/ViewGroup;->mSemY:F

    float-to-int v6, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/view/ViewGroup;->mSemScrollingByScrollbar:Z

    iput-boolean v5, v0, Landroid/view/ViewGroup;->mSemScrollingVertical:Z

    iget v2, v0, Landroid/view/ViewGroup;->mSemX:F

    float-to-int v2, v2

    iget-object v4, v0, Landroid/view/ViewGroup;->mSemHorizontalScrollbarRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v4

    iput v2, v0, Landroid/view/ViewGroup;->mSemHorizontalScrollbarRectRelativePosX:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    :cond_18
    iget-boolean v2, v0, Landroid/view/ViewGroup;->mSemScrollingByScrollbar:Z

    if-eqz v2, :cond_19

    const/4 v2, 0x1

    return v2

    :cond_19
    const/4 v2, 0x1

    :cond_1a
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v6, v4, 0xff

    const/16 v7, 0xd3

    if-eqz v6, :cond_1b

    if-ne v6, v7, :cond_1c

    :cond_1b
    invoke-direct/range {p0 .. p1}, Landroid/view/ViewGroup;->cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->resetTouchState()V

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v8

    if-eqz v6, :cond_1e

    if-eq v6, v7, :cond_1e

    iget-object v9, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v9, :cond_1d

    goto :goto_e

    :cond_1d
    const/4 v9, 0x1

    goto :goto_13

    :cond_1e
    :goto_e
    iget v9, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v10, 0x80000

    and-int/2addr v9, v10

    if-eqz v9, :cond_1f

    const/4 v9, 0x1

    goto :goto_f

    :cond_1f
    move v9, v5

    :goto_f
    if-eqz v8, :cond_20

    invoke-virtual {v8}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v10

    invoke-virtual {v10}, Landroid/window/WindowOnBackInvokedDispatcher;->isBackGestureInProgress()Z

    move-result v10

    if-eqz v10, :cond_20

    const/4 v10, 0x1

    goto :goto_10

    :cond_20
    move v10, v5

    :goto_10
    if-eqz v9, :cond_22

    if-eqz v10, :cond_21

    goto :goto_11

    :cond_21
    const/4 v11, 0x0

    move v9, v11

    goto :goto_12

    :cond_22
    :goto_11
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v11

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    move v9, v11

    :goto_12
    nop

    :goto_13
    if-nez v9, :cond_23

    iget-object v10, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v10, :cond_24

    :cond_23
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    :cond_24
    invoke-static/range {p0 .. p0}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    move-result v10

    if-nez v10, :cond_26

    const/4 v10, 0x3

    if-ne v6, v10, :cond_25

    goto :goto_14

    :cond_25
    move v10, v5

    goto :goto_15

    :cond_26
    :goto_14
    const/4 v10, 0x1

    :goto_15
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v11

    const/16 v12, 0x2002

    if-ne v11, v12, :cond_27

    const/4 v11, 0x1

    goto :goto_16

    :cond_27
    move v11, v5

    :goto_16
    iget v12, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v13, 0x200000

    and-int/2addr v12, v13

    if-eqz v12, :cond_28

    if-nez v11, :cond_28

    const/4 v12, 0x1

    goto :goto_17

    :cond_28
    move v12, v5

    :goto_17
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x7

    if-nez v10, :cond_3c

    if-nez v9, :cond_3c

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->isTargetAccessibilityFocus()Z

    move-result v17

    if-eqz v17, :cond_29

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->findChildWithAccessibilityFocus()Landroid/view/View;

    move-result-object v17

    goto :goto_18

    :cond_29
    const/16 v17, 0x0

    :goto_18
    if-eqz v6, :cond_2c

    if-eq v6, v7, :cond_2c

    if-eqz v12, :cond_2a

    const/4 v7, 0x5

    if-eq v6, v7, :cond_2c

    :cond_2a
    if-ne v6, v15, :cond_2b

    goto :goto_19

    :cond_2b
    move/from16 v20, v2

    move/from16 v21, v4

    move-object/from16 v23, v8

    move/from16 v30, v10

    move/from16 v25, v11

    move/from16 v24, v12

    move/from16 v26, v14

    const/4 v5, 0x0

    move v14, v9

    goto/16 :goto_25

    :cond_2c
    :goto_19
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    if-eqz v12, :cond_2d

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v18

    const/16 v16, 0x1

    shl-int v18, v16, v18

    goto :goto_1a

    :cond_2d
    const/16 v18, -0x1

    :goto_1a
    move/from16 v19, v18

    move/from16 v15, v19

    invoke-direct {v0, v15}, Landroid/view/ViewGroup;->removePointersFromTouchTargets(I)V

    iget v5, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-nez v13, :cond_39

    if-eqz v5, :cond_39

    move/from16 v20, v2

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getXDispatchLocation(I)F

    move-result v2

    move/from16 v21, v4

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getYDispatchLocation(I)F

    move-result v4

    move/from16 v22, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->buildTouchDispatchChildList()Ljava/util/ArrayList;

    move-result-object v7

    if-nez v7, :cond_2e

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v23

    if-eqz v23, :cond_2e

    const/16 v23, 0x1

    goto :goto_1b

    :cond_2e
    const/16 v23, 0x0

    :goto_1b
    move/from16 v24, v23

    move-object/from16 v23, v8

    iget-object v8, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    add-int/lit8 v25, v5, -0x1

    move/from16 v32, v25

    move/from16 v25, v11

    move-object/from16 v11, v17

    move-object/from16 v17, v13

    move/from16 v13, v32

    :goto_1c
    if-ltz v13, :cond_38

    move/from16 v26, v14

    move/from16 v14, v24

    move/from16 v24, v12

    invoke-direct {v0, v5, v13, v14}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v12

    move/from16 v27, v13

    invoke-static {v7, v8, v12}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v13

    if-eqz v11, :cond_30

    if-eq v11, v13, :cond_2f

    move/from16 v31, v5

    move/from16 v30, v10

    move/from16 v29, v14

    move/from16 v13, v27

    const/4 v5, 0x0

    move v14, v9

    goto/16 :goto_21

    :cond_2f
    const/4 v11, 0x0

    move/from16 v27, v5

    :cond_30
    invoke-virtual {v13}, Landroid/view/View;->canReceivePointerEvents()Z

    move-result v28

    if-eqz v28, :cond_37

    move-object/from16 v28, v11

    const/4 v11, 0x0

    invoke-virtual {v0, v2, v4, v13, v11}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v29

    if-nez v29, :cond_31

    move/from16 v31, v5

    move/from16 v30, v10

    move/from16 v29, v14

    const/4 v5, 0x0

    move v14, v9

    goto/16 :goto_20

    :cond_31
    invoke-direct {v0, v13}, Landroid/view/ViewGroup;->getTouchTarget(Landroid/view/View;)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v11

    if-eqz v11, :cond_32

    move/from16 v29, v14

    iget v14, v11, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    or-int/2addr v14, v15

    iput v14, v11, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    move/from16 v31, v5

    move v14, v9

    move/from16 v30, v10

    move-object v13, v11

    move-object/from16 v17, v28

    const/4 v5, 0x0

    goto/16 :goto_22

    :cond_32
    move/from16 v29, v14

    invoke-static {v13}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    const/4 v14, 0x0

    invoke-direct {v0, v1, v14, v13, v15}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v17

    if-eqz v17, :cond_36

    move v14, v9

    move/from16 v30, v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v9

    iput-wide v9, v0, Landroid/view/ViewGroup;->mLastTouchDownTime:J

    if-eqz v7, :cond_35

    const/4 v9, 0x0

    :goto_1d
    if-ge v9, v5, :cond_34

    aget-object v10, v8, v12

    move/from16 v31, v5

    iget-object v5, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v5, v5, v9

    if-ne v10, v5, :cond_33

    iput v9, v0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    goto :goto_1e

    :cond_33
    add-int/lit8 v9, v9, 0x1

    move/from16 v5, v31

    goto :goto_1d

    :cond_34
    move/from16 v31, v5

    :goto_1e
    goto :goto_1f

    :cond_35
    move/from16 v31, v5

    iput v12, v0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    :goto_1f
    iput v2, v0, Landroid/view/ViewGroup;->mLastTouchDownX:F

    iput v4, v0, Landroid/view/ViewGroup;->mLastTouchDownY:F

    invoke-direct {v0, v13, v15}, Landroid/view/ViewGroup;->addTouchTarget(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v5

    const/4 v9, 0x1

    move-object v13, v5

    move/from16 v26, v9

    move-object/from16 v17, v28

    const/4 v5, 0x0

    goto :goto_22

    :cond_36
    move/from16 v31, v5

    move v14, v9

    move/from16 v30, v10

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    move-object/from16 v17, v11

    move/from16 v13, v27

    move-object/from16 v11, v28

    goto :goto_21

    :cond_37
    move/from16 v31, v5

    move/from16 v30, v10

    move-object/from16 v28, v11

    move/from16 v29, v14

    const/4 v5, 0x0

    move v14, v9

    :goto_20
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    move/from16 v13, v27

    move-object/from16 v11, v28

    :goto_21
    const/4 v9, -0x1

    add-int/2addr v13, v9

    move v9, v14

    move/from16 v12, v24

    move/from16 v14, v26

    move/from16 v24, v29

    move/from16 v10, v30

    move/from16 v5, v31

    goto/16 :goto_1c

    :cond_38
    move/from16 v31, v5

    move/from16 v30, v10

    move/from16 v27, v13

    move/from16 v26, v14

    move/from16 v29, v24

    const/4 v5, 0x0

    move v14, v9

    move/from16 v24, v12

    move-object/from16 v13, v17

    move-object/from16 v17, v11

    :goto_22
    if-eqz v7, :cond_3a

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    goto :goto_23

    :cond_39
    move/from16 v20, v2

    move/from16 v21, v4

    move/from16 v31, v5

    move/from16 v22, v7

    move-object/from16 v23, v8

    move/from16 v30, v10

    move/from16 v25, v11

    move/from16 v24, v12

    move/from16 v26, v14

    const/4 v5, 0x0

    move v14, v9

    :cond_3a
    :goto_23
    if-nez v13, :cond_3d

    iget-object v2, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v2, :cond_3d

    iget-object v2, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object v13, v2

    :goto_24
    iget-object v2, v13, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v2, :cond_3b

    iget-object v13, v13, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_24

    :cond_3b
    iget v2, v13, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    or-int/2addr v2, v15

    iput v2, v13, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    goto :goto_25

    :cond_3c
    move/from16 v20, v2

    move/from16 v21, v4

    move-object/from16 v23, v8

    move/from16 v30, v10

    move/from16 v25, v11

    move/from16 v24, v12

    move/from16 v26, v14

    const/4 v5, 0x0

    move v14, v9

    :cond_3d
    :goto_25
    iget-object v2, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-nez v2, :cond_3e

    move/from16 v2, v30

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v3

    goto :goto_2b

    :cond_3e
    move/from16 v2, v30

    const/4 v4, 0x0

    iget-object v7, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    :goto_26
    if-eqz v7, :cond_46

    iget-object v8, v7, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v26, :cond_3f

    if-ne v7, v13, :cond_3f

    const/4 v9, 0x1

    move/from16 v20, v9

    goto :goto_2a

    :cond_3f
    iget-object v9, v7, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-eqz v9, :cond_45

    iget-object v9, v7, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    invoke-static {v9}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    move-result v9

    if-nez v9, :cond_41

    if-eqz v14, :cond_40

    goto :goto_27

    :cond_40
    move v9, v5

    goto :goto_28

    :cond_41
    :goto_27
    const/4 v9, 0x1

    :goto_28
    iget-object v10, v7, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    iget v11, v7, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    invoke-direct {v0, v1, v9, v10, v11}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v10

    if-eqz v10, :cond_42

    const/4 v10, 0x1

    move/from16 v20, v10

    :cond_42
    if-eqz v9, :cond_44

    if-nez v4, :cond_43

    iput-object v8, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_29

    :cond_43
    iput-object v8, v4, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    :goto_29
    invoke-virtual {v7}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    move-object v7, v8

    goto :goto_26

    :cond_44
    goto :goto_2a

    :cond_45
    const-string v9, "Skip dispatching event because target.child is null."

    invoke-static {v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    move-object v4, v7

    move-object v7, v8

    goto :goto_26

    :cond_46
    move/from16 v3, v20

    :goto_2b
    if-nez v2, :cond_48

    const/4 v4, 0x1

    if-eq v6, v4, :cond_48

    const/16 v4, 0xd4

    if-eq v6, v4, :cond_48

    const/4 v4, 0x7

    if-ne v6, v4, :cond_47

    goto :goto_2c

    :cond_47
    if-eqz v24, :cond_49

    const/4 v4, 0x6

    if-ne v6, v4, :cond_49

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    const/4 v7, 0x1

    shl-int v5, v7, v5

    invoke-direct {v0, v5}, Landroid/view/ViewGroup;->removePointersFromTouchTargets(I)V

    goto :goto_2d

    :cond_48
    :goto_2c
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->resetTouchState()V

    :cond_49
    :goto_2d
    move v2, v3

    goto :goto_2e

    :cond_4a
    move/from16 v20, v2

    :goto_2e
    if-nez v2, :cond_4b

    iget-object v3, v0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v3, :cond_4b

    iget-object v3, v0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_4b
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

    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onTrackballEvent(Landroid/view/MotionEvent;I)V

    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/16 v2, 0x12

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    const/16 v2, 0x10

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o dispatchUnhandledKeyEvent(Landroid/view/KeyEvent;)Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasUnhandledKeyListener()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchUnhandledKeyEvent(Landroid/view/KeyEvent;)Landroid/view/View;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    nop

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-object v4

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    throw v1

    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_5

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchUnhandledKeyEvent(Landroid/view/KeyEvent;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    return-object v4

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_5
    :goto_2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onUnhandledKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object p0

    :cond_6
    return-object v1
.end method

.method public whitelist dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method greylist dispatchViewAdded(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/view/View;->mOnAddRemoveListener:Landroid/view/View$OnAddRemoveListener;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/view/View;->mOnAddRemoveListener:Landroid/view/View$OnAddRemoveListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnAddRemoveListener;->onViewAdded(Landroid/view/View;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method greylist dispatchViewRemoved(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/view/View;->mOnAddRemoveListener:Landroid/view/View$OnAddRemoveListener;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/view/View;->mOnAddRemoveListener:Landroid/view/View$OnAddRemoveListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnAddRemoveListener;->onViewRemoved(Landroid/view/View;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method greylist-max-o dispatchVisibilityAggregated(Z)Z
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->dispatchVisibilityAggregated(Z)Z

    move-result p1

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchVisibilityAggregated(Z)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method protected whitelist dispatchVisibilityChanged(Landroid/view/View;I)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public whitelist dispatchWindowFocusChanged(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public whitelist dispatchWindowInsetsAnimationEnd(Landroid/view/WindowInsetsAnimation;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowInsetsAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    iget v0, p0, Landroid/view/ViewGroup;->mInsetsAnimationDispatchMode:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchWindowInsetsAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public whitelist dispatchWindowInsetsAnimationPrepare(Landroid/view/WindowInsetsAnimation;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowInsetsAnimationPrepare(Landroid/view/WindowInsetsAnimation;)V

    iget v0, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit16 v0, v0, 0x800

    const/4 v1, 0x0

    if-nez v0, :cond_1

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

    :goto_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/view/View$ListenerInfo;->mWindowInsetsAnimationCallback:Landroid/view/WindowInsetsAnimation$Callback;

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mContentOnApplyWindowInsetsListener:Landroid/view/Window$OnContentApplyWindowInsetsListener;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowSystemUiVisibility()I

    move-result v2

    and-int/lit16 v2, v2, 0x600

    if-nez v2, :cond_2

    iput v1, p0, Landroid/view/ViewGroup;->mInsetsAnimationDispatchMode:I

    return-void

    :cond_2
    iget v1, p0, Landroid/view/ViewGroup;->mInsetsAnimationDispatchMode:I

    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_4

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowInsetsAnimationPrepare(Landroid/view/WindowInsetsAnimation;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public whitelist dispatchWindowInsetsAnimationProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .locals 3
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

    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchWindowInsetsAnimationProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;

    move-result-object p1

    iget v0, p0, Landroid/view/ViewGroup;->mInsetsAnimationDispatchMode:I

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->dispatchWindowInsetsAnimationProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public whitelist dispatchWindowInsetsAnimationStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchWindowInsetsAnimationStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;

    move-result-object p2

    iget v0, p0, Landroid/view/ViewGroup;->mInsetsAnimationDispatchMode:I

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->dispatchWindowInsetsAnimationStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public whitelist dispatchWindowSystemUiVisiblityChanged(I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public whitelist dispatchWindowVisibilityChanged(I)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected whitelist drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    invoke-virtual {p2, p1, p0, p3, p4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;Landroid/view/ViewGroup;J)Z

    move-result v0

    return v0
.end method

.method protected whitelist drawableStateChanged()V
    .locals 6

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    iget v4, v3, Landroid/view/View;->mViewFlags:I

    const/high16 v5, 0x400000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->refreshDrawableState()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "addStateFromChildren cannot be enabled if a child has duplicateParentState set to true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method protected greylist-max-r encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    const-string v0, "focus:descendantFocusability"

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v0, "drawing:clipChildren"

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    const-string v0, "drawing:clipToPadding"

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    const-string v0, "drawing:childrenDrawingOrderEnabled"

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    const-string v0, "drawing:persistentDrawingCache"

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPersistentDrawingCache()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const-string/jumbo v1, "meta:__childCount__"

    int-to-short v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;S)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

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

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->encode(Landroid/view/ViewHierarchyEncoder;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public whitelist endViewTransition(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    :cond_1
    iget-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_3
    return-void
.end method

.method public whitelist findFocus()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method greylist-max-o findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;
    .locals 5

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_2

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/View;->canAcceptDrag()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1, p2, v3, p3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

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

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mGhostView:Landroid/view/GhostView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->findNamedViews(Ljava/util/Map;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->findNamedViews(Ljava/util/Map;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public whitelist findOnBackInvokedDispatcherForChild(Landroid/view/View;Landroid/view/View;)Landroid/window/OnBackInvokedDispatcher;
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->findOnBackInvokedDispatcherForChild(Landroid/view/View;Landroid/view/View;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public greylist-max-o findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 6

    invoke-super {p0, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return-object v2

    :cond_1
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    aget-object v5, v3, v4

    invoke-virtual {v5, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public greylist-max-o findViewByAutofillIdTraversal(I)Landroid/view/View;
    .locals 5

    invoke-super {p0, p1}, Landroid/view/View;->findViewByAutofillIdTraversal(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v2, v3

    invoke-virtual {v4, p1}, Landroid/view/View;->findViewByAutofillIdTraversal(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    return-object v3
.end method

.method protected greylist-max-o findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 5
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

    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-eq v3, p2, :cond_1

    iget v4, v3, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    invoke-virtual {v3, p1}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method protected greylist-max-o findViewTraversal(I)Landroid/view/View;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    iget v0, p0, Landroid/view/ViewGroup;->mID:I

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    iget v4, v3, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    invoke-virtual {v3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method protected greylist-max-o findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTag:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    iget v4, v3, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    invoke-virtual {v3, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method public whitelist findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .locals 5
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

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    iget v4, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_0

    iget v4, v3, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_0

    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method greylist-max-o finishAnimatingView(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 3

    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    :cond_2
    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->onAnimationEnd()V

    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x10001

    and-int/2addr v1, v2

    iput v1, p1, Landroid/view/View;->mPrivateFlags:I

    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    :cond_3
    return-void
.end method

.method public whitelist focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isRootNamespace()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist focusableViewAvailable(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->shouldBlockFocusForTouchscreen()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x40000

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public whitelist gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 12

    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x200

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    return v2

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v4, 0x1

    if-lez v3, :cond_6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v2

    goto :goto_1

    :cond_2
    move v6, v1

    :goto_1
    iget-object v7, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v3, :cond_5

    invoke-direct {p0, v3, v8, v6}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v9

    invoke-static {v5, v7, v9}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    iget v11, v10, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v11, v11, 0xc

    if-eqz v11, :cond_3

    invoke-virtual {v10}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v11

    if-eqz v11, :cond_4

    :cond_3
    invoke-virtual {v10, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v11

    if-nez v11, :cond_4

    const/4 v4, 0x0

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

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

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    return-object p1
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getChildAt(I)Landroid/view/View;
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v0, v0, p1

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getChildCount()I
    .locals 1

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    return v0
.end method

.method public final whitelist getChildDrawingOrder(I)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v0

    return v0
.end method

.method protected whitelist getChildDrawingOrder(II)I
    .locals 0

    return p2
.end method

.method public blacklist getChildLocalHitRegion(Landroid/view/View;Landroid/graphics/Region;Landroid/graphics/Matrix;Z)Z
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_0
    iget v4, v1, Landroid/view/View;->mLeft:I

    iget v5, v0, Landroid/view/ViewGroup;->mScrollX:I

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/view/View;->mTop:I

    iget v6, v0, Landroid/view/ViewGroup;->mScrollY:I

    sub-int/2addr v5, v6

    neg-int v6, v4

    int-to-float v6, v6

    neg-int v7, v5

    int-to-float v7, v7

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget v6, v0, Landroid/view/ViewGroup;->mRight:I

    iget v7, v0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v6, v7

    iget v7, v0, Landroid/view/ViewGroup;->mBottom:I

    iget v8, v0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v7, v8

    iget-object v8, v0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v8, :cond_1

    iget-object v8, v0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    goto :goto_0

    :cond_1
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    :goto_0
    int-to-float v9, v6

    int-to-float v10, v7

    const/4 v11, 0x0

    invoke-virtual {v8, v11, v11, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v2, v8}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v9, v8, Landroid/graphics/RectF;->left:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v11

    iget v9, v8, Landroid/graphics/RectF;->top:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v12

    iget v9, v8, Landroid/graphics/RectF;->right:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v13

    iget v9, v8, Landroid/graphics/RectF;->bottom:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v14

    sget-object v15, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v10, p2

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    move-result v9

    if-eqz v3, :cond_8

    iget-object v10, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    const/4 v11, 0x0

    :goto_1
    if-eqz v10, :cond_3

    iget-object v12, v10, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    iget-object v13, v10, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    if-ne v13, v1, :cond_2

    const/4 v11, 0x1

    goto :goto_2

    :cond_2
    move-object v10, v12

    goto :goto_1

    :cond_3
    :goto_2
    if-nez v11, :cond_6

    iget-object v12, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    if-eqz v12, :cond_6

    iget-object v10, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->buildTouchDispatchChildList()Ljava/util/ArrayList;

    move-result-object v12

    :goto_3
    if-eqz v9, :cond_5

    if-eqz v10, :cond_5

    iget-object v13, v10, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    iget-object v14, v10, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    invoke-direct {v0, v1, v14, v12}, Landroid/view/ViewGroup;->isOnTop(Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;)Z

    move-result v15

    if-nez v15, :cond_4

    iget v15, v14, Landroid/view/View;->mLeft:I

    int-to-float v15, v15

    move/from16 v16, v4

    iget v4, v14, Landroid/view/View;->mTop:I

    int-to-float v4, v4

    move/from16 v17, v5

    iget v5, v14, Landroid/view/View;->mRight:I

    int-to-float v5, v5

    move/from16 v18, v6

    iget v6, v14, Landroid/view/View;->mBottom:I

    int-to-float v6, v6

    invoke-virtual {v8, v15, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v2, v8}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v4, v8, Landroid/graphics/RectF;->left:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v20

    iget v4, v8, Landroid/graphics/RectF;->top:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v21

    iget v4, v8, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v22

    iget v4, v8, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v23

    sget-object v24, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v19, p2

    invoke-virtual/range {v19 .. v24}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    move-result v4

    move v9, v4

    goto :goto_4

    :cond_4
    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    :goto_4
    move-object v10, v13

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    goto :goto_3

    :cond_5
    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    if-eqz v12, :cond_7

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    goto :goto_5

    :cond_6
    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    :cond_7
    :goto_5
    goto/16 :goto_9

    :cond_8
    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    iget-object v4, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    const/4 v5, 0x0

    :goto_6
    if-eqz v4, :cond_a

    iget-object v6, v4, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    iget-object v10, v4, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-ne v10, v1, :cond_9

    const/4 v5, 0x1

    goto :goto_7

    :cond_9
    move-object v4, v6

    goto :goto_6

    :cond_a
    :goto_7
    if-nez v5, :cond_d

    iget-object v6, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v6, :cond_d

    iget-object v4, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v6

    :goto_8
    if-eqz v9, :cond_c

    if-eqz v4, :cond_c

    iget-object v10, v4, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    iget-object v11, v4, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    invoke-direct {v0, v1, v11, v6}, Landroid/view/ViewGroup;->isOnTop(Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;)Z

    move-result v12

    if-nez v12, :cond_b

    iget v12, v11, Landroid/view/View;->mLeft:I

    int-to-float v12, v12

    iget v13, v11, Landroid/view/View;->mTop:I

    int-to-float v13, v13

    iget v14, v11, Landroid/view/View;->mRight:I

    int-to-float v14, v14

    iget v15, v11, Landroid/view/View;->mBottom:I

    int-to-float v15, v15

    invoke-virtual {v8, v12, v13, v14, v15}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v2, v8}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v12, v8, Landroid/graphics/RectF;->left:F

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v20

    iget v12, v8, Landroid/graphics/RectF;->top:F

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v21

    iget v12, v8, Landroid/graphics/RectF;->right:F

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v22

    iget v12, v8, Landroid/graphics/RectF;->bottom:F

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v23

    sget-object v24, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v19, p2

    invoke-virtual/range {v19 .. v24}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    move-result v9

    :cond_b
    move-object v4, v10

    goto :goto_8

    :cond_c
    if-eqz v6, :cond_d

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    :cond_d
    :goto_9
    if-eqz v9, :cond_e

    iget-object v4, v0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v4, :cond_e

    iget-object v4, v0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    move-object/from16 v5, p2

    invoke-interface {v4, v0, v5, v2, v3}, Landroid/view/ViewParent;->getChildLocalHitRegion(Landroid/view/View;Landroid/graphics/Region;Landroid/graphics/Matrix;Z)Z

    move-result v9

    goto :goto_a

    :cond_e
    move-object/from16 v5, p2

    :goto_a
    return v9
.end method

.method protected whitelist getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o getChildTransformation()Landroid/view/animation/Transformation;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    return-object v0
.end method

.method public whitelist getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;Z)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;Z)Z
    .locals 11

    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    :goto_0
    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_1
    iget v1, p1, Landroid/view/View;->mLeft:I

    iget v2, p0, Landroid/view/ViewGroup;->mScrollX:I

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/view/View;->mTop:I

    iget v3, p0, Landroid/view/ViewGroup;->mScrollY:I

    sub-int/2addr v2, v3

    int-to-float v3, v1

    int-to-float v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    if-eqz p3, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    new-array v3, v3, [F

    :goto_1
    nop

    iget v4, p3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    const/4 v5, 0x0

    aput v4, v3, v5

    iget v4, p3, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    const/4 v6, 0x1

    aput v4, v3, v6

    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v4, v3, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p3, Landroid/graphics/Point;->x:I

    aget v4, v3, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p3, Landroid/graphics/Point;->y:I

    :cond_3
    iget v3, p3, Landroid/graphics/Point;->x:I

    add-int/2addr v3, v1

    iput v3, p3, Landroid/graphics/Point;->x:I

    iget v3, p3, Landroid/graphics/Point;->y:I

    add-int/2addr v3, v2

    iput v3, p3, Landroid/graphics/Point;->y:I

    :cond_4
    iget v3, p0, Landroid/view/ViewGroup;->mRight:I

    iget v4, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v5, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    int-to-float v6, v3

    int-to-float v7, v4

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v8, v6, v7}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v5

    :cond_6
    if-nez p4, :cond_7

    if-eqz v5, :cond_8

    :cond_7
    iget v6, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/16 v7, 0x22

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_8

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

    :cond_8
    if-nez p4, :cond_9

    if-eqz v5, :cond_a

    :cond_9
    iget-object v6, p0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    if-eqz v6, :cond_a

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

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    invoke-virtual {p2, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    if-nez p4, :cond_b

    if-eqz v5, :cond_d

    :cond_b
    iget-object v6, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_d

    iget-object v6, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_c

    iget-object v6, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, p0, p2, p3, p4}, Landroid/view/ViewGroup;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;Z)Z

    move-result v5

    goto :goto_2

    :cond_c
    iget-object v6, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v6, p0, p2, p3}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v5

    :cond_d
    :goto_2
    return v5
.end method

.method public whitelist getClipChildren()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

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

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    move-result v0

    return v0
.end method

.method greylist-max-o getDeepestFocusedChild()Landroid/view/View;
    .locals 3

    move-object v0, p0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

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

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x60000

    and-int/2addr v0, v1

    return v0
.end method

.method public whitelist getFocusedChild()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    return-object v0
.end method

.method public whitelist getLayoutAnimation()Landroid/view/animation/LayoutAnimationController;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    return-object v0
.end method

.method public whitelist getLayoutAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method public whitelist getLayoutMode()I
    .locals 2

    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutMode()I

    move-result v0

    goto :goto_0

    :cond_0
    sget v0, Landroid/view/ViewGroup;->LAYOUT_MODE_DEFAULT:I

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/view/ViewGroup;->setLayoutMode(IZ)V

    :cond_1
    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    return v0
.end method

.method public whitelist getLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    return-object v0
.end method

.method public whitelist getNestedScrollAxes()I
    .locals 1

    iget v0, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    return v0
.end method

.method greylist-max-o getNumChildrenForAccessibility()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->includeForAccessibility()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getNumChildrenForAccessibility()I

    move-result v3

    add-int/2addr v0, v3

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public whitelist getOverlay()Landroid/view/ViewGroupOverlay;
    .locals 2

    iget-object v0, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/ViewGroupOverlay;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    check-cast v0, Landroid/view/ViewGroupOverlay;

    return-object v0
.end method

.method public bridge synthetic whitelist getOverlay()Landroid/view/ViewOverlay;
    .locals 1

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

    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    return v0
.end method

.method greylist-max-o getScrollIndicatorBounds(Landroid/graphics/Rect;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->getScrollIndicatorBounds(Landroid/graphics/Rect;)V

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    return-void
.end method

.method public whitelist getTouchscreenBlocksFocus()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

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

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getTransientViewCount()I
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public greylist-max-o getTransientViewIndex(I)I
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->get(I)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method greylist-max-o handleFocusGainInternal(ILandroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->handleFocusGainInternal(ILandroid/graphics/Rect;)V

    return-void
.end method

.method greylist-max-o hasDefaultFocus()Z
    .locals 1

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

    iget v0, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

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

    const/4 v0, 0x1

    return v0

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v2, 0x60000

    if-eq v0, v2, :cond_3

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->hasFocusableChild(Z)Z

    move-result v1

    return v1

    :cond_3
    return v1
.end method

.method greylist-max-o hasFocusableChild(Z)Z
    .locals 5

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, v1, v2

    if-eqz p1, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->hasExplicitFocusable()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-nez p1, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/4 v4, 0x1

    return v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    return v2
.end method

.method protected greylist-max-o hasHoveredChild()Z
    .locals 1

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

    invoke-super {p0}, Landroid/view/View;->hasWindowInsetsAnimationCallback()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit16 v0, v0, 0x800

    const/4 v2, 0x0

    if-nez v0, :cond_2

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

    :goto_1
    if-eqz v0, :cond_3

    iget-object v3, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mContentOnApplyWindowInsetsListener:Landroid/view/Window$OnContentApplyWindowInsetsListener;

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowSystemUiVisibility()I

    move-result v3

    and-int/lit16 v3, v3, 0x600

    if-nez v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_5

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->hasWindowInsetsAnimationCallback()Z

    move-result v5

    if-eqz v5, :cond_4

    return v1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    return v2
.end method

.method greylist-max-o incrementChildUnhandledKeyListeners()V
    .locals 2

    iget v0, p0, Landroid/view/ViewGroup;->mChildUnhandledKeyListeners:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mChildUnhandledKeyListeners:I

    iget v0, p0, Landroid/view/ViewGroup;->mChildUnhandledKeyListeners:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->incrementChildUnhandledKeyListeners()V

    :cond_0
    return-void
.end method

.method public whitelist indexOfChild(Landroid/view/View;)I
    .locals 4

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    if-ne v3, p1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method protected greylist-max-o internalSetPadding(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->internalSetPadding(IIII)V

    iget v0, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v1, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    or-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    or-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    :goto_0
    return-void
.end method

.method public final whitelist invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 17
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_0

    iget-boolean v4, v3, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    if-eqz v4, :cond_0

    invoke-virtual {v0, v1, v1}, Landroid/view/ViewGroup;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    return-void

    :cond_0
    move-object/from16 v4, p0

    if-eqz v3, :cond_f

    iget v5, v1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v5, v5, 0x40

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    move v5, v7

    goto :goto_0

    :cond_1
    move v5, v6

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    iget v9, v1, Landroid/view/View;->mLayerType:I

    if-eqz v9, :cond_2

    iget v9, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/high16 v10, -0x80000000

    or-int/2addr v9, v10

    iput v9, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    iget v9, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const v10, -0x8001

    and-int/2addr v9, v10

    iput v9, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    :cond_2
    iget-object v9, v3, Landroid/view/View$AttachInfo;->mInvalidateChildLocation:[I

    iget v10, v1, Landroid/view/View;->mLeft:I

    aput v10, v9, v6

    iget v6, v1, Landroid/view/View;->mTop:I

    aput v6, v9, v7

    invoke-virtual {v8}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v6

    if-eqz v6, :cond_3

    iget v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v6, v6, 0x800

    if-eqz v6, :cond_7

    :cond_3
    iget-object v6, v3, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    invoke-virtual {v6, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget v10, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v10, v10, 0x800

    if-eqz v10, :cond_6

    iget-object v10, v3, Landroid/view/View$AttachInfo;->mTmpTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, v1, v10}, Landroid/view/ViewGroup;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v12, v3, Landroid/view/View$AttachInfo;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {v8}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v13

    if-nez v13, :cond_5

    invoke-virtual {v12, v8}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    goto :goto_1

    :cond_4
    move-object v12, v8

    :cond_5
    :goto_1
    goto :goto_2

    :cond_6
    move-object v12, v8

    :goto_2
    invoke-virtual {v12, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v10, v6, Landroid/graphics/RectF;->left:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v10, v10

    iget v11, v6, Landroid/graphics/RectF;->top:F

    float-to-double v13, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v11, v13

    iget v13, v6, Landroid/graphics/RectF;->right:F

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v13, v13

    iget v14, v6, Landroid/graphics/RectF;->bottom:F

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v14, v14

    invoke-virtual {v2, v10, v11, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    :cond_7
    :goto_3
    const/4 v6, 0x0

    instance-of v10, v4, Landroid/view/View;

    if-eqz v10, :cond_8

    move-object v6, v4

    check-cast v6, Landroid/view/View;

    :cond_8
    if-eqz v5, :cond_a

    if-eqz v6, :cond_9

    iget v10, v6, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v10, v10, 0x40

    iput v10, v6, Landroid/view/View;->mPrivateFlags:I

    goto :goto_4

    :cond_9
    instance-of v10, v4, Landroid/view/ViewRootImpl;

    if-eqz v10, :cond_a

    move-object v10, v4

    check-cast v10, Landroid/view/ViewRootImpl;

    iput-boolean v7, v10, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    :cond_a
    :goto_4
    if-eqz v6, :cond_b

    iget v10, v6, Landroid/view/View;->mPrivateFlags:I

    const/high16 v11, 0x200000

    and-int/2addr v10, v11

    if-eq v10, v11, :cond_b

    iget v10, v6, Landroid/view/View;->mPrivateFlags:I

    const v12, -0x200001

    and-int/2addr v10, v12

    or-int/2addr v10, v11

    iput v10, v6, Landroid/view/View;->mPrivateFlags:I

    :cond_b
    invoke-interface {v4, v9, v2}, Landroid/view/ViewParent;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v11

    if-nez v11, :cond_c

    iget-object v11, v3, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    invoke-virtual {v11, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v10, v11}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v12, v11, Landroid/graphics/RectF;->left:F

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v12, v12

    iget v13, v11, Landroid/graphics/RectF;->top:F

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v13, v13

    iget v14, v11, Landroid/graphics/RectF;->right:F

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v14, v14

    iget v15, v11, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v16, v8

    float-to-double v7, v15

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    invoke-virtual {v2, v12, v13, v14, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5

    :cond_c
    move-object/from16 v16, v8

    goto :goto_5

    :cond_d
    move-object/from16 v16, v8

    :goto_5
    if-nez v4, :cond_e

    goto :goto_6

    :cond_e
    move-object/from16 v8, v16

    const/4 v7, 0x1

    goto :goto_3

    :cond_f
    :goto_6
    return-void
.end method

.method public whitelist invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const v1, 0x8020

    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x90

    const/16 v1, 0x80

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    aget v0, p1, v3

    iget v1, p0, Landroid/view/ViewGroup;->mScrollX:I

    sub-int/2addr v0, v1

    aget v1, p1, v2

    iget v4, p0, Landroid/view/ViewGroup;->mScrollY:I

    sub-int/2addr v1, v4

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/ViewGroup;->mRight:I

    iget v1, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v4, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v1, v4

    invoke-virtual {p2, v3, v3, v0, v1}, Landroid/graphics/Rect;->union(IIII)V

    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mLeft:I

    iget v1, p0, Landroid/view/ViewGroup;->mTop:I

    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v4, v2

    if-ne v4, v2, :cond_1

    iget v4, p0, Landroid/view/ViewGroup;->mRight:I

    sub-int/2addr v4, v0

    iget v5, p0, Landroid/view/ViewGroup;->mBottom:I

    sub-int/2addr v5, v1

    invoke-virtual {p2, v3, v3, v4, v5}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    :cond_1
    aput v0, p1, v3

    aput v1, p1, v2

    goto :goto_1

    :cond_2
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    iget v0, p0, Landroid/view/ViewGroup;->mRight:I

    iget v1, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v4, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v1, v4

    invoke-virtual {p2, v3, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_3
    iget v0, p0, Landroid/view/ViewGroup;->mRight:I

    iget v1, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v4, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v1, v4

    invoke-virtual {p2, v3, v3, v0, v1}, Landroid/graphics/Rect;->union(IIII)V

    :goto_0
    iget v0, p0, Landroid/view/ViewGroup;->mLeft:I

    aput v0, p1, v3

    iget v0, p0, Landroid/view/ViewGroup;->mTop:I

    aput v0, p1, v2

    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    :goto_1
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    iget v0, p0, Landroid/view/ViewGroup;->mLayerType:I

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    :cond_4
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    return-object v0

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method greylist-max-o invalidateInheritedLayoutMode(I)V
    .locals 3

    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    if-eq v0, p1, :cond_2

    const/high16 v0, 0x800000

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Landroid/view/ViewGroup;->setLayoutMode(IZ)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->invalidateInheritedLayoutMode(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public whitelist isAlwaysDrawnWithCacheEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

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

    iget-boolean v0, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    return v0
.end method

.method public whitelist isMotionEventSplittingEnabled()Z
    .locals 2

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

    const/4 v0, 0x0

    return v0
.end method

.method public final greylist-max-o isShowingContextMenuWithCoords()Z
    .locals 2

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

    invoke-direct {p0}, Landroid/view/ViewGroup;->getTempLocationF()[F

    move-result-object v0

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v2, 0x1

    aput p2, v0, v2

    invoke-virtual {p0, v0, p3}, Landroid/view/ViewGroup;->transformPointToViewLocal([FLandroid/view/View;)V

    aget v3, v0, v1

    aget v4, v0, v2

    invoke-virtual {p3, v3, v4}, Landroid/view/View;->pointInView(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p4, :cond_0

    aget v1, v0, v1

    aget v2, v0, v2

    invoke-virtual {p4, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    :cond_0
    return v3
.end method

.method public whitelist isTransitionGroup()Z
    .locals 4

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v3, 0x1000000

    and-int/2addr v0, v3

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTransitionName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_3

    sget-object v3, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    if-eq v0, v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method greylist-max-o isViewTransitioning(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

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

    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final whitelist layout(IIII)V
    .locals 1

    iget-boolean v0, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isChangingLayout()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0}, Landroid/animation/LayoutTransition;->layoutChange(Landroid/view/ViewGroup;)V

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    :goto_0
    return-void
.end method

.method public blacklist makeFrameworkOptionalFitsSystemWindows()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->makeFrameworkOptionalFitsSystemWindows()V

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/View;->makeFrameworkOptionalFitsSystemWindows()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public greylist makeOptionalFitsSystemWindows()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->makeOptionalFitsSystemWindows()V

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/View;->makeOptionalFitsSystemWindows()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected whitelist measureChild(Landroid/view/View;II)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    iget v3, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected whitelist measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

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

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected whitelist measureChildren(II)V
    .locals 6

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    iget v4, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    invoke-virtual {p0, v3, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method greylist-max-o notifyChildOfDragStart(Landroid/view/View;)Z
    .locals 7

    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    iget v0, v0, Landroid/view/DragEvent;->mX:F

    iget-object v1, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    iget v1, v1, Landroid/view/DragEvent;->mY:F

    invoke-direct {p0}, Landroid/view/ViewGroup;->getTempLocationF()[F

    move-result-object v2

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v4, 0x1

    aput v1, v2, v4

    invoke-virtual {p0, v2, p1}, Landroid/view/ViewGroup;->transformPointToViewLocal([FLandroid/view/View;)V

    iget-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    aget v6, v2, v3

    iput v6, v5, Landroid/view/DragEvent;->mX:F

    iget-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    aget v6, v2, v4

    iput v6, v5, Landroid/view/DragEvent;->mY:F

    iget-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    invoke-virtual {p1, v5}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v5

    iget-object v6, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    iput v0, v6, Landroid/view/DragEvent;->mX:F

    iget-object v6, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    iput v1, v6, Landroid/view/DragEvent;->mY:F

    iget-object v6, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    iput-boolean v3, v6, Landroid/view/DragEvent;->mEventHandlerWasCalled:Z

    if-eqz v5, :cond_0

    iget-object v3, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/view/View;->canAcceptDrag()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p1, Landroid/view/View;->mPrivateFlags2:I

    or-int/2addr v3, v4

    iput v3, p1, Landroid/view/View;->mPrivateFlags2:I

    invoke-virtual {p1}, Landroid/view/View;->refreshDrawableState()V

    :cond_0
    return v5
.end method

.method public whitelist notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityLiveRegion()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p2, p3}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v2}, Landroid/view/ViewParent;->getClass()Ljava/lang/Class;

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

    :cond_1
    :goto_0
    return-void
.end method

.method public greylist-max-o notifySubtreeAccessibilityStateChangedIfNeeded()V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getImportantForAccessibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isImportantForAccessibility()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    return-void

    :cond_1
    invoke-super {p0}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public greylist offsetChildrenTopAndBottom(I)V
    .locals 6

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, v1, v3

    iget v5, v4, Landroid/view/View;->mTop:I

    add-int/2addr v5, p1

    iput v5, v4, Landroid/view/View;->mTop:I

    iget v5, v4, Landroid/view/View;->mBottom:I

    add-int/2addr v5, p1

    iput v5, v4, Landroid/view/View;->mBottom:I

    iget-object v5, v4, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    iget-object v5, v4, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v5, p1}, Landroid/graphics/RenderNode;->offsetTopAndBottom(I)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3}, Landroid/view/ViewGroup;->invalidateViewProperty(ZZ)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    return-void
.end method

.method public final whitelist offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    return-void
.end method

.method greylist-max-o offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V
    .locals 7

    move-object v0, p1

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    iget-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    :goto_0
    if-eqz v1, :cond_5

    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_5

    if-eq v1, p0, :cond_5

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    iget v3, p1, Landroid/view/View;->mLeft:I

    iget v4, p1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v3, v4

    iget v4, p1, Landroid/view/View;->mTop:I

    iget v5, p1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    if-eqz p4, :cond_4

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    iget v4, v3, Landroid/view/View;->mRight:I

    iget v5, v3, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    iget v5, v3, Landroid/view/View;->mBottom:I

    iget v6, v3, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v6

    invoke-virtual {p2, v2, v2, v4, v5}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    :cond_1
    goto :goto_1

    :cond_2
    if-eqz p4, :cond_3

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    iget v4, v3, Landroid/view/View;->mRight:I

    iget v5, v3, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    iget v5, v3, Landroid/view/View;->mBottom:I

    iget v6, v3, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v6

    invoke-virtual {p2, v2, v2, v4, v5}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    :cond_3
    iget v2, p1, Landroid/view/View;->mScrollX:I

    iget v3, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/view/View;->mScrollY:I

    iget v4, p1, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    :cond_4
    :goto_1
    move-object p1, v1

    check-cast p1, Landroid/view/View;

    iget-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_0

    :cond_5
    if-ne v1, p0, :cond_7

    if-eqz p3, :cond_6

    iget v2, p1, Landroid/view/View;->mLeft:I

    iget v3, p1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/view/View;->mTop:I

    iget v4, p1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_2

    :cond_6
    iget v2, p1, Landroid/view/View;->mScrollX:I

    iget v3, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/view/View;->mScrollY:I

    iget v4, p1, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    :goto_2
    return-void

    :cond_7
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChildDebug(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "parameter must be a descendant of this view"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final whitelist offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    return-void
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-direct {p0}, Landroid/view/ViewGroup;->clearCachedLayoutMode()V

    return-void
.end method

.method protected greylist onChildVisibilityChanged(Landroid/view/View;II)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_2

    if-nez p3, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1, p2}, Landroid/animation/LayoutTransition;->showChild(Landroid/view/ViewGroup;Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1, p3}, Landroid/animation/LayoutTransition;->hideChild(Landroid/view/ViewGroup;Landroid/view/View;I)V

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    :cond_2
    :goto_0
    if-nez p3, :cond_3

    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->notifyChildOfDragStart(Landroid/view/View;)Z

    goto :goto_1

    :cond_3
    if-nez p3, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestSendStickyDragStartedEvent(Landroid/view/View;)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected whitelist onCreateDrawableState(I)[I
    .locals 5

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v4, v3

    add-int/2addr v0, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    add-int v2, p1, v0

    invoke-super {p0, v2}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_4

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getDrawableState()[I

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {v2, v4}, Landroid/view/ViewGroup;->mergeDrawableStates([I[I)[I

    move-result-object v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-object v2
.end method

.method protected greylist-max-o onDebugDraw(Landroid/graphics/Canvas;)V
    .locals 14

    invoke-static {}, Landroid/view/ViewGroup;->getDebugPaint()Landroid/graphics/Paint;

    move-result-object v8

    const/high16 v0, -0x10000

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/16 v9, 0x8

    const/4 v1, 0x1

    if-ge v6, v0, :cond_1

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v9, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v9

    nop

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v2, v9, Landroid/graphics/Insets;->left:I

    add-int/2addr v2, v0

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v0

    iget v3, v9, Landroid/graphics/Insets;->top:I

    add-int/2addr v3, v0

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v0

    iget v4, v9, Landroid/graphics/Insets;->right:I

    sub-int/2addr v0, v4

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v5, v9, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v0, v5

    add-int/lit8 v5, v0, -0x1

    move-object v0, p1

    move-object v1, v8

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->drawRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x3f

    const/4 v2, 0x0

    const/16 v3, 0xff

    invoke-static {v0, v3, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0, p1, v8}, Landroid/view/ViewGroup;->onDebugDrawMargins(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    sget v0, Landroid/view/ViewGroup;->DEBUG_CORNERS_COLOR:I

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->dipsToPixels(I)I

    move-result v10

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->dipsToPixels(I)I

    move-result v11

    const/4 v0, 0x0

    move v12, v0

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v12, v0, :cond_3

    invoke-virtual {p0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v9, :cond_2

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

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected greylist-max-o onDebugDrawMargins(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v2, v1, p1, p2}, Landroid/view/ViewGroup$LayoutParams;->onDebugDraw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public whitelist onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    iget v1, p2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x40

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    iget v0, p2, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x200001

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/2addr v0, v1

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mLayerType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/high16 v1, -0x7fe00000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    move-object p2, p0

    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public final blacklist onDescendantUnbufferedRequested()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v1, v1, Landroid/view/View;->mUnbufferedInputSource:I

    and-int/lit8 v0, v1, -0x3

    :cond_0
    iput v0, p0, Landroid/view/ViewGroup;->mUnbufferedInputSource:I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v2, v2, v1

    iget v3, v2, Landroid/view/View;->mUnbufferedInputSource:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/view/ViewGroup;->mUnbufferedInputSource:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Landroid/view/ViewGroup;->mUnbufferedInputSource:I

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1}, Landroid/view/ViewParent;->onDescendantUnbufferedRequested()V

    :cond_3
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-direct {p0}, Landroid/view/ViewGroup;->clearCachedLayoutMode()V

    return-void
.end method

.method public greylist-max-r onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTempArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    :try_start_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChildUnchecked(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_1
    nop

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    const-string v0, "android.view.accessibility.extra.DATA_RENDERING_INFO_KEY"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAvailableExtraData(Ljava/util/List;)V

    return-void
.end method

.method public whitelist onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getXDispatchLocation(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getYDispatchLocation(I)F

    move-result v3

    const/4 v4, 0x7

    if-eq v0, v4, :cond_0

    const/16 v4, 0x9

    if-ne v0, v4, :cond_1

    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->isOnScrollbar(FF)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    return v1
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getXDispatchLocation(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getYDispatchLocation(I)F

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->isOnScrollbarThumb(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    return v1
.end method

.method protected abstract whitelist onLayout(ZIIII)V
.end method

.method public whitelist onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1

    invoke-virtual {p0, p2, p3, p4}, Landroid/view/ViewGroup;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public whitelist onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1

    invoke-virtual {p0, p2, p3}, Landroid/view/ViewGroup;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public whitelist onNestedPrePerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, p4, v0}, Landroid/view/ViewGroup;->dispatchNestedPreScroll(II[I[I)Z

    return-void
.end method

.method public whitelist onNestedScroll(Landroid/view/View;IIII)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->dispatchNestedScroll(IIII[I)Z

    return-void
.end method

.method public whitelist onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    iput p3, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    return-void
.end method

.method protected whitelist onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, -0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    :goto_0
    iget-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    move v5, v1

    :goto_1
    if-eq v5, v3, :cond_2

    aget-object v6, v4, v5

    iget v7, v6, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v7, v7, 0xc

    if-nez v7, :cond_1

    invoke-virtual {v6, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    return v7

    :cond_1
    add-int/2addr v5, v2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    return v5
.end method

.method public whitelist onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 11

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getXDispatchLocation(I)F

    move-result v0

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getYDispatchLocation(I)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->isOnScrollbarThumb(FF)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isDraggingScrollBar()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_3

    :cond_0
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    iget-object v6, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    add-int/lit8 v7, v2, -0x1

    :goto_1
    if-ltz v7, :cond_5

    invoke-direct {p0, v2, v7, v5}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v8

    invoke-static {v4, v6, v8}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->canReceivePointerEvents()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {p0, v0, v1, v9, v3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v10

    if-nez v10, :cond_2

    goto :goto_2

    :cond_2
    nop

    invoke-direct {p0, p1, p2, v9}, Landroid/view/ViewGroup;->dispatchResolvePointerIcon(Landroid/view/MotionEvent;ILandroid/view/View;)Landroid/view/PointerIcon;

    move-result-object v10

    if-eqz v10, :cond_4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :cond_3
    return-object v10

    :cond_4
    :goto_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :cond_6
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v3

    return-object v3

    :cond_7
    :goto_3
    return-object v3
.end method

.method protected greylist-max-o onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public whitelist onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onStopNestedScroll(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->stopNestedScroll()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    return-void
.end method

.method public whitelist onViewAdded(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public whitelist onViewRemoved(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected blacklist pointInHoveredChild(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getXDispatchLocation(I)F

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getYDispatchLocation(I)F

    move-result v1

    iget-object v2, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    iget-object v2, v2, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public whitelist recomputeViewAttributes(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public whitelist removeAllViews()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    return-void
.end method

.method public whitelist removeAllViewsInLayout()V
    .locals 10

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v3, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget-object v4, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    const/4 v5, 0x0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    add-int/lit8 v6, v0, -0x1

    :goto_1
    if-ltz v6, :cond_8

    aget-object v7, v1, v6

    iget-object v8, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v8, :cond_2

    iget-object v8, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v8, p0, v7}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    :cond_2
    const/4 v8, 0x0

    if-ne v7, v3, :cond_3

    invoke-virtual {v7, v8}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    const/4 v5, 0x1

    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->clearAccessibilityFocus()V

    invoke-direct {p0, v7}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    invoke-direct {p0, v7}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    invoke-virtual {v7}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v9

    if-nez v9, :cond_5

    iget-object v9, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v9, :cond_4

    iget-object v9, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v4, :cond_6

    invoke-virtual {v7}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_3

    :cond_5
    :goto_2
    invoke-direct {p0, v7}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    :cond_6
    :goto_3
    invoke-virtual {v7}, Landroid/view/View;->hasTransientState()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {p0, v7, v2}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    :cond_7
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    iput-object v8, v7, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    aput-object v8, v1, v6

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_8
    iget-object v2, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->clearDefaultFocus(Landroid/view/View;)V

    :cond_9
    iget-object v2, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->clearFocusedInCluster(Landroid/view/View;)V

    :cond_a
    if-eqz v5, :cond_b

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->rootViewRequestFocus()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->notifyGlobalFocusCleared(Landroid/view/View;)V

    :cond_b
    return-void
.end method

.method protected whitelist removeDetachedView(Landroid/view/View;Z)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-ne p1, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->clearDefaultFocus(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->clearFocusedInCluster(Landroid/view/View;)V

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->clearAccessibilityFocus()V

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    goto :goto_0

    :cond_6
    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    :cond_7
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    :cond_8
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    return-void
.end method

.method public greylist removeTransientView(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v2, v1}, Landroid/util/IntArray;->remove(I)V

    const/4 v2, 0x0

    iput-object v2, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    iget-object v2, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->invalidate(Z)V

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public whitelist removeView(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    :cond_0
    return-void
.end method

.method public whitelist removeViewAt(I)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    return-void
.end method

.method public whitelist removeViewInLayout(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)Z

    return-void
.end method

.method public whitelist removeViews(II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    return-void
.end method

.method public whitelist removeViewsInLayout(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    return-void
.end method

.method public whitelist requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p2}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    :cond_1
    iput-object p1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    :cond_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public whitelist requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist requestDisallowInterceptTouchEvent(Z)V
    .locals 2

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_1

    :cond_2
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    :goto_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_3
    return-void
.end method

.method public whitelist requestFocus(ILandroid/graphics/Rect;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

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

    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2

    :sswitch_1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    :goto_0
    move v1, v2

    goto :goto_2

    :sswitch_2
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v2

    :goto_1
    move v1, v2

    :goto_2
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutValid()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_2

    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

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

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    return v1
.end method

.method public blacklist requestSendStickyDragStartedEvent(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    invoke-virtual {v0}, Landroid/view/DragEvent;->isStickyEvent()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_DEBUG_LEVEL_MID:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestSendStickyDragStartedEvent this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", child="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->notifyChildOfDragStart(Landroid/view/View;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestSendStickyDragStartedEvent(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public greylist-max-o requestTransitionStart(Landroid/animation/LayoutTransition;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->requestTransitionStart(Landroid/animation/LayoutTransition;)V

    :cond_0
    return-void
.end method

.method public whitelist requestTransparentRegion(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected blacklist resetResolvedDrawables()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->resetResolvedDrawables()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->resetResolvedDrawables()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public blacklist resetResolvedLayoutDirection()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->resetResolvedLayoutDirection()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->resetResolvedLayoutDirection()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public blacklist resetResolvedPadding()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->resetResolvedPadding()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->resetResolvedPadding()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public blacklist resetResolvedTextAlignment()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->resetResolvedTextAlignment()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isTextAlignmentInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->resetResolvedTextAlignment()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public blacklist resetResolvedTextDirection()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->resetResolvedTextDirection()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isTextDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->resetResolvedTextDirection()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method greylist-max-o resetSubtreeAccessibilityStateChanged()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->resetSubtreeAccessibilityStateChanged()V

    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->resetSubtreeAccessibilityStateChanged()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public blacklist resetSubtreeAutofillIds()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->resetSubtreeAutofillIds()V

    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->resetSubtreeAutofillIds()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected greylist-max-o resolveDrawables()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->resolveDrawables()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->areDrawablesResolved()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->resolveDrawables()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public greylist-max-o resolveLayoutDirection()Z
    .locals 5

    invoke-super {p0}, Landroid/view/View;->resolveLayoutDirection()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->resolveLayoutDirection()Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public greylist-max-o resolveLayoutParams()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->resolveLayoutParams()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->resolveLayoutParams()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public greylist-max-r resolvePadding()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->resolvePadding()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->isPaddingResolved()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->resolvePadding()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public greylist-max-o resolveRtlPropertiesIfNeeded()Z
    .locals 5

    invoke-super {p0}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public greylist-max-o resolveTextAlignment()Z
    .locals 5

    invoke-super {p0}, Landroid/view/View;->resolveTextAlignment()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isTextAlignmentInherited()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->resolveTextAlignment()Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public greylist-max-o resolveTextDirection()Z
    .locals 5

    invoke-super {p0}, Landroid/view/View;->resolveTextDirection()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isTextDirectionInherited()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->resolveTextDirection()Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public whitelist restoreDefaultFocus()Z
    .locals 2

    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->restoreDefaultFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->restoreDefaultFocus()Z

    move-result v0

    return v0
.end method

.method public blacklist restoreFocusInCluster(I)Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isKeyboardNavigationCluster()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTouchscreenBlocksFocus()Z

    move-result v0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->restoreFocusInClusterInternal(I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    return v1

    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    throw v1

    :cond_0
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->restoreFocusInClusterInternal(I)Z

    move-result v0

    return v0
.end method

.method public blacklist restoreFocusNotInCluster()Z
    .locals 8

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    const/16 v1, 0x82

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->restoreFocusInCluster(I)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isKeyboardNavigationCluster()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_7

    iget v0, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v3, 0x60000

    const/4 v4, 0x0

    if-ne v0, v3, :cond_2

    invoke-super {p0, v1, v4}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    return v1

    :cond_2
    const/high16 v3, 0x20000

    const/4 v5, 0x1

    if-ne v0, v3, :cond_3

    invoke-super {p0, v1, v4}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v5

    :cond_3
    const/4 v3, 0x0

    :goto_0
    iget v6, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v3, v6, :cond_5

    iget-object v6, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Landroid/view/View;->isKeyboardNavigationCluster()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v6}, Landroid/view/View;->restoreFocusNotInCluster()Z

    move-result v7

    if-eqz v7, :cond_4

    return v5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    const/high16 v3, 0x40000

    if-ne v0, v3, :cond_6

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->hasFocusableChild(Z)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-super {p0, v1, v4}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    return v1

    :cond_6
    return v2

    :cond_7
    :goto_1
    return v2
.end method

.method public whitelist scheduleLayoutAnimation()V
    .locals 1

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    return-void
.end method

.method public blacklist semDispatchFindView(Landroid/graphics/PointF;ZLcom/samsung/android/widget/ISemTouchApi;)Landroid/view/View;
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    return-object v8

    :cond_0
    iget-object v1, v6, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    iget-object v0, v6, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object/from16 v0, p3

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/widget/ISemTouchApi;->getViewContent(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/graphics/PointF;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v6

    :cond_1
    iget v0, v6, Landroid/view/ViewGroup;->mChildrenCount:I

    if-nez v0, :cond_2

    return-object v8

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    iget-object v3, v6, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    add-int/lit8 v4, v0, -0x1

    :goto_1
    if-ltz v4, :cond_a

    if-eqz v2, :cond_4

    invoke-virtual {v6, v0, v4}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v5

    goto :goto_2

    :cond_4
    move v5, v4

    :goto_2
    if-nez v1, :cond_5

    aget-object v9, v3, v5

    goto :goto_3

    :cond_5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    :goto_3
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_6

    move/from16 v15, p2

    move-object/from16 v8, p3

    goto :goto_4

    :cond_6
    iget v10, v7, Landroid/graphics/PointF;->x:F

    iget v11, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v10, v11, v9, v8}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v10

    if-eqz v10, :cond_8

    iget v10, v6, Landroid/view/ViewGroup;->mScrollX:I

    iget v11, v9, Landroid/view/View;->mLeft:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {v9}, Landroid/view/View;->getTranslationX()F

    move-result v11

    sub-float/2addr v10, v11

    iget v11, v6, Landroid/view/ViewGroup;->mScrollY:I

    iget v12, v9, Landroid/view/View;->mTop:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    invoke-virtual {v9}, Landroid/view/View;->getTranslationY()F

    move-result v12

    sub-float/2addr v11, v12

    iget v12, v7, Landroid/graphics/PointF;->x:F

    add-float/2addr v12, v10

    iget v13, v7, Landroid/graphics/PointF;->y:F

    add-float/2addr v13, v11

    new-instance v14, Landroid/graphics/PointF;

    invoke-direct {v14, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    move/from16 v15, p2

    move-object/from16 v8, p3

    invoke-virtual {v9, v14, v15, v8}, Landroid/view/View;->semDispatchFindView(Landroid/graphics/PointF;ZLcom/samsung/android/widget/ISemTouchApi;)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_9

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_7
    return-object v14

    :cond_8
    move/from16 v15, p2

    move-object/from16 v8, p3

    :cond_9
    :goto_4
    add-int/lit8 v4, v4, -0x1

    const/4 v8, 0x0

    goto :goto_1

    :cond_a
    move/from16 v15, p2

    move-object/from16 v8, p3

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_b
    const/4 v4, 0x0

    return-object v4
.end method

.method public blacklist semDispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    :pswitch_1
    iget-object v5, v0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, v0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    iput-object v3, v0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    goto/16 :goto_4

    :cond_0
    iget-boolean v3, v0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    if-eqz v3, :cond_a

    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    iput-boolean v4, v0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    goto/16 :goto_4

    :pswitch_2
    goto/16 :goto_4

    :pswitch_3
    const/4 v5, 0x0

    iget v6, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v7, 0x1

    if-eqz v6, :cond_5

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getXDispatchLocation(I)F

    move-result v8

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getYDispatchLocation(I)F

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v10

    if-nez v10, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v11

    if-eqz v11, :cond_1

    move v11, v7

    goto :goto_0

    :cond_1
    move v11, v4

    :goto_0
    iget-object v12, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    add-int/lit8 v13, v6, -0x1

    :goto_1
    if-ltz v13, :cond_4

    nop

    invoke-direct {v0, v6, v13, v11}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v14

    nop

    invoke-static {v10, v12, v14}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->canReceivePointerEvents()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-virtual {v0, v8, v9, v15, v3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v16

    if-nez v16, :cond_2

    goto :goto_2

    :cond_2
    invoke-direct {v0, v1, v15}, Landroid/view/ViewGroup;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v16

    if-eqz v16, :cond_3

    move-object v3, v15

    move-object v5, v3

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    :cond_4
    :goto_3
    if-eqz v10, :cond_5

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    :cond_5
    iget-object v3, v0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    const/16 v8, 0xa

    if-eq v3, v5, :cond_7

    iget-object v3, v0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    if-eqz v3, :cond_6

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v3, v0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_6
    iput-object v5, v0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    :cond_7
    iget-object v3, v0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    if-eqz v3, :cond_9

    iget-boolean v3, v0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    if-eqz v3, :cond_8

    iput-boolean v4, v0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_8
    return v7

    :cond_9
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    iput-boolean v3, v0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    iget-boolean v3, v0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    return v3

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

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist semOffsetChildrenLeftAndRight(I)V
    .locals 6

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, v1, v3

    iget v5, v4, Landroid/view/View;->mLeft:I

    add-int/2addr v5, p1

    iput v5, v4, Landroid/view/View;->mLeft:I

    iget v5, v4, Landroid/view/View;->mRight:I

    add-int/2addr v5, p1

    iput v5, v4, Landroid/view/View;->mRight:I

    iget-object v5, v4, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    iget-object v5, v4, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v5, p1}, Landroid/graphics/RenderNode;->offsetLeftAndRight(I)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3}, Landroid/view/ViewGroup;->invalidateViewProperty(ZZ)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    return-void
.end method

.method public blacklist semSetSelection(I)V
    .locals 0

    return-void
.end method

.method public blacklist semSmoothScrollBy(I)V
    .locals 0

    return-void
.end method

.method public whitelist setAddStatesFromChildren(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    return-void
.end method

.method public whitelist setAlwaysDrawnWithCacheEnabled(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x4000

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    return-void
.end method

.method public whitelist setAnimationCacheEnabled(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    return-void
.end method

.method protected whitelist setChildrenDrawingCacheEnabled(Z)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    const/4 v1, 0x3

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected whitelist setChildrenDrawingOrderEnabled(Z)V
    .locals 1

    const/16 v0, 0x400

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    return-void
.end method

.method protected whitelist setChildrenDrawnWithCacheEnabled(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x8000

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    return-void
.end method

.method public whitelist setClipChildren(Z)V
    .locals 5

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eq p1, v0, :cond_3

    invoke-direct {p0, v1, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    const/4 v2, 0x0

    :goto_1
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, v3, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    if-eqz v4, :cond_1

    iget-object v4, v3, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v4, p1}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->invalidate(Z)V

    :cond_3
    return-void
.end method

.method public whitelist setClipToPadding(Z)V
    .locals 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    move-result v1

    if-eq v1, p1, :cond_0

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    :cond_0
    return-void
.end method

.method greylist-max-o setDefaultFocus(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocusedByDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setDefaultFocus(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public whitelist setDescendantFocusability(I)V
    .locals 2

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    nop

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x60001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x60000

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

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

    iput-object p1, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    :cond_0
    return-void
.end method

.method public whitelist setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method public whitelist setLayoutMode(I)V
    .locals 1

    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    if-eq v0, p1, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->invalidateInheritedLayoutMode(I)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->setLayoutMode(IZ)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_1
    return-void
.end method

.method public whitelist setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->cancel()V

    iget-object v1, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->removeTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    :cond_0
    iput-object p1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    iget-object v1, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    :cond_1
    return-void
.end method

.method public whitelist setMotionEventSplittingEnabled(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    :goto_0
    return-void
.end method

.method public whitelist setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method

.method public whitelist setPersistentDrawingCache(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    and-int/lit8 v0, p1, 0x3

    iput v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    return-void
.end method

.method protected whitelist setStaticTransformationsEnabled(Z)V
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    return-void
.end method

.method public whitelist setTouchscreenBlocksFocus(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isKeyboardNavigationCluster()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDeepestFocusedChild()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    :cond_2
    :goto_0
    return-void
.end method

.method public whitelist setTransitionGroup(Z)V
    .locals 2

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    :goto_0
    return-void
.end method

.method public whitelist setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/WindowInsetsAnimation$Callback;->getDispatchMode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Landroid/view/ViewGroup;->mInsetsAnimationDispatchMode:I

    return-void
.end method

.method greylist-max-o shouldBlockFocusForTouchscreen()Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTouchscreenBlocksFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.touchscreen"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isKeyboardNavigationCluster()Z

    move-result v0

    if-eqz v0, :cond_0

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

    :goto_0
    return v0
.end method

.method public whitelist shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public whitelist showContextMenuForChild(Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isShowingContextMenuWithCoords()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

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

    const v0, -0x20000001

    :try_start_0
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    nop

    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    return v2

    :cond_0
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    nop

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

    :catchall_0
    move-exception v1

    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v2

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    throw v1
.end method

.method public whitelist startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 3

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const v0, -0x10000001

    :try_start_0
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Landroid/view/ViewGroup;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v2

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    return-object v1

    :catchall_0
    move-exception v1

    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v2

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    throw v1

    :cond_0
    sget-object v0, Landroid/view/ViewGroup;->SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

    return-object v0
.end method

.method public whitelist startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 3

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    const v0, -0x8000001

    :try_start_0
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v2, 0x8000000

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v2

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    nop

    sget-object v0, Landroid/view/ViewGroup;->SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

    if-eq v1, v0, :cond_0

    return-object v1

    :catchall_0
    move-exception v1

    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v2

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    throw v1

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p1, p2}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist startLayoutAnimation()V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public whitelist startViewTransition(Landroid/view/View;)V
    .locals 1

    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-ne v0, p0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public blacklist subtractObscuredTouchableRegion(Landroid/graphics/Region;Landroid/view/View;)V
    .locals 8

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildTouchDispatchChildList()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    add-int/lit8 v4, v0, -0x1

    :goto_1
    if-ltz v4, :cond_3

    invoke-direct {p0, v0, v4, v2}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v5

    invoke-static {v1, v3, v5}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    if-ne v6, p2, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->canReceivePointerEvents()Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    sget-object v7, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-static {p1, v6, v7}, Landroid/view/ViewGroup;->applyOpToRegionByBounds(Landroid/graphics/Region;Landroid/view/View;Landroid/graphics/Region$Op;)V

    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_3
    :goto_3
    sget-object v4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-static {p1, p0, v4}, Landroid/view/ViewGroup;->applyOpToRegionByBounds(Landroid/graphics/Region;Landroid/view/View;Landroid/graphics/Region$Op;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v4, p1, p0}, Landroid/view/ViewParent;->subtractObscuredTouchableRegion(Landroid/graphics/Region;Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method public whitelist suppressLayout(Z)V
    .locals 1

    iput-boolean p1, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    if-nez p1, :cond_0

    iget-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    :cond_0
    return-void
.end method

.method public greylist-max-r transformPointToViewLocal([FLandroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    aget v1, p1, v0

    iget v2, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v3, p2, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x1

    aget v1, p1, v0

    iget v2, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v3, p2, Landroid/view/View;->mTop:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, p1, v0

    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    :cond_0
    return-void
.end method

.method greylist-max-o unFocus(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    :goto_0
    return-void
.end method

.method greylist-max-o updateLocalSystemUiVisibility(II)Z
    .locals 6

    invoke-super {p0, p1, p2}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    move-result v0

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v2, v3

    invoke-virtual {v4, p1, p2}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    move-result v5

    or-int/2addr v0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public whitelist updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-ne v0, p0, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

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
