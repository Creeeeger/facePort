.class public Landroid/view/accessibility/AccessibilityNodeInfo;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;,
        Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;,
        Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;,
        Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;,
        Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;,
        Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;,
        Landroid/view/accessibility/AccessibilityNodeInfo$PrefetchingStrategy;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_ACCESSIBILITY_FOCUS:I = 0x40

.field public static final greylist-max-o ACTION_ARGUMENT_ACCESSIBLE_CLICKABLE_SPAN:Ljava/lang/String; = "android.view.accessibility.action.ACTION_ARGUMENT_ACCESSIBLE_CLICKABLE_SPAN"

.field public static final whitelist ACTION_ARGUMENT_COLUMN_INT:Ljava/lang/String; = "android.view.accessibility.action.ARGUMENT_COLUMN_INT"

.field public static final whitelist ACTION_ARGUMENT_DIRECTION_INT:Ljava/lang/String; = "android.view.accessibility.action.ARGUMENT_DIRECTION_INT"

.field public static final whitelist ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN:Ljava/lang/String; = "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

.field public static final whitelist ACTION_ARGUMENT_HTML_ELEMENT_STRING:Ljava/lang/String; = "ACTION_ARGUMENT_HTML_ELEMENT_STRING"

.field public static final whitelist ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT:Ljava/lang/String; = "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

.field public static final whitelist ACTION_ARGUMENT_MOVE_WINDOW_X:Ljava/lang/String; = "ACTION_ARGUMENT_MOVE_WINDOW_X"

.field public static final whitelist ACTION_ARGUMENT_MOVE_WINDOW_Y:Ljava/lang/String; = "ACTION_ARGUMENT_MOVE_WINDOW_Y"

.field public static final whitelist ACTION_ARGUMENT_PRESS_AND_HOLD_DURATION_MILLIS_INT:Ljava/lang/String; = "android.view.accessibility.action.ARGUMENT_PRESS_AND_HOLD_DURATION_MILLIS_INT"

.field public static final whitelist ACTION_ARGUMENT_PROGRESS_VALUE:Ljava/lang/String; = "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

.field public static final whitelist ACTION_ARGUMENT_ROW_INT:Ljava/lang/String; = "android.view.accessibility.action.ARGUMENT_ROW_INT"

.field public static final whitelist ACTION_ARGUMENT_SCROLL_AMOUNT_FLOAT:Ljava/lang/String; = "android.view.accessibility.action.ARGUMENT_SCROLL_AMOUNT_FLOAT"

.field public static final whitelist ACTION_ARGUMENT_SELECTION_END_INT:Ljava/lang/String; = "ACTION_ARGUMENT_SELECTION_END_INT"

.field public static final whitelist ACTION_ARGUMENT_SELECTION_START_INT:Ljava/lang/String; = "ACTION_ARGUMENT_SELECTION_START_INT"

.field public static final whitelist ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE:Ljava/lang/String; = "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

.field public static final whitelist ACTION_CLEAR_ACCESSIBILITY_FOCUS:I = 0x80

.field public static final whitelist ACTION_CLEAR_FOCUS:I = 0x2

.field public static final whitelist ACTION_CLEAR_SELECTION:I = 0x8

.field public static final whitelist ACTION_CLICK:I = 0x10

.field public static final whitelist ACTION_COLLAPSE:I = 0x80000

.field public static final whitelist ACTION_COPY:I = 0x4000

.field public static final whitelist ACTION_CUT:I = 0x10000

.field public static final whitelist ACTION_DISMISS:I = 0x100000

.field public static final whitelist ACTION_EXPAND:I = 0x40000

.field public static final whitelist ACTION_FOCUS:I = 0x1

.field public static final whitelist ACTION_LONG_CLICK:I = 0x20

.field public static final whitelist ACTION_NEXT_AT_MOVEMENT_GRANULARITY:I = 0x100

.field public static final whitelist ACTION_NEXT_HTML_ELEMENT:I = 0x400

.field public static final whitelist ACTION_PASTE:I = 0x8000

.field public static final whitelist ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY:I = 0x200

.field public static final whitelist ACTION_PREVIOUS_HTML_ELEMENT:I = 0x800

.field public static final whitelist ACTION_SCROLL_BACKWARD:I = 0x2000

.field public static final whitelist ACTION_SCROLL_FORWARD:I = 0x1000

.field public static final whitelist ACTION_SELECT:I = 0x4

.field public static final whitelist ACTION_SET_SELECTION:I = 0x20000

.field public static final whitelist ACTION_SET_TEXT:I = 0x200000

.field private static final blacklist BOOLEAN_PROPERTY_ACCESSIBILITY_DATA_SENSITIVE:I = 0x2000000

.field private static final greylist-max-o BOOLEAN_PROPERTY_ACCESSIBILITY_FOCUSED:I = 0x400

.field private static final greylist-max-o BOOLEAN_PROPERTY_CHECKABLE:I = 0x1

.field private static final greylist-max-o BOOLEAN_PROPERTY_CHECKED:I = 0x2

.field private static final greylist-max-o BOOLEAN_PROPERTY_CLICKABLE:I = 0x20

.field private static final greylist-max-o BOOLEAN_PROPERTY_CONTENT_INVALID:I = 0x10000

.field private static final greylist-max-o BOOLEAN_PROPERTY_CONTEXT_CLICKABLE:I = 0x20000

.field private static final greylist-max-o BOOLEAN_PROPERTY_DISMISSABLE:I = 0x4000

.field private static final greylist-max-o BOOLEAN_PROPERTY_EDITABLE:I = 0x1000

.field private static final greylist-max-o BOOLEAN_PROPERTY_ENABLED:I = 0x80

.field private static final greylist-max-o BOOLEAN_PROPERTY_FOCUSABLE:I = 0x4

.field private static final greylist-max-o BOOLEAN_PROPERTY_FOCUSED:I = 0x8

.field private static final greylist-max-o BOOLEAN_PROPERTY_IMPORTANCE:I = 0x40000

.field private static final greylist-max-o BOOLEAN_PROPERTY_IS_HEADING:I = 0x200000

.field private static final greylist-max-o BOOLEAN_PROPERTY_IS_SHOWING_HINT:I = 0x100000

.field private static final blacklist BOOLEAN_PROPERTY_IS_TEXT_ENTRY_KEY:I = 0x400000

.field private static final blacklist BOOLEAN_PROPERTY_IS_TEXT_SELECTABLE:I = 0x800000

.field private static final greylist-max-o BOOLEAN_PROPERTY_LONG_CLICKABLE:I = 0x40

.field private static final greylist-max-o BOOLEAN_PROPERTY_MULTI_LINE:I = 0x8000

.field private static final greylist-max-o BOOLEAN_PROPERTY_OPENS_POPUP:I = 0x2000

.field private static final greylist-max-o BOOLEAN_PROPERTY_PASSWORD:I = 0x100

.field private static final blacklist BOOLEAN_PROPERTY_REQUEST_INITIAL_ACCESSIBILITY_FOCUS:I = 0x1000000

.field private static final greylist-max-o BOOLEAN_PROPERTY_SCREEN_READER_FOCUSABLE:I = 0x80000

.field private static final greylist-max-o BOOLEAN_PROPERTY_SCROLLABLE:I = 0x200

.field private static final greylist-max-o BOOLEAN_PROPERTY_SELECTED:I = 0x10

.field private static final blacklist BOOLEAN_PROPERTY_SUPPORTS_GRANULAR_SCROLLING:I = 0x4000000

.field private static final greylist-max-o BOOLEAN_PROPERTY_VISIBLE_TO_USER:I = 0x800

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEBUG:Z

.field private static final greylist-max-o DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

.field public static final whitelist EXTRA_DATA_RENDERING_INFO_KEY:Ljava/lang/String; = "android.view.accessibility.extra.DATA_RENDERING_INFO_KEY"

.field public static final greylist-max-o EXTRA_DATA_REQUESTED_KEY:Ljava/lang/String; = "android.view.accessibility.AccessibilityNodeInfo.extra_data_requested"

.field public static final whitelist EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_LENGTH:Ljava/lang/String; = "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_LENGTH"

.field public static final whitelist EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_MAX_LENGTH:I = 0x4e20

.field public static final whitelist EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_START_INDEX:Ljava/lang/String; = "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_START_INDEX"

.field public static final whitelist EXTRA_DATA_TEXT_CHARACTER_LOCATION_KEY:Ljava/lang/String; = "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY"

