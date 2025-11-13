.class public final Landroid/view/MotionEvent;
.super Landroid/view/InputEvent;
.source "MotionEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/MotionEvent$PointerCoords;,
        Landroid/view/MotionEvent$PointerProperties;,
        Landroid/view/MotionEvent$ToolType;,
        Landroid/view/MotionEvent$Classification;,
        Landroid/view/MotionEvent$Button;,
        Landroid/view/MotionEvent$Axis;,
        Landroid/view/MotionEvent$Flag;,
        Landroid/view/MotionEvent$ActionMasked;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_BUTTON_PRESS:I = 0xb

.field public static final whitelist ACTION_BUTTON_RELEASE:I = 0xc

.field public static final whitelist ACTION_CANCEL:I = 0x3

.field public static final whitelist ACTION_DOWN:I = 0x0

.field public static final whitelist ACTION_HOVER_ENTER:I = 0x9

.field public static final whitelist ACTION_HOVER_EXIT:I = 0xa

.field public static final whitelist ACTION_HOVER_MOVE:I = 0x7

.field public static final whitelist ACTION_MASK:I = 0xff

.field public static final whitelist ACTION_MOVE:I = 0x2

.field public static final whitelist ACTION_OUTSIDE:I = 0x4

.field public static final blacklist ACTION_PEN_CANCEL:I = 0xd6

.field public static final blacklist ACTION_PEN_DOWN:I = 0xd3

.field public static final blacklist ACTION_PEN_MOVE:I = 0xd5

.field public static final blacklist ACTION_PEN_UP:I = 0xd4

.field public static final whitelist ACTION_POINTER_1_DOWN:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_POINTER_1_UP:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_POINTER_2_DOWN:I = 0x105
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_POINTER_2_UP:I = 0x106
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_POINTER_3_DOWN:I = 0x205
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_POINTER_3_UP:I = 0x206
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_POINTER_DOWN:I = 0x5

.field public static final whitelist ACTION_POINTER_ID_MASK:I = 0xff00
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_POINTER_ID_SHIFT:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_POINTER_INDEX_MASK:I = 0xff00

.field public static final whitelist ACTION_POINTER_INDEX_SHIFT:I = 0x8

.field public static final whitelist ACTION_POINTER_UP:I = 0x6

.field public static final whitelist ACTION_SCROLL:I = 0x8

.field public static final whitelist ACTION_UP:I = 0x1

.field public static final whitelist AXIS_BRAKE:I = 0x17

.field public static final whitelist AXIS_DISTANCE:I = 0x18

.field public static final blacklist AXIS_DPI_X:I = 0x3c

.field public static final blacklist AXIS_DPI_Y:I = 0x3d

.field public static final whitelist AXIS_GAS:I = 0x16

.field public static final whitelist AXIS_GENERIC_1:I = 0x20

.field public static final whitelist AXIS_GENERIC_10:I = 0x29

.field public static final whitelist AXIS_GENERIC_11:I = 0x2a

.field public static final whitelist AXIS_GENERIC_12:I = 0x2b

.field public static final whitelist AXIS_GENERIC_13:I = 0x2c

.field public static final whitelist AXIS_GENERIC_14:I = 0x2d

.field public static final whitelist AXIS_GENERIC_15:I = 0x2e

.field public static final whitelist AXIS_GENERIC_16:I = 0x2f

.field public static final whitelist AXIS_GENERIC_2:I = 0x21

.field public static final whitelist AXIS_GENERIC_3:I = 0x22

.field public static final whitelist AXIS_GENERIC_4:I = 0x23

.field public static final whitelist AXIS_GENERIC_5:I = 0x24

.field public static final whitelist AXIS_GENERIC_6:I = 0x25

.field public static final whitelist AXIS_GENERIC_7:I = 0x26

.field public static final whitelist AXIS_GENERIC_8:I = 0x27

.field public static final whitelist AXIS_GENERIC_9:I = 0x28

.field public static final whitelist AXIS_GESTURE_PINCH_SCALE_FACTOR:I = 0x34

.field public static final whitelist AXIS_GESTURE_SCROLL_X_DISTANCE:I = 0x32

.field public static final whitelist AXIS_GESTURE_SCROLL_Y_DISTANCE:I = 0x33

.field public static final blacklist AXIS_GESTURE_SWIPE_FINGER_COUNT:I = 0x35

.field public static final whitelist AXIS_GESTURE_X_OFFSET:I = 0x30

.field public static final whitelist AXIS_GESTURE_Y_OFFSET:I = 0x31

.field public static final whitelist AXIS_HAT_X:I = 0xf

.field public static final whitelist AXIS_HAT_Y:I = 0x10

.field public static final whitelist AXIS_HSCROLL:I = 0xa

.field public static final whitelist AXIS_LTRIGGER:I = 0x11

.field public static final whitelist AXIS_ORIENTATION:I = 0x8

.field public static final blacklist AXIS_PALM:I = 0x37

.field public static final blacklist AXIS_PREDICTED_X_OFFSET:I = 0x3a

.field public static final blacklist AXIS_PREDICTED_Y_OFFSET:I = 0x3b

.field public static final whitelist AXIS_PRESSURE:I = 0x2

.field public static final whitelist AXIS_RELATIVE_X:I = 0x1b

.field public static final whitelist AXIS_RELATIVE_Y:I = 0x1c

.field public static final whitelist AXIS_RTRIGGER:I = 0x12

.field public static final whitelist AXIS_RUDDER:I = 0x14

.field public static final whitelist AXIS_RX:I = 0xc

.field public static final whitelist AXIS_RY:I = 0xd

.field public static final whitelist AXIS_RZ:I = 0xe

.field public static final whitelist AXIS_SCROLL:I = 0x1a

.field public static final whitelist AXIS_SIZE:I = 0x3

.field private static final greylist-max-o AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist AXIS_THROTTLE:I = 0x13

.field public static final whitelist AXIS_TILT:I = 0x19

.field public static final whitelist AXIS_TOOL_MAJOR:I = 0x6

.field public static final whitelist AXIS_TOOL_MINOR:I = 0x7

.field public static final whitelist AXIS_TOUCH_MAJOR:I = 0x4

.field public static final whitelist AXIS_TOUCH_MINOR:I = 0x5

.field public static final whitelist AXIS_VSCROLL:I = 0x9

.field public static final whitelist AXIS_WHEEL:I = 0x15

.field public static final whitelist AXIS_X:I = 0x0

.field public static final whitelist AXIS_Y:I = 0x1

.field public static final whitelist AXIS_Z:I = 0xb

.field public static final whitelist BUTTON_BACK:I = 0x8

.field public static final whitelist BUTTON_FORWARD:I = 0x10

.field public static final whitelist BUTTON_PRIMARY:I = 0x1

.field public static final whitelist BUTTON_SECONDARY:I = 0x2

.field public static final whitelist BUTTON_STYLUS_PRIMARY:I = 0x20

.field public static final whitelist BUTTON_STYLUS_SECONDARY:I = 0x40

