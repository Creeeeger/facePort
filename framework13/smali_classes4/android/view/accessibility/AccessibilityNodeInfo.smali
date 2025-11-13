.class public Landroid/view/accessibility/AccessibilityNodeInfo;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;,
        Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;,
        Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;,
        Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;,
        Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;,
        Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;,
        Landroid/view/accessibility/AccessibilityNodeInfo$PrefetchingStrategy;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_ACCESSIBILITY_FOCUS:I = 0x40

.field public static final greylist-max-o ACTION_ARGUMENT_ACCESSIBLE_CLICKABLE_SPAN:Ljava/lang/String; = "android.view.accessibility.action.ACTION_ARGUMENT_ACCESSIBLE_CLICKABLE_SPAN"

.field public static final whitelist ACTION_ARGUMENT_COLUMN_INT:Ljava/lang/String; = "android.view.accessibility.action.ARGUMENT_COLUMN_INT"

.field public static final whitelist ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN:Ljava/lang/String; = "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

.field public static final whitelist ACTION_ARGUMENT_HTML_ELEMENT_STRING:Ljava/lang/String; = "ACTION_ARGUMENT_HTML_ELEMENT_STRING"

.field public static final whitelist ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT:Ljava/lang/String; = "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

.field public static final whitelist ACTION_ARGUMENT_MOVE_WINDOW_X:Ljava/lang/String; = "ACTION_ARGUMENT_MOVE_WINDOW_X"

.field public static final whitelist ACTION_ARGUMENT_MOVE_WINDOW_Y:Ljava/lang/String; = "ACTION_ARGUMENT_MOVE_WINDOW_Y"

.field public static final whitelist ACTION_ARGUMENT_PRESS_AND_HOLD_DURATION_MILLIS_INT:Ljava/lang/String; = "android.view.accessibility.action.ARGUMENT_PRESS_AND_HOLD_DURATION_MILLIS_INT"

.field public static final whitelist ACTION_ARGUMENT_PROGRESS_VALUE:Ljava/lang/String; = "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

.field public static final whitelist ACTION_ARGUMENT_ROW_INT:Ljava/lang/String; = "android.view.accessibility.action.ARGUMENT_ROW_INT"

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

.field private static final greylist-max-o ACTION_TYPE_MASK:I = -0x1000000

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

.field private static final greylist-max-o BOOLEAN_PROPERTY_SCREEN_READER_FOCUSABLE:I = 0x80000

.field private static final greylist-max-o BOOLEAN_PROPERTY_SCROLLABLE:I = 0x200

.field private static final greylist-max-o BOOLEAN_PROPERTY_SELECTED:I = 0x10

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

.field public static final greylist-max-o FLAG_INCLUDE_NOT_IMPORTANT_VIEWS:I = 0x80

.field public static final whitelist FLAG_PREFETCH_ANCESTORS:I = 0x1

.field public static final whitelist FLAG_PREFETCH_DESCENDANTS_BREADTH_FIRST:I = 0x10

.field public static final whitelist FLAG_PREFETCH_DESCENDANTS_DEPTH_FIRST:I = 0x8

.field public static final whitelist FLAG_PREFETCH_DESCENDANTS_HYBRID:I = 0x4

.field public static final blacklist FLAG_PREFETCH_DESCENDANTS_MASK:I = 0x1c

.field public static final blacklist FLAG_PREFETCH_MASK:I = 0x3f

.field public static final whitelist FLAG_PREFETCH_SIBLINGS:I = 0x2

.field public static final whitelist FLAG_PREFETCH_UNINTERRUPTIBLE:I = 0x20

.field public static final blacklist FLAG_REPORT_MASK:I = 0x180

.field public static final greylist-max-o FLAG_REPORT_VIEW_IDS:I = 0x100

.field public static final whitelist FOCUS_ACCESSIBILITY:I = 0x2

.field public static final whitelist FOCUS_INPUT:I = 0x1

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

.field private greylist mChildNodeIds:Landroid/util/LongArray;

.field private greylist-max-o mClassName:Ljava/lang/CharSequence;

.field private greylist-max-o mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

.field private greylist-max-o mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