.field public static final whitelist FLAG_PREFETCH_ANCESTORS:I = 0x1

.field public static final whitelist FLAG_PREFETCH_DESCENDANTS_BREADTH_FIRST:I = 0x10

.field public static final whitelist FLAG_PREFETCH_DESCENDANTS_DEPTH_FIRST:I = 0x8

.field public static final whitelist FLAG_PREFETCH_DESCENDANTS_HYBRID:I = 0x4

.field public static final blacklist FLAG_PREFETCH_DESCENDANTS_MASK:I = 0x1c

.field public static final blacklist FLAG_PREFETCH_MASK:I = 0x3f

.field public static final whitelist FLAG_PREFETCH_SIBLINGS:I = 0x2

.field public static final whitelist FLAG_PREFETCH_UNINTERRUPTIBLE:I = 0x20

.field public static final blacklist FLAG_REPORT_MASK:I = 0x380

.field public static final blacklist FLAG_SERVICE_IS_ACCESSIBILITY_TOOL:I = 0x200

.field public static final blacklist FLAG_SERVICE_REQUESTS_INCLUDE_NOT_IMPORTANT_VIEWS:I = 0x80

.field public static final blacklist FLAG_SERVICE_REQUESTS_REPORT_VIEW_IDS:I = 0x100

.field public static final whitelist FOCUS_ACCESSIBILITY:I = 0x2

.field public static final whitelist FOCUS_INPUT:I = 0x1

.field private static final blacklist INVALID_ACTIONS_MASK:I = -0x400000

.field public static final greylist-max-o LAST_LEGACY_STANDARD_ACTION:I = 0x200000

.field public static final blacklist LEASHED_ITEM_ID:I = 0x7ffffffd

.field public static final blacklist LEASHED_NODE_ID:J

.field public static final whitelist MAX_NUMBER_OF_PREFETCHED_NODES:I = 0x32

.field public static final whitelist MOVEMENT_GRANULARITY_CHARACTER:I = 0x1

.field public static final whitelist MOVEMENT_GRANULARITY_LINE:I = 0x4

.field public static final whitelist MOVEMENT_GRANULARITY_PAGE:I = 0x10

.field public static final whitelist MOVEMENT_GRANULARITY_PARAGRAPH:I = 0x8

.field public static final whitelist MOVEMENT_GRANULARITY_WORD:I = 0x2

.field public static final greylist-max-o ROOT_ITEM_ID:I = 0x7ffffffe

.field public static final greylist-max-o ROOT_NODE_ID:J

.field public static final blacklist SEM_ACTION_AUTOSCROLL_DOWN:I = 0x2000000

.field public static final whitelist SEM_ACTION_AUTOSCROLL_OFF:I = 0x800000

.field public static final whitelist SEM_ACTION_AUTOSCROLL_ON:I = 0x400000

.field public static final whitelist SEM_ACTION_AUTOSCROLL_SPEED_DOWN:I = 0x20000000

.field public static final whitelist SEM_ACTION_AUTOSCROLL_SPEED_UP:I = 0x10000000

.field public static final whitelist SEM_ACTION_AUTOSCROLL_TOP:I = 0x4000000

.field public static final blacklist SEM_ACTION_AUTOSCROLL_UP:I = 0x1000000

.field private static final blacklist TAG:Ljava/lang/String; = "AccessibilityNodeInfo"

.field public static final greylist-max-o UNDEFINED_CONNECTION_ID:I = -0x1

.field public static final greylist-max-o UNDEFINED_ITEM_ID:I = 0x7fffffff

.field public static final greylist-max-o UNDEFINED_NODE_ID:J

.field public static final greylist-max-o UNDEFINED_SELECTION_INDEX:I = -0x1

.field private static final greylist-max-o VIRTUAL_DESCENDANT_ID_MASK:J = -0x100000000L

.field private static final greylist-max-o VIRTUAL_DESCENDANT_ID_SHIFT:I = 0x20


# instance fields
.field private greylist-max-o mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mBooleanProperties:I

.field private final greylist-max-o mBoundsInParent:Landroid/graphics/Rect;

.field private final greylist-max-o mBoundsInScreen:Landroid/graphics/Rect;

.field private final blacklist mBoundsInWindow:Landroid/graphics/Rect;

.field private greylist mChildNodeIds:Landroid/util/LongArray;

.field private greylist-max-o mClassName:Ljava/lang/CharSequence;

.field private greylist-max-o mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

.field private greylist-max-o mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

.field private greylist-max-o mConnectionId:I

.field private blacklist mContainerTitle:Ljava/lang/CharSequence;

.field private greylist-max-o mContentDescription:Ljava/lang/CharSequence;

.field private greylist-max-o mDrawingOrderInParent:I

.field private greylist-max-o mError:Ljava/lang/CharSequence;

.field private greylist-max-o mExtraDataKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

.field private greylist-max-o mExtras:Landroid/os/Bundle;

.field private greylist-max-o mHintText:Ljava/lang/CharSequence;

.field private greylist-max-o mInputType:I

.field private greylist-max-o mLabelForId:J

.field private greylist-max-o mLabeledById:J

.field private blacklist mLeashedChild:Landroid/os/IBinder;

.field private blacklist mLeashedParent:Landroid/os/IBinder;

.field private blacklist mLeashedParentNodeId:J

.field private greylist-max-o mLiveRegion:I

.field private greylist-max-o mMaxTextLength:I

.field private blacklist mMinDurationBetweenContentChanges:J

.field private greylist-max-o mMovementGranularities:I

.field private greylist-max-o mOriginalText:Ljava/lang/CharSequence;

.field private greylist-max-o mPackageName:Ljava/lang/CharSequence;

.field private greylist-max-o mPaneTitle:Ljava/lang/CharSequence;

.field private greylist-max-o mParentNodeId:J

.field private greylist-max-o mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

.field private greylist-max-r mSealed:Z

.field private greylist mSourceNodeId:J

.field private blacklist mStateDescription:Ljava/lang/CharSequence;

.field private greylist-max-o mText:Ljava/lang/CharSequence;

.field private greylist-max-o mTextSelectionEnd:I

.field private greylist-max-o mTextSelectionStart:I

.field private greylist-max-o mTooltipText:Ljava/lang/CharSequence;

.field private blacklist mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

.field private greylist-max-o mTraversalAfter:J

.field private greylist-max-o mTraversalBefore:J

.field private blacklist mUniqueId:Ljava/lang/String;

.field private greylist-max-o mViewIdResourceName:Ljava/lang/String;