.field private static final greylist-max-o BUTTON_SYMBOLIC_NAMES:[Ljava/lang/String;

.field public static final whitelist BUTTON_TERTIARY:I = 0x4

.field public static final whitelist CLASSIFICATION_AMBIGUOUS_GESTURE:I = 0x1

.field public static final whitelist CLASSIFICATION_DEEP_PRESS:I = 0x2

.field public static final blacklist CLASSIFICATION_MULTI_FINGER_SWIPE:I = 0x4

.field public static final whitelist CLASSIFICATION_NONE:I = 0x0

.field public static final whitelist CLASSIFICATION_PINCH:I = 0x5

.field public static final whitelist CLASSIFICATION_TWO_FINGER_SWIPE:I = 0x3

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEBUG_CONCISE_TOSTRING:Z = false

.field public static final whitelist EDGE_BOTTOM:I = 0x2

.field public static final whitelist EDGE_LEFT:I = 0x4

.field public static final whitelist EDGE_RIGHT:I = 0x8

.field public static final whitelist EDGE_TOP:I = 0x1

.field public static final blacklist FLAG_BY_WHEEL_SCROLL_PAD:I = 0x100000

.field public static final whitelist FLAG_CANCELED:I = 0x20

.field public static final blacklist FLAG_DISPATCH_WHEN_NON_INTERACTIVE:I = 0x200000

.field public static final blacklist FLAG_FROM_WFD:I = 0x8000000

.field public static final greylist-max-o FLAG_HOVER_EXIT_PENDING:I = 0x4

.field public static final blacklist FLAG_INTERNAL_DISPLAY_FOR_USER_ACTIVITY:I = 0x4000000

.field public static final blacklist FLAG_IS_ACCESSIBILITY_EVENT:I = 0x800

.field public static final greylist-max-o FLAG_IS_GENERATED_GESTURE:I = 0x8

.field public static final blacklist FLAG_KEEP_DEVICE_ID:I = 0x400000

.field public static final blacklist FLAG_NOT_RESET_USER_ACTIVITY_TIMEOUT:I = 0x1000000

.field public static final blacklist FLAG_NO_FOCUS_CHANGE:I = 0x40

.field public static final greylist-max-o FLAG_TAINTED:I = -0x80000000

.field public static final greylist-max-o FLAG_TARGET_ACCESSIBILITY_FOCUS:I = 0x40000000

.field public static final blacklist FLAG_UP_PENDING:I = 0x2000000

.field public static final blacklist FLAG_WINDOW_IS_ACCESSIBILITY:I = 0x800000

.field public static final whitelist FLAG_WINDOW_IS_OBSCURED:I = 0x1

.field public static final whitelist FLAG_WINDOW_IS_PARTIALLY_OBSCURED:I = 0x2

.field private static final greylist-max-r HISTORY_CURRENT:I = -0x80000000

.field private static final blacklist INVALID_CURSOR_POSITION:F = NaNf

.field public static final whitelist INVALID_POINTER_ID:I = -0x1

.field private static final greylist-max-o LABEL_PREFIX:Ljava/lang/String; = "AXIS_"

.field private static final greylist-max-o MAX_RECYCLED:I = 0xa

.field private static final greylist-max-o NS_PER_MS:J = 0xf4240L

.field public static final whitelist SEM_ACTION_PEN_CANCEL:I = 0xd6

.field public static final whitelist SEM_ACTION_PEN_DOWN:I = 0xd3

.field public static final whitelist SEM_ACTION_PEN_MOVE:I = 0xd5

.field public static final whitelist SEM_ACTION_PEN_UP:I = 0xd4

.field public static final whitelist SEM_FLAG_EVENT_BY_TWO_FINGER_GESTURE:I = 0x10000000

.field private static final blacklist TAG:Ljava/lang/String; = "MotionEvent"

.field public static final whitelist TOOL_TYPE_ERASER:I = 0x4

.field public static final whitelist TOOL_TYPE_FINGER:I = 0x1

.field public static final whitelist TOOL_TYPE_MOUSE:I = 0x3

.field public static final blacklist TOOL_TYPE_PALM:I = 0x5

.field public static final whitelist TOOL_TYPE_STYLUS:I = 0x2

.field private static final greylist-max-o TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist TOOL_TYPE_UNKNOWN:I

.field private static final greylist-max-o gRecyclerLock:Ljava/lang/Object;

.field private static greylist-max-o gRecyclerTop:Landroid/view/MotionEvent;

.field private static greylist-max-o gRecyclerUsed:I

.field private static final greylist-max-o gSharedTempLock:Ljava/lang/Object;

.field private static greylist-max-o gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private static greylist-max-o gSharedTempPointerIndexMap:[I

.field private static greylist-max-o gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;


# instance fields
.field private blacklist mCompatSandboxScale:F

.field private blacklist mCompatSandboxXOffset:F

.field private blacklist mCompatSandboxYOffset:F

.field private greylist-max-p mNativePtr:J

.field blacklist mNeedWindowOffset:Z

.field private greylist-max-o mNext:Landroid/view/MotionEvent;

.field private blacklist mWindowOffsetX:I

.field private blacklist mWindowOffsetY:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 40

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/view/MotionEvent;->AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    sget-object v0, Landroid/view/MotionEvent;->AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    const-string v1, "AXIS_X"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_Y"

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_PRESSURE"

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_SIZE"

    const/4 v5, 0x3

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_TOUCH_MAJOR"

    const/4 v6, 0x4

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 v1, 0x5

    const-string v7, "AXIS_TOUCH_MINOR"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 v1, 0x6

    const-string v7, "AXIS_TOOL_MAJOR"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 v1, 0x7

    const-string v7, "AXIS_TOOL_MINOR"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x8

    const-string v7, "AXIS_ORIENTATION"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x9

    const-string v7, "AXIS_VSCROLL"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xa

    const-string v7, "AXIS_HSCROLL"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xb

    const-string v7, "AXIS_Z"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xc

    const-string v7, "AXIS_RX"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xd

    const-string v7, "AXIS_RY"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xe

    const-string v7, "AXIS_RZ"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xf

    const-string v7, "AXIS_HAT_X"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x10

    const-string v7, "AXIS_HAT_Y"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x11

    const-string v7, "AXIS_LTRIGGER"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x12

    const-string v7, "AXIS_RTRIGGER"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x13

    const-string v7, "AXIS_THROTTLE"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x14

    const-string v7, "AXIS_RUDDER"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x15

    const-string v7, "AXIS_WHEEL"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x16

    const-string v7, "AXIS_GAS"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x17

    const-string v7, "AXIS_BRAKE"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x18

    const-string v7, "AXIS_DISTANCE"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x19

    const-string v7, "AXIS_TILT"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x1a

    const-string v7, "AXIS_SCROLL"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x1b

    const-string v7, "AXIS_REALTIVE_X"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x1c

    const-string v7, "AXIS_REALTIVE_Y"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x20

    const-string v7, "AXIS_GENERIC_1"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x21

    const-string v7, "AXIS_GENERIC_2"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x22

    const-string v7, "AXIS_GENERIC_3"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x23

    const-string v7, "AXIS_GENERIC_4"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x24

    const-string v7, "AXIS_GENERIC_5"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x25

    const-string v7, "AXIS_GENERIC_6"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x26

    const-string v7, "AXIS_GENERIC_7"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x27

    const-string v7, "AXIS_GENERIC_8"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x28

    const-string v7, "AXIS_GENERIC_9"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x29

    const-string v7, "AXIS_GENERIC_10"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x2a

    const-string v7, "AXIS_GENERIC_11"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x2b

    const-string v7, "AXIS_GENERIC_12"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x2c

    const-string v7, "AXIS_GENERIC_13"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x2d

    const-string v7, "AXIS_GENERIC_14"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x2e

    const-string v7, "AXIS_GENERIC_15"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x2f

    const-string v7, "AXIS_GENERIC_16"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x30

    const-string v7, "AXIS_GESTURE_X_OFFSET"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x31

    const-string v7, "AXIS_GESTURE_Y_OFFSET"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x32

    const-string v7, "AXIS_GESTURE_SCROLL_X_DISTANCE"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x33

    const-string v7, "AXIS_GESTURE_SCROLL_Y_DISTANCE"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x34

    const-string v7, "AXIS_GESTURE_PINCH_SCALE_FACTOR"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x35

    const-string v7, "AXIS_GESTURE_SWIPE_FINGER_COUNT"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x37

    const-string v7, "AXIS_PALM"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v38, "0x40000000"

    const-string v39, "0x80000000"

    const-string v8, "BUTTON_PRIMARY"

    const-string v9, "BUTTON_SECONDARY"

    const-string v10, "BUTTON_TERTIARY"

    const-string v11, "BUTTON_BACK"

    const-string v12, "BUTTON_FORWARD"

    const-string v13, "BUTTON_STYLUS_PRIMARY"

    const-string v14, "BUTTON_STYLUS_SECONDARY"

    const-string v15, "0x00000080"

    const-string v16, "0x00000100"

    const-string v17, "0x00000200"

    const-string v18, "0x00000400"

    const-string v19, "0x00000800"

    const-string v20, "0x00001000"

    const-string v21, "0x00002000"

    const-string v22, "0x00004000"

    const-string v23, "0x00008000"

    const-string v24, "0x00010000"

    const-string v25, "0x00020000"

    const-string v26, "0x00040000"

    const-string v27, "0x00080000"

    const-string v28, "0x00100000"

    const-string v29, "0x00200000"

    const-string v30, "0x00400000"

    const-string v31, "0x00800000"

    const-string v32, "0x01000000"

    const-string v33, "0x02000000"

    const-string v34, "0x04000000"

    const-string v35, "0x08000000"

    const-string v36, "0x10000000"

    const-string v37, "0x20000000"

    filled-new-array/range {v8 .. v39}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/MotionEvent;->BUTTON_SYMBOLIC_NAMES:[Ljava/lang/String;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    sget-object v0, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    const-string v1, "TOOL_TYPE_UNKNOWN"

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "TOOL_TYPE_FINGER"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "TOOL_TYPE_STYLUS"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "TOOL_TYPE_MOUSE"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "TOOL_TYPE_ERASER"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    new-instance v0, Landroid/view/MotionEvent$1;

    invoke-direct {v0}, Landroid/view/MotionEvent$1;-><init>()V

    sput-object v0, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/MotionEvent;->mCompatSandboxXOffset:F

    iput v0, p0, Landroid/view/MotionEvent;->mCompatSandboxYOffset:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/MotionEvent;->mCompatSandboxScale:F

    return-void
.end method

.method public static whitelist actionToString(I)Ljava/lang/String;
    .locals 4

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const v0, 0xff00

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v1, p0, 0xff

    const-string v2, ")"

    packed-switch v1, :pswitch_data_1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_1
    const-string v0, "ACTION_BUTTON_RELEASE"

    return-object v0

    :pswitch_2
    const-string v0, "ACTION_BUTTON_PRESS"

    return-object v0

    :pswitch_3
    const-string v0, "ACTION_HOVER_EXIT"

    return-object v0

    :pswitch_4
    const-string v0, "ACTION_HOVER_ENTER"

    return-object v0

    :pswitch_5
    const-string v0, "ACTION_SCROLL"

    return-object v0

    :pswitch_6
    const-string v0, "ACTION_HOVER_MOVE"

    return-object v0

    :pswitch_7
    const-string v0, "ACTION_OUTSIDE"

    return-object v0

    :pswitch_8
    const-string v0, "ACTION_CANCEL"

    return-object v0

    :pswitch_9
    const-string v0, "ACTION_MOVE"

    return-object v0

    :pswitch_a
    const-string v0, "ACTION_UP"

    return-object v0

    :pswitch_b
    const-string v0, "ACTION_DOWN"

    return-object v0

    :pswitch_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_POINTER_UP("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_POINTER_DOWN("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method

.method private static greylist-max-o appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static whitelist axisFromString(Ljava/lang/String;)I
    .locals 2

    const-string v0, "AXIS_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/view/MotionEvent;->nativeAxisFromString(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0xa

    :try_start_0
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    return v1
.end method

.method public static whitelist axisToString(I)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/view/MotionEvent;->nativeAxisToString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AXIS_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static greylist-max-o buttonStateToString(I)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string v0, "0"

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-eqz p0, :cond_5

    and-int/lit8 v2, p0, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    ushr-int/lit8 p0, p0, 0x1

    if-eqz v2, :cond_4

    sget-object v3, Landroid/view/MotionEvent;->BUTTON_SYMBOLIC_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-nez v0, :cond_3

    if-nez p0, :cond_2

    return-object v3

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    goto :goto_2

    :cond_3
    const/16 v4, 0x7c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    nop

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static final greylist-max-o clamp(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    return p1

    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method public static blacklist classificationToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "UNKNOWN"

    return-object v0

    :pswitch_0
    const-string v0, "MULTI_FINGER_SWIPE"

    return-object v0

    :pswitch_1
    const-string v0, "TWO_FINGER_SWIPE"

    return-object v0

    :pswitch_2
    const-string v0, "DEEP_PRESS"

    return-object v0

    :pswitch_3
    const-string v0, "AMBIGUOUS_GESTURE"

    return-object v0

    :pswitch_4
    const-string v0, "NONE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist-max-o createFromParcelBody(Landroid/os/Parcel;)Landroid/view/MotionEvent;
    .locals 3

    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    iget-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v1, v2, p0}, Landroid/view/MotionEvent;->nativeReadFromParcel(JLandroid/os/Parcel;)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    return-object v0
.end method

.method public static blacklist createRotateMatrix(III)Landroid/graphics/Matrix;
    .locals 17

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    if-nez v0, :cond_0

    new-instance v3, Landroid/graphics/Matrix;

    sget-object v4, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-direct {v3, v4}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object v3

    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/16 v10, 0x9

    const/4 v11, 0x3

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    if-ne v0, v14, :cond_1

    int-to-float v4, v2

    new-array v10, v10, [F

    aput v16, v10, v9

    aput v15, v10, v14

    aput v16, v10, v13

    aput v12, v10, v11

    aput v16, v10, v8

    aput v4, v10, v7

    aput v16, v10, v6

    aput v16, v10, v5

    const/16 v4, 0x8

    aput v15, v10, v4

    move-object v3, v10

    goto :goto_0

    :cond_1
    if-ne v0, v13, :cond_2

    int-to-float v4, v1

    int-to-float v15, v2

    new-array v10, v10, [F

    aput v12, v10, v9

    aput v16, v10, v14

    aput v4, v10, v13

    aput v16, v10, v11

    aput v12, v10, v8

    aput v15, v10, v7

    aput v16, v10, v6

    aput v16, v10, v5

    const/16 v4, 0x8

    const/high16 v15, 0x3f800000    # 1.0f

    aput v15, v10, v4

    move-object v3, v10

    goto :goto_0

    :cond_2
    if-ne v0, v11, :cond_3

    int-to-float v4, v1

    new-array v10, v10, [F

    aput v16, v10, v9

    aput v12, v10, v14

    aput v4, v10, v13

    aput v15, v10, v11

    aput v16, v10, v8

    aput v16, v10, v7

    aput v16, v10, v6

    aput v16, v10, v5

    const/16 v4, 0x8

    aput v15, v10, v4

    move-object v3, v10

    :cond_3
    :goto_0
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->setValues([F)V

    return-object v4
.end method

.method private static final greylist-max-o ensureSharedTempPointerCapacity(I)V
    .locals 2

    sget-object v0, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v0, v0

    if-ge v0, p0, :cond_3

    :cond_0
    sget-object v0, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v0, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    if-ge v0, p0, :cond_2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    invoke-static {v0}, Landroid/view/MotionEvent$PointerCoords;->createArray(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    sput-object v1, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    invoke-static {v0}, Landroid/view/MotionEvent$PointerProperties;->createArray(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v1

    sput-object v1, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-array v1, v0, [I

    sput-object v1, Landroid/view/MotionEvent;->gSharedTempPointerIndexMap:[I

    :cond_3
    return-void
.end method

.method private blacklist getAdjustedRawX()F
    .locals 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, v2, v3}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result v0

    iget v1, p0, Landroid/view/MotionEvent;->mWindowOffsetX:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    return v1
.end method

.method private blacklist getAdjustedRawY()F
    .locals 5

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    const/4 v4, 0x1

    invoke-static {v0, v1, v4, v2, v3}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result v0

    iget v1, p0, Landroid/view/MotionEvent;->mWindowOffsetY:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    return v1
.end method

.method private blacklist initialize(IIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)Z
    .locals 24

    move-object/from16 v0, p0

    const/4 v1, 0x3

    move/from16 v15, p4

    if-ne v15, v1, :cond_0

    or-int/lit8 v1, p5, 0x20

    goto :goto_0

    :cond_0
    move/from16 v1, p5

    :goto_0
    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move v8, v1

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move-wide/from16 v17, p14

    move-wide/from16 v19, p16

    move/from16 v21, p18

    move-object/from16 v22, p19

    move-object/from16 v23, p20

    invoke-static/range {v2 .. v23}, Landroid/view/MotionEvent;->nativeInitialize(JIIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const/4 v2, 0x0

    return v2

    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/view/MotionEvent;->updateCursorPosition()V

    const/4 v2, 0x1

    return v2
.end method

.method private static native greylist-max-o nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V
.end method

.method private static native blacklist nativeApplyTransform(JLandroid/graphics/Matrix;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeAxisFromString(Ljava/lang/String;)I
.end method

.method private static native greylist-max-o nativeAxisToString(I)Ljava/lang/String;
.end method

.method private static native greylist-max-o nativeCopy(JJZ)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeDispose(J)V
.end method

.method private static native greylist-max-o nativeFindPointerIndex(JI)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetAction(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetActionButton(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetAxisValue(JIII)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetButtonState(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeGetClassification(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetDeviceId(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeGetDisplayId(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetDownTimeNanos(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetEdgeFlags(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetEventTimeNanos(JI)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetFlags(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetHistorySize(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeGetId(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetMetaState(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V
.end method

.method private static native greylist-max-o nativeGetPointerCount(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetPointerId(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V
.end method

.method private static native greylist nativeGetRawAxisValue(JIII)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeGetRawXOffset(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeGetRawYOffset(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetSource(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeGetSurfaceRotation(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetToolType(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeGetXCursorPosition(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetXPrecision(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeGetYCursorPosition(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetYPrecision(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeInitialize(JIIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J
.end method

.method private static native greylist-max-o nativeIsTouchEvent(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeOffsetLocation(JFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeReadFromParcel(JLandroid/os/Parcel;)J
.end method

.method private static native greylist-max-o nativeScale(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeSetAction(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeSetActionButton(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeSetButtonState(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeSetCursorPosition(JFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeSetDisplayId(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeSetDownTimeNanos(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeSetEdgeFlags(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeSetFlags(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeSetSource(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeSplit(JJI)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeTransform(JLandroid/graphics/Matrix;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeWriteToParcel(JLandroid/os/Parcel;)V
.end method

.method private static greylist obtain()Landroid/view/MotionEvent;
    .locals 3

    sget-object v0, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    if-nez v1, :cond_0

    new-instance v2, Landroid/view/MotionEvent;

    invoke-direct {v2}, Landroid/view/MotionEvent;-><init>()V

    monitor-exit v0

    return-object v2

    :cond_0
    iget-object v2, v1, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    sput-object v2, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    sget v2, Landroid/view/MotionEvent;->gRecyclerUsed:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Landroid/view/MotionEvent;->gRecyclerUsed:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-object v0, v1, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->prepareForReuse()V

    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/view/MotionEvent;->mNeedWindowOffset:Z

    iput v0, v1, Landroid/view/MotionEvent;->mWindowOffsetX:I

    iput v0, v1, Landroid/view/MotionEvent;->mWindowOffsetY:I

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v0}, Landroid/view/MotionEvent;->setCompatSandboxScale(FFF)V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static whitelist obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;
    .locals 16

    const/4 v14, 0x2

    const/4 v15, 0x0

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    invoke-static/range {v0 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist obtain(JJIFFFFIFFIIII)Landroid/view/MotionEvent;
    .locals 25

    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v22

    sget-object v23, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v23

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    sget-object v0, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    aget-object v2, v0, v1

    iput v1, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    sget-object v2, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    move-object/from16 v24, v2

    aget-object v2, v24, v1

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    aget-object v2, v24, v1

    move/from16 v14, p5

    iput v14, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    aget-object v2, v24, v1

    move/from16 v13, p6

    iput v13, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    aget-object v2, v24, v1

    move/from16 v8, p7

    iput v8, v2, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    aget-object v1, v24, v1

    move/from16 v7, p8

    iput v7, v1, Landroid/view/MotionEvent$PointerCoords;->size:F

    const-wide/32 v1, 0xf4240

    mul-long v15, p0, v1

    mul-long v17, p2, v1

    const/16 v19, 0x1

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v1, v22

    move/from16 v2, p12

    move/from16 v3, p14

    move/from16 v4, p15

    move/from16 v5, p4

    move/from16 v7, p13

    move/from16 v8, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move-object/from16 v20, v0

    move-object/from16 v21, v24

    invoke-direct/range {v1 .. v21}, Landroid/view/MotionEvent;->initialize(IIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)Z

    monitor-exit v23

    return-object v22

    :catchall_0
    move-exception v0

    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static whitelist obtain(JJIFFI)Landroid/view/MotionEvent;
    .locals 14

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    move-wide v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v9, p7

    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist obtain(JJIIFFFFIFFII)Landroid/view/MotionEvent;
    .locals 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-wide v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    move/from16 v13, p14

    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;
    .locals 18
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v1, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static/range {p5 .. p5}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    sget-object v0, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v2, 0x0

    :goto_0
    move/from16 v15, p5

    if-ge v2, v15, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    aget-object v3, v0, v2

    aget v4, p6, v2

    iput v4, v3, Landroid/view/MotionEvent$PointerProperties;->id:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    move-wide/from16 v2, p0

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move-object v8, v0

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static whitelist obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;
    .locals 17

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v16, p15

    const/4 v15, 0x0

    invoke-static/range {v0 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;
    .locals 18

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    const/16 v17, 0x0

    invoke-static/range {v0 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIIII)Landroid/view/MotionEvent;
    .locals 22

    move/from16 v4, p4

    move/from16 v18, p5

    move-object/from16 v19, p6

    move-object/from16 v20, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v1, p12

    move/from16 v6, p13

    move/from16 v2, p14

    move/from16 v3, p15

    move/from16 v5, p16

    move/from16 v9, p17

    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v21

    move-object/from16 v0, v21

    const-wide/32 v10, 0xf4240

    mul-long v14, p0, v10

    mul-long v16, p2, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v20}, Landroid/view/MotionEvent;->initialize(IIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "MotionEvent"

    const-string v2, "Could not initialize MotionEvent"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v21 .. v21}, Landroid/view/MotionEvent;->recycle()V

    const/4 v1, 0x0

    return-object v1

    :cond_0
    return-object v21
.end method

.method public static whitelist obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 6

    if-eqz p0, :cond_1

    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    iget-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Landroid/view/MotionEvent;->nativeCopy(JJZ)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    iget-boolean v1, p0, Landroid/view/MotionEvent;->mNeedWindowOffset:Z

    iput-boolean v1, v0, Landroid/view/MotionEvent;->mNeedWindowOffset:Z

    iget v1, p0, Landroid/view/MotionEvent;->mWindowOffsetX:I

    iput v1, v0, Landroid/view/MotionEvent;->mWindowOffsetX:I

    iget v1, p0, Landroid/view/MotionEvent;->mWindowOffsetY:I

    iput v1, v0, Landroid/view/MotionEvent;->mWindowOffsetY:I

    invoke-direct {p0}, Landroid/view/MotionEvent;->shouldApplyCompatSandbox()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/view/MotionEvent;->mCompatSandboxXOffset:F

    iget v2, p0, Landroid/view/MotionEvent;->mCompatSandboxYOffset:F

    iget v3, p0, Landroid/view/MotionEvent;->mCompatSandboxScale:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/MotionEvent;->setCompatSandboxScale(FFF)V

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "other motion event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist obtain(Landroid/view/MotionEvent;FF)Landroid/view/MotionEvent;
    .locals 28

    move-object/from16 v1, p0

    sget-object v2, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    invoke-static {v3}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    sget-object v4, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    move-object/from16 v26, v4

    sget-object v4, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    move-object/from16 v27, v4

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v26, v4

    invoke-virtual {v1, v4, v5}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    aget-object v5, v27, v4

    invoke-virtual {v1, v4, v5}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-wide v4, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getClassification()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v15

    const-wide/32 v19, 0xf4240

    mul-long v23, v15, v19

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v15

    mul-long v21, v15, v19

    move/from16 v15, p1

    move/from16 v16, p2

    move-wide/from16 v19, v23

    move/from16 v23, v3

    move-object/from16 v24, v26

    move-object/from16 v25, v27

    invoke-static/range {v4 .. v25}, Landroid/view/MotionEvent;->nativeInitialize(JIIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J

    move-result-wide v4

    iput-wide v4, v0, Landroid/view/MotionEvent;->mNativePtr:J

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static whitelist obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 6

    if-eqz p0, :cond_1

    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    iget-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/view/MotionEvent;->nativeCopy(JJZ)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    iget-boolean v1, p0, Landroid/view/MotionEvent;->mNeedWindowOffset:Z

    iput-boolean v1, v0, Landroid/view/MotionEvent;->mNeedWindowOffset:Z

    iget v1, p0, Landroid/view/MotionEvent;->mWindowOffsetX:I

    iput v1, v0, Landroid/view/MotionEvent;->mWindowOffsetX:I

    iget v1, p0, Landroid/view/MotionEvent;->mWindowOffsetY:I

    iput v1, v0, Landroid/view/MotionEvent;->mWindowOffsetY:I

    invoke-direct {p0}, Landroid/view/MotionEvent;->shouldApplyCompatSandbox()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/view/MotionEvent;->mCompatSandboxXOffset:F

    iget v2, p0, Landroid/view/MotionEvent;->mCompatSandboxYOffset:F

    iget v3, p0, Landroid/view/MotionEvent;->mCompatSandboxScale:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/MotionEvent;->setCompatSandboxScale(FFF)V

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "other motion event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist semObtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;
    .locals 17

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v15, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    move/from16 v13, p14

    move/from16 v14, p15

    move/from16 v16, p16

    invoke-static/range {v0 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method private blacklist setCanceled(Z)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    iget-wide v1, p0, Landroid/view/MotionEvent;->mNativePtr:J

    if-eqz p1, :cond_0

    or-int/lit8 v3, v0, 0x20

    goto :goto_0

    :cond_0
    and-int/lit8 v3, v0, -0x21

    :goto_0
    invoke-static {v1, v2, v3}, Landroid/view/MotionEvent;->nativeSetFlags(JI)V

    return-void
.end method

.method private blacklist setCursorPosition(FF)V
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeSetCursorPosition(JFF)V

    return-void
.end method

.method private blacklist shouldApplyCompatSandbox()Z
    .locals 2

    iget v0, p0, Landroid/view/MotionEvent;->mCompatSandboxXOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Landroid/view/MotionEvent;->mCompatSandboxYOffset:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Landroid/view/MotionEvent;->mCompatSandboxScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

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

.method public static greylist-max-o toolTypeToString(I)Ljava/lang/String;
    .locals 2

    sget-object v0, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private blacklist updateCursorPosition()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/16 v1, 0x2002

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-direct {p0, v0, v0}, Landroid/view/MotionEvent;->setCursorPosition(FF)V

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    add-float/2addr v0, v4

    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    add-float/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    int-to-float v3, v2

    div-float/2addr v0, v3

    int-to-float v3, v2

    div-float/2addr v1, v3

    invoke-direct {p0, v0, v1}, Landroid/view/MotionEvent;->setCursorPosition(FF)V

    return-void
.end method


# virtual methods
.method public final whitelist addBatch(JFFFFI)V
    .locals 8

    sget-object v0, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    sget-object v1, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    aget-object v3, v1, v2

    iput p3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    aget-object v3, v1, v2

    iput p4, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    aget-object v3, v1, v2

    iput p5, v3, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    aget-object v2, v1, v2

    iput p6, v2, Landroid/view/MotionEvent$PointerCoords;->size:F

    iget-wide v2, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const-wide/32 v4, 0xf4240

    mul-long/2addr v4, p1

    move-object v6, v1

    move v7, p7

    invoke-static/range {v2 .. v7}, Landroid/view/MotionEvent;->nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final whitelist addBatch(J[Landroid/view/MotionEvent$PointerCoords;I)V
    .locals 6

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p1

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/view/MotionEvent;->nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V

    return-void
.end method

.method public final greylist addBatch(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-wide v3, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v3

    const/4 v0, 0x0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v5, 0x7

    if-eq v3, v5, :cond_0

    return v0

    :cond_0
    iget-wide v5, v2, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v5, v6}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v5

    if-eq v3, v5, :cond_1

    return v0

    :cond_1
    iget-wide v5, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v5, v6}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    move-result v5

    iget-wide v6, v2, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v6, v7}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    move-result v6

    if-ne v5, v6, :cond_9

    iget-wide v5, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v5, v6}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    move-result v5

    iget-wide v6, v2, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v6, v7}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    move-result v6

    if-ne v5, v6, :cond_9

    iget-wide v5, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v5, v6}, Landroid/view/MotionEvent;->nativeGetDisplayId(J)I

    move-result v5

    iget-wide v6, v2, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v6, v7}, Landroid/view/MotionEvent;->nativeGetDisplayId(J)I

    move-result v6

    if-ne v5, v6, :cond_9

    iget-wide v5, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v5, v6}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    move-result v5

    iget-wide v6, v2, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v6, v7}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    move-result v6

    if-ne v5, v6, :cond_9

    iget-wide v5, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v5, v6}, Landroid/view/MotionEvent;->nativeGetClassification(J)I

    move-result v5

    iget-wide v6, v2, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v6, v7}, Landroid/view/MotionEvent;->nativeGetClassification(J)I

    move-result v6

    if-eq v5, v6, :cond_2

    goto/16 :goto_4

    :cond_2
    iget-wide v5, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v5, v6}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v5

    iget-wide v6, v2, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v6, v7}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v6

    if-eq v5, v6, :cond_3

    return v0

    :cond_3
    sget-object v6, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    sget-object v4, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    sget-object v7, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v8, 0x0

    :goto_0
    const/4 v14, 0x1

    if-ge v8, v5, :cond_5

    iget-wide v9, v1, Landroid/view/MotionEvent;->mNativePtr:J

    aget-object v11, v4, v0

    invoke-static {v9, v10, v8, v11}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    iget-wide v9, v2, Landroid/view/MotionEvent;->mNativePtr:J

    aget-object v11, v4, v14

    invoke-static {v9, v10, v8, v11}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    aget-object v9, v4, v0

    aget-object v10, v4, v14

    invoke-static {v9, v10}, Landroid/view/MotionEvent$PointerProperties;->-$$Nest$mequals(Landroid/view/MotionEvent$PointerProperties;Landroid/view/MotionEvent$PointerProperties;)Z

    move-result v9

    if-nez v9, :cond_4

    monitor-exit v6

    return v0

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    iget-wide v8, v2, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v8, v9}, Landroid/view/MotionEvent;->nativeGetMetaState(J)I

    move-result v13

    iget-wide v8, v2, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v8, v9}, Landroid/view/MotionEvent;->nativeGetHistorySize(J)I

    move-result v0

    const/4 v8, 0x0

    move v15, v8

    :goto_1
    if-gt v15, v0, :cond_8

    if-ne v15, v0, :cond_6

    const/high16 v8, -0x80000000

    goto :goto_2

    :cond_6
    move v8, v15

    :goto_2
    move v12, v8

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v5, :cond_7

    iget-wide v9, v2, Landroid/view/MotionEvent;->mNativePtr:J

    aget-object v11, v7, v8

    invoke-static {v9, v10, v8, v12, v11}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_7
    iget-wide v8, v2, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v8, v9, v12}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v10

    iget-wide v8, v1, Landroid/view/MotionEvent;->mNativePtr:J

    move/from16 v16, v12

    move-object v12, v7

    invoke-static/range {v8 .. v13}, Landroid/view/MotionEvent;->nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_8
    monitor-exit v6

    return v14

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_9
    :goto_4
    return v0
.end method

.method public blacklist applyTransform(Landroid/graphics/Matrix;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeApplyTransform(JLandroid/graphics/Matrix;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "matrix must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final greylist-max-o cancel()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/MotionEvent;->setCanceled(Z)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->setAction(I)V

    return-void
.end method

.method public final greylist-max-o clampNoHistory(FFFF)Landroid/view/MotionEvent;
    .locals 31

    move-object/from16 v1, p0

    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v23

    sget-object v24, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v24

    :try_start_0
    iget-wide v2, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v0

    invoke-static {v0}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    sget-object v2, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    move-object/from16 v25, v2

    sget-object v2, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v26, v2

    const/4 v2, 0x0

    :goto_0
    const/high16 v3, -0x80000000

    if-ge v2, v0, :cond_0

    :try_start_1
    iget-wide v4, v1, Landroid/view/MotionEvent;->mNativePtr:J

    aget-object v6, v25, v2

    invoke-static {v4, v5, v2, v6}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    iget-wide v4, v1, Landroid/view/MotionEvent;->mNativePtr:J

    aget-object v6, v26, v2

    invoke-static {v4, v5, v2, v3, v6}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    aget-object v3, v26, v2

    aget-object v4, v26, v2

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->x:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v15, p1

    move/from16 v14, p3

    :try_start_2
    invoke-static {v4, v15, v14}, Landroid/view/MotionEvent;->clamp(FFF)F

    move-result v4

    iput v4, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    aget-object v3, v26, v2

    aget-object v4, v26, v2

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->y:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v13, p2

    move/from16 v12, p4

    :try_start_3
    invoke-static {v4, v13, v12}, Landroid/view/MotionEvent;->clamp(FFF)F

    move-result v4

    iput v4, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move/from16 v13, p2

    goto :goto_1

    :catchall_1
    move-exception v0

    move/from16 v15, p1

    move/from16 v13, p2

    move/from16 v14, p3

    :goto_1
    move/from16 v12, p4

    goto/16 :goto_2

    :cond_0
    move/from16 v15, p1

    move/from16 v13, p2

    move/from16 v14, p3

    move/from16 v12, p4

    iget-wide v4, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    move-result v4

    iget-wide v5, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v5, v6}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    move-result v5

    iget-wide v6, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v6, v7}, Landroid/view/MotionEvent;->nativeGetDisplayId(J)I

    move-result v6

    iget-wide v7, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v7, v8}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v7

    iget-wide v8, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v8, v9}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    move-result v8

    iget-wide v9, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v9, v10}, Landroid/view/MotionEvent;->nativeGetEdgeFlags(J)I

    move-result v9

    iget-wide v10, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v10, v11}, Landroid/view/MotionEvent;->nativeGetMetaState(J)I

    move-result v10

    move v11, v4

    iget-wide v3, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetButtonState(J)I

    move-result v16

    iget-wide v3, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetClassification(J)I

    move-result v17

    iget-wide v3, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetRawXOffset(J)F

    move-result v18

    iget-wide v3, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetRawYOffset(J)F

    move-result v19

    iget-wide v3, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetXPrecision(J)F

    move-result v20

    iget-wide v3, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetYPrecision(J)F

    move-result v21

    iget-wide v3, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetDownTimeNanos(J)J

    move-result-wide v27

    iget-wide v3, v1, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v2, -0x80000000

    invoke-static {v3, v4, v2}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v29

    move-object/from16 v2, v23

    move v3, v11

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move/from16 v10, v16

    move/from16 v11, v17

    move/from16 v12, v18

    move/from16 v13, v19

    move/from16 v14, v20

    move/from16 v15, v21

    move-wide/from16 v16, v27

    move-wide/from16 v18, v29

    move/from16 v20, v0

    move-object/from16 v21, v25

    move-object/from16 v22, v26

    invoke-direct/range {v2 .. v22}, Landroid/view/MotionEvent;->initialize(IIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)Z

    monitor-exit v24

    return-object v23

    :catchall_2
    move-exception v0

    :goto_2
    monitor-exit v24
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method public bridge synthetic greylist copy()Landroid/view/InputEvent;
    .locals 1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public greylist copy()Landroid/view/MotionEvent;
    .locals 1

    invoke-static {p0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist test-api finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeDispose(J)V

    iput-wide v2, p0, Landroid/view/MotionEvent;->mNativePtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final whitelist findPointerIndex(I)I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeFindPointerIndex(JI)I

    move-result v0

    return v0
.end method

.method public final whitelist getAction()I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v0

    return v0
.end method

.method public final whitelist getActionButton()I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetActionButton(J)I

    move-result v0

    return v0
.end method

.method public final whitelist getActionIndex()I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public final whitelist getActionMasked()I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final whitelist getAxisValue(I)F
    .locals 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, p1, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getAxisValue(II)F
    .locals 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p1, p2, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getButtonState()I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetButtonState(J)I

    move-result v0

    return v0
.end method

.method public whitelist getClassification()I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetClassification(J)I

    move-result v0

    return v0
.end method

.method public final whitelist getDeviceId()I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    move-result v0

    return v0
.end method

.method public blacklist getDisplayId()I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetDisplayId(J)I

    move-result v0

    return v0
.end method

.method public final whitelist getDownTime()J
    .locals 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetDownTimeNanos(J)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final whitelist getEdgeFlags()I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetEdgeFlags(J)I

    move-result v0

    return v0
.end method

.method public final whitelist getEventTime()J
    .locals 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, v2}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist getEventTimeNanos()J
    .locals 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, v2}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist getFlags()I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalAxisValue(II)F
    .locals 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalAxisValue(III)F
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalEventTime(I)J
    .locals 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist getHistoricalEventTimeNanos(I)J
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist getHistoricalOrientation(I)F
    .locals 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalOrientation(II)F
    .locals 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 v2, 0x8

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    return-void
.end method

.method public final whitelist getHistoricalPressure(I)F
    .locals 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalPressure(II)F
    .locals 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalSize(I)F
    .locals 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalSize(II)F
    .locals 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x3

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalToolMajor(I)F
    .locals 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalToolMajor(II)F
    .locals 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x6

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalToolMinor(I)F
    .locals 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalToolMinor(II)F
    .locals 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x7

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalTouchMajor(I)F
    .locals 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalTouchMajor(II)F
    .locals 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x4

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalTouchMinor(I)F
    .locals 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalTouchMinor(II)F
    .locals 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x5

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalX(I)F
    .locals 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalX(II)F
    .locals 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalY(I)F
    .locals 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalY(II)F
    .locals 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistorySize()I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetHistorySize(J)I

    move-result v0

    return v0
.end method

.method public blacklist getId()I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetId(J)I

    move-result v0

    return v0
.end method

.method public final whitelist getMetaState()I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetMetaState(J)I

    move-result v0

    return v0
.end method

.method public final whitelist getOrientation()F
    .locals 5

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    const/16 v4, 0x8

    invoke-static {v0, v1, v4, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getOrientation(I)F
    .locals 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 v2, 0x8

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final blacklist getPalm()F
    .locals 5

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    const/16 v4, 0x37

    invoke-static {v0, v1, v4, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final blacklist getPalm(I)F
    .locals 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 v2, 0x37

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V
    .locals 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p1, v2, p2}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    return-void
.end method

.method public final whitelist getPointerCount()I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v0

    return v0
.end method

.method public final whitelist getPointerId(I)I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeGetPointerId(JI)I

    move-result v0

    return v0
.end method

.method public final greylist getPointerIdBits()I
    .locals 5

    const/4 v0, 0x0

    iget-wide v1, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v1, v2}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4, v2}, Landroid/view/MotionEvent;->nativeGetPointerId(JI)I

    move-result v3

    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final whitelist getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    return-void
.end method

.method public final whitelist getPressure()F
    .locals 5

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    const/4 v4, 0x2

    invoke-static {v0, v1, v4, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getPressure(I)F
    .locals 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x2

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getRawX()F
    .locals 5

    iget-boolean v0, p0, Landroid/view/MotionEvent;->mNeedWindowOffset:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/view/MotionEvent;->getAdjustedRawX()F

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0}, Landroid/view/MotionEvent;->shouldApplyCompatSandbox()Z

    move-result v0

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4, v2, v2, v1}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result v0

    iget v1, p0, Landroid/view/MotionEvent;->mCompatSandboxXOffset:F

    add-float/2addr v1, v0

    iget v2, p0, Landroid/view/MotionEvent;->mCompatSandboxScale:F

    mul-float/2addr v1, v2

    return v1

    :cond_1
    invoke-static {}, Landroid/content/res/CompatibilityInfo;->getOverrideInvertedScale()F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4, v2, v2, v1}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result v1

    mul-float/2addr v1, v0

    return v1

    :cond_2
    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4, v2, v2, v1}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result v1

    return v1
.end method

.method public whitelist getRawX(I)F
    .locals 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final blacklist getRawXForScaledWindow()F
    .locals 3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-static {}, Landroid/content/res/CompatibilityInfo;->getOverrideInvertedScale()F

    move-result v1

    div-float v2, v0, v1

    return v2
.end method

.method public final whitelist getRawY()F
    .locals 6

    iget-boolean v0, p0, Landroid/view/MotionEvent;->mNeedWindowOffset:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/view/MotionEvent;->getAdjustedRawY()F

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0}, Landroid/view/MotionEvent;->shouldApplyCompatSandbox()Z

    move-result v0

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iget-wide v4, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5, v3, v2, v1}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result v0

    iget v1, p0, Landroid/view/MotionEvent;->mCompatSandboxYOffset:F

    add-float/2addr v1, v0

    iget v2, p0, Landroid/view/MotionEvent;->mCompatSandboxScale:F

    mul-float/2addr v1, v2

    return v1

    :cond_1
    invoke-static {}, Landroid/content/res/CompatibilityInfo;->getOverrideInvertedScale()F

    move-result v0

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v4

    if-eqz v4, :cond_2

    iget-wide v4, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5, v3, v2, v1}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result v1

    mul-float/2addr v1, v0

    return v1

    :cond_2
    iget-wide v4, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5, v3, v2, v1}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result v1

    return v1
.end method

.method public whitelist getRawY(I)F
    .locals 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x1

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final blacklist getRawYForScaledWindow()F
    .locals 3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-static {}, Landroid/content/res/CompatibilityInfo;->getOverrideInvertedScale()F

    move-result v1

    div-float v2, v0, v1

    return v2
.end method

.method public final whitelist getSize()F
    .locals 5

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    const/4 v4, 0x3

    invoke-static {v0, v1, v4, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getSize(I)F
    .locals 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x3

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getSource()I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    move-result v0

    return v0
.end method

.method public blacklist getSurfaceRotation()I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetSurfaceRotation(J)I

    move-result v0

    return v0
.end method

.method public final whitelist getToolMajor()F
    .locals 5

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    const/4 v4, 0x6

    invoke-static {v0, v1, v4, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getToolMajor(I)F
    .locals 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x6

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getToolMinor()F
    .locals 5

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    const/4 v4, 0x7

    invoke-static {v0, v1, v4, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getToolMinor(I)F
    .locals 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x7

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public whitelist getToolType(I)I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeGetToolType(JI)I

    move-result v0

    return v0
.end method

.method public final whitelist getTouchMajor()F
    .locals 5

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    const/4 v4, 0x4

    invoke-static {v0, v1, v4, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getTouchMajor(I)F
    .locals 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x4

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getTouchMinor()F
    .locals 5

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    const/4 v4, 0x5

    invoke-static {v0, v1, v4, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getTouchMinor(I)F
    .locals 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x5

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getX()F
    .locals 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getX(I)F
    .locals 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public blacklist getXCursorPosition()F
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetXCursorPosition(J)F

    move-result v0

    return v0
.end method

.method public blacklist getXDispatchLocation(I)F
    .locals 2

    const/16 v0, 0x2002

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getXCursorPosition()F

    move-result v0

    const/high16 v1, 0x7fc00000    # Float.NaN

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    return v0
.end method

.method public final whitelist getXPrecision()F
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetXPrecision(J)F

    move-result v0

    return v0
.end method

.method public final whitelist getY()F
    .locals 5

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    const/4 v4, 0x1

    invoke-static {v0, v1, v4, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getY(I)F
    .locals 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x1

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public blacklist getYCursorPosition()F
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetYCursorPosition(J)F

    move-result v0

    return v0
.end method

.method public blacklist getYDispatchLocation(I)F
    .locals 2

    const/16 v0, 0x2002

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getYCursorPosition()F

    move-result v0

    const/high16 v1, 0x7fc00000    # Float.NaN

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    return v0
.end method

.method public final whitelist getYPrecision()F
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetYPrecision(J)F

    move-result v0

    return v0
.end method

.method public final whitelist isButtonPressed(I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    and-int/2addr v1, p1

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public blacklist isHoverEvent()Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

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

.method public final greylist-max-o isHoverExitPending()Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist isStylusPointer()Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    const/16 v1, 0x4002

    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final greylist-max-o isTainted()Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public greylist-max-o isTargetAccessibilityFocus()Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final greylist-max-o isTouchEvent()Z
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeIsTouchEvent(J)Z

    move-result v0

    return v0
.end method

.method public final greylist-max-o isWithinBoundsNoHistory(FFFF)Z
    .locals 9

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-ge v1, v0, :cond_2

    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v5, 0x0

    const/high16 v6, -0x80000000

    invoke-static {v3, v4, v5, v1, v6}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v3

    iget-wide v7, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v7, v8, v2, v1, v6}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v2

    cmpg-float v4, v3, p1

    if-ltz v4, :cond_1

    cmpl-float v4, v3, p3

    if-gtz v4, :cond_1

    cmpg-float v4, v2, p2

    if-ltz v4, :cond_1

    cmpl-float v4, v2, p4

    if-lez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v5

    :cond_2
    return v2
.end method

.method public final whitelist offsetLocation(FF)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    :cond_0
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeOffsetLocation(JFF)V

    :cond_1
    return-void
.end method

.method public final whitelist recycle()V
    .locals 3

    invoke-super {p0}, Landroid/view/InputEvent;->recycle()V

    sget-object v0, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Landroid/view/MotionEvent;->gRecyclerUsed:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    sget v1, Landroid/view/MotionEvent;->gRecyclerUsed:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/view/MotionEvent;->gRecyclerUsed:I

    sget-object v1, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    iput-object v1, p0, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    sput-object p0, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final greylist scale(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeScale(JF)V

    :cond_0
    return-void
.end method

.method public whitelist semGetDisplayId()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v0

    return v0
.end method

.method public final whitelist semGetFlags()I
    .locals 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    move-result v0

    const/high16 v1, 0x10000000

    and-int v2, v0, v1

    return v2
.end method

.method public final whitelist semGetPredictedX(I)F
    .locals 5

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 v2, 0x3a

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    iget-wide v1, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v1

    add-float/2addr v1, v0

    return v1
.end method

.method public final whitelist semGetPredictedY(I)F
    .locals 5

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 v2, 0x3b

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    iget-wide v1, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v4, 0x1

    invoke-static {v1, v2, v4, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v1

    add-float/2addr v1, v0

    return v1
.end method

.method public final whitelist semIsUpPending()Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    const/high16 v1, 0x2000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist semSetNonResetUserActivityTimeout()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    iget-wide v1, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v3, 0x1000000

    or-int/2addr v3, v0

    invoke-static {v1, v2, v3}, Landroid/view/MotionEvent;->nativeSetFlags(JI)V

    return-void
.end method

.method public final whitelist setAction(I)V
    .locals 3

    and-int/lit16 v0, p1, 0xff

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/view/MotionEvent;->setCanceled(Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/view/MotionEvent;->setCanceled(Z)V

    :goto_0
    iget-wide v1, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v1, v2, p1}, Landroid/view/MotionEvent;->nativeSetAction(JI)V

    return-void
.end method

.method public final greylist setActionButton(I)V
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetActionButton(JI)V

    return-void
.end method

.method public final blacklist setButtonState(I)V
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetButtonState(JI)V

    return-void
.end method

.method public blacklist setCompatSandboxScale(FFF)V
    .locals 0

    iput p1, p0, Landroid/view/MotionEvent;->mCompatSandboxXOffset:F

    iput p2, p0, Landroid/view/MotionEvent;->mCompatSandboxYOffset:F

    iput p3, p0, Landroid/view/MotionEvent;->mCompatSandboxScale:F

    return-void
.end method

.method public blacklist setDisplayId(I)V
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetDisplayId(JI)V

    return-void
.end method

.method public final greylist setDownTime(J)V
    .locals 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p1

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeSetDownTimeNanos(JJ)V

    return-void
.end method

.method public final whitelist setEdgeFlags(I)V
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetEdgeFlags(JI)V

    return-void
.end method

.method public blacklist setFlags(I)V
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetFlags(JI)V

    return-void
.end method

.method public greylist-max-o setHoverExitPending(Z)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    iget-wide v1, p0, Landroid/view/MotionEvent;->mNativePtr:J

    if-eqz p1, :cond_0

    or-int/lit8 v3, v0, 0x4

    goto :goto_0

    :cond_0
    and-int/lit8 v3, v0, -0x5

    :goto_0
    invoke-static {v1, v2, v3}, Landroid/view/MotionEvent;->nativeSetFlags(JI)V

    return-void
.end method

.method public final whitelist setLocation(FF)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float v2, p1, v0

    sub-float v3, p2, v1

    invoke-virtual {p0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return-void
.end method

.method public final whitelist setSource(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetSource(JI)V

    invoke-direct {p0}, Landroid/view/MotionEvent;->updateCursorPosition()V

    return-void
.end method

.method public final greylist-max-o setTainted(Z)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    iget-wide v1, p0, Landroid/view/MotionEvent;->mNativePtr:J

    if-eqz p1, :cond_0

    const/high16 v3, -0x80000000

    or-int/2addr v3, v0

    goto :goto_0

    :cond_0
    const v3, 0x7fffffff

    and-int/2addr v3, v0

    :goto_0
    invoke-static {v1, v2, v3}, Landroid/view/MotionEvent;->nativeSetFlags(JI)V

    return-void
.end method

.method public greylist-max-o setTargetAccessibilityFocus(Z)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    iget-wide v1, p0, Landroid/view/MotionEvent;->mNativePtr:J

    if-eqz p1, :cond_0

    const/high16 v3, 0x40000000    # 2.0f

    or-int/2addr v3, v0

    goto :goto_0

    :cond_0
    const v3, -0x40000001    # -1.9999999f

    and-int/2addr v3, v0

    :goto_0
    invoke-static {v1, v2, v3}, Landroid/view/MotionEvent;->nativeSetFlags(JI)V

    return-void
.end method

.method public blacklist setWindowOffset(II)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/MotionEvent;->mNeedWindowOffset:Z

    iput p1, p0, Landroid/view/MotionEvent;->mWindowOffsetX:I

    iput p2, p0, Landroid/view/MotionEvent;->mWindowOffsetY:I

    return-void
.end method

.method public final greylist split(I)Landroid/view/MotionEvent;
    .locals 6

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v0

    and-int v1, v0, p1

    if-ne v1, p1, :cond_1

    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v1

    iget-wide v2, v1, Landroid/view/MotionEvent;->mNativePtr:J

    iget-wide v4, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3, v4, v5, p1}, Landroid/view/MotionEvent;->nativeSplit(JJI)J

    move-result-wide v2

    iput-wide v2, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-direct {p0}, Landroid/view/MotionEvent;->shouldApplyCompatSandbox()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/view/MotionEvent;->mCompatSandboxXOffset:F

    iget v3, p0, Landroid/view/MotionEvent;->mCompatSandboxYOffset:F

    iget v4, p0, Landroid/view/MotionEvent;->mCompatSandboxScale:F

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/MotionEvent;->setCompatSandboxScale(FFF)V

    :cond_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "idBits must be a non-empty subset of the pointer IDs from this MotionEvent, got idBits: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "0x%x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "idBits must contain at least one pointer from this motion event"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MotionEvent { action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v1

    invoke-static {v1}, Landroid/view/MotionEvent;->buttonStateToString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    const-string v3, ", actionButton="

    invoke-static {v2, v0, v3, v1}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", id["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5, v0, v6, v8}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    const-string v8, ", x["

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", y["

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    sget-object v8, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ", toolType["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v8

    invoke-static {v8}, Landroid/view/MotionEvent;->toolTypeToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v0, v7, v8}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    invoke-static {v3}, Landroid/view/MotionEvent;->buttonStateToString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, ", buttonState="

    invoke-static {v2, v0, v5, v3}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/view/MotionEvent;->classificationToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getClassification()I

    move-result v6

    invoke-static {v6}, Landroid/view/MotionEvent;->classificationToString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ", classification="

    invoke-static {v5, v0, v7, v6}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v5

    invoke-static {v5}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ", metaState="

    invoke-static {v2, v0, v6, v5}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ", flags=0x"

    invoke-static {v2, v0, v6, v5}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ", edgeFlags=0x"

    invoke-static {v2, v0, v6, v5}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, ", pointerCount="

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v0, v4, v5}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, ", historySize="

    invoke-static {v2, v0, v4, v3}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, ", eventTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", downTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", deviceId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", source=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", displayId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", eventId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final whitelist transform(Landroid/graphics/Matrix;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeTransform(JLandroid/graphics/Matrix;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "matrix must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeWriteToParcel(JLandroid/os/Parcel;)V

    return-void
.end method