.field private greylist-max-o mConnectionId:I

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

    .line 107
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

    .line 125
    const v0, 0x7fffffff

    invoke-static {v0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v0

    sput-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    .line 128
    const v0, 0x7ffffffe

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v2

    sput-wide v2, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    .line 132
    const v0, 0x7ffffffd

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v0

    sput-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->LEASHED_NODE_ID:J

    .line 887
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 6330
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$1;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$1;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityNodeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 4

    .line 953
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 893
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    .line 894
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    .line 896
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    .line 897
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    .line 898
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    .line 899
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    .line 900
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    .line 903
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    .line 904
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    .line 926
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    .line 929
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    .line 930
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    .line 931
    const/4 v3, 0x0

    iput v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    .line 932
    iput v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    .line 936
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    .line 948
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    .line 954
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/View;)V
    .locals 4
    .param p1, "source"    # Landroid/view/View;

    .line 961
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 893
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    .line 894
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    .line 896
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    .line 897
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    .line 898
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    .line 899
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    .line 900
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    .line 903
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    .line 904
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    .line 926
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    .line 929
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    .line 930
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    .line 931
    const/4 v3, 0x0

    iput v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    .line 932
    iput v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    .line 936
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    .line 948
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    .line 962
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    .line 963
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/View;I)V
    .locals 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .line 971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 893
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    .line 894
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    .line 896
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    .line 897
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    .line 898
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    .line 899
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    .line 900
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    .line 903
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    .line 904
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    .line 926
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    .line 929
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    .line 930
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    .line 931
    const/4 v3, 0x0

    iput v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    .line 932
    iput v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    .line 936
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    .line 948
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    .line 972
    invoke-virtual {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 973
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 981
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 893
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    .line 894
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    .line 896
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    .line 897
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    .line 898
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    .line 899
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    .line 900
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    .line 903
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    .line 904
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    .line 926
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    .line 929
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    .line 930
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    .line 931
    const/4 v3, 0x0

    iput v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    .line 932
    iput v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    .line 936
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    .line 948
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    .line 982
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->init(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 983
    return-void
.end method

.method private greylist-max-o addActionUnchecked(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V
    .locals 1
    .param p1, "action"    # Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 1491
    if-nez p1, :cond_0

    .line 1492
    return-void

    .line 1495
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1496
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    .line 1499
    :cond_1
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1500
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1501
    return-void
.end method

.method private greylist-max-o addChildInternal(Landroid/view/View;IZ)V
    .locals 5
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I
    .param p3, "checked"    # Z

    .line 1370
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1371
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    if-nez v0, :cond_0

    .line 1372
    new-instance v0, Landroid/util/LongArray;

    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    .line 1375
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    goto :goto_0

    :cond_1
    const v0, 0x7fffffff

    .line 1376
    .local v0, "rootAccessibilityViewId":I
    :goto_0
    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v1

    .line 1377
    .local v1, "childNodeId":J
    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    cmp-long v3, v1, v3

    if-nez v3, :cond_2

    .line 1378
    const-string v3, "AccessibilityNodeInfo"

    const-string v4, "Rejecting attempt to make a View its own child"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    return-void

    .line 1383
    :cond_2
    if-eqz p3, :cond_3

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/LongArray;->indexOf(J)I

    move-result v3

    if-ltz v3, :cond_3

    .line 1384
    return-void

    .line 1386
    :cond_3
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/LongArray;->add(J)V

    .line 1387
    return-void
.end method

.method private greylist-max-o addStandardActions(J)V
    .locals 6
    .param p1, "serializationIdMask"    # J

    .line 4407
    move-wide v0, p1

    .line 4408
    .local v0, "remainingIds":J
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 4409
    const-wide/16 v2, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v4

    shl-long/2addr v2, v4

    .line 4410
    .local v2, "id":J
    not-long v4, v2

    and-long/2addr v0, v4

    .line 4411
    invoke-static {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionSingletonBySerializationFlag(J)Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v4

    .line 4412
    .local v4, "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    invoke-virtual {p0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 4413
    .end local v2    # "id":J
    .end local v4    # "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    goto :goto_0

    .line 4414
    :cond_0
    return-void
.end method

.method private static blacklist canPerformRequestOverConnection(IIJ)Z
    .locals 3
    .param p0, "connectionId"    # I
    .param p1, "windowId"    # I
    .param p2, "accessibilityNodeId"    # J

    .line 4540
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 4541
    invoke-static {p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v1

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4540
    :goto_0
    return v0
.end method

.method private greylist-max-o clear()V
    .locals 1

    .line 4375
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->init(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4376
    return-void
.end method

.method private greylist-max-o enforceValidFocusDirection(I)V
    .locals 3
    .param p1, "direction"    # I

    .line 3721
    sparse-switch p1, :sswitch_data_0

    .line 3730
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

    .line 3728
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
    .param p1, "focusType"    # I

    .line 3735
    packed-switch p1, :pswitch_data_0

    .line 3740
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

    .line 3738
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
    .param p0, "accessibilityNodeId"    # J

    .line 854
    long-to-int v0, p0

    return v0
.end method

.method private static greylist-max-o getActionSingleton(I)Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .locals 4
    .param p0, "actionId"    # I

    .line 4383
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->sStandardActions:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 4384
    .local v0, "actions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4385
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->sStandardActions:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 4386
    .local v2, "currentAction":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v3

    if-ne p0, v3, :cond_0

    .line 4387
    return-object v2

    .line 4384
    .end local v2    # "currentAction":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4391
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static greylist-max-o getActionSingletonBySerializationFlag(J)Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .locals 5
    .param p0, "flag"    # J

    .line 4395
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->sStandardActions:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 4396
    .local v0, "actions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4397
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->sStandardActions:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 4398
    .local v2, "currentAction":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    iget-wide v3, v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->mSerializationFlag:J

    cmp-long v3, p0, v3

    if-nez v3, :cond_0

    .line 4399
    return-object v2

    .line 4396
    .end local v2    # "currentAction":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4403
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static greylist-max-o getActionSymbolicName(I)Ljava/lang/String;
    .locals 1
    .param p0, "action"    # I

    .line 4423
    sparse-switch p0, :sswitch_data_0

    .line 4507
    const v0, 0x1020058

    if-ne p0, v0, :cond_0

    .line 4508
    const-string v0, "ACTION_SHOW_TEXT_SUGGESTIONS"

    return-object v0

    .line 4503
    :sswitch_0
    const-string v0, "ACTION_CANCEL_DRAG"

    return-object v0

    .line 4505
    :sswitch_1
    const-string v0, "ACTION_DROP"

    return-object v0

    .line 4501
    :sswitch_2
    const-string v0, "ACTION_DRAG"

    return-object v0

    .line 4499
    :sswitch_3
    const-string v0, "ACTION_IME_ENTER"

    return-object v0

    .line 4497
    :sswitch_4
    const-string v0, "ACTION_PRESS_AND_HOLD"

    return-object v0

    .line 4487
    :sswitch_5
    const-string v0, "ACTION_PAGE_RIGHT"

    return-object v0

    .line 4485
    :sswitch_6
    const-string v0, "ACTION_PAGE_LEFT"

    return-object v0

    .line 4481
    :sswitch_7
    const-string v0, "ACTION_PAGE_DOWN"

    return-object v0

    .line 4483
    :sswitch_8
    const-string v0, "ACTION_PAGE_UP"

    return-object v0

    .line 4495
    :sswitch_9
    const-string v0, "ACTION_HIDE_TOOLTIP"

    return-object v0

    .line 4493
    :sswitch_a
    const-string v0, "ACTION_SHOW_TOOLTIP"

    return-object v0

    .line 4489
    :sswitch_b
    const-string v0, "ACTION_SET_PROGRESS"

    return-object v0

    .line 4491
    :sswitch_c
    const-string v0, "ACTION_CONTEXT_CLICK"

    return-object v0

    .line 4479
    :sswitch_d
    const-string v0, "ACTION_SCROLL_RIGHT"

    return-object v0

    .line 4477
    :sswitch_e
    const-string v0, "ACTION_SCROLL_DOWN"

    return-object v0

    .line 4475
    :sswitch_f
    const-string v0, "ACTION_SCROLL_LEFT"

    return-object v0

    .line 4473
    :sswitch_10
    const-string v0, "ACTION_SCROLL_UP"

    return-object v0

    .line 4471
    :sswitch_11
    const-string v0, "ACTION_SCROLL_TO_POSITION"

    return-object v0

    .line 4469
    :sswitch_12
    const-string v0, "ACTION_SHOW_ON_SCREEN"

    return-object v0

    .line 4467
    :sswitch_13
    const-string v0, "ACTION_SET_TEXT"

    return-object v0

    .line 4465
    :sswitch_14
    const-string v0, "ACTION_DISMISS"

    return-object v0

    .line 4463
    :sswitch_15
    const-string v0, "ACTION_COLLAPSE"

    return-object v0

    .line 4461
    :sswitch_16
    const-string v0, "ACTION_EXPAND"

    return-object v0

    .line 4459
    :sswitch_17
    const-string v0, "ACTION_SET_SELECTION"

    return-object v0

    .line 4453
    :sswitch_18
    const-string v0, "ACTION_CUT"

    return-object v0

    .line 4457
    :sswitch_19
    const-string v0, "ACTION_PASTE"

    return-object v0

    .line 4455
    :sswitch_1a
    const-string v0, "ACTION_COPY"

    return-object v0

    .line 4451
    :sswitch_1b
    const-string v0, "ACTION_SCROLL_BACKWARD"

    return-object v0

    .line 4449
    :sswitch_1c
    const-string v0, "ACTION_SCROLL_FORWARD"

    return-object v0

    .line 4447
    :sswitch_1d
    const-string v0, "ACTION_PREVIOUS_HTML_ELEMENT"

    return-object v0

    .line 4445
    :sswitch_1e
    const-string v0, "ACTION_NEXT_HTML_ELEMENT"

    return-object v0

    .line 4443
    :sswitch_1f
    const-string v0, "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY"

    return-object v0

    .line 4441
    :sswitch_20
    const-string v0, "ACTION_NEXT_AT_MOVEMENT_GRANULARITY"

    return-object v0

    .line 4439
    :sswitch_21
    const-string v0, "ACTION_CLEAR_ACCESSIBILITY_FOCUS"

    return-object v0

    .line 4437
    :sswitch_22
    const-string v0, "ACTION_ACCESSIBILITY_FOCUS"

    return-object v0

    .line 4435
    :sswitch_23
    const-string v0, "ACTION_LONG_CLICK"

    return-object v0

    .line 4433
    :sswitch_24
    const-string v0, "ACTION_CLICK"

    return-object v0

    .line 4431
    :sswitch_25
    const-string v0, "ACTION_CLEAR_SELECTION"

    return-object v0

    .line 4429
    :sswitch_26
    const-string v0, "ACTION_SELECT"

    return-object v0

    .line 4427
    :sswitch_27
    const-string v0, "ACTION_CLEAR_FOCUS"

    return-object v0

    .line 4425
    :sswitch_28
    const-string v0, "ACTION_FOCUS"

    return-object v0

    .line 4510
    :cond_0
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
    .param p1, "property"    # I

    .line 3547
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
    .param p0, "granularity"    # I

    .line 4522
    sparse-switch p0, :sswitch_data_0

    .line 4534
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

    .line 4532
    :sswitch_0
    const-string v0, "MOVEMENT_GRANULARITY_PAGE"

    return-object v0

    .line 4530
    :sswitch_1
    const-string v0, "MOVEMENT_GRANULARITY_PARAGRAPH"

    return-object v0

    .line 4528
    :sswitch_2
    const-string v0, "MOVEMENT_GRANULARITY_LINE"

    return-object v0

    .line 4526
    :sswitch_3
    const-string v0, "MOVEMENT_GRANULARITY_WORD"

    return-object v0

    .line 4524
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
    .param p0, "connectionId"    # I
    .param p1, "windowId"    # I
    .param p2, "accessibilityId"    # J

    .line 4652
    const/4 v0, 0x7

    invoke-static {p0, p1, p2, p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getNodeForAccessibilityId(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 9
    .param p0, "connectionId"    # I
    .param p1, "windowId"    # I
    .param p2, "accessibilityId"    # J
    .param p4, "prefetchingStrategy"    # I

    .line 4659
    invoke-static {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(IIJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4660
    const/4 v0, 0x0

    return-object v0

    .line 4662
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 4663
    .local v0, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
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
    .param p0, "connectionId"    # I
    .param p1, "leashToken"    # Landroid/os/IBinder;
    .param p2, "accessibilityId"    # J

    .line 4669
    const/4 v0, 0x7

    invoke-static {p0, p1, p2, p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(ILandroid/os/IBinder;JI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getNodeForAccessibilityId(ILandroid/os/IBinder;JI)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 9
    .param p0, "connectionId"    # I
    .param p1, "leashToken"    # Landroid/os/IBinder;
    .param p2, "accessibilityId"    # J
    .param p4, "prefetchingStrategy"    # I

    .line 4677
    if-eqz p1, :cond_1

    .line 4678
    invoke-static {p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 4682
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 4683
    .local v0, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
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

    .line 4680
    .end local v0    # "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static greylist-max-r getVirtualDescendantId(J)I
    .locals 3
    .param p0, "accessibilityNodeId"    # J

    .line 868
    const-wide v0, -0x100000000L

    and-long/2addr v0, p0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static greylist-max-o idItemToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "item"    # I

    .line 4697
    sparse-switch p0, :sswitch_data_0

    .line 4701
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

    .line 4699
    :sswitch_0
    const-string v0, "UNDEFINED"

    return-object v0

    .line 4698
    :sswitch_1
    const-string v0, "ROOT"

    return-object v0

    .line 4700
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
    .param p0, "accessibilityId"    # J

    .line 4689
    invoke-static {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    .line 4690
    .local v0, "accessibilityViewId":I
    invoke-static {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v1

    .line 4691
    .local v1, "virtualDescendantId":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 4692
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->idItemToString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 4693
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

    .line 4691
    :goto_0
    return-object v2
.end method

.method private greylist-max-o init(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6
    .param p1, "other"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 4136
    iget-boolean v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    .line 4137
    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    .line 4138
    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    .line 4139
    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    .line 4140
    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    .line 4141
    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    .line 4142
    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    .line 4143
    iget v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    .line 4144
    iget v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    .line 4145
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mUniqueId:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mUniqueId:Ljava/lang/String;

    .line 4146
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4147
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4148
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    .line 4149
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    .line 4150
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    .line 4151
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mOriginalText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mOriginalText:Ljava/lang/CharSequence;

    .line 4152
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mHintText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mHintText:Ljava/lang/CharSequence;

    .line 4153
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    .line 4154
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mStateDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mStateDescription:Ljava/lang/CharSequence;

    .line 4155
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    .line 4156
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mPaneTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPaneTitle:Ljava/lang/CharSequence;

    .line 4157
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mTooltipText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTooltipText:Ljava/lang/CharSequence;

    .line 4158
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    .line 4160
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4161
    :cond_0
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    .line 4162
    .local v0, "otherActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 4163
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 4164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    goto :goto_0

    .line 4166
    :cond_1
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4170
    :cond_2
    :goto_0
    iget v1, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    .line 4171
    iget v1, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    .line 4172
    iget v1, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    .line 4175
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/util/LongArray;->clear()V

    .line 4176
    :cond_3
    iget-object v1, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    .line 4177
    .local v1, "otherChildNodeIds":Landroid/util/LongArray;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/util/LongArray;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 4178
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    if-nez v2, :cond_4

    .line 4179
    invoke-virtual {v1}, Landroid/util/LongArray;->clone()Landroid/util/LongArray;

    move-result-object v2

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    goto :goto_1

    .line 4181
    :cond_4
    invoke-virtual {v2, v1}, Landroid/util/LongArray;->addAll(Landroid/util/LongArray;)V

    .line 4185
    :cond_5
    :goto_1
    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    .line 4186
    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    .line 4187
    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    .line 4188
    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    .line 4189
    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    .line 4191
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraDataKeys:Ljava/util/ArrayList;

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraDataKeys:Ljava/util/ArrayList;

    .line 4193
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

    .line 4195
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->initCopyInfos(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4197
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    .line 4198
    .local v2, "otherInfo":Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;
    if-eqz v2, :cond_7

    .line 4199
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

    .line 4201
    iget-object v3, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedChild:Landroid/os/IBinder;

    iput-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedChild:Landroid/os/IBinder;

    .line 4202
    iget-object v3, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParent:Landroid/os/IBinder;

    iput-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParent:Landroid/os/IBinder;

    .line 4203
    iget-wide v3, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    iput-wide v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    .line 4204
    return-void
.end method

.method private blacklist initCopyInfos(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 8
    .param p1, "other"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 4207
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .line 4208
    .local v0, "ri":Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 4209
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

    .line 4210
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 4211
    .local v2, "ci":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    if-nez v2, :cond_1

    move-object v3, v1

    goto :goto_1

    .line 4212
    :cond_1
    new-instance v3, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->-$$Nest$fgetmRowCount(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)I

    move-result v4

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->-$$Nest$fgetmColumnCount(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)I

    move-result v5

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->-$$Nest$fgetmHierarchical(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)Z

    move-result v6

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->-$$Nest$fgetmSelectionMode(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;-><init>(IIZI)V

    :goto_1
    iput-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 4214
    iget-object v3, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .line 4215
    .local v3, "cii":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;

    invoke-direct {v4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;-><init>()V

    .line 4216
    .local v4, "builder":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;
    if-nez v3, :cond_2

    move-object v5, v1

    goto :goto_2

    .line 4220
    :cond_2
    invoke-static {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->-$$Nest$fgetmRowTitle(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)Ljava/lang/String;

    move-result-object v5

    .line 4217
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

    .line 4218
    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;->setColumnTitle(Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;

    move-result-object v5

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->-$$Nest$fgetmColumnIndex(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;->setColumnIndex(I)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;

    move-result-object v5

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->-$$Nest$fgetmColumnSpan(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)I

    move-result v6

    .line 4219
    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;->setColumnSpan(I)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;

    move-result-object v5

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->-$$Nest$fgetmHeading(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;->setHeading(Z)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;

    move-result-object v5

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->-$$Nest$fgetmSelected(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)Z

    move-result v6

    .line 4220
    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;->setSelected(Z)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;->build()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v5

    :goto_2
    iput-object v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .line 4221
    iget-object v5, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    .line 4222
    .local v5, "ti":Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;
    if-nez v5, :cond_3

    goto :goto_3

    .line 4223
    :cond_3
    new-instance v6, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    invoke-direct {v6, v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo-IA;)V

    move-object v1, v6

    :goto_3
    iput-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    .line 4224
    return-void
.end method

.method private greylist-max-o initFromParcel(Landroid/os/Parcel;)V
    .locals 19
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 4233
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 4234
    .local v2, "nonDefaultFields":J
    const/4 v4, 0x0

    .line 4235
    .local v4, "fieldIndex":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "fieldIndex":I
    .local v5, "fieldIndex":I
    invoke-static {v2, v3, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_1

    .line 4236
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v7, :cond_0

    move v4, v7

    goto :goto_0

    :cond_0
    move v4, v6

    goto :goto_0

    .line 4237
    :cond_1
    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-boolean v4, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    :goto_0
    nop

    .line 4238
    .local v4, "sealed":Z
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "fieldIndex":I
    .local v8, "fieldIndex":I
    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    iput-wide v9, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    .line 4239
    :cond_2
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "fieldIndex":I
    .restart local v5    # "fieldIndex":I
    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    .line 4240
    :cond_3
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "fieldIndex":I
    .restart local v8    # "fieldIndex":I
    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    iput-wide v9, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    .line 4241
    :cond_4
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "fieldIndex":I
    .restart local v5    # "fieldIndex":I
    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    iput-wide v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    .line 4242
    :cond_5
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "fieldIndex":I
    .restart local v8    # "fieldIndex":I
    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    iput-wide v9, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    .line 4243
    :cond_6
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "fieldIndex":I
    .restart local v5    # "fieldIndex":I
    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    iput-wide v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    .line 4244
    :cond_7
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "fieldIndex":I
    .restart local v8    # "fieldIndex":I
    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    iput-wide v9, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    .line 4246
    :cond_8
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "fieldIndex":I
    .restart local v5    # "fieldIndex":I
    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    .line 4248
    :cond_9
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "fieldIndex":I
    .restart local v8    # "fieldIndex":I
    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    const/4 v9, 0x0

    if-eqz v5, :cond_b

    .line 4249
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 4250
    .local v5, "childrenSize":I
    if-gtz v5, :cond_a

    .line 4251
    iput-object v9, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    goto :goto_2

    .line 4253
    :cond_a
    new-instance v10, Landroid/util/LongArray;

    invoke-direct {v10, v5}, Landroid/util/LongArray;-><init>(I)V

    iput-object v10, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    .line 4254
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v5, :cond_b

    .line 4255
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 4256
    .local v11, "childId":J
    iget-object v13, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v13, v11, v12}, Landroid/util/LongArray;->add(J)V

    .line 4254
    .end local v11    # "childId":J
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 4261
    .end local v5    # "childrenSize":I
    .end local v10    # "i":I
    :cond_b
    :goto_2
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "fieldIndex":I
    .local v5, "fieldIndex":I
    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 4262
    iget-object v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v8, Landroid/graphics/Rect;->top:I

    .line 4263
    iget-object v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v8, Landroid/graphics/Rect;->bottom:I

    .line 4264
    iget-object v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v8, Landroid/graphics/Rect;->left:I

    .line 4265
    iget-object v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v8, Landroid/graphics/Rect;->right:I

    .line 4268
    :cond_c
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "fieldIndex":I
    .restart local v8    # "fieldIndex":I
    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 4269
    iget-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v5, Landroid/graphics/Rect;->top:I

    .line 4270
    iget-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v5, Landroid/graphics/Rect;->bottom:I

    .line 4271
    iget-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v5, Landroid/graphics/Rect;->left:I

    .line 4272
    iget-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v5, Landroid/graphics/Rect;->right:I

    .line 4275
    :cond_d
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "fieldIndex":I
    .restart local v5    # "fieldIndex":I
    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 4276
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 4277
    .local v10, "standardActions":J
    invoke-direct {v0, v10, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->addStandardActions(J)V

    .line 4278
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 4279
    .local v8, "nonStandardActionCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    if-ge v12, v8, :cond_e

    .line 4280
    sget-object v13, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4281
    invoke-interface {v13, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 4282
    .local v13, "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    invoke-direct {v0, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->addActionUnchecked(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 4279
    .end local v13    # "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 4286
    .end local v8    # "nonStandardActionCount":I
    .end local v10    # "standardActions":J
    .end local v12    # "i":I
    :cond_e
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "fieldIndex":I
    .local v8, "fieldIndex":I
    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    .line 4287
    :cond_f
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "fieldIndex":I
    .restart local v5    # "fieldIndex":I
    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    .line 4288
    :cond_10
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "fieldIndex":I
    .restart local v8    # "fieldIndex":I
    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    .line 4290
    :cond_11
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "fieldIndex":I
    .restart local v5    # "fieldIndex":I
    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    .line 4291
    :cond_12
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "fieldIndex":I
    .restart local v8    # "fieldIndex":I
    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    .line 4292
    :cond_13
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "fieldIndex":I
    .restart local v5    # "fieldIndex":I
    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    .line 4293
    :cond_14
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "fieldIndex":I
    .restart local v8    # "fieldIndex":I
    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mHintText:Ljava/lang/CharSequence;

    .line 4294
    :cond_15
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "fieldIndex":I
    .restart local v5    # "fieldIndex":I
    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    .line 4295
    :cond_16
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "fieldIndex":I
    .restart local v8    # "fieldIndex":I
    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mStateDescription:Ljava/lang/CharSequence;

    .line 4296
    :cond_17
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "fieldIndex":I
    .restart local v5    # "fieldIndex":I
    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 4297
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    .line 4299
    :cond_18
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "fieldIndex":I
    .restart local v8    # "fieldIndex":I
    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPaneTitle:Ljava/lang/CharSequence;

    .line 4300
    :cond_19
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "fieldIndex":I
    .restart local v5    # "fieldIndex":I
    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTooltipText:Ljava/lang/CharSequence;

    .line 4301
    :cond_1a
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "fieldIndex":I
    .restart local v8    # "fieldIndex":I
    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    .line 4302
    :cond_1b
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "fieldIndex":I
    .restart local v5    # "fieldIndex":I
    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_1c

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mUniqueId:Ljava/lang/String;

    .line 4304
    :cond_1c
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "fieldIndex":I
    .restart local v8    # "fieldIndex":I
    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    .line 4305
    :cond_1d
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "fieldIndex":I
    .restart local v5    # "fieldIndex":I
    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_1e

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    .line 4307
    :cond_1e
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "fieldIndex":I
    .restart local v8    # "fieldIndex":I
    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    .line 4308
    :cond_1f
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "fieldIndex":I
    .restart local v5    # "fieldIndex":I
    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_20

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    .line 4309
    :cond_20
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "fieldIndex":I
    .restart local v8    # "fieldIndex":I
    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    .line 4311
    :cond_21
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "fieldIndex":I
    .restart local v5    # "fieldIndex":I
    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 4312
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v8

    goto :goto_4

    .line 4313
    :cond_22
    move-object v8, v9

    :goto_4
    iput-object v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraDataKeys:Ljava/util/ArrayList;

    .line 4315
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "fieldIndex":I
    .restart local v8    # "fieldIndex":I
    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 4316
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v5

    goto :goto_5

    .line 4317
    :cond_23
    move-object v5, v9

    :goto_5
    iput-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    .line 4319
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "fieldIndex":I
    .restart local v5    # "fieldIndex":I
    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_24

    .line 4320
    new-instance v8, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .line 4321
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 4322
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v11

    .line 4323
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v12

    .line 4324
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v13

    invoke-direct {v8, v10, v11, v12, v13}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;-><init>(IFFF)V

    goto :goto_6

    .line 4325
    :cond_24
    move-object v8, v9

    :goto_6
    iput-object v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .line 4327
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "fieldIndex":I
    .restart local v8    # "fieldIndex":I
    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 4328
    new-instance v5, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 4329
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 4330
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 4331
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-ne v12, v7, :cond_25

    move v12, v7

    goto :goto_7

    :cond_25
    move v12, v6

    .line 4332
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-direct {v5, v10, v11, v12, v13}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;-><init>(IIZI)V

    goto :goto_8

    .line 4333
    :cond_26
    move-object v5, v9

    :goto_8
    iput-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 4335
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "fieldIndex":I
    .restart local v5    # "fieldIndex":I
    invoke-static {v2, v3, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v8

    if-eqz v8, :cond_29

    .line 4336
    new-instance v8, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .line 4337
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 4338
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 4339
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 4340
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 4341
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 4342
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 4343
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-ne v10, v7, :cond_27

    move/from16 v17, v7

    goto :goto_9

    :cond_27
    move/from16 v17, v6

    .line 4344
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-ne v10, v7, :cond_28

    move/from16 v18, v7

    goto :goto_a

    :cond_28
    move/from16 v18, v6

    :goto_a
    move-object v10, v8

    invoke-direct/range {v10 .. v18}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;-><init>(Ljava/lang/String;IILjava/lang/String;IIZZ)V

    goto :goto_b

    .line 4345
    :cond_29
    move-object v8, v9

    :goto_b
    iput-object v8, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .line 4347
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "fieldIndex":I
    .local v6, "fieldIndex":I
    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 4348
    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    iput-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    .line 4351
    :cond_2a
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "fieldIndex":I
    .restart local v5    # "fieldIndex":I
    invoke-static {v2, v3, v6}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 4352
    new-instance v6, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    invoke-direct {v6, v9, v9}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo-IA;)V

    iput-object v6, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    .line 4353
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Size;

    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->-$$Nest$fputmLayoutSize(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;Landroid/util/Size;)V

    .line 4354
    iget-object v6, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->-$$Nest$fputmTextSizeInPx(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;F)V

    .line 4355
    iget-object v6, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->-$$Nest$fputmTextSizeUnit(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;I)V

    .line 4358
    :cond_2b
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "fieldIndex":I
    .restart local v6    # "fieldIndex":I
    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 4359
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedChild:Landroid/os/IBinder;

    .line 4361
    :cond_2c
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "fieldIndex":I
    .restart local v5    # "fieldIndex":I
    invoke-static {v2, v3, v6}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 4362
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    iput-object v6, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParent:Landroid/os/IBinder;

    .line 4364
    :cond_2d
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "fieldIndex":I
    .restart local v6    # "fieldIndex":I
    invoke-static {v2, v3, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 4365
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    iput-wide v7, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    .line 4368
    :cond_2e
    iput-boolean v4, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    .line 4369
    return-void
.end method

.method private static greylist-max-o isDefaultStandardAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z
    .locals 4
    .param p0, "action"    # Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 4379
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
    .param p0, "accessibilityViewId"    # I
    .param p1, "virtualDescendantId"    # I

    .line 884
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

    .line 3801
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>()V

    return-object v0
.end method

.method public static whitelist obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p0, "source"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3771
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static whitelist obtain(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p0, "root"    # Landroid/view/View;
    .param p1, "virtualDescendantId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3789
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v0, p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/View;I)V

    return-object v0
.end method

.method public static whitelist obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p0, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3815
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-object v0
.end method

.method private blacklist replaceClickableSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 9
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 3071
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    .line 3072
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroid/text/style/ClickableSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ClickableSpan;

    .line 3073
    .local v0, "clickableSpans":[Landroid/text/style/ClickableSpan;
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3074
    .local v1, "spannable":Landroid/text/Spannable;
    array-length v2, v0

    if-nez v2, :cond_0

    .line 3075
    return-object p1

    .line 3077
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_4

    .line 3078
    aget-object v3, v0, v2

    .line 3079
    .local v3, "span":Landroid/text/style/ClickableSpan;
    instance-of v4, v3, Landroid/text/style/AccessibilityClickableSpan;

    if-nez v4, :cond_4

    instance-of v4, v3, Landroid/text/style/AccessibilityURLSpan;

    if-eqz v4, :cond_1

    .line 3082
    goto :goto_3

    .line 3084
    :cond_1
    invoke-interface {v1, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 3085
    .local v4, "spanToReplaceStart":I
    invoke-interface {v1, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 3086
    .local v5, "spanToReplaceEnd":I
    invoke-interface {v1, v3}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    .line 3087
    .local v6, "spanToReplaceFlags":I
    if-gez v4, :cond_2

    .line 3088
    goto :goto_2

    .line 3090
    :cond_2
    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 3091
    instance-of v7, v3, Landroid/text/style/URLSpan;

    if-eqz v7, :cond_3

    .line 3092
    new-instance v7, Landroid/text/style/AccessibilityURLSpan;

    move-object v8, v3

    check-cast v8, Landroid/text/style/URLSpan;

    invoke-direct {v7, v8}, Landroid/text/style/AccessibilityURLSpan;-><init>(Landroid/text/style/URLSpan;)V

    goto :goto_1

    .line 3093
    :cond_3
    new-instance v7, Landroid/text/style/AccessibilityClickableSpan;

    invoke-virtual {v3}, Landroid/text/style/ClickableSpan;->getId()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/AccessibilityClickableSpan;-><init>(I)V

    :goto_1
    nop

    .line 3094
    .local v7, "replacementSpan":Landroid/text/style/ClickableSpan;
    invoke-interface {v1, v7, v4, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3077
    .end local v3    # "span":Landroid/text/style/ClickableSpan;
    .end local v4    # "spanToReplaceStart":I
    .end local v5    # "spanToReplaceEnd":I
    .end local v6    # "spanToReplaceFlags":I
    .end local v7    # "replacementSpan":Landroid/text/style/ClickableSpan;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3097
    .end local v2    # "i":I
    :cond_4
    :goto_3
    return-object v1
.end method

.method private blacklist replaceReplacementSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 9
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 3108
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    .line 3109
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroid/text/style/ReplacementSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ReplacementSpan;

    .line 3110
    .local v0, "replacementSpans":[Landroid/text/style/ReplacementSpan;
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3111
    .local v1, "spannable":Landroid/text/SpannableStringBuilder;
    array-length v2, v0

    if-nez v2, :cond_0

    .line 3112
    return-object p1

    .line 3114
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_4

    .line 3115
    aget-object v3, v0, v2

    .line 3116
    .local v3, "span":Landroid/text/style/ReplacementSpan;
    invoke-virtual {v3}, Landroid/text/style/ReplacementSpan;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    .line 3117
    .local v4, "replacementText":Ljava/lang/CharSequence;
    instance-of v5, v3, Landroid/text/style/AccessibilityReplacementSpan;

    if-eqz v5, :cond_1

    .line 3119
    goto :goto_2

    .line 3121
    :cond_1
    if-nez v4, :cond_2

    .line 3122
    goto :goto_1

    .line 3124
    :cond_2
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 3125
    .local v5, "spanToReplaceStart":I
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 3126
    .local v6, "spanToReplaceEnd":I
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    .line 3127
    .local v7, "spanToReplaceFlags":I
    if-gez v5, :cond_3

    .line 3128
    goto :goto_1

    .line 3130
    :cond_3
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 3131
    new-instance v8, Landroid/text/style/AccessibilityReplacementSpan;

    invoke-direct {v8, v4}, Landroid/text/style/AccessibilityReplacementSpan;-><init>(Ljava/lang/CharSequence;)V

    .line 3132
    .local v8, "replacementSpan":Landroid/text/style/ReplacementSpan;
    invoke-virtual {v1, v8, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3114
    .end local v3    # "span":Landroid/text/style/ReplacementSpan;
    .end local v4    # "replacementText":Ljava/lang/CharSequence;
    .end local v5    # "spanToReplaceStart":I
    .end local v6    # "spanToReplaceEnd":I
    .end local v7    # "spanToReplaceFlags":I
    .end local v8    # "replacementSpan":Landroid/text/style/ReplacementSpan;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3135
    .end local v2    # "i":I
    :cond_4
    :goto_2
    return-object v1
.end method

.method private greylist-max-o setBooleanProperty(IZ)V
    .locals 2
    .param p1, "property"    # I
    .param p2, "value"    # Z

    .line 3559
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 3560
    if-eqz p2, :cond_0

    .line 3561
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    goto :goto_0

    .line 3563
    :cond_0
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    .line 3565
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist addAction(I)V
    .locals 3
    .param p1, "action"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1520
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1522
    const/high16 v0, -0x1000000

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 1527
    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addStandardActions(J)V

    .line 1528
    return-void

    .line 1523
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
    .param p1, "action"    # Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 1485
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1487
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addActionUnchecked(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1488
    return-void
.end method

.method public blacklist addChild(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1273
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1274
    if-nez p1, :cond_0

    .line 1275
    return-void

    .line 1277
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    if-nez v0, :cond_1

    .line 1278
    new-instance v0, Landroid/util/LongArray;

    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    .line 1281
    :cond_1
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedChild:Landroid/os/IBinder;

    .line 1284
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->LEASHED_NODE_ID:J

    invoke-virtual {v0, v1, v2}, Landroid/util/LongArray;->indexOf(J)I

    move-result v0

    if-ltz v0, :cond_2

    .line 1285
    return-void

    .line 1287
    :cond_2
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v0, v1, v2}, Landroid/util/LongArray;->add(J)V

    .line 1288
    return-void
.end method

.method public whitelist addChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 1250
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChildInternal(Landroid/view/View;IZ)V

    .line 1251
    return-void
.end method

.method public whitelist addChild(Landroid/view/View;I)V
    .locals 1
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .line 1366
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChildInternal(Landroid/view/View;IZ)V

    .line 1367
    return-void
.end method

.method public greylist-max-o addChildUnchecked(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 1297
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChildInternal(Landroid/view/View;IZ)V

    .line 1298
    return-void
.end method

.method public whitelist canOpenPopup()Z
    .locals 1

    .line 2763
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 3596
    const/4 v0, 0x0

    return v0
.end method

.method protected greylist-max-o enforceNotSealed()V
    .locals 2

    .line 3752
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSealed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3756
    return-void

    .line 3753
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this action on a sealed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected greylist-max-o enforceSealed()V
    .locals 2

    .line 3714
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSealed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3718
    return-void

    .line 3715
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this action on a not sealed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;

    .line 4547
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 4548
    return v0

    .line 4550
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 4551
    return v1

    .line 4553
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 4554
    return v1

    .line 4556
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 4557
    .local v2, "other":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    iget-wide v5, v2, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    .line 4558
    return v1

    .line 4560
    :cond_3
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget v4, v2, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    if-eq v3, v4, :cond_4

    .line 4561
    return v1

    .line 4563
    :cond_4
    return v0
.end method

.method public whitelist findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
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

    .line 1868
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 1869
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(IIJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1870
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1872
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 1873
    .local v0, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
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
    .param p1, "viewId"    # Ljava/lang/String;
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

    .line 1901
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 1902
    if-nez p1, :cond_0

    .line 1903
    const-string v0, "AccessibilityNodeInfo"

    const-string/jumbo v1, "returns empty list due to null viewId."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1906
    :cond_0
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(IIJ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1907
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1909
    :cond_1
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 1910
    .local v0, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
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
    .param p1, "focus"    # I

    .line 1047
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 1048
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceValidFocusType(I)V

    .line 1049
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(IIJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1050
    const/4 v0, 0x0

    return-object v0

    .line 1052
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
    .param p1, "direction"    # I

    .line 1079
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 1080
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceValidFocusDirection(I)V

    .line 1081
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(IIJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1082
    const/4 v0, 0x0

    return-object v0

    .line 1084
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

    .line 1420
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getActions()I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1447
    const/4 v0, 0x0

    .line 1449
    .local v0, "returnValue":I
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 1450
    return v0

    .line 1453
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1454
    .local v1, "actionSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1455
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v3

    .line 1456
    .local v3, "actionId":I
    const/high16 v4, 0x200000

    if-gt v3, v4, :cond_1

    .line 1457
    or-int/2addr v0, v3

    .line 1454
    .end local v3    # "actionId":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1461
    .end local v2    # "i":I
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

    .line 1718
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraDataKeys:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1719
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1721
    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getBoundsInParent(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "outBounds"    # Landroid/graphics/Rect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2050
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2052
    return-void
.end method

.method public greylist-max-o getBoundsInScreen()Landroid/graphics/Rect;
    .locals 1

    .line 2100
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist getBoundsInScreen(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 2090
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2092
    return-void
.end method

.method public whitelist getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p1, "index"    # I

    .line 1201
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(II)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getChild(II)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 12
    .param p1, "index"    # I
    .param p2, "prefetchingStrategy"    # I

    .line 1218
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 1219
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1220
    return-object v1

    .line 1222
    :cond_0
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v0, v2, v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(IIJ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1223
    return-object v1

    .line 1225
    :cond_1
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v0, p1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v9

    .line 1226
    .local v9, "childId":J
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v11

    .line 1227
    .local v11, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedChild:Landroid/os/IBinder;

    if-eqz v2, :cond_2

    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->LEASHED_NODE_ID:J

    cmp-long v0, v9, v0

    if-nez v0, :cond_2

    .line 1228
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    sget-wide v3, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, v11

    move v6, p2

    invoke-virtual/range {v0 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(ILandroid/os/IBinder;JZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    .line 1232
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

    .line 1188
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/util/LongArray;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public greylist-max-o getChildId(I)J
    .locals 2
    .param p1, "index"    # I

    .line 1176
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    if-eqz v0, :cond_0

    .line 1179
    invoke-virtual {v0, p1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v0

    return-wide v0

    .line 1177
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public greylist-max-o getChildNodeIds()Landroid/util/LongArray;
    .locals 1

    .line 1165
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    return-object v0
.end method

.method public whitelist getClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 2974
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getCollectionInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    .locals 1

    .line 2548
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    return-object v0
.end method

.method public whitelist getCollectionItemInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .locals 1

    .line 2574
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    return-object v0
.end method

.method public greylist-max-o getConnectionId()I
    .locals 1

    .line 3588
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    return v0
.end method

.method public whitelist getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 3205
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getDrawingOrder()I
    .locals 1

    .line 2522
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    return v0
.end method

.method public whitelist getError()Ljava/lang/CharSequence;
    .locals 1

    .line 3187
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getExtraRenderingInfo()Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;
    .locals 1

    .line 2626
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 1

    .line 3489
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 3490
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    .line 3492
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getHintText()Ljava/lang/CharSequence;
    .locals 1

    .line 3144
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mHintText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getInputType()I
    .locals 1

    .line 3454
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    return v0
.end method

.method public whitelist getLabelFor()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 4

    .line 3316
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 3317
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(IIJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLabeledBy()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 4

    .line 3363
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 3364
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(IIJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLeashedParent()Landroid/os/IBinder;
    .locals 1

    .line 3669
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParent:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getLeashedParentNodeId()J
    .locals 2

    .line 3679
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    return-wide v0
.end method

.method public whitelist getLiveRegion()I
    .locals 1

    .line 2714
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    return v0
.end method

.method public whitelist getMaxTextLength()I
    .locals 1

    .line 1773
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    return v0
.end method

.method public whitelist getMovementGranularities()I
    .locals 1

    .line 1799
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    return v0
.end method

.method public greylist-max-o getOriginalText()Ljava/lang/CharSequence;
    .locals 1

    .line 3035
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mOriginalText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/CharSequence;
    .locals 1

    .line 2948
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getPaneTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 2507
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPaneTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getParent()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 5

    .line 1936
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 1937
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParent:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    sget-wide v3, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 1938
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    const/4 v4, 0x3

    invoke-static {v3, v0, v1, v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(ILandroid/os/IBinder;JI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    .line 1941
    :cond_0
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(IIJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getParent(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 5
    .param p1, "prefetchingStrategy"    # I

    .line 1972
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 1973
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParent:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    sget-wide v3, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 1974
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    invoke-static {v3, v0, v1, v2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(ILandroid/os/IBinder;JI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    .line 1977
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

    .line 1987
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    return-wide v0
.end method

.method public whitelist getRangeInfo()Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    .locals 1

    .line 2597
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    return-object v0
.end method

.method public greylist getSourceNodeId()J
    .locals 2

    .line 3623
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    return-wide v0
.end method

.method public whitelist getStateDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 3196
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mStateDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .locals 5

    .line 3014
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_1

    .line 3015
    move-object v1, v0

    check-cast v1, Landroid/text/Spanned;

    .line 3016
    .local v1, "spanned":Landroid/text/Spanned;
    nop

    .line 3017
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v2, Landroid/text/style/AccessibilityClickableSpan;

    const/4 v3, 0x0

    invoke-interface {v1, v3, v0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/AccessibilityClickableSpan;

    .line 3018
    .local v0, "clickableSpans":[Landroid/text/style/AccessibilityClickableSpan;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 3019
    aget-object v4, v0, v2

    invoke-virtual {v4, p0}, Landroid/text/style/AccessibilityClickableSpan;->copyConnectionDataFrom(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3018
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3021
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    .line 3022
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v4, Landroid/text/style/AccessibilityURLSpan;

    invoke-interface {v1, v3, v2, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/AccessibilityURLSpan;

    .line 3023
    .local v2, "urlSpans":[Landroid/text/style/AccessibilityURLSpan;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 3024
    aget-object v4, v2, v3

    invoke-virtual {v4, p0}, Landroid/text/style/AccessibilityURLSpan;->copyConnectionDataFrom(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3023
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3027
    .end local v0    # "clickableSpans":[Landroid/text/style/AccessibilityClickableSpan;
    .end local v1    # "spanned":Landroid/text/Spanned;
    .end local v2    # "urlSpans":[Landroid/text/style/AccessibilityURLSpan;
    .end local v3    # "i":I
    :cond_1
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTextSelectionEnd()I
    .locals 1

    .line 3426
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    return v0
.end method

.method public whitelist getTextSelectionStart()I
    .locals 1

    .line 3411
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    return v0
.end method

.method public whitelist getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    .line 3252
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTooltipText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTouchDelegateInfo()Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;
    .locals 2

    .line 3514
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    if-eqz v0, :cond_0

    .line 3515
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->-$$Nest$msetConnectionId(Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;I)V

    .line 3516
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->-$$Nest$msetWindowId(Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;I)V

    .line 3518
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    return-object v0
.end method

.method public whitelist getTraversalAfter()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 4

    .line 1657
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 1658
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(IIJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTraversalBefore()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 4

    .line 1596
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 1597
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(IIJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getUniqueId()Ljava/lang/String;
    .locals 1

    .line 3645
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getViewIdResourceName()Ljava/lang/String;
    .locals 1

    .line 3396
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getWindow()Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 4

    .line 1922
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 1923
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(IIJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1924
    const/4 v0, 0x0

    return-object v0

    .line 1926
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 1927
    .local v0, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindow(II)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getWindowId()I
    .locals 1

    .line 1094
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    return v0
.end method

.method public greylist-max-o hasExtras()Z
    .locals 1

    .line 3500
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 5

    .line 4568
    const/16 v0, 0x1f

    .line 4569
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 4570
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v3

    add-int/2addr v2, v3

    .line 4571
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v3

    add-int/2addr v1, v3

    .line 4572
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    add-int/2addr v2, v3

    .line 4573
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method

.method public whitelist isAccessibilityFocused()Z
    .locals 1

    .line 2257
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isCheckable()Z
    .locals 1

    .line 2126
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isChecked()Z
    .locals 1

    .line 2151
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isClickable()Z
    .locals 1

    .line 2307
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isContentInvalid()Z
    .locals 1

    .line 2653
    const/high16 v0, 0x10000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isContextClickable()Z
    .locals 1

    .line 2677
    const/high16 v0, 0x20000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isDismissable()Z
    .locals 1

    .line 2787
    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isEditable()Z
    .locals 1

    .line 2464
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isEnabled()Z
    .locals 1

    .line 2357
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isFocusable()Z
    .locals 1

    .line 2176
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isFocused()Z
    .locals 1

    .line 2201
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isHeading()Z
    .locals 3

    .line 2898
    const/high16 v0, 0x200000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2899
    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getCollectionItemInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v0

    .line 2900
    .local v0, "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
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

    .line 2813
    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isLongClickable()Z
    .locals 1

    .line 2332
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isMultiLine()Z
    .locals 1

    .line 2740
    const v0, 0x8000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isPassword()Z
    .locals 1

    .line 2382
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isScreenReaderFocusable()Z
    .locals 1

    .line 2844
    const/high16 v0, 0x80000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isScrollable()Z
    .locals 1

    .line 2407
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public greylist isSealed()Z
    .locals 1

    .line 3703
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    return v0
.end method

.method public whitelist isSelected()Z
    .locals 1

    .line 2282
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isShowingHintText()Z
    .locals 1

    .line 2870
    const/high16 v0, 0x100000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isTextEntryKey()Z
    .locals 1

    .line 2924
    const/high16 v0, 0x400000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isTextSelectable()Z
    .locals 1

    .line 2439
    const/high16 v0, 0x800000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isVisibleToUser()Z
    .locals 1

    .line 2232
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist performAction(I)Z
    .locals 9
    .param p1, "action"    # I

    .line 1815
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 1816
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(IIJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1817
    const/4 v0, 0x0

    return v0

    .line 1819
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 1820
    .local v0, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    const/4 v1, 0x0

    .line 1821
    .local v1, "arguments":Landroid/os/Bundle;
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    .line 1822
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    move-object v8, v1

    goto :goto_0

    .line 1821
    :cond_1
    move-object v8, v1

    .line 1824
    .end local v1    # "arguments":Landroid/os/Bundle;
    .local v8, "arguments":Landroid/os/Bundle;
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
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 1842
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 1843
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(IIJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1844
    const/4 v0, 0x0

    return v0

    .line 1846
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 1847
    .local v0, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
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

    .line 3825
    return-void
.end method

.method public whitelist refresh()Z
    .locals 2

    .line 1128
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->refresh(Landroid/os/Bundle;Z)Z

    move-result v0

    return v0
.end method

.method public greylist-max-r refresh(Landroid/os/Bundle;Z)Z
    .locals 10
    .param p1, "arguments"    # Landroid/os/Bundle;
    .param p2, "bypassCache"    # Z

    .line 1107
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 1108
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(IIJ)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1109
    return v1

    .line 1111
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 1112
    .local v0, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    const/4 v8, 0x0

    move-object v2, v0

    move v7, p2

    move-object v9, p1

    invoke-virtual/range {v2 .. v9}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 1114
    .local v2, "refreshedInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v2, :cond_1

    .line 1115
    return v1

    .line 1117
    :cond_1
    invoke-direct {p0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->init(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1118
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist refreshWithExtraData(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "extraDataKey"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 1149
    const-string v0, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_LENGTH"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x4e20

    if-le v1, v2, :cond_0

    .line 1151
    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1155
    :cond_0
    const-string v0, "android.view.accessibility.AccessibilityNodeInfo.extra_data_requested"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->refresh(Landroid/os/Bundle;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist removeAction(I)V
    .locals 1
    .param p1, "action"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1546
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1548
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionSingleton(I)Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 1549
    return-void
.end method

.method public whitelist removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z
    .locals 1
    .param p1, "action"    # Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 1566
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1568
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1572
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1569
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o removeAllActions()V
    .locals 1

    .line 1581
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1582
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1584
    :cond_0
    return-void
.end method

.method public blacklist removeChild(Landroid/os/IBinder;)Z
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1334
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1335
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedChild:Landroid/os/IBinder;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1338
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1339
    return v1

    .line 1341
    :cond_1
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    sget-wide v2, Landroid/view/accessibility/AccessibilityNodeInfo;->LEASHED_NODE_ID:J

    invoke-virtual {v0, v2, v3}, Landroid/util/LongArray;->indexOf(J)I

    move-result v0

    .line 1342
    .local v0, "index":I
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedChild:Landroid/os/IBinder;

    .line 1343
    if-gez v0, :cond_2

    .line 1344
    return v1

    .line 1346
    :cond_2
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v1, v0}, Landroid/util/LongArray;->remove(I)V

    .line 1347
    const/4 v1, 0x1

    return v1

    .line 1336
    .end local v0    # "index":I
    :cond_3
    :goto_0
    return v1
.end method

.method public whitelist removeChild(Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 1315
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeChild(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public whitelist removeChild(Landroid/view/View;I)Z
    .locals 6
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .line 1400
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1401
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    .line 1402
    .local v0, "childIds":Landroid/util/LongArray;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1403
    return v1

    .line 1406
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v2

    goto :goto_0

    :cond_1
    const v2, 0x7fffffff

    .line 1407
    .local v2, "rootAccessibilityViewId":I
    :goto_0
    invoke-static {v2, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v3

    .line 1408
    .local v3, "childNodeId":J
    invoke-virtual {v0, v3, v4}, Landroid/util/LongArray;->indexOf(J)I

    move-result v5

    .line 1409
    .local v5, "index":I
    if-gez v5, :cond_2

    .line 1410
    return v1

    .line 1412
    :cond_2
    invoke-virtual {v0, v5}, Landroid/util/LongArray;->remove(I)V

    .line 1413
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist setAccessibilityFocused(Z)V
    .locals 1
    .param p1, "focused"    # Z

    .line 2273
    const/16 v0, 0x400

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 2274
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

    .line 1742
    .local p1, "extraDataKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1743
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraDataKeys:Ljava/util/ArrayList;

    .line 1744
    return-void
.end method

.method public whitelist setBoundsInParent(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2074
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 2075
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2076
    return-void
.end method

.method public whitelist setBoundsInScreen(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 2116
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 2117
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2118
    return-void
.end method

.method public whitelist setCanOpenPopup(Z)V
    .locals 1
    .param p1, "opensPopup"    # Z

    .line 2777
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 2778
    const/16 v0, 0x2000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 2779
    return-void
.end method

.method public whitelist setCheckable(Z)V
    .locals 1
    .param p1, "checkable"    # Z

    .line 2142
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 2143
    return-void
.end method

.method public whitelist setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .line 2167
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 2168
    return-void
.end method

.method public whitelist setClassName(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/CharSequence;

    .line 2990
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 2991
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    .line 2992
    return-void
.end method

.method public whitelist setClickable(Z)V
    .locals 1
    .param p1, "clickable"    # Z

    .line 2323
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 2324
    return-void
.end method

.method public whitelist setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V
    .locals 0
    .param p1, "collectionInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 2563
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 2564
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 2565
    return-void
.end method

.method public whitelist setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V
    .locals 0
    .param p1, "collectionItemInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .line 2587
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 2588
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .line 2589
    return-void
.end method

.method public greylist-max-o setConnectionId(I)V
    .locals 0
    .param p1, "connectionId"    # I

    .line 3576
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 3577
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    .line 3578
    return-void
.end method

.method public whitelist setContentDescription(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .line 3240
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 3241
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3242
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    .line 3243
    return-void
.end method

.method public whitelist setContentInvalid(Z)V
    .locals 1
    .param p1, "contentInvalid"    # Z

    .line 2668
    const/high16 v0, 0x10000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 2669
    return-void
.end method

.method public whitelist setContextClickable(Z)V
    .locals 1
    .param p1, "contextClickable"    # Z

    .line 2692
    const/high16 v0, 0x20000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 2693
    return-void
.end method

.method public whitelist setDismissable(Z)V
    .locals 1
    .param p1, "dismissable"    # Z

    .line 2801
    const/16 v0, 0x4000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 2802
    return-void
.end method

.method public whitelist setDrawingOrder(I)V
    .locals 0
    .param p1, "drawingOrderInParent"    # I

    .line 2537
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 2538
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    .line 2539
    return-void
.end method

.method public whitelist setEditable(Z)V
    .locals 1
    .param p1, "editable"    # Z

    .line 2480
    const/16 v0, 0x1000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 2481
    return-void
.end method

.method public whitelist setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 2373
    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 2374
    return-void
.end method

.method public whitelist setError(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/CharSequence;

    .line 3177
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 3178
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

    .line 3179
    return-void
.end method

.method public blacklist setExtraRenderingInfo(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;)V
    .locals 0
    .param p1, "extraRenderingInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    .line 2642
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 2643
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    .line 2644
    return-void
.end method

.method public whitelist setFocusable(Z)V
    .locals 1
    .param p1, "focusable"    # Z

    .line 2192
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 2193
    return-void
.end method

.method public whitelist setFocused(Z)V
    .locals 1
    .param p1, "focused"    # Z

    .line 2217
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 2218
    return-void
.end method

.method public whitelist setHeading(Z)V
    .locals 1
    .param p1, "isHeading"    # Z

    .line 2915
    const/high16 v0, 0x200000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 2916
    return-void
.end method

.method public whitelist setHintText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "hintText"    # Ljava/lang/CharSequence;

    .line 3160
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 3161
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

    .line 3162
    return-void
.end method

.method public whitelist setImportantForAccessibility(Z)V
    .locals 1
    .param p1, "important"    # Z

    .line 2828
    const/high16 v0, 0x40000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 2829
    return-void
.end method

.method public whitelist setInputType(I)V
    .locals 0
    .param p1, "inputType"    # I

    .line 3471
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 3472
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    .line 3473
    return-void
.end method

.method public whitelist setLabelFor(Landroid/view/View;)V
    .locals 1
    .param p1, "labeled"    # Landroid/view/View;

    .line 3280
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabelFor(Landroid/view/View;I)V

    .line 3281
    return-void
.end method

.method public whitelist setLabelFor(Landroid/view/View;I)V
    .locals 3
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .line 3303
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 3304
    if-eqz p1, :cond_0

    .line 3305
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    .line 3306
    .local v0, "rootAccessibilityViewId":I
    :goto_0
    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    .line 3307
    return-void
.end method

.method public whitelist setLabeledBy(Landroid/view/View;)V
    .locals 1
    .param p1, "label"    # Landroid/view/View;

    .line 3327
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabeledBy(Landroid/view/View;I)V

    .line 3328
    return-void
.end method

.method public whitelist setLabeledBy(Landroid/view/View;I)V
    .locals 3
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .line 3350
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 3351
    if-eqz p1, :cond_0

    .line 3352
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    .line 3353
    .local v0, "rootAccessibilityViewId":I
    :goto_0
    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    .line 3354
    return-void
.end method

.method public blacklist setLeashedParent(Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "viewId"    # I

    .line 3657
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 3658
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParent:Landroid/os/IBinder;

    .line 3659
    const/4 v0, -0x1

    invoke-static {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    .line 3660
    return-void
.end method

.method public whitelist setLiveRegion(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 2730
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 2731
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    .line 2732
    return-void
.end method

.method public whitelist setLongClickable(Z)V
    .locals 1
    .param p1, "longClickable"    # Z

    .line 2348
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 2349
    return-void
.end method

.method public whitelist setMaxTextLength(I)V
    .locals 0
    .param p1, "max"    # I

    .line 1762
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1763
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    .line 1764
    return-void
.end method

.method public whitelist setMovementGranularities(I)V
    .locals 0
    .param p1, "granularities"    # I

    .line 1789
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1790
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    .line 1791
    return-void
.end method

.method public whitelist setMultiLine(Z)V
    .locals 1
    .param p1, "multiLine"    # Z

    .line 2754
    const v0, 0x8000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 2755
    return-void
.end method

.method public whitelist setPackageName(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/CharSequence;

    .line 2964
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 2965
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    .line 2966
    return-void
.end method

.method public whitelist setPaneTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "paneTitle"    # Ljava/lang/CharSequence;

    .line 2495
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 2496
    if-nez p1, :cond_0

    .line 2497
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

    .line 2498
    return-void
.end method

.method public whitelist setParent(Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;

    .line 2003
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    .line 2004
    return-void
.end method

.method public whitelist setParent(Landroid/view/View;I)V
    .locals 3
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .line 2026
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 2028
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    .line 2029
    .local v0, "rootAccessibilityViewId":I
    :goto_0
    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    .line 2030
    return-void
.end method

.method public whitelist setPassword(Z)V
    .locals 1
    .param p1, "password"    # Z

    .line 2398
    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 2399
    return-void
.end method

.method public whitelist setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V
    .locals 0
    .param p1, "rangeInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .line 2611
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 2612
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .line 2613
    return-void
.end method

.method public whitelist setScreenReaderFocusable(Z)V
    .locals 1
    .param p1, "screenReaderFocusable"    # Z

    .line 2859
    const/high16 v0, 0x80000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 2860
    return-void
.end method

.method public whitelist setScrollable(Z)V
    .locals 1
    .param p1, "scrollable"    # Z

    .line 2423
    const/16 v0, 0x200

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 2424
    return-void
.end method

.method public greylist setSealed(Z)V
    .locals 0
    .param p1, "sealed"    # Z

    .line 3691
    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    .line 3692
    return-void
.end method

.method public whitelist setSelected(Z)V
    .locals 1
    .param p1, "selected"    # Z

    .line 2298
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 2299
    return-void
.end method

.method public whitelist setShowingHintText(Z)V
    .locals 1
    .param p1, "showingHintText"    # Z

    .line 2886
    const/high16 v0, 0x100000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 2887
    return-void
.end method

.method public whitelist setSource(Landroid/view/View;)V
    .locals 1
    .param p1, "source"    # Landroid/view/View;

    .line 996
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 997
    return-void
.end method

.method public whitelist setSource(Landroid/view/View;I)V
    .locals 3
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .line 1019
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1020
    const v0, 0x7fffffff

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityWindowId()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    .line 1022
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    .line 1023
    .local v0, "rootAccessibilityViewId":I
    :cond_1
    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    .line 1024
    return-void
.end method

.method public greylist-max-o setSourceNodeId(JI)V
    .locals 0
    .param p1, "sourceId"    # J
    .param p3, "windowId"    # I

    .line 3608
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 3609
    iput-wide p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    .line 3610
    iput p3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    .line 3611
    return-void
.end method

.method public whitelist setStateDescription(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "stateDescription"    # Ljava/lang/CharSequence;

    .line 3222
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 3223
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3224
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mStateDescription:Ljava/lang/CharSequence;

    .line 3225
    return-void
.end method

.method public whitelist setText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 3051
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 3052
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mOriginalText:Ljava/lang/CharSequence;

    .line 3053
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 3054
    move-object v0, p1

    .line 3055
    .local v0, "tmpText":Ljava/lang/CharSequence;
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->replaceClickableSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3056
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->replaceReplacementSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3057
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    .line 3058
    return-void

    .line 3060
    .end local v0    # "tmpText":Ljava/lang/CharSequence;
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

    .line 3061
    return-void
.end method

.method public whitelist setTextEntryKey(Z)V
    .locals 1
    .param p1, "isTextEntryKey"    # Z

    .line 2939
    const/high16 v0, 0x400000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 2940
    return-void
.end method

.method public whitelist setTextSelectable(Z)V
    .locals 1
    .param p1, "selectableText"    # Z

    .line 2455
    const/high16 v0, 0x800000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 2456
    return-void
.end method

.method public whitelist setTextSelection(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 3443
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 3444
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    .line 3445
    iput p2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    .line 3446
    return-void
.end method

.method public whitelist setTooltipText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "tooltipText"    # Ljava/lang/CharSequence;

    .line 3268
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 3269
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3270
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTooltipText:Ljava/lang/CharSequence;

    .line 3271
    return-void
.end method

.method public whitelist setTouchDelegateInfo(Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;)V
    .locals 0
    .param p1, "delegatedInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    .line 3536
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 3537
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    .line 3538
    return-void
.end method

.method public whitelist setTraversalAfter(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 1676
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalAfter(Landroid/view/View;I)V

    .line 1677
    return-void
.end method

.method public whitelist setTraversalAfter(Landroid/view/View;I)V
    .locals 3
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .line 1700
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1701
    if-eqz p1, :cond_0

    .line 1702
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    .line 1703
    .local v0, "rootAccessibilityViewId":I
    :goto_0
    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    .line 1704
    return-void
.end method

.method public whitelist setTraversalBefore(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 1615
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalBefore(Landroid/view/View;I)V

    .line 1616
    return-void
.end method

.method public whitelist setTraversalBefore(Landroid/view/View;I)V
    .locals 3
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .line 1640
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1641
    if-eqz p1, :cond_0

    .line 1642
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    .line 1643
    .local v0, "rootAccessibilityViewId":I
    :goto_0
    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    .line 1644
    return-void
.end method

.method public whitelist setUniqueId(Ljava/lang/String;)V
    .locals 0
    .param p1, "uniqueId"    # Ljava/lang/String;

    .line 3634
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 3635
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mUniqueId:Ljava/lang/String;

    .line 3636
    return-void
.end method

.method public whitelist setViewIdResourceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "viewIdResName"    # Ljava/lang/String;

    .line 3379
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 3380
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    .line 3381
    return-void
.end method

.method public whitelist setVisibleToUser(Z)V
    .locals 1
    .param p1, "visibleToUser"    # Z

    .line 2248
    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    .line 2249
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 10

    .line 4578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4579
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4581
    sget-boolean v1, Landroid/view/accessibility/AccessibilityNodeInfo;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 4582
    const-string v1, "; sourceNodeId: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4583
    const-string v1, "; windowId: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4584
    const-string v1, "; accessibilityViewId: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    .line 4585
    invoke-static {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4586
    const-string v1, "; virtualDescendantId: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    .line 4587
    invoke-static {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4588
    const-string v1, "; mParentNodeId: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4589
    const-string v1, "; traversalBefore: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4590
    const-string v1, "; traversalAfter: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4592
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    .line 4593
    .local v1, "granularities":I
    const-string v2, "; MovementGranularities: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4594
    :goto_0
    const-string v2, ", "

    if-eqz v1, :cond_1

    .line 4595
    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    const/4 v4, 0x1

    shl-int v3, v4, v3

    .line 4596
    .local v3, "granularity":I
    not-int v4, v3

    and-int/2addr v1, v4

    .line 4597
    invoke-static {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getMovementGranularitySymbolicName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4598
    if-eqz v1, :cond_0

    .line 4599
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4601
    .end local v3    # "granularity":I
    :cond_0
    goto :goto_0

    .line 4602
    :cond_1
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4604
    const-string v4, "; childAccessibilityIds: ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4605
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    .line 4606
    .local v4, "childIds":Landroid/util/LongArray;
    if-eqz v4, :cond_3

    .line 4607
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-virtual {v4}, Landroid/util/LongArray;->size()I

    move-result v6

    .local v6, "count":I
    :goto_1
    if-ge v5, v6, :cond_3

    .line 4608
    const-string v7, "0x"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4, v5}, Landroid/util/LongArray;->get(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4609
    add-int/lit8 v7, v6, -0x1

    if-ge v5, v7, :cond_2

    .line 4610
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4607
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4614
    .end local v5    # "i":I
    .end local v6    # "count":I
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4617
    .end local v1    # "granularities":I
    .end local v4    # "childIds":Landroid/util/LongArray;
    :cond_4
    const-string v1, "; boundsInParent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4618
    const-string v1, "; boundsInScreen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4620
    const-string v1, "; packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4621
    const-string v1, "; className: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4622
    const-string v1, "; text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4623
    const-string v1, "; error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4624
    const-string v1, "; maxTextLength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4625
    const-string v1, "; stateDescription: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mStateDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4626
    const-string v1, "; contentDescription: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4627
    const-string v1, "; tooltipText: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTooltipText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4628
    const-string v1, "; viewIdResName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4629
    const-string v1, "; uniqueId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4631
    const-string v1, "; checkable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4632
    const-string v1, "; checked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4633
    const-string v1, "; focusable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4634
    const-string v1, "; focused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4635
    const-string v1, "; selected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4636
    const-string v1, "; clickable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4637
    const-string v1, "; longClickable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4638
    const-string v1, "; contextClickable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isContextClickable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4639
    const-string v1, "; enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4640
    const-string v1, "; password: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4641
    const-string v1, "; scrollable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4642
    const-string v1, "; importantForAccessibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isImportantForAccessibility()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4643
    const-string v1, "; visible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4644
    const-string v1, "; actions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4645
    const-string v1, "; isTextSelectable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isTextSelectable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4647
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3836
    invoke-virtual {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->writeToParcelNoRecycle(Landroid/os/Parcel;I)V

    .line 3839
    return-void
.end method

.method public blacklist writeToParcelNoRecycle(Landroid/os/Parcel;I)V
    .locals 12
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3845
    const-wide/16 v0, 0x0

    .line 3846
    .local v0, "nonDefaultFields":J
    const/4 v2, 0x0

    .line 3847
    .local v2, "fieldIndex":I
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSealed()Z

    move-result v3

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSealed()Z

    move-result v5

    if-eq v3, v5, :cond_0

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v5

    or-long/2addr v0, v5

    .line 3848
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 3849
    iget-wide v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    iget-wide v7, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    cmp-long v3, v5, v7

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v5

    or-long/2addr v0, v5

    .line 3850
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 3851
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget v5, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    if-eq v3, v5, :cond_2

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v5

    or-long/2addr v0, v5

    .line 3852
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 3853
    iget-wide v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    iget-wide v7, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    cmp-long v3, v5, v7

    if-eqz v3, :cond_3

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v5

    or-long/2addr v0, v5

    .line 3854
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 3855
    iget-wide v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    iget-wide v7, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    cmp-long v3, v5, v7

    if-eqz v3, :cond_4

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v5

    or-long/2addr v0, v5

    .line 3856
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 3857
    iget-wide v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    iget-wide v7, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    cmp-long v3, v5, v7

    if-eqz v3, :cond_5

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v5

    or-long/2addr v0, v5

    .line 3858
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 3859
    iget-wide v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    iget-wide v7, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    cmp-long v3, v5, v7

    if-eqz v3, :cond_6

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v5

    or-long/2addr v0, v5

    .line 3860
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 3861
    iget-wide v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    iget-wide v7, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    cmp-long v3, v5, v7

    if-eqz v3, :cond_7

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v5

    or-long/2addr v0, v5

    .line 3862
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 3863
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v5, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    if-eq v3, v5, :cond_8

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v5

    or-long/2addr v0, v5

    .line 3864
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 3865
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    iget-object v5, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-static {v3, v5}, Landroid/util/LongArray;->elementsEqual(Landroid/util/LongArray;Landroid/util/LongArray;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 3866
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v5

    or-long/2addr v0, v5

    .line 3868
    :cond_9
    add-int/lit8 v2, v2, 0x1

    .line 3869
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget-object v5, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 3870
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v5

    or-long/2addr v0, v5

    .line 3872
    :cond_a
    add-int/lit8 v2, v2, 0x1

    .line 3873
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget-object v5, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 3874
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v5

    or-long/2addr v0, v5

    .line 3876
    :cond_b
    add-int/lit8 v2, v2, 0x1

    .line 3877
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    iget-object v5, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v5

    or-long/2addr v0, v5

    .line 3878
    :cond_c
    add-int/lit8 v2, v2, 0x1

    .line 3879
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    iget v5, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    if-eq v3, v5, :cond_d

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v5

    or-long/2addr v0, v5

    .line 3880
    :cond_d
    add-int/lit8 v2, v2, 0x1

    .line 3881
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    iget v5, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    if-eq v3, v5, :cond_e

    .line 3882
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v5

    or-long/2addr v0, v5

    .line 3884
    :cond_e
    add-int/lit8 v2, v2, 0x1

    .line 3885
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    iget v5, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    if-eq v3, v5, :cond_f

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v5

    or-long/2addr v0, v5

    .line 3886
    :cond_f
    add-int/lit8 v2, v2, 0x1

    .line 3887
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    iget-object v5, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 3888
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v5

    or-long/2addr v0, v5

    .line 3890
    :cond_10
    add-int/lit8 v2, v2, 0x1

    .line 3891
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    iget-object v5, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v5

    or-long/2addr v0, v5

    .line 3892
    :cond_11
    add-int/lit8 v2, v2, 0x1

    .line 3893
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    iget-object v5, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v5

    or-long/2addr v0, v5

    .line 3894
    :cond_12
    add-int/lit8 v2, v2, 0x1

    .line 3895
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mHintText:Ljava/lang/CharSequence;

    iget-object v5, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mHintText:Ljava/lang/CharSequence;

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 3896
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v5

    or-long/2addr v0, v5

    .line 3898
    :cond_13
    add-int/lit8 v2, v2, 0x1

    .line 3899
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    iget-object v5, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v5

    or-long/2addr v0, v5

    .line 3900
    :cond_14
    add-int/lit8 v2, v2, 0x1

    .line 3901
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mStateDescription:Ljava/lang/CharSequence;

    iget-object v5, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mStateDescription:Ljava/lang/CharSequence;

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 3902
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v5

    or-long/2addr v0, v5

    .line 3904
    :cond_15
    add-int/lit8 v2, v2, 0x1

    .line 3905
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    iget-object v5, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 3906
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v5

    or-long/2addr v0, v5

    .line 3908
    :cond_16
    add-int/lit8 v2, v2, 0x1

    .line 3909
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPaneTitle:Ljava/lang/CharSequence;

    iget-object v5, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mPaneTitle:Ljava/lang/CharSequence;

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 3910
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v5

    or-long/2addr v0, v5

    .line 3912
    :cond_17
    add-int/lit8 v2, v2, 0x1

    .line 3913
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTooltipText:Ljava/lang/CharSequence;

    iget-object v5, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mTooltipText:Ljava/lang/CharSequence;

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 3914
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v5

    or-long/2addr v0, v5

    .line 3916
    :cond_18
    add-int/lit8 v2, v2, 0x1

    .line 3917
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    iget-object v5, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 3918
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v5

    or-long/2addr v0, v5

    .line 3920
    :cond_19
    add-int/lit8 v2, v2, 0x1

    .line 3921
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mUniqueId:Ljava/lang/String;

    iget-object v5, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mUniqueId:Ljava/lang/String;

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 3922
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v5

    or-long/2addr v0, v5

    .line 3924
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    .line 3925
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    iget v5, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    if-eq v3, v5, :cond_1b

    .line 3926
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v5

    or-long/2addr v0, v5

    .line 3928
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    .line 3929
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    iget v5, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    if-eq v3, v5, :cond_1c

    .line 3930
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v5

    or-long/2addr v0, v5

    .line 3932
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    .line 3933
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    iget v5, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    if-eq v3, v5, :cond_1d

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v5

    or-long/2addr v0, v5

    .line 3934
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    .line 3935
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    iget v5, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    if-eq v3, v5, :cond_1e

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v5

    or-long/2addr v0, v5

    .line 3936
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    .line 3937
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    iget v5, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    if-eq v3, v5, :cond_1f

    .line 3938
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v5

    or-long/2addr v0, v5

    .line 3940
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    .line 3941
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraDataKeys:Ljava/util/ArrayList;

    iget-object v5, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraDataKeys:Ljava/util/ArrayList;

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 3942
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v5

    or-long/2addr v0, v5

    .line 3944
    :cond_20
    add-int/lit8 v2, v2, 0x1

    .line 3945
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    iget-object v5, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v5

    or-long/2addr v0, v5

    .line 3946
    :cond_21
    add-int/lit8 v2, v2, 0x1

    .line 3947
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    iget-object v5, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v5

    or-long/2addr v0, v5

    .line 3948
    :cond_22
    add-int/lit8 v2, v2, 0x1

    .line 3949
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    iget-object v5, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 3950
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v5

    or-long/2addr v0, v5

    .line 3952
    :cond_23
    add-int/lit8 v2, v2, 0x1

    .line 3953
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    iget-object v5, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 3954
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v5

    or-long/2addr v0, v5

    .line 3956
    :cond_24
    add-int/lit8 v2, v2, 0x1

    .line 3957
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    iget-object v5, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 3958
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v5

    or-long/2addr v0, v5

    .line 3960
    :cond_25
    add-int/lit8 v2, v2, 0x1

    .line 3961
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    iget-object v5, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 3962
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v5

    or-long/2addr v0, v5

    .line 3964
    :cond_26
    add-int/lit8 v2, v2, 0x1

    .line 3965
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedChild:Landroid/os/IBinder;

    iget-object v5, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedChild:Landroid/os/IBinder;

    if-eq v3, v5, :cond_27

    .line 3966
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v5

    or-long/2addr v0, v5

    .line 3968
    :cond_27
    add-int/lit8 v2, v2, 0x1

    .line 3969
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParent:Landroid/os/IBinder;

    iget-object v5, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParent:Landroid/os/IBinder;

    if-eq v3, v5, :cond_28

    .line 3970
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v5

    or-long/2addr v0, v5

    .line 3972
    :cond_28
    add-int/lit8 v2, v2, 0x1

    .line 3973
    iget-wide v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    iget-wide v3, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    cmp-long v3, v5, v3

    if-eqz v3, :cond_29

    .line 3974
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 3976
    :cond_29
    move v3, v2

    .line 3977
    .local v3, "totalFields":I
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3979
    const/4 v2, 0x0

    .line 3980
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "fieldIndex":I
    .local v4, "fieldIndex":I
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSealed()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3981
    :cond_2a
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "fieldIndex":I
    .restart local v2    # "fieldIndex":I
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_2b

    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 3982
    :cond_2b
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "fieldIndex":I
    .restart local v4    # "fieldIndex":I
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3983
    :cond_2c
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "fieldIndex":I
    .restart local v2    # "fieldIndex":I
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_2d

    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 3984
    :cond_2d
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "fieldIndex":I
    .restart local v4    # "fieldIndex":I
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-wide v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 3985
    :cond_2e
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "fieldIndex":I
    .restart local v2    # "fieldIndex":I
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_2f

    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 3986
    :cond_2f
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "fieldIndex":I
    .restart local v4    # "fieldIndex":I
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_30

    iget-wide v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 3987
    :cond_30
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "fieldIndex":I
    .restart local v2    # "fieldIndex":I
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_31

    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 3989
    :cond_31
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "fieldIndex":I
    .restart local v4    # "fieldIndex":I
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_32

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3991
    :cond_32
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "fieldIndex":I
    .restart local v2    # "fieldIndex":I
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_34

    .line 3992
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    .line 3993
    .local v4, "childIds":Landroid/util/LongArray;
    if-nez v4, :cond_33

    .line 3994
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 3996
    :cond_33
    invoke-virtual {v4}, Landroid/util/LongArray;->size()I

    move-result v6

    .line 3997
    .local v6, "childIdsSize":I
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3998
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_34

    .line 3999
    invoke-virtual {v4, v7}, Landroid/util/LongArray;->get(I)J

    move-result-wide v8

    invoke-virtual {p1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 3998
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 4004
    .end local v4    # "childIds":Landroid/util/LongArray;
    .end local v6    # "childIdsSize":I
    .end local v7    # "i":I
    :cond_34
    :goto_1
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "fieldIndex":I
    .local v4, "fieldIndex":I
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 4005
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4006
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4007
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4008
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4011
    :cond_35
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "fieldIndex":I
    .restart local v2    # "fieldIndex":I
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 4012
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4013
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4014
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4015
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4018
    :cond_36
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "fieldIndex":I
    .restart local v4    # "fieldIndex":I
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 4019
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    if-eqz v2, :cond_3b

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3b

    .line 4020
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4022
    .local v2, "actionCount":I
    const/4 v5, 0x0

    .line 4023
    .local v5, "nonStandardActionCount":I
    const-wide/16 v6, 0x0

    .line 4024
    .local v6, "defaultStandardActions":J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v2, :cond_38

    .line 4025
    iget-object v9, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 4026
    .local v9, "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    invoke-static {v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->isDefaultStandardAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    move-result v10

    if-eqz v10, :cond_37

    .line 4027
    iget-wide v10, v9, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->mSerializationFlag:J

    or-long/2addr v6, v10

    goto :goto_3

    .line 4029
    :cond_37
    add-int/lit8 v5, v5, 0x1

    .line 4024
    .end local v9    # "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 4032
    .end local v8    # "i":I
    :cond_38
    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 4034
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4035
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_4
    if-ge v8, v2, :cond_3a

    .line 4036
    iget-object v9, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 4037
    .restart local v9    # "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    invoke-static {v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->isDefaultStandardAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    move-result v10

    if-nez v10, :cond_39

    .line 4038
    invoke-virtual {v9, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4035
    .end local v9    # "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    :cond_39
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 4041
    .end local v2    # "actionCount":I
    .end local v5    # "nonStandardActionCount":I
    .end local v6    # "defaultStandardActions":J
    .end local v8    # "i":I
    :cond_3a
    goto :goto_5

    .line 4042
    :cond_3b
    const-wide/16 v6, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 4043
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4047
    :cond_3c
    :goto_5
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "fieldIndex":I
    .local v2, "fieldIndex":I
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_3d

    iget v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4048
    :cond_3d
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "fieldIndex":I
    .restart local v4    # "fieldIndex":I
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_3e

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4049
    :cond_3e
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "fieldIndex":I
    .restart local v2    # "fieldIndex":I
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_3f

    iget v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4051
    :cond_3f
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "fieldIndex":I
    .restart local v4    # "fieldIndex":I
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_40

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 4052
    :cond_40
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "fieldIndex":I
    .restart local v2    # "fieldIndex":I
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_41

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 4053
    :cond_41
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "fieldIndex":I
    .restart local v4    # "fieldIndex":I
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_42

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 4054
    :cond_42
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "fieldIndex":I
    .restart local v2    # "fieldIndex":I
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_43

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mHintText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 4055
    :cond_43
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "fieldIndex":I
    .restart local v4    # "fieldIndex":I
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_44

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 4056
    :cond_44
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "fieldIndex":I
    .restart local v2    # "fieldIndex":I
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_45

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mStateDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 4057
    :cond_45
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "fieldIndex":I
    .restart local v4    # "fieldIndex":I
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 4058
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 4060
    :cond_46
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "fieldIndex":I
    .restart local v2    # "fieldIndex":I
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_47

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPaneTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 4061
    :cond_47
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "fieldIndex":I
    .restart local v4    # "fieldIndex":I
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_48

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTooltipText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 4063
    :cond_48
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "fieldIndex":I
    .restart local v2    # "fieldIndex":I
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_49

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4064
    :cond_49
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "fieldIndex":I
    .restart local v4    # "fieldIndex":I
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_4a

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mUniqueId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4066
    :cond_4a
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "fieldIndex":I
    .restart local v2    # "fieldIndex":I
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_4b

    iget v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4067
    :cond_4b
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "fieldIndex":I
    .restart local v4    # "fieldIndex":I
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_4c

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4068
    :cond_4c
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "fieldIndex":I
    .restart local v2    # "fieldIndex":I
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_4d

    iget v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4069
    :cond_4d
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "fieldIndex":I
    .restart local v4    # "fieldIndex":I
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_4e

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4070
    :cond_4e
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "fieldIndex":I
    .restart local v2    # "fieldIndex":I
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_4f

    iget v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4072
    :cond_4f
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "fieldIndex":I
    .restart local v4    # "fieldIndex":I
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_50

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraDataKeys:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4074
    :cond_50
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "fieldIndex":I
    .restart local v2    # "fieldIndex":I
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_51

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 4076
    :cond_51
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "fieldIndex":I
    .restart local v4    # "fieldIndex":I
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 4077
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getType()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4078
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getMin()F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4079
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getMax()F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4080
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getCurrent()F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4083
    :cond_52
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "fieldIndex":I
    .restart local v2    # "fieldIndex":I
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 4084
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->getRowCount()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4085
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->getColumnCount()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4086
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->isHierarchical()Z

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4087
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->getSelectionMode()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4090
    :cond_53
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "fieldIndex":I
    .restart local v4    # "fieldIndex":I
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 4091
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getRowTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4092
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getRowIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4093
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getRowSpan()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4094
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getColumnTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4095
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getColumnIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4096
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getColumnSpan()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4097
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->isHeading()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4098
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->isSelected()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4101
    :cond_54
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "fieldIndex":I
    .restart local v2    # "fieldIndex":I
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 4102
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    invoke-virtual {v4, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4105
    :cond_55
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "fieldIndex":I
    .restart local v4    # "fieldIndex":I
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 4106
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->getLayoutSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 4107
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->getTextSizeInPx()F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4108
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->getTextSizeUnit()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4111
    :cond_56
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "fieldIndex":I
    .restart local v2    # "fieldIndex":I
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 4112
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedChild:Landroid/os/IBinder;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4114
    :cond_57
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "fieldIndex":I
    .restart local v4    # "fieldIndex":I
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 4115
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParent:Landroid/os/IBinder;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4117
    :cond_58
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "fieldIndex":I
    .restart local v2    # "fieldIndex":I
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 4118
    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 4121
    :cond_59
    sget-boolean v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEBUG:Z

    if-eqz v4, :cond_5b

    .line 4122
    add-int/lit8 v2, v2, -0x1

    .line 4123
    if-ne v3, v2, :cond_5a

    goto :goto_6

    .line 4124
    :cond_5a
    new-instance v4, Ljava/lang/IllegalStateException;

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

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4128
    :cond_5b
    :goto_6
    return-void
.end method