.field private greylist-max-o mWindowId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$minitFromParcel(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->initFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetActionSymbolicName(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionSymbolicName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetNodeForAccessibilityId(IIJ)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(IIJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    const-string v0, "AccessibilityNodeInfo"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/view/accessibility/AccessibilityNodeInfo;->DEBUG:Z

    const v0, 0x7fffffff

    invoke-static {v0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v0

    sput-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    const v0, 0x7ffffffe

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v2

    sput-wide v2, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    const v0, 0x7ffffffd

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v0

    sput-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->LEASHED_NODE_ID:J

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$1;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$1;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityNodeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMinDurationBetweenContentChanges:J

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInWindow:Landroid/graphics/Rect;

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMinDurationBetweenContentChanges:J

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInWindow:Landroid/graphics/Rect;

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/View;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMinDurationBetweenContentChanges:J

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInWindow:Landroid/graphics/Rect;

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    invoke-virtual {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMinDurationBetweenContentChanges:J

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInWindow:Landroid/graphics/Rect;

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->init(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method private greylist-max-o addActionUnchecked(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private greylist-max-o addChildInternal(Landroid/view/View;IZ)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/LongArray;

    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    goto :goto_0

    :cond_1
    const v0, 0x7fffffff

    :goto_0
    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v1

    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    cmp-long v3, v1, v3

    if-nez v3, :cond_2

    const-string v3, "AccessibilityNodeInfo"

    const-string v4, "Rejecting attempt to make a View its own child"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    if-eqz p3, :cond_3

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/LongArray;->indexOf(J)I

    move-result v3

    if-ltz v3, :cond_3

    return-void

    :cond_3
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/LongArray;->add(J)V

    return-void
.end method

.method private greylist-max-o addStandardActions(J)V
    .locals 6

    move-wide v0, p1

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-wide/16 v2, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v4

    shl-long/2addr v2, v4

    not-long v4, v2

    and-long/2addr v0, v4

    invoke-static {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionSingletonBySerializationFlag(J)Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static blacklist canPerformRequestOverConnection(IIJ)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->usingDirectConnection(I)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    invoke-static {p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_2

    if-eq p0, v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method

.method private greylist-max-o clear()V
    .locals 1

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->init(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method private greylist-max-o enforceValidFocusDirection(I)V
    .locals 3

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x11 -> :sswitch_0
        0x21 -> :sswitch_0
        0x42 -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method private greylist-max-o enforceValidFocusType(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown focus type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist-max-r getAccessibilityViewId(J)I
    .locals 1

    long-to-int v0, p0

    return v0
.end method

.method private static greylist-max-o getActionSingleton(I)Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .locals 4

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->sStandardActions:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->sStandardActions:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v3

    if-ne p0, v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static greylist-max-o getActionSingletonBySerializationFlag(J)Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .locals 5

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->sStandardActions:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->sStandardActions:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-wide v3, v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->mSerializationFlag:J

    cmp-long v3, p0, v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static greylist-max-o getActionSymbolicName(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const v0, 0x1020058

    if-ne p0, v0, :cond_0

    const-string v0, "ACTION_SHOW_TEXT_SUGGESTIONS"

    return-object v0

    :sswitch_0
    const-string v0, "ACTION_CANCEL_DRAG"

    return-object v0

    :sswitch_1
    const-string v0, "ACTION_DROP"

    return-object v0

    :sswitch_2
    const-string v0, "ACTION_DRAG"

    return-object v0

    :sswitch_3
    const-string v0, "ACTION_IME_ENTER"

    return-object v0

    :sswitch_4
    const-string v0, "ACTION_PRESS_AND_HOLD"

    return-object v0

    :sswitch_5
    const-string v0, "ACTION_PAGE_RIGHT"

    return-object v0

    :sswitch_6
    const-string v0, "ACTION_PAGE_LEFT"

    return-object v0

    :sswitch_7
    const-string v0, "ACTION_PAGE_DOWN"

    return-object v0

    :sswitch_8
    const-string v0, "ACTION_PAGE_UP"

    return-object v0

    :sswitch_9
    const-string v0, "ACTION_HIDE_TOOLTIP"

    return-object v0

    :sswitch_a
    const-string v0, "ACTION_SHOW_TOOLTIP"

    return-object v0

    :sswitch_b
    const-string v0, "ACTION_SET_PROGRESS"

    return-object v0

    :sswitch_c
    const-string v0, "ACTION_CONTEXT_CLICK"

    return-object v0

    :sswitch_d
    const-string v0, "ACTION_SCROLL_RIGHT"

    return-object v0

    :sswitch_e
    const-string v0, "ACTION_SCROLL_DOWN"

    return-object v0

    :sswitch_f
    const-string v0, "ACTION_SCROLL_LEFT"

    return-object v0

    :sswitch_10
    const-string v0, "ACTION_SCROLL_UP"

    return-object v0

    :sswitch_11
    const-string v0, "ACTION_SCROLL_TO_POSITION"

    return-object v0

    :sswitch_12
    const-string v0, "ACTION_SHOW_ON_SCREEN"

    return-object v0

    :sswitch_13
    const-string v0, "ACTION_SET_TEXT"

    return-object v0

    :sswitch_14
    const-string v0, "ACTION_DISMISS"

    return-object v0

    :sswitch_15
    const-string v0, "ACTION_COLLAPSE"

    return-object v0

    :sswitch_16
    const-string v0, "ACTION_EXPAND"

    return-object v0

    :sswitch_17
    const-string v0, "ACTION_SET_SELECTION"

    return-object v0

    :sswitch_18
    const-string v0, "ACTION_CUT"

    return-object v0

    :sswitch_19
    const-string v0, "ACTION_PASTE"

    return-object v0

    :sswitch_1a
    const-string v0, "ACTION_COPY"

    return-object v0

    :sswitch_1b
    const-string v0, "ACTION_SCROLL_BACKWARD"

    return-object v0

    :sswitch_1c
    const-string v0, "ACTION_SCROLL_FORWARD"

    return-object v0

    :sswitch_1d
    const-string v0, "ACTION_PREVIOUS_HTML_ELEMENT"

    return-object v0

    :sswitch_1e
    const-string v0, "ACTION_NEXT_HTML_ELEMENT"

    return-object v0

    :sswitch_1f
    const-string v0, "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY"

    return-object v0

    :sswitch_20
    const-string v0, "ACTION_NEXT_AT_MOVEMENT_GRANULARITY"

    return-object v0

    :sswitch_21
    const-string v0, "ACTION_CLEAR_ACCESSIBILITY_FOCUS"

    return-object v0

    :sswitch_22
    const-string v0, "ACTION_ACCESSIBILITY_FOCUS"

    return-object v0

    :sswitch_23
    const-string v0, "ACTION_LONG_CLICK"

    return-object v0

    :sswitch_24
    const-string v0, "ACTION_CLICK"

    return-object v0

    :sswitch_25
    const-string v0, "ACTION_CLEAR_SELECTION"

    return-object v0

    :sswitch_26
    const-string v0, "ACTION_SELECT"

    return-object v0

    :sswitch_27
    const-string v0, "ACTION_CLEAR_FOCUS"

    return-object v0

    :sswitch_28
    const-string v0, "ACTION_FOCUS"

    return-object v0

    :cond_0
    const v0, 0x102005e

    if-ne p0, v0, :cond_1

    const-string v0, "ACTION_SCROLL_IN_DIRECTION"

    return-object v0

    :cond_1
    const-string v0, "ACTION_UNKNOWN"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_28
        0x2 -> :sswitch_27
        0x4 -> :sswitch_26
        0x8 -> :sswitch_25
        0x10 -> :sswitch_24
        0x20 -> :sswitch_23
        0x40 -> :sswitch_22
        0x80 -> :sswitch_21
        0x100 -> :sswitch_20
        0x200 -> :sswitch_1f
        0x400 -> :sswitch_1e
        0x800 -> :sswitch_1d
        0x1000 -> :sswitch_1c
        0x2000 -> :sswitch_1b
        0x4000 -> :sswitch_1a
        0x8000 -> :sswitch_19
        0x10000 -> :sswitch_18
        0x20000 -> :sswitch_17
        0x40000 -> :sswitch_16
        0x80000 -> :sswitch_15
        0x100000 -> :sswitch_14
        0x200000 -> :sswitch_13
        0x1020036 -> :sswitch_12
        0x1020037 -> :sswitch_11
        0x1020038 -> :sswitch_10
        0x1020039 -> :sswitch_f
        0x102003a -> :sswitch_e
        0x102003b -> :sswitch_d
        0x102003c -> :sswitch_c
        0x102003d -> :sswitch_b
        0x1020044 -> :sswitch_a
        0x1020045 -> :sswitch_9
        0x1020046 -> :sswitch_8
        0x1020047 -> :sswitch_7
        0x1020048 -> :sswitch_6
        0x1020049 -> :sswitch_5
        0x102004a -> :sswitch_4
        0x1020054 -> :sswitch_3
        0x1020055 -> :sswitch_2
        0x1020056 -> :sswitch_1
        0x1020057 -> :sswitch_0
    .end sparse-switch
.end method

.method private greylist-max-o getBooleanProperty(I)Z
    .locals 1

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static greylist-max-o getMovementGranularitySymbolicName(I)Ljava/lang/String;
    .locals 3

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown movement granularity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const-string v0, "MOVEMENT_GRANULARITY_PAGE"

    return-object v0

    :sswitch_1
    const-string v0, "MOVEMENT_GRANULARITY_PARAGRAPH"

    return-object v0

    :sswitch_2
    const-string v0, "MOVEMENT_GRANULARITY_LINE"

    return-object v0

    :sswitch_3
    const-string v0, "MOVEMENT_GRANULARITY_WORD"

    return-object v0

    :sswitch_4
    const-string v0, "MOVEMENT_GRANULARITY_CHARACTER"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x4 -> :sswitch_2
        0x8 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method private static blacklist getNodeForAccessibilityId(IIJ)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    const/4 v0, 0x7

    invoke-static {p0, p1, p2, p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getNodeForAccessibilityId(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 9

    invoke-static {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(IIJ)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move v2, p0

    move v3, p1

    move-wide v4, p2

    move v7, p4

    invoke-virtual/range {v1 .. v8}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getNodeForAccessibilityId(ILandroid/os/IBinder;J)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    const/4 v0, 0x7

    invoke-static {p0, p1, p2, p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(ILandroid/os/IBinder;JI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getNodeForAccessibilityId(ILandroid/os/IBinder;JI)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 9

    if-eqz p1, :cond_1

    invoke-static {p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v7, p4

    invoke-virtual/range {v1 .. v8}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(ILandroid/os/IBinder;JZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    return-object v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static greylist-max-r getVirtualDescendantId(J)I
    .locals 3

    const-wide v0, -0x100000000L

    and-long/2addr v0, p0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static greylist-max-o idItemToString(I)Ljava/lang/String;
    .locals 2

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string v0, "UNDEFINED"

    return-object v0

    :sswitch_1
    const-string v0, "ROOT"

    return-object v0

    :sswitch_2
    const-string v0, "HOST"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_2
        0x7ffffffe -> :sswitch_1
        0x7fffffff -> :sswitch_0
    .end sparse-switch
.end method

.method public static greylist-max-o idToString(J)Ljava/lang/String;
    .locals 4

    invoke-static {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    invoke-static {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->idItemToString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->idItemToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->idItemToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method private greylist-max-o init(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6

    iget-boolean v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mMinDurationBetweenContentChanges:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMinDurationBetweenContentChanges:J

    iget v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mUniqueId:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mUniqueId:Ljava/lang/String;

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInWindow:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInWindow:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mOriginalText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mOriginalText:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mHintText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mHintText:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mStateDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mStateDescription:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mPaneTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPaneTitle:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mTooltipText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTooltipText:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mContainerTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContainerTitle:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    :goto_0
    iget v1, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    iget v1, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    iget v1, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v1}, Landroid/util/LongArray;->clear()V

    :cond_3
    iget-object v1, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/util/LongArray;->size()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    if-nez v2, :cond_4

    invoke-virtual {v1}, Landroid/util/LongArray;->clone()Landroid/util/LongArray;

    move-result-object v2

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    goto :goto_1

    :cond_4
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v2, v1}, Landroid/util/LongArray;->addAll(Landroid/util/LongArray;)V

    :cond_5
    :goto_1
    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraDataKeys:Ljava/util/ArrayList;

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraDataKeys:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    new-instance v2, Landroid/os/Bundle;

    iget-object v4, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    invoke-direct {v2, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_2

    :cond_6
    move-object v2, v3

    :goto_2
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->initCopyInfos(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    if-eqz v2, :cond_7

    new-instance v3, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->-$$Nest$fgetmTargetMap(Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;)Landroid/util/ArrayMap;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;-><init>(Landroid/util/ArrayMap;Z)V

    goto :goto_3

    :cond_7
    nop

    :goto_3
    iput-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    iget-object v3, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedChild:Landroid/os/IBinder;

    iput-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedChild:Landroid/os/IBinder;

    iget-object v3, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParent:Landroid/os/IBinder;

    iput-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParent:Landroid/os/IBinder;

    iget-wide v3, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    iput-wide v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    return-void
.end method

.method private blacklist initCopyInfos(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 11

    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->-$$Nest$fgetmType(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)I

    move-result v3

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->-$$Nest$fgetmMin(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)F

    move-result v4

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->-$$Nest$fgetmMax(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)F

    move-result v5

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->-$$Nest$fgetmCurrent(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)F

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;-><init>(IFFF)V

    :goto_0
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    if-nez v2, :cond_1

    move-object v10, v1

    goto :goto_1

    :cond_1
    new-instance v10, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->-$$Nest$fgetmRowCount(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)I

    move-result v4

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->-$$Nest$fgetmColumnCount(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)I

    move-result v5

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->-$$Nest$fgetmHierarchical(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)Z

    move-result v6

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->-$$Nest$fgetmSelectionMode(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)I

    move-result v7

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->-$$Nest$fgetmItemCount(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)I

    move-result v8

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->-$$Nest$fgetmImportantForAccessibilityItemCount(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)I

    move-result v9

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;-><init>(IIZIII)V

    :goto_1
    iput-object v10, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    iget-object v3, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;

    invoke-direct {v4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;-><init>()V

    if-nez v3, :cond_2

    move-object v5, v1

    goto :goto_2

    :cond_2
    invoke-static {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->-$$Nest$fgetmRowTitle(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;->setRowTitle(Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;

    move-result-object v5

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->-$$Nest$fgetmRowIndex(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;->setRowIndex(I)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;

    move-result-object v5

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->-$$Nest$fgetmRowSpan(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;->setRowSpan(I)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;

    move-result-object v5

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->-$$Nest$fgetmColumnTitle(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;->setColumnTitle(Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;

    move-result-object v5

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->-$$Nest$fgetmColumnIndex(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;->setColumnIndex(I)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;

    move-result-object v5

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->-$$Nest$fgetmColumnSpan(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;->setColumnSpan(I)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;

    move-result-object v5

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->-$$Nest$fgetmHeading(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;->setHeading(Z)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;

    move-result-object v5

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->-$$Nest$fgetmSelected(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;->setSelected(Z)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;->build()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v5

    :goto_2
    iput-object v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    iget-object v5, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    new-instance v6, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    invoke-direct {v6, v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo-IA;)V

    move-object v1, v6

    :goto_3
    iput-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    return-void
.end method

.method private greylist-max-o initFromParcel(Landroid/os/Parcel;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    const/4 v4, 0x0

    add-int/lit8 v5, v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v7, :cond_0

    move v4, v7

    goto :goto_0

    :cond_0
    move v4, v6

    goto :goto_0

    :cond_1
    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-boolean v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    :goto_0
    nop

    add-int/lit8 v8, v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    iput-wide v9, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    :cond_2
    add-int/lit8 v5, v8, 0x1

    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    :cond_3
    add-int/lit8 v8, v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    iput-wide v9, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    :cond_4
    add-int/lit8 v5, v8, 0x1

    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    iput-wide v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    :cond_5
    add-int/lit8 v8, v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    iput-wide v9, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    :cond_6
    add-int/lit8 v5, v8, 0x1

    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    iput-wide v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    :cond_7
    add-int/lit8 v8, v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    iput-wide v9, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    :cond_8
    add-int/lit8 v5, v8, 0x1

    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    iput-wide v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMinDurationBetweenContentChanges:J

    :cond_9
    add-int/lit8 v8, v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    :cond_a
    add-int/lit8 v5, v8, 0x1

    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-gtz v8, :cond_b

    iput-object v9, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    goto :goto_2

    :cond_b
    new-instance v10, Landroid/util/LongArray;

    invoke-direct {v10, v8}, Landroid/util/LongArray;-><init>(I)V

    iput-object v10, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v8, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    iget-object v13, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v13, v11, v12}, Landroid/util/LongArray;->add(J)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_c
    :goto_2
    add-int/lit8 v8, v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v5, Landroid/graphics/Rect;->top:I

    iget-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v5, Landroid/graphics/Rect;->left:I

    iget-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v5, Landroid/graphics/Rect;->right:I

    :cond_d
    add-int/lit8 v5, v8, 0x1

    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v8, Landroid/graphics/Rect;->top:I

    iget-object v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v8, Landroid/graphics/Rect;->left:I

    iget-object v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v8, Landroid/graphics/Rect;->right:I

    :cond_e
    add-int/lit8 v8, v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInWindow:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v5, Landroid/graphics/Rect;->top:I

    iget-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInWindow:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInWindow:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v5, Landroid/graphics/Rect;->left:I

    iget-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInWindow:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v5, Landroid/graphics/Rect;->right:I

    :cond_f
    add-int/lit8 v5, v8, 0x1

    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    invoke-direct {v0, v10, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->addStandardActions(J)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v8, :cond_10

    sget-object v13, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v13, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v0, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->addActionUnchecked(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_10
    add-int/lit8 v8, v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    :cond_11
    add-int/lit8 v5, v8, 0x1

    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    :cond_12
    add-int/lit8 v8, v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    :cond_13
    add-int/lit8 v5, v8, 0x1

    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    :cond_14
    add-int/lit8 v8, v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    :cond_15
    add-int/lit8 v5, v8, 0x1

    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    :cond_16
    add-int/lit8 v8, v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mHintText:Ljava/lang/CharSequence;

    :cond_17
    add-int/lit8 v5, v8, 0x1

    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_18

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    :cond_18
    add-int/lit8 v8, v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mStateDescription:Ljava/lang/CharSequence;

    :cond_19
    add-int/lit8 v5, v8, 0x1

    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    :cond_1a
    add-int/lit8 v8, v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPaneTitle:Ljava/lang/CharSequence;

    :cond_1b
    add-int/lit8 v5, v8, 0x1

    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_1c

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTooltipText:Ljava/lang/CharSequence;

    :cond_1c
    add-int/lit8 v8, v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContainerTitle:Ljava/lang/CharSequence;

    :cond_1d
    add-int/lit8 v5, v8, 0x1

    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_1e

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    :cond_1e
    add-int/lit8 v8, v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mUniqueId:Ljava/lang/String;

    :cond_1f
    add-int/lit8 v5, v8, 0x1

    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_20

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    :cond_20
    add-int/lit8 v8, v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    :cond_21
    add-int/lit8 v5, v8, 0x1

    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_22

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    :cond_22
    add-int/lit8 v8, v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    :cond_23
    add-int/lit8 v5, v8, 0x1

    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_24

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    :cond_24
    add-int/lit8 v8, v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v5

    goto :goto_4

    :cond_25
    move-object v5, v9

    :goto_4
    iput-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraDataKeys:Ljava/util/ArrayList;

    add-int/lit8 v5, v8, 0x1

    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_26

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v8

    goto :goto_5

    :cond_26
    move-object v8, v9

    :goto_5
    iput-object v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    add-int/lit8 v8, v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_27

    new-instance v5, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v13

    invoke-direct {v5, v10, v11, v12, v13}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;-><init>(IFFF)V

    goto :goto_6

    :cond_27
    move-object v5, v9

    :goto_6
    iput-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    add-int/lit8 v5, v8, 0x1

    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_29

    new-instance v8, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-ne v10, v7, :cond_28

    move v13, v7

    goto :goto_7

    :cond_28
    move v13, v6

    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object v10, v8

    invoke-direct/range {v10 .. v16}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;-><init>(IIZIII)V

    goto :goto_8

    :cond_29
    move-object v8, v9

    :goto_8
    iput-object v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    add-int/lit8 v8, v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_2c

    new-instance v5, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-ne v10, v7, :cond_2a

    move/from16 v17, v7

    goto :goto_9

    :cond_2a
    move/from16 v17, v6

    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-ne v10, v7, :cond_2b

    move/from16 v18, v7

    goto :goto_a

    :cond_2b
    move/from16 v18, v6

    :goto_a
    move-object v10, v5

    invoke-direct/range {v10 .. v18}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;-><init>(Ljava/lang/String;IILjava/lang/String;IIZZ)V

    goto :goto_b

    :cond_2c
    move-object v5, v9

    :goto_b
    iput-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    add-int/lit8 v5, v8, 0x1

    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v6

    if-eqz v6, :cond_2d

    sget-object v6, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    iput-object v6, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    :cond_2d
    add-int/lit8 v6, v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_2e

    new-instance v5, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    invoke-direct {v5, v9, v9}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo-IA;)V

    iput-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    iget-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Size;

    invoke-static {v5, v7}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->-$$Nest$fputmLayoutSize(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;Landroid/util/Size;)V

    iget-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    invoke-static {v5, v7}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->-$$Nest$fputmTextSizeInPx(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;F)V

    iget-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-static {v5, v7}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->-$$Nest$fputmTextSizeUnit(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;I)V

    :cond_2e
    add-int/lit8 v5, v6, 0x1

    invoke-static {v2, v3, v6}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v6

    if-eqz v6, :cond_2f

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    iput-object v6, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedChild:Landroid/os/IBinder;

    :cond_2f
    add-int/lit8 v6, v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParent:Landroid/os/IBinder;

    :cond_30
    add-int/lit8 v5, v6, 0x1

    invoke-static {v2, v3, v6}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v6

    if-eqz v6, :cond_31

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    :cond_31
    iput-boolean v4, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    return-void
.end method

.method private static greylist-max-o isDefaultStandardAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z
    .locals 4

    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->mSerializationFlag:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static greylist-max-o makeNodeId(II)J
    .locals 4

    int-to-long v0, p1

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static whitelist obtain()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>()V

    return-object v0
.end method

.method public static whitelist obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static whitelist obtain(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v0, p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/View;I)V

    return-object v0
.end method

.method public static whitelist obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-object v0
.end method

.method private blacklist replaceClickableSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 9

    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroid/text/style/ClickableSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ClickableSpan;

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    array-length v2, v0

    if-nez v2, :cond_0

    return-object p1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_4

    aget-object v3, v0, v2

    instance-of v4, v3, Landroid/text/style/AccessibilityClickableSpan;

    if-nez v4, :cond_4

    instance-of v4, v3, Landroid/text/style/AccessibilityURLSpan;

    if-eqz v4, :cond_1

    goto :goto_3

    :cond_1
    invoke-interface {v1, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v1, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v1, v3}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    if-gez v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    instance-of v7, v3, Landroid/text/style/URLSpan;

    if-eqz v7, :cond_3

    new-instance v7, Landroid/text/style/AccessibilityURLSpan;

    move-object v8, v3

    check-cast v8, Landroid/text/style/URLSpan;

    invoke-direct {v7, v8}, Landroid/text/style/AccessibilityURLSpan;-><init>(Landroid/text/style/URLSpan;)V

    goto :goto_1

    :cond_3
    new-instance v7, Landroid/text/style/AccessibilityClickableSpan;

    invoke-virtual {v3}, Landroid/text/style/ClickableSpan;->getId()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/AccessibilityClickableSpan;-><init>(I)V

    :goto_1
    nop

    invoke-interface {v1, v7, v4, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return-object v1
.end method

.method private blacklist replaceReplacementSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 9

    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroid/text/style/ReplacementSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ReplacementSpan;

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    array-length v2, v0

    if-nez v2, :cond_0

    return-object p1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_4

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/text/style/ReplacementSpan;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    instance-of v5, v3, Landroid/text/style/AccessibilityReplacementSpan;

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    if-gez v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    new-instance v8, Landroid/text/style/AccessibilityReplacementSpan;

    invoke-direct {v8, v4}, Landroid/text/style/AccessibilityReplacementSpan;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v8, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-object v1
.end method

.method private greylist-max-o setBooleanProperty(IZ)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    if-eqz p2, :cond_0

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    :goto_0
    return-void
.end method

.method private static blacklist usingDirectConnection(I)Z
    .locals 1

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    instance-of v0, v0, Landroid/view/accessibility/DirectAccessibilityConnection;

    return v0
.end method


# virtual methods
.method public whitelist addAction(I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    const/high16 v0, -0x400000

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addStandardActions(J)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action is not a combination of the standard actions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addActionUnchecked(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method public blacklist addChild(Landroid/os/IBinder;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/LongArray;

    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    :cond_1
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedChild:Landroid/os/IBinder;

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->LEASHED_NODE_ID:J

    invoke-virtual {v0, v1, v2}, Landroid/util/LongArray;->indexOf(J)I

    move-result v0

    if-ltz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->LEASHED_NODE_ID:J

    invoke-virtual {v0, v1, v2}, Landroid/util/LongArray;->add(J)V

    return-void
.end method

.method public whitelist addChild(Landroid/view/View;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChildInternal(Landroid/view/View;IZ)V

    return-void
.end method

.method public whitelist addChild(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChildInternal(Landroid/view/View;IZ)V

    return-void
.end method

.method public greylist-max-o addChildUnchecked(Landroid/view/View;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChildInternal(Landroid/view/View;IZ)V

    return-void
.end method

.method public whitelist canOpenPopup()Z
    .locals 1

    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected greylist-max-o enforceNotSealed()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSealed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this action on a sealed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected greylist-max-o enforceSealed()V
    .locals 2

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->usingDirectConnection(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSealed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this action on a not sealed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    iget-wide v5, v2, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    return v1

    :cond_3
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget v4, v2, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    if-eq v3, v4, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public whitelist findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(IIJ)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    move-object v1, v0

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfosByText(IIJLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    if-nez p1, :cond_0

    const-string v0, "AccessibilityNodeInfo"

    const-string/jumbo v1, "returns empty list due to null viewId."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(IIJ)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    move-object v1, v0

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfosByViewId(IIJLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceValidFocusType(I)V

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(IIJ)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->findFocus(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist focusSearch(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceValidFocusDirection(I)V

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(IIJ)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->focusSearch(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getActionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getActions()I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v3

    const/high16 v4, 0x200000

    if-gt v3, v4, :cond_1

    or-int/2addr v0, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public whitelist getAvailableExtraData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraDataKeys:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraDataKeys:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getBoundsInParent(Landroid/graphics/Rect;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public greylist-max-o getBoundsInScreen()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist getBoundsInScreen(Landroid/graphics/Rect;)V
    .locals 4

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public blacklist getBoundsInWindow()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInWindow:Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist getBoundsInWindow(Landroid/graphics/Rect;)V
    .locals 4

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInWindow:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInWindow:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInWindow:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInWindow:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public whitelist getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(II)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getChild(II)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 12

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v0, v2, v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(IIJ)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v0, p1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v9

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v11

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedChild:Landroid/os/IBinder;

    if-eqz v0, :cond_2

    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->LEASHED_NODE_ID:J

    cmp-long v0, v9, v0

    if-nez v0, :cond_2

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedChild:Landroid/os/IBinder;

    sget-wide v3, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, v11

    move v6, p2

    invoke-virtual/range {v0 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(ILandroid/os/IBinder;JZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    :cond_2
    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, v11

    move-wide v4, v9

    move v7, p2

    invoke-virtual/range {v1 .. v8}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getChildCount()I
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v0}, Landroid/util/LongArray;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public greylist-max-o getChildId(I)J
    .locals 2

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v0, p1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public greylist-max-o getChildNodeIds()Landroid/util/LongArray;
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    return-object v0
.end method

.method public whitelist getClassName()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getCollectionInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    return-object v0
.end method

.method public whitelist getCollectionItemInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    return-object v0
.end method

.method public greylist-max-o getConnectionId()I
    .locals 1

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    return v0
.end method

.method public whitelist getContainerTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContainerTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getDrawingOrder()I
    .locals 1

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    return v0
.end method

.method public whitelist getError()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getExtraRenderingInfo()Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getHintText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mHintText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getInputType()I
    .locals 1

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    return v0
.end method

.method public whitelist getLabelFor()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 4

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(IIJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLabeledBy()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 4

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(IIJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLeashedParent()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParent:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getLeashedParentNodeId()J
    .locals 2

    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    return-wide v0
.end method

.method public whitelist getLiveRegion()I
    .locals 1

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    return v0
.end method

.method public whitelist getMaxTextLength()I
    .locals 1

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    return v0
.end method

.method public whitelist getMinDurationBetweenContentChanges()Ljava/time/Duration;
    .locals 2

    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMinDurationBetweenContentChanges:J

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMovementGranularities()I
    .locals 1

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    return v0
.end method

.method public greylist-max-o getOriginalText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mOriginalText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getPaneTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPaneTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getParent()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 5

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParent:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    sget-wide v2, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParent:Landroid/os/IBinder;

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    const/4 v4, 0x3

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(ILandroid/os/IBinder;JI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(IIJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getParent(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 4

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParent:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    sget-wide v2, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParent:Landroid/os/IBinder;

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(ILandroid/os/IBinder;JI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getParentNodeId()J
    .locals 2

    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    return-wide v0
.end method

.method public whitelist getRangeInfo()Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    return-object v0
.end method

.method public greylist getSourceNodeId()J
    .locals 2

    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    return-wide v0
.end method

.method public whitelist getStateDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mStateDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .locals 5

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroid/text/style/AccessibilityClickableSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/AccessibilityClickableSpan;

    const/4 v2, 0x0

    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    aget-object v4, v1, v2

    invoke-virtual {v4, p0}, Landroid/text/style/AccessibilityClickableSpan;->copyConnectionDataFrom(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v4, Landroid/text/style/AccessibilityURLSpan;

    invoke-interface {v0, v3, v2, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/AccessibilityURLSpan;

    const/4 v3, 0x0

    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_1

    aget-object v4, v2, v3

    invoke-virtual {v4, p0}, Landroid/text/style/AccessibilityURLSpan;->copyConnectionDataFrom(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTextSelectionEnd()I
    .locals 1

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    return v0
.end method

.method public whitelist getTextSelectionStart()I
    .locals 1

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    return v0
.end method

.method public whitelist getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTooltipText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTouchDelegateInfo()Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;
    .locals 2

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->-$$Nest$msetConnectionId(Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;I)V

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->-$$Nest$msetWindowId(Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;I)V

    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    return-object v0
.end method

.method public whitelist getTraversalAfter()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 4

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(IIJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTraversalBefore()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 4

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(IIJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getUniqueId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getViewIdResourceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getWindow()Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 4

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(IIJ)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindow(II)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getWindowId()I
    .locals 1

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    return v0
.end method

.method public greylist-max-o hasExtras()Z
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist hasRequestInitialAccessibilityFocus()Z
    .locals 1

    const/high16 v0, 0x1000000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 5

    const/16 v0, 0x1f

    const/4 v1, 0x1

    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v3

    add-int/2addr v2, v3

    mul-int/lit8 v1, v2, 0x1f

    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v3

    add-int/2addr v1, v3

    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    add-int/2addr v2, v3

    return v2
.end method

.method public whitelist isAccessibilityDataSensitive()Z
    .locals 1

    const/high16 v0, 0x2000000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isAccessibilityFocused()Z
    .locals 1

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isCheckable()Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isChecked()Z
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isClickable()Z
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isContentInvalid()Z
    .locals 1

    const/high16 v0, 0x10000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isContextClickable()Z
    .locals 1

    const/high16 v0, 0x20000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isDismissable()Z
    .locals 1

    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isEditable()Z
    .locals 1

    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isEnabled()Z
    .locals 1

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isFocusable()Z
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isFocused()Z
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isGranularScrollingSupported()Z
    .locals 1

    const/high16 v0, 0x4000000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isHeading()Z
    .locals 3

    const/high16 v0, 0x200000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getCollectionItemInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->-$$Nest$fgetmHeading(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist isImportantForAccessibility()Z
    .locals 1

    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isLongClickable()Z
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isMultiLine()Z
    .locals 1

    const v0, 0x8000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isPassword()Z
    .locals 1

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isScreenReaderFocusable()Z
    .locals 1

    const/high16 v0, 0x80000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isScrollable()Z
    .locals 1

    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public greylist isSealed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    return v0
.end method

.method public whitelist isSelected()Z
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isShowingHintText()Z
    .locals 1

    const/high16 v0, 0x100000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isTextEntryKey()Z
    .locals 1

    const/high16 v0, 0x400000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isTextSelectable()Z
    .locals 1

    const/high16 v0, 0x800000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isVisibleToUser()Z
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist performAction(I)Z
    .locals 9

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(IIJ)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    move-object v8, v1

    goto :goto_0

    :cond_1
    move-object v8, v1

    :goto_0
    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    move-object v1, v0

    move v6, p1

    move-object v7, v8

    invoke-virtual/range {v1 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->performAccessibilityAction(IIJILandroid/os/Bundle;)Z

    move-result v1

    return v1
.end method

.method public whitelist performAction(ILandroid/os/Bundle;)Z
    .locals 8

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(IIJ)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    move-object v1, v0

    move v6, p1

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->performAccessibilityAction(IIJILandroid/os/Bundle;)Z

    move-result v1

    return v1
.end method

.method public whitelist recycle()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public whitelist refresh()Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->refresh(Landroid/os/Bundle;Z)Z

    move-result v0

    return v0
.end method

.method public greylist-max-r refresh(Landroid/os/Bundle;Z)Z
    .locals 10

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(IIJ)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    const/4 v8, 0x0

    move-object v2, v0

    move v7, p2

    move-object v9, p1

    invoke-virtual/range {v2 .. v9}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->init(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v1, 0x1

    return v1
.end method

.method public whitelist refreshWithExtraData(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 3

    const/4 v0, -0x1

    const-string v1, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_LENGTH"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x4e20

    if-le v0, v2, :cond_0

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const-string v0, "android.view.accessibility.AccessibilityNodeInfo.extra_data_requested"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->refresh(Landroid/os/Bundle;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist removeAction(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionSingleton(I)Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    return-void
.end method

.method public whitelist removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o removeAllActions()V
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public blacklist removeChild(Landroid/os/IBinder;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedChild:Landroid/os/IBinder;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedChild:Landroid/os/IBinder;

    invoke-interface {v0, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    sget-wide v2, Landroid/view/accessibility/AccessibilityNodeInfo;->LEASHED_NODE_ID:J

    invoke-virtual {v0, v2, v3}, Landroid/util/LongArray;->indexOf(J)I

    move-result v0

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedChild:Landroid/os/IBinder;

    if-gez v0, :cond_2

    return v1

    :cond_2
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v1, v0}, Landroid/util/LongArray;->remove(I)V

    const/4 v1, 0x1

    return v1

    :cond_3
    :goto_0
    return v1
.end method

.method public whitelist removeChild(Landroid/view/View;)Z
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeChild(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public whitelist removeChild(Landroid/view/View;I)Z
    .locals 6

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v2

    goto :goto_0

    :cond_1
    const v2, 0x7fffffff

    :goto_0
    invoke-static {v2, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/util/LongArray;->indexOf(J)I

    move-result v5

    if-gez v5, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0, v5}, Landroid/util/LongArray;->remove(I)V

    const/4 v1, 0x1

    return v1
.end method

.method public whitelist setAccessibilityDataSensitive(Z)V
    .locals 1

    const/high16 v0, 0x2000000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public whitelist setAccessibilityFocused(Z)V
    .locals 1

    const/16 v0, 0x400

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public whitelist setAvailableExtraData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraDataKeys:Ljava/util/ArrayList;

    return-void
.end method

.method public whitelist setBoundsInParent(Landroid/graphics/Rect;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public whitelist setBoundsInScreen(Landroid/graphics/Rect;)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public whitelist setBoundsInWindow(Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInWindow:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public whitelist setCanOpenPopup(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    const/16 v0, 0x2000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public whitelist setCheckable(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public whitelist setChecked(Z)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public whitelist setClassName(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    return-void
.end method

.method public whitelist setClickable(Z)V
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public whitelist setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    return-void
.end method

.method public whitelist setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    return-void
.end method

.method public greylist-max-o setConnectionId(I)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    return-void
.end method

.method public whitelist setContainerTitle(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContainerTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public whitelist setContentDescription(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method public whitelist setContentInvalid(Z)V
    .locals 1

    const/high16 v0, 0x10000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public whitelist setContextClickable(Z)V
    .locals 1

    const/high16 v0, 0x20000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public whitelist setDismissable(Z)V
    .locals 1

    const/16 v0, 0x4000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public whitelist setDrawingOrder(I)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    return-void
.end method

.method public whitelist setEditable(Z)V
    .locals 1

    const/16 v0, 0x1000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public whitelist setEnabled(Z)V
    .locals 1

    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public whitelist setError(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    return-void
.end method

.method public blacklist setExtraRenderingInfo(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    return-void
.end method

.method public whitelist setFocusable(Z)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public whitelist setFocused(Z)V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public whitelist setGranularScrollingSupported(Z)V
    .locals 1

    const/high16 v0, 0x4000000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public whitelist setHeading(Z)V
    .locals 1

    const/high16 v0, 0x200000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public whitelist setHintText(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mHintText:Ljava/lang/CharSequence;

    return-void
.end method

.method public whitelist setImportantForAccessibility(Z)V
    .locals 1

    const/high16 v0, 0x40000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public whitelist setInputType(I)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    return-void
.end method

.method public whitelist setLabelFor(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabelFor(Landroid/view/View;I)V

    return-void
.end method

.method public whitelist setLabelFor(Landroid/view/View;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    :goto_0
    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    return-void
.end method

.method public whitelist setLabeledBy(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabeledBy(Landroid/view/View;I)V

    return-void
.end method

.method public whitelist setLabeledBy(Landroid/view/View;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    :goto_0
    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    return-void
.end method

.method public blacklist setLeashedParent(Landroid/os/IBinder;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParent:Landroid/os/IBinder;

    const/4 v0, -0x1

    invoke-static {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    return-void
.end method

.method public whitelist setLiveRegion(I)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    return-void
.end method

.method public whitelist setLongClickable(Z)V
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public whitelist setMaxTextLength(I)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    return-void
.end method

.method public whitelist setMinDurationBetweenContentChanges(Ljava/time/Duration;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMinDurationBetweenContentChanges:J

    return-void
.end method

.method public whitelist setMovementGranularities(I)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    return-void
.end method

.method public whitelist setMultiLine(Z)V
    .locals 1

    const v0, 0x8000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public whitelist setPackageName(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    return-void
.end method

.method public whitelist setPaneTitle(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPaneTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public whitelist setParent(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    return-void
.end method

.method public whitelist setParent(Landroid/view/View;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    :goto_0
    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    return-void
.end method

.method public whitelist setPassword(Z)V
    .locals 1

    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public whitelist setQueryFromAppProcessEnabled(Landroid/view/View;Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    const/4 v0, -0x1

    if-nez p2, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setConnectionId(I)V

    return-void

    :cond_0
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    if-eq v1, v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getDirectAccessibilityConnectionId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setConnectionId(I)V

    return-void

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot link a node to a view that is not attached to a window."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    return-void
.end method

.method public whitelist setRequestInitialAccessibilityFocus(Z)V
    .locals 1

    const/high16 v0, 0x1000000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public whitelist setScreenReaderFocusable(Z)V
    .locals 1

    const/high16 v0, 0x80000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public whitelist setScrollable(Z)V
    .locals 1

    const/16 v0, 0x200

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public greylist setSealed(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    return-void
.end method

.method public whitelist setSelected(Z)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public whitelist setShowingHintText(Z)V
    .locals 1

    const/high16 v0, 0x100000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public whitelist setSource(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    return-void
.end method

.method public whitelist setSource(Landroid/view/View;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    const v0, 0x7fffffff

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityWindowId()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    :cond_1
    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    return-void
.end method

.method public greylist-max-o setSourceNodeId(JI)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    iput-wide p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    iput p3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    return-void
.end method

.method public whitelist setStateDescription(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mStateDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method public whitelist setText(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mOriginalText:Ljava/lang/CharSequence;

    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    move-object v0, p1

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->replaceClickableSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->replaceReplacementSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    return-void
.end method

.method public whitelist setTextEntryKey(Z)V
    .locals 1

    const/high16 v0, 0x400000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public whitelist setTextSelectable(Z)V
    .locals 1

    const/high16 v0, 0x800000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public whitelist setTextSelection(II)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    iput p2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    return-void
.end method

.method public whitelist setTooltipText(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTooltipText:Ljava/lang/CharSequence;

    return-void
.end method

.method public whitelist setTouchDelegateInfo(Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    return-void
.end method

.method public whitelist setTraversalAfter(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalAfter(Landroid/view/View;I)V

    return-void
.end method

.method public whitelist setTraversalAfter(Landroid/view/View;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    :goto_0
    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    return-void
.end method

.method public whitelist setTraversalBefore(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalBefore(Landroid/view/View;I)V

    return-void
.end method

.method public whitelist setTraversalBefore(Landroid/view/View;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    :goto_0
    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    return-void
.end method

.method public whitelist setUniqueId(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mUniqueId:Ljava/lang/String;

    return-void
.end method

.method public whitelist setViewIdResourceName(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    return-void
.end method

.method public whitelist setVisibleToUser(Z)V
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Landroid/view/accessibility/AccessibilityNodeInfo;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "; sourceNodeId: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; windowId: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; accessibilityViewId: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; virtualDescendantId: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; mParentNodeId: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; traversalBefore: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; traversalAfter: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; minDurationBetweenContentChanges: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMinDurationBetweenContentChanges:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    const-string v2, "; MovementGranularities: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v2, ", "

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    const/4 v4, 0x1

    shl-int v3, v4, v3

    not-int v4, v3

    and-int/2addr v1, v4

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getMovementGranularitySymbolicName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    goto :goto_0

    :cond_1
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; childAccessibilityIds: ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    if-eqz v4, :cond_3

    const/4 v5, 0x0

    invoke-virtual {v4}, Landroid/util/LongArray;->size()I

    move-result v6

    :goto_1
    if-ge v5, v6, :cond_3

    const-string v7, "0x"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4, v5}, Landroid/util/LongArray;->get(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v6, -0x1

    if-ge v5, v7, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, "; boundsInParent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; boundsInScreen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; boundsInWindow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "; className: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "; text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "; error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "; maxTextLength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; stateDescription: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mStateDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "; contentDescription: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "; tooltipText: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTooltipText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "; containerTitle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContainerTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "; viewIdResName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; uniqueId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; checkable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; checked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; focusable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; focused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; selected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; clickable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; longClickable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; contextClickable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isContextClickable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; password: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; scrollable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; granularScrollingSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isGranularScrollingSupported()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; importantForAccessibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isImportantForAccessibility()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; visible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; actions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; isTextSelectable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isTextSelectable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->writeToParcelNoRecycle(Landroid/os/Parcel;I)V

    return-void
.end method

.method public blacklist writeToParcelNoRecycle(Landroid/os/Parcel;I)V
    .locals 12

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSealed()Z

    move-result v3

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSealed()Z

    move-result v4

    if-eq v3, v4, :cond_0

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-wide v5, v5, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    if-eq v3, v4, :cond_2

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-wide v5, v5, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-wide v5, v5, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-wide v5, v5, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-wide v5, v5, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-wide v5, v5, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_7

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    :cond_7
    add-int/lit8 v2, v2, 0x1

    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMinDurationBetweenContentChanges:J

    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-wide v5, v5, Landroid/view/accessibility/AccessibilityNodeInfo;->mMinDurationBetweenContentChanges:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_8

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    :cond_8
    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    if-eq v3, v4, :cond_9

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    :cond_9
    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-static {v3, v4}, Landroid/util/LongArray;->elementsEqual(Landroid/util/LongArray;Landroid/util/LongArray;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    :cond_a
    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    :cond_b
    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    :cond_c
    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInWindow:Landroid/graphics/Rect;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInWindow:Landroid/graphics/Rect;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    :cond_d
    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    :cond_e
    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    if-eq v3, v4, :cond_f

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    if-eq v3, v4, :cond_10

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    :cond_10
    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    if-eq v3, v4, :cond_11

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    :cond_11
    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    :cond_12
    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    :cond_13
    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    :cond_14
    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mHintText:Ljava/lang/CharSequence;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mHintText:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    :cond_15
    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    :cond_16
    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mStateDescription:Ljava/lang/CharSequence;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mStateDescription:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    :cond_17
    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    :cond_18
    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPaneTitle:Ljava/lang/CharSequence;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mPaneTitle:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    :cond_19
    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTooltipText:Ljava/lang/CharSequence;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mTooltipText:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContainerTitle:Ljava/lang/CharSequence;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mContainerTitle:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mUniqueId:Ljava/lang/String;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mUniqueId:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    if-eq v3, v4, :cond_1e

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    if-eq v3, v4, :cond_1f

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    if-eq v3, v4, :cond_20

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    :cond_20
    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    if-eq v3, v4, :cond_21

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    :cond_21
    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    if-eq v3, v4, :cond_22

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    :cond_22
    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraDataKeys:Ljava/util/ArrayList;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraDataKeys:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    :cond_23
    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    :cond_24
    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    :cond_25
    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    :cond_26
    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    :cond_27
    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    :cond_28
    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    :cond_29
    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedChild:Landroid/os/IBinder;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedChild:Landroid/os/IBinder;

    if-eq v3, v4, :cond_2a

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParent:Landroid/os/IBinder;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParent:Landroid/os/IBinder;

    if-eq v3, v4, :cond_2b

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-wide v5, v5, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2c

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    :cond_2c
    move v3, v2

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v2, 0x0

    add-int/lit8 v4, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSealed()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_2d
    add-int/lit8 v2, v4, 0x1

    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_2e

    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    :cond_2e
    add-int/lit8 v4, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_2f
    add-int/lit8 v2, v4, 0x1

    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_30

    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    :cond_30
    add-int/lit8 v4, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-wide v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    :cond_31
    add-int/lit8 v2, v4, 0x1

    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_32

    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    :cond_32
    add-int/lit8 v4, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-wide v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    :cond_33
    add-int/lit8 v2, v4, 0x1

    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_34

    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    :cond_34
    add-int/lit8 v4, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-wide v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMinDurationBetweenContentChanges:J

    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    :cond_35
    add-int/lit8 v2, v4, 0x1

    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_36

    iget v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    :cond_36
    add-int/lit8 v4, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_38

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    if-nez v2, :cond_37

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_37
    invoke-virtual {v2}, Landroid/util/LongArray;->size()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_38

    invoke-virtual {v2, v7}, Landroid/util/LongArray;->get(I)J

    move-result-wide v8

    invoke-virtual {p1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_38
    :goto_1
    add-int/lit8 v2, v4, 0x1

    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_39

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    :cond_39
    add-int/lit8 v4, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_3a

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_3a
    add-int/lit8 v2, v4, 0x1

    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_3b

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInWindow:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInWindow:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInWindow:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInWindow:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    :cond_3b
    add-int/lit8 v4, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_41

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    if-eqz v2, :cond_40

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_40

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v2, :cond_3d

    iget-object v9, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-static {v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->isDefaultStandardAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    move-result v10

    if-eqz v10, :cond_3c

    iget-wide v10, v9, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->mSerializationFlag:J

    or-long/2addr v6, v10

    goto :goto_3

    :cond_3c
    add-int/lit8 v5, v5, 0x1

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3d
    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v2, :cond_3f

    iget-object v9, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-static {v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->isDefaultStandardAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    move-result v10

    if-nez v10, :cond_3e

    invoke-virtual {v9, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_3e
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_3f
    goto :goto_5

    :cond_40
    const-wide/16 v6, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    :cond_41
    :goto_5
    add-int/lit8 v2, v4, 0x1

    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_42

    iget v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    :cond_42
    add-int/lit8 v4, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_43

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_43
    add-int/lit8 v2, v4, 0x1

    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_44

    iget v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    :cond_44
    add-int/lit8 v4, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_45

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    :cond_45
    add-int/lit8 v2, v4, 0x1

    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_46

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    :cond_46
    add-int/lit8 v4, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_47

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    :cond_47
    add-int/lit8 v2, v4, 0x1

    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_48

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mHintText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    :cond_48
    add-int/lit8 v4, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_49

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    :cond_49
    add-int/lit8 v2, v4, 0x1

    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_4a

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mStateDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    :cond_4a
    add-int/lit8 v4, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_4b

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    :cond_4b
    add-int/lit8 v2, v4, 0x1

    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_4c

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPaneTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    :cond_4c
    add-int/lit8 v4, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_4d

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTooltipText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    :cond_4d
    add-int/lit8 v2, v4, 0x1

    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_4e

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContainerTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    :cond_4e
    add-int/lit8 v4, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_4f

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_4f
    add-int/lit8 v2, v4, 0x1

    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_50

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mUniqueId:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_50
    add-int/lit8 v4, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_51

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_51
    add-int/lit8 v2, v4, 0x1

    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_52

    iget v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    :cond_52
    add-int/lit8 v4, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_53

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_53
    add-int/lit8 v2, v4, 0x1

    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_54

    iget v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    :cond_54
    add-int/lit8 v4, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_55

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_55
    add-int/lit8 v2, v4, 0x1

    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_56

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraDataKeys:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    :cond_56
    add-int/lit8 v4, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_57

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    :cond_57
    add-int/lit8 v2, v4, 0x1

    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_58

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getType()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getMin()F

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getMax()F

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getCurrent()F

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeFloat(F)V

    :cond_58
    add-int/lit8 v4, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_59

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->getRowCount()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->getColumnCount()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->isHierarchical()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->getSelectionMode()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->getItemCount()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->getImportantForAccessibilityItemCount()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_59
    add-int/lit8 v2, v4, 0x1

    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_5a

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getRowTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getRowIndex()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getRowSpan()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getColumnTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getColumnIndex()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getColumnSpan()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->isHeading()Z

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->isSelected()Z

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    :cond_5a
    add-int/lit8 v4, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_5b

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    invoke-virtual {v2, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_5b
    add-int/lit8 v2, v4, 0x1

    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_5c

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->getLayoutSize()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->getTextSizeInPx()F

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->getTextSizeUnit()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    :cond_5c
    add-int/lit8 v4, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_5d

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedChild:Landroid/os/IBinder;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    :cond_5d
    add-int/lit8 v2, v4, 0x1

    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_5e

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParent:Landroid/os/IBinder;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    :cond_5e
    add-int/lit8 v4, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_5f

    iget-wide v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    :cond_5f
    sget-boolean v2, Landroid/view/accessibility/AccessibilityNodeInfo;->DEBUG:Z

    if-eqz v2, :cond_61

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_60

    goto :goto_6

    :cond_60
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Number of fields mismatch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " vs "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_61
    :goto_6
    return-void
.end method
