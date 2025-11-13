.class public Lcom/samsung/android/widget/SemPressGestureDetector;
.super Ljava/lang/Object;
.source "SemPressGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemPressGestureDetector$Point;
    }
.end annotation


# static fields
.field private static final blacklist BIXBY_TOUCH_AUTHORITY:Ljava/lang/String; = "content://com.samsung.android.bixbytouch"

.field private static final blacklist BIXBY_TOUCH_DETECTOR_VERSION:I = 0x3

.field private static final blacklist BIXBY_TOUCH_URI:Landroid/net/Uri;

.field private static final blacklist CALL_METHOD:Ljava/lang/String; = "send_bixby_touch_event"

.field private static final blacklist CALL_REFLECT_METHOD:Ljava/lang/String; = "bixby_touch_reflect_widget"

.field private static final blacklist DEFAULT_CHECK_TOUCH_DOWN_DELAY_TIME:I = 0x64

.field private static final blacklist DEFAULT_FINGER_DOWN_THRESHOLD:I = 0x1e

.field private static final blacklist DEFAULT_LONG_LONG_PRESS_TIME:I = 0x5dc

.field private static final blacklist DEFAULT_LONG_PRESS_TIME:I = 0x1f4

.field private static final blacklist DOUBLE_FINGER_TOUCH_MODE:I = 0x2

.field private static final blacklist KEY_BIXBYTOUCH_FINGER_DOWN_THRESHOLD:Ljava/lang/String; = "bixbytouch_finger_down_threshold"

.field private static final blacklist KEY_BIXBYTOUCH_FINGER_TOUCH_TRIGGER:Ljava/lang/String; = "bixbytouch_finger_touch_mode"

.field private static final blacklist KEY_BIXBYTOUCH_LONG_PRESS_TIME:Ljava/lang/String; = "bixbytouch_long_press_timeout"

.field private static final blacklist KEY_BIXBYTOUCH_VERSION:Ljava/lang/String; = "key_bixbytouch_version"

.field private static final blacklist KEY_CHECK_FP_DELAY_TIME:Ljava/lang/String; = "check_touch_down_delay_time"

.field private static final blacklist KEY_LONG_LONG_PRESS_TIME:Ljava/lang/String; = "long_long_press_timeout"

.field private static final blacklist LONG_CLICKED_BIXBY:I = 0x1

.field private static final blacklist LONG_LONG_CANCEL_BIXBY:I = 0x3

.field private static final blacklist LONG_LONG_CLICKED_BIXBY:I = 0x2

.field private static final blacklist PERMISSION_WRITE_SECURE_SETTINGS:Ljava/lang/String; = "android.permission.WRITE_SECURE_SETTINGS"

.field private static final blacklist REFLECT_FIELD_LEVEL_SELF:I = 0x0

.field private static final blacklist REFLECT_FIELD_LEVEL_SUPER:I = 0x1

.field private static final blacklist REFLECT_FIELD_LEVEL_SUPER_SUPER:I = 0x2

.field private static final blacklist REFLECT_MAX_COUNT:I = 0x3

.field private static final blacklist SINGLE_FINGER_TOUCH_MODE:I = 0x1

.field private static final blacklist SUPPORT_DOUBLE_FINGER_MODE_MIN_VERSION:J = 0x11e1a300L

.field private static final blacklist TAEGET_PKG_NAME:Ljava/lang/String; = "com.samsung.android.bixbytouch"

.field private static final blacklist TAG:Ljava/lang/String; = "SemPressGestureDetector"

.field private static final blacklist TOUCH_MOVE_MAX_MM:F = 3.0f

.field private static blacklist sBixbyTouchEnable:Z

.field private static blacklist sCheckTouchDownDelayTime:I

.field private static blacklist sCurrentTouchMode:I

.field private static blacklist sFingerDownThreshold:I

.field private static blacklist sHasCallReflectCount:I

.field private static blacklist sLongLongPressTime:I

.field private static blacklist sLongPressTime:I

.field private static blacklist sPreviousPackge:Ljava/lang/String;

.field private static blacklist sRequestCode:J

.field private static blacklist sTouchMoveMaxPixel:I

.field private static blacklist sVersionCode:J

.field private static blacklist sWidgetIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sWidgetNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mActivityName:Ljava/lang/String;

.field private blacklist mBixbyTouchVersion:J

.field private blacklist mBounds:Landroid/graphics/Rect;

.field private blacklist mCallerPackage:Ljava/lang/String;

.field private blacklist mCheckRestrictTouchRunnable:Ljava/lang/Runnable;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDetachedFromWindow:Z

.field private blacklist mFindViewRestricted:Z

.field private blacklist mGetSettingRunnable:Ljava/lang/Runnable;

.field private blacklist mHasDoneLongTouch:Z

.field private blacklist mInitFailed:Z

.field private blacklist mLongLongTouchRunnable:Ljava/lang/Runnable;

.field private blacklist mLongTouchRunnable:Ljava/lang/Runnable;

.field private blacklist mProcessName:Ljava/lang/String;

.field private blacklist mResponeLongLongTouch:Z

.field private blacklist mResponeLongTouch:Z

.field private blacklist mTaskId:I

.field private blacklist mTouchDownRestricted:Z

.field private blacklist mTouchedPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/widget/SemPressGestureDetector$Point;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTouchedRawPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/widget/SemPressGestureDetector$Point;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTouchedTime:J

.field private blacklist mTouchedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mView:Landroid/view/View;

.field private blacklist mWindowConfig:Ljava/lang/String;

.field private blacklist mWindowingMode:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActivityName(Lcom/samsung/android/widget/SemPressGestureDetector;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mActivityName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBixbyTouchVersion(Lcom/samsung/android/widget/SemPressGestureDetector;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mBixbyTouchVersion:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallerPackage(Lcom/samsung/android/widget/SemPressGestureDetector;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCallerPackage:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/samsung/android/widget/SemPressGestureDetector;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLongLongTouchRunnable(Lcom/samsung/android/widget/SemPressGestureDetector;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongLongTouchRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProcessName(Lcom/samsung/android/widget/SemPressGestureDetector;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mProcessName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResponeLongTouch(Lcom/samsung/android/widget/SemPressGestureDetector;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mResponeLongTouch:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTouchDownRestricted(Lcom/samsung/android/widget/SemPressGestureDetector;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchDownRestricted:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmView(Lcom/samsung/android/widget/SemPressGestureDetector;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBixbyTouchVersion(Lcom/samsung/android/widget/SemPressGestureDetector;J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mBixbyTouchVersion:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFindViewRestricted(Lcom/samsung/android/widget/SemPressGestureDetector;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mFindViewRestricted:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHasDoneLongTouch(Lcom/samsung/android/widget/SemPressGestureDetector;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mHasDoneLongTouch:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmResponeLongLongTouch(Lcom/samsung/android/widget/SemPressGestureDetector;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mResponeLongLongTouch:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmResponeLongTouch(Lcom/samsung/android/widget/SemPressGestureDetector;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mResponeLongTouch:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTouchDownRestricted(Lcom/samsung/android/widget/SemPressGestureDetector;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchDownRestricted:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTouchedViews(Lcom/samsung/android/widget/SemPressGestureDetector;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedViews:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misFingerPrintInDisplay(Lcom/samsung/android/widget/SemPressGestureDetector;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemPressGestureDetector;->isFingerPrintInDisplay()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misLauncherApp(Lcom/samsung/android/widget/SemPressGestureDetector;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemPressGestureDetector;->isLauncherApp()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mmatchPackage(Lcom/samsung/android/widget/SemPressGestureDetector;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->matchPackage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mparseInfoFromView(Lcom/samsung/android/widget/SemPressGestureDetector;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemPressGestureDetector;->parseInfoFromView()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendBixbyLongClickedEvent(Lcom/samsung/android/widget/SemPressGestureDetector;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->sendBixbyLongClickedEvent(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsLongLongPressTime()I
    .locals 1

    sget v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sLongLongPressTime:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsWidgetIdList()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sWidgetIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsWidgetNameList()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sWidgetNameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsCheckTouchDownDelayTime(I)V
    .locals 0

    sput p0, Lcom/samsung/android/widget/SemPressGestureDetector;->sCheckTouchDownDelayTime:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsCurrentTouchMode(I)V
    .locals 0

    sput p0, Lcom/samsung/android/widget/SemPressGestureDetector;->sCurrentTouchMode:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsFingerDownThreshold(I)V
    .locals 0

    sput p0, Lcom/samsung/android/widget/SemPressGestureDetector;->sFingerDownThreshold:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsHasCallReflectCount(I)V
    .locals 0

    sput p0, Lcom/samsung/android/widget/SemPressGestureDetector;->sHasCallReflectCount:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsLongLongPressTime(I)V
    .locals 0

    sput p0, Lcom/samsung/android/widget/SemPressGestureDetector;->sLongLongPressTime:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsLongPressTime(I)V
    .locals 0

    sput p0, Lcom/samsung/android/widget/SemPressGestureDetector;->sLongPressTime:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsRequestCode(J)V
    .locals 0

    sput-wide p0, Lcom/samsung/android/widget/SemPressGestureDetector;->sRequestCode:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetAppVersionCode(Landroid/content/Context;Ljava/lang/String;)J
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->getAppVersionCode(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 50
    const-string v0, "content://com.samsung.android.bixbytouch"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/widget/SemPressGestureDetector;->BIXBY_TOUCH_URI:Landroid/net/Uri;

    .line 67
    const/16 v0, 0x1f4

    sput v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sLongPressTime:I

    .line 68
    const/16 v0, 0x5dc

    sput v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sLongLongPressTime:I

    .line 69
    const/16 v0, 0x64

    sput v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sCheckTouchDownDelayTime:I

    .line 70
    const/16 v0, 0x1e

    sput v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sFingerDownThreshold:I

    .line 71
    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sCurrentTouchMode:I

    .line 72
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sBixbyTouchEnable:Z

    .line 73
    sput v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sHasCallReflectCount:I

    .line 74
    const/16 v0, 0x32

    sput v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sTouchMoveMaxPixel:I

    .line 75
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sVersionCode:J

    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sPreviousPackge:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sWidgetIdList:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sWidgetNameList:Ljava/util/ArrayList;

    .line 79
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sRequestCode:J

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mDetachedFromWindow:Z

    .line 83
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mHasDoneLongTouch:Z

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchDownRestricted:Z

    .line 84
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mInitFailed:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mResponeLongTouch:Z

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mResponeLongLongTouch:Z

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedViews:Ljava/util/ArrayList;

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCallerPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mProcessName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mActivityName:Ljava/lang/String;

    .line 87
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTaskId:I

    iput v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mWindowingMode:I

    .line 88
    iput-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mWindowConfig:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedPoints:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedRawPoints:Ljava/util/ArrayList;

    .line 92
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedTime:J

    .line 93
    iput-wide v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mBixbyTouchVersion:J

    .line 105
    new-instance v0, Lcom/samsung/android/widget/SemPressGestureDetector$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemPressGestureDetector$1;-><init>(Lcom/samsung/android/widget/SemPressGestureDetector;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongLongTouchRunnable:Ljava/lang/Runnable;

    .line 112
    new-instance v0, Lcom/samsung/android/widget/SemPressGestureDetector$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemPressGestureDetector$2;-><init>(Lcom/samsung/android/widget/SemPressGestureDetector;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongTouchRunnable:Ljava/lang/Runnable;

    .line 170
    new-instance v0, Lcom/samsung/android/widget/SemPressGestureDetector$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemPressGestureDetector$3;-><init>(Lcom/samsung/android/widget/SemPressGestureDetector;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCheckRestrictTouchRunnable:Ljava/lang/Runnable;

    .line 177
    new-instance v0, Lcom/samsung/android/widget/SemPressGestureDetector$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemPressGestureDetector$4;-><init>(Lcom/samsung/android/widget/SemPressGestureDetector;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mGetSettingRunnable:Ljava/lang/Runnable;

    .line 202
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/widget/SemPressGestureDetector;->init(Landroid/content/Context;Landroid/view/View;)V

    .line 203
    return-void
.end method

.method private blacklist addTouchedPoint(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 641
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 642
    .local v0, "mTouchPointIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 643
    .local v1, "pointId":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 644
    .local v2, "pointIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 645
    .local v3, "mTouchX":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 646
    .local v4, "mTouchY":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v5

    .line 647
    .local v5, "mTouchRawX":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v6

    .line 649
    .local v6, "mTouchRawY":F
    new-instance v7, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    invoke-direct {v7, v3, v4}, Lcom/samsung/android/widget/SemPressGestureDetector$Point;-><init>(FF)V

    .line 650
    .local v7, "touchedPoint":Lcom/samsung/android/widget/SemPressGestureDetector$Point;
    new-instance v8, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    invoke-direct {v8, v5, v6}, Lcom/samsung/android/widget/SemPressGestureDetector$Point;-><init>(FF)V

    .line 651
    .local v8, "touchedRawPoint":Lcom/samsung/android/widget/SemPressGestureDetector$Point;
    iget-object v9, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedPoints:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    iget-object v9, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedRawPoints:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    return-void
.end method

.method private blacklist checkBlockApp()V
    .locals 2

    .line 540
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/widget/SemPressGestureDetector$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemPressGestureDetector$5;-><init>(Lcom/samsung/android/widget/SemPressGestureDetector;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 549
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 550
    return-void
.end method

.method private blacklist checkTouchedPointIsMoved(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 656
    const/4 v0, 0x0

    .line 657
    .local v0, "isMoved":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 658
    iget-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedPoints:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    iget v2, v2, Lcom/samsung/android/widget/SemPressGestureDetector$Point;->x:F

    .line 659
    .local v2, "mTouchX":F
    iget-object v3, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedPoints:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    iget v3, v3, Lcom/samsung/android/widget/SemPressGestureDetector$Point;->y:F

    .line 660
    .local v3, "mTouchY":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    sub-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sget v5, Lcom/samsung/android/widget/SemPressGestureDetector;->sTouchMoveMaxPixel:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-gtz v4, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    sub-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sget v7, Lcom/samsung/android/widget/SemPressGestureDetector;->sTouchMoveMaxPixel:I

    int-to-float v7, v7

    cmpl-float v4, v4, v7

    if-lez v4, :cond_0

    goto :goto_1

    :cond_0
    move v4, v5

    goto :goto_2

    :cond_1
    :goto_1
    move v4, v6

    .line 661
    .local v4, "isPointMoved":Z
    :goto_2
    if-nez v0, :cond_2

    if-eqz v4, :cond_3

    :cond_2
    move v5, v6

    :cond_3
    move v0, v5

    .line 657
    .end local v2    # "mTouchX":F
    .end local v3    # "mTouchY":F
    .end local v4    # "isPointMoved":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 663
    .end local v1    # "i":I
    :cond_4
    return v0
.end method

.method private blacklist dispatchTouchEventDoubleFingers(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 609
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 610
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedTime:J

    .line 611
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 612
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedRawPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 613
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mHasDoneLongTouch:Z

    .line 614
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mResponeLongTouch:Z

    .line 615
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mResponeLongLongTouch:Z

    .line 616
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchDownRestricted:Z

    .line 617
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->addTouchedPoint(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 618
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    .line 619
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedTime:J

    sub-long/2addr v2, v4

    sget v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sFingerDownThreshold:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 620
    return v1

    .line 622
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->addTouchedPoint(Landroid/view/MotionEvent;)V

    .line 623
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongTouchRunnable:Ljava/lang/Runnable;

    sget v2, Lcom/samsung/android/widget/SemPressGestureDetector;->sLongPressTime:I

    sget v3, Lcom/samsung/android/widget/SemPressGestureDetector;->sFingerDownThreshold:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 624
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCheckRestrictTouchRunnable:Ljava/lang/Runnable;

    sget v2, Lcom/samsung/android/widget/SemPressGestureDetector;->sCheckTouchDownDelayTime:I

    sget v3, Lcom/samsung/android/widget/SemPressGestureDetector;->sFingerDownThreshold:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 626
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mResponeLongTouch:Z

    if-nez v0, :cond_3

    .line 627
    return v1

    .line 630
    :cond_3
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedTime:J

    sub-long/2addr v0, v2

    sget v2, Lcom/samsung/android/widget/SemPressGestureDetector;->sFingerDownThreshold:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 631
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mHasDoneLongTouch:Z

    if-nez v0, :cond_4

    .line 632
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->doLongPressDoubleFingers(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 634
    :cond_4
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->doLongLongPressDoubleFingers(Landroid/view/MotionEvent;)V

    .line 637
    :cond_5
    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mResponeLongLongTouch:Z

    return v0
.end method

.method private blacklist dispatchTouchEventOneFinger(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 582
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 584
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedRawPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 585
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mHasDoneLongTouch:Z

    .line 586
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mResponeLongTouch:Z

    .line 587
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mResponeLongLongTouch:Z

    .line 588
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchDownRestricted:Z

    .line 589
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->addTouchedPoint(Landroid/view/MotionEvent;)V

    .line 590
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongTouchRunnable:Ljava/lang/Runnable;

    sget v2, Lcom/samsung/android/widget/SemPressGestureDetector;->sLongPressTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 591
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCheckRestrictTouchRunnable:Ljava/lang/Runnable;

    sget v2, Lcom/samsung/android/widget/SemPressGestureDetector;->sCheckTouchDownDelayTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 593
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mResponeLongTouch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mResponeLongTouch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mResponeLongLongTouch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mResponeLongLongTouch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemPressGestureDetector"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mResponeLongTouch:Z

    if-nez v0, :cond_2

    .line 597
    return v2

    .line 600
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mHasDoneLongTouch:Z

    if-nez v0, :cond_3

    .line 601
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->doLongPressOneFinger(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 603
    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->doLongLongPressOneFinger(Landroid/view/MotionEvent;)V

    .line 605
    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mResponeLongLongTouch:Z

    return v0
.end method

.method private blacklist doLongLongPressDoubleFingers(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 730
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 732
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->checkTouchedPointIsMoved(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongLongTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 734
    invoke-direct {p0}, Lcom/samsung/android/widget/SemPressGestureDetector;->sendBixbyLongLongCancelEvent()V

    goto :goto_0

    .line 741
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongLongTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 742
    invoke-direct {p0}, Lcom/samsung/android/widget/SemPressGestureDetector;->sendBixbyLongLongCancelEvent()V

    .line 743
    nop

    .line 747
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private blacklist doLongLongPressOneFinger(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 686
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 688
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->checkTouchedPointIsMoved(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongLongTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 690
    invoke-direct {p0}, Lcom/samsung/android/widget/SemPressGestureDetector;->sendBixbyLongLongCancelEvent()V

    goto :goto_0

    .line 696
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongLongTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 697
    invoke-direct {p0}, Lcom/samsung/android/widget/SemPressGestureDetector;->sendBixbyLongLongCancelEvent()V

    .line 698
    nop

    .line 702
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private blacklist doLongPressDoubleFingers(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 705
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 719
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 720
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 721
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCheckRestrictTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 707
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->checkTouchedPointIsMoved(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 709
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCheckRestrictTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 714
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 715
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCheckRestrictTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 716
    nop

    .line 727
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist doLongPressOneFinger(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 667
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 669
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->checkTouchedPointIsMoved(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 671
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCheckRestrictTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 677
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 678
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCheckRestrictTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 679
    nop

    .line 683
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private blacklist getActivityFromContextWrapper(Landroid/content/Context;)Landroid/app/Activity;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 320
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 321
    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 322
    .local v0, "res":Landroid/content/Context;
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 323
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    return-object v1

    .line 325
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemPressGestureDetector;->getActivityFromContextWrapper(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    return-object v1

    .line 328
    .end local v0    # "res":Landroid/content/Context;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist getAppVersionCode(Landroid/content/Context;Ljava/lang/String;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 214
    const-wide/16 v0, 0x0

    .line 216
    .local v0, "versionCode":J
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    .line 219
    goto :goto_0

    .line 217
    :catch_0
    move-exception v2

    .line 218
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 220
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return-wide v0
.end method

.method private blacklist getContextFromDecorContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 4
    .param p1, "decorContext"    # Landroid/content/Context;

    .line 333
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 334
    .local v0, "clazz":Ljava/lang/Class;
    const-string v1, "mContext"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 335
    .local v1, "field":Ljava/lang/reflect/Field;
    if-eqz v1, :cond_0

    .line 336
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 337
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 338
    .local v2, "context":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 342
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "context":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    :cond_0
    goto :goto_0

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 343
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getText(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .line 226
    :try_start_0
    sget-object v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sWidgetNameList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 228
    sget-object v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sWidgetIdList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :cond_0
    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 232
    :goto_0
    const/4 v0, 0x0

    :try_start_1
    sget v1, Lcom/samsung/android/widget/SemPressGestureDetector;->sHasCallReflectCount:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 233
    return-object v0

    .line 235
    :cond_1
    const/4 v2, 0x1

    add-int/2addr v1, v2

    sput v1, Lcom/samsung/android/widget/SemPressGestureDetector;->sHasCallReflectCount:I

    .line 236
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 237
    .local v1, "clazz":Ljava/lang/Class;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 238
    .local v3, "bundle":Landroid/os/Bundle;
    invoke-static {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->getTouchedAppVersionCode(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    .line 239
    .local v4, "versionCode":J
    const-string/jumbo v6, "request_code"

    sget-wide v7, Lcom/samsung/android/widget/SemPressGestureDetector;->sRequestCode:J

    invoke-virtual {v3, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 240
    const-string v6, "caller_package"

    invoke-virtual {v3, v6, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v6, "caller_class"

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v6, "caller_version_code"

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 243
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/widget/SemPressGestureDetector;->BIXBY_TOUCH_URI:Landroid/net/Uri;

    const-string v8, "bixby_touch_reflect_widget"

    invoke-virtual {v6, v7, v8, v0, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    .line 244
    .local v6, "result":Landroid/os/Bundle;
    if-eqz v6, :cond_4

    .line 245
    const-string/jumbo v7, "reflect_field_name"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 246
    .local v7, "fieldName":Ljava/lang/String;
    const-string/jumbo v8, "reflect_method_name"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 247
    .local v8, "methodName":Ljava/lang/String;
    const-string/jumbo v9, "reflect_field_level"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 248
    .local v9, "fieldLevel":I
    if-eqz v7, :cond_3

    .line 249
    const/4 v10, 0x0

    .line 250
    .local v10, "field":Ljava/lang/reflect/Field;
    packed-switch v9, :pswitch_data_0

    goto :goto_1

    .line 258
    :pswitch_0
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    move-object v10, v11

    goto :goto_1

    .line 255
    :pswitch_1
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    move-object v10, v11

    .line 256
    goto :goto_1

    .line 252
    :pswitch_2
    invoke-virtual {v1, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    move-object v10, v11

    .line 253
    nop

    .line 261
    :goto_1
    if-eqz v10, :cond_2

    .line 262
    invoke-virtual {v10, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 263
    invoke-virtual {v10, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 264
    .local v2, "charSequence":Ljava/lang/Object;
    if-eqz v2, :cond_2

    .line 265
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 268
    .end local v2    # "charSequence":Ljava/lang/Object;
    .end local v10    # "field":Ljava/lang/reflect/Field;
    :cond_2
    goto :goto_2

    .line 269
    :cond_3
    const/4 v2, 0x0

    new-array v10, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 270
    .local v10, "method":Ljava/lang/reflect/Method;
    if-eqz v10, :cond_4

    .line 271
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v10, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 272
    .restart local v2    # "charSequence":Ljava/lang/Object;
    if-eqz v2, :cond_4

    .line 273
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 280
    .end local v1    # "clazz":Ljava/lang/Class;
    .end local v2    # "charSequence":Ljava/lang/Object;
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v4    # "versionCode":J
    .end local v6    # "result":Landroid/os/Bundle;
    .end local v7    # "fieldName":Ljava/lang/String;
    .end local v8    # "methodName":Ljava/lang/String;
    .end local v9    # "fieldLevel":I
    .end local v10    # "method":Ljava/lang/reflect/Method;
    :cond_4
    :goto_2
    goto :goto_3

    .line 278
    :catch_1
    move-exception v1

    .line 279
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 281
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist getTouchedAppVersionCode(Landroid/content/Context;Ljava/lang/String;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 206
    sget-wide v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sVersionCode:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    if-eqz p1, :cond_1

    sget-object v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sPreviousPackge:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->getAppVersionCode(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sVersionCode:J

    .line 208
    sput-object p1, Lcom/samsung/android/widget/SemPressGestureDetector;->sPreviousPackge:Ljava/lang/String;

    .line 210
    :cond_1
    sget-wide v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sVersionCode:J

    return-wide v0
.end method

.method private blacklist isFingerPrintInDisplay()Z
    .locals 7

    .line 347
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 348
    .local v0, "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    const/4 v1, 0x0

    .line 349
    .local v1, "fingerPrintInDisplay":Z
    const/4 v2, 0x0

    .line 350
    .local v2, "fingerIconHeight":I
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 351
    invoke-static {}, Landroid/hardware/fingerprint/FingerprintManager;->semGetSensorPosition()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    move v1, v5

    .line 352
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->semGetIconBottomMargin()I

    move-result v2

    .line 354
    :cond_1
    if-eqz v1, :cond_2

    if-lez v2, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    return v3
.end method

.method private blacklist isLauncherApp()Z
    .locals 4

    .line 553
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCallerPackage:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 554
    return v1

    .line 556
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 557
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 558
    iget-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 559
    .local v2, "res":Landroid/content/pm/ResolveInfo;
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v3, :cond_1

    .line 560
    return v1

    .line 562
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCallerPackage:Ljava/lang/String;

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private blacklist matchPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 531
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCallerPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private blacklist mm2px(F)F
    .locals 3
    .param p1, "mm"    # F

    .line 535
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 536
    .local v0, "dpi":I
    const v1, 0x41cb3333    # 25.4f

    div-float v1, p1, v1

    int-to-float v2, v0

    mul-float/2addr v1, v2

    return v1
.end method

.method private blacklist parseActivity()Landroid/app/Activity;
    .locals 4

    .line 302
    const/4 v0, 0x0

    .line 303
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    .line 304
    .local v1, "baseContext":Landroid/content/Context;
    iget-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    instance-of v3, v2, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 305
    move-object v0, v2

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    .line 306
    :cond_0
    instance-of v2, v2, Lcom/android/internal/policy/DecorContext;

    if-eqz v2, :cond_1

    .line 307
    iget-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemPressGestureDetector;->getContextFromDecorContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    .line 308
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 309
    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    .line 312
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 313
    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemPressGestureDetector;->getActivityFromContextWrapper(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    return-object v2

    .line 316
    :cond_2
    return-object v0
.end method

.method private blacklist parseInfoFromView()V
    .locals 2

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 287
    invoke-direct {p0}, Lcom/samsung/android/widget/SemPressGestureDetector;->parseActivity()Landroid/app/Activity;

    move-result-object v0

    .line 288
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mActivityName:Ljava/lang/String;

    .line 290
    invoke-virtual {v0}, Landroid/app/Activity;->getTaskId()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTaskId:I

    .line 292
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mWindowConfig:Ljava/lang/String;

    .line 293
    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mBounds:Landroid/graphics/Rect;

    .line 294
    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mWindowingMode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_1
    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 299
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private blacklist sendBixbyLongClickedEvent(I)Z
    .locals 9
    .param p1, "flag"    # I

    .line 395
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mDetachedFromWindow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 396
    return v1

    .line 399
    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 400
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "request_code"

    sget-wide v3, Lcom/samsung/android/widget/SemPressGestureDetector;->sRequestCode:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 401
    const-string v2, "bixby_touch_flag"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 402
    const-string v2, "bixby_touch_detector_version"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 403
    const/4 v2, 0x1

    if-ne p1, v2, :cond_7

    .line 404
    const-string v3, "caller_pkg"

    iget-object v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCallerPackage:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v3, "caller_activity"

    iget-object v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mActivityName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v3, "caller_process"

    iget-object v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string/jumbo v3, "widget_name_list"

    sget-object v4, Lcom/samsung/android/widget/SemPressGestureDetector;->sWidgetNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 408
    const-string/jumbo v3, "widget_id_list"

    sget-object v4, Lcom/samsung/android/widget/SemPressGestureDetector;->sWidgetIdList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 409
    const-string v3, "caller_task_id"

    iget v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTaskId:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 410
    const-string/jumbo v3, "window_mode"

    iget v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mWindowingMode:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 411
    const-string/jumbo v3, "window_config"

    iget-object v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mWindowConfig:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v3, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mBounds:Landroid/graphics/Rect;

    .line 413
    .local v3, "topActivityBounds":Landroid/graphics/Rect;
    if-eqz v3, :cond_1

    .line 414
    const-string/jumbo v4, "window_left"

    iget v5, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 415
    const-string/jumbo v4, "window_top"

    iget v5, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 416
    const-string/jumbo v4, "window_right"

    iget v5, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 417
    const-string/jumbo v4, "window_bottom"

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 419
    :cond_1
    sget v4, Lcom/samsung/android/widget/SemPressGestureDetector;->sCurrentTouchMode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v5, "touch_raw_start_y1"

    const-string/jumbo v6, "touch_raw_start_x1"

    const/4 v7, 0x2

    if-ne v4, v7, :cond_2

    .line 420
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedRawPoints:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v7, :cond_3

    .line 421
    iget-object v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedRawPoints:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    iget v4, v4, Lcom/samsung/android/widget/SemPressGestureDetector$Point;->x:F

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 422
    iget-object v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedRawPoints:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    iget v4, v4, Lcom/samsung/android/widget/SemPressGestureDetector$Point;->y:F

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 423
    const-string/jumbo v4, "touch_raw_start_x2"

    iget-object v5, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedRawPoints:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    iget v5, v5, Lcom/samsung/android/widget/SemPressGestureDetector$Point;->x:F

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 424
    const-string/jumbo v4, "touch_raw_start_y2"

    iget-object v5, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedRawPoints:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    iget v5, v5, Lcom/samsung/android/widget/SemPressGestureDetector$Point;->y:F

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 427
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedRawPoints:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v2, :cond_3

    .line 428
    iget-object v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedRawPoints:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    iget v4, v4, Lcom/samsung/android/widget/SemPressGestureDetector$Point;->x:F

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 429
    iget-object v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedRawPoints:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    iget v4, v4, Lcom/samsung/android/widget/SemPressGestureDetector$Point;->y:F

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 432
    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 433
    sget v4, Lcom/samsung/android/widget/SemPressGestureDetector;->sCurrentTouchMode:I

    if-ne v4, v2, :cond_4

    .line 434
    iget-object v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 435
    .local v4, "mTouchedView":Landroid/view/View;
    invoke-virtual {p0, v0, v4}, Lcom/samsung/android/widget/SemPressGestureDetector;->putTouchedViewInfoToBundle(Landroid/os/Bundle;Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, v5

    .line 436
    .end local v4    # "mTouchedView":Landroid/view/View;
    goto :goto_3

    .line 437
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v7, :cond_6

    .line 438
    iget-object v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 439
    .local v4, "view1":Landroid/view/View;
    iget-object v5, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 440
    .local v5, "view2":Landroid/view/View;
    const-string v6, "fingers_touch_in_same_view"

    if-ne v4, v5, :cond_5

    .line 441
    :try_start_2
    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 443
    :cond_5
    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 447
    .end local v4    # "view1":Landroid/view/View;
    .end local v5    # "view2":Landroid/view/View;
    :cond_6
    :goto_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    iget-object v5, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 448
    iget-object v5, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 449
    .local v5, "mTouchedView":Landroid/view/View;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 450
    .local v6, "subBundle":Landroid/os/Bundle;
    invoke-virtual {p0, v6, v5}, Lcom/samsung/android/widget/SemPressGestureDetector;->putTouchedViewInfoToBundle(Landroid/os/Bundle;Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v7

    move-object v6, v7

    .line 451
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "touched_view_info_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 452
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 447
    .end local v5    # "mTouchedView":Landroid/view/View;
    .end local v6    # "subBundle":Landroid/os/Bundle;
    .end local v7    # "key":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 457
    .end local v3    # "topActivityBounds":Landroid/graphics/Rect;
    .end local v4    # "i":I
    :cond_7
    :goto_3
    iget-object v3, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/widget/SemPressGestureDetector;->BIXBY_TOUCH_URI:Landroid/net/Uri;

    const-string/jumbo v5, "send_bixby_touch_event"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 458
    .local v3, "result":Landroid/os/Bundle;
    if-eqz v3, :cond_a

    .line 459
    if-ne p1, v2, :cond_9

    .line 460
    const-string v2, "key_bixbytouch_version"

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 461
    .local v6, "version":J
    cmp-long v2, v6, v4

    if-eqz v2, :cond_8

    .line 462
    iput-wide v6, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mBixbyTouchVersion:J

    .line 464
    :cond_8
    const-string v2, "bixbytouch_finger_touch_mode"

    sget v4, Lcom/samsung/android/widget/SemPressGestureDetector;->sCurrentTouchMode:I

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/samsung/android/widget/SemPressGestureDetector;->sCurrentTouchMode:I

    .line 465
    const-string v2, "bixbytouch_long_press_timeout"

    sget v4, Lcom/samsung/android/widget/SemPressGestureDetector;->sLongPressTime:I

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/samsung/android/widget/SemPressGestureDetector;->sLongPressTime:I

    .line 466
    const-string v2, "long_long_press_timeout"

    sget v4, Lcom/samsung/android/widget/SemPressGestureDetector;->sLongLongPressTime:I

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/samsung/android/widget/SemPressGestureDetector;->sLongLongPressTime:I

    .line 467
    const-string v2, "check_touch_down_delay_time"

    sget v4, Lcom/samsung/android/widget/SemPressGestureDetector;->sCheckTouchDownDelayTime:I

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/samsung/android/widget/SemPressGestureDetector;->sCheckTouchDownDelayTime:I

    .line 468
    const-string v2, "bixbytouch_finger_down_threshold"

    sget v4, Lcom/samsung/android/widget/SemPressGestureDetector;->sFingerDownThreshold:I

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/samsung/android/widget/SemPressGestureDetector;->sFingerDownThreshold:I

    .line 470
    .end local v6    # "version":J
    :cond_9
    const-string v2, "bixby_touch_response"

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v1

    .line 474
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "result":Landroid/os/Bundle;
    :cond_a
    goto :goto_4

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 475
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return v1
.end method

.method private blacklist sendBixbyLongLongCancelEvent()V
    .locals 5

    .line 504
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mHasDoneLongTouch:Z

    .line 505
    sget-object v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sWidgetNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 506
    sget-object v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sWidgetIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 507
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 508
    .local v0, "bundle":Landroid/os/Bundle;
    sget-wide v1, Lcom/samsung/android/widget/SemPressGestureDetector;->sRequestCode:J

    const-string/jumbo v3, "request_code"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 509
    const-string v1, "bixby_touch_flag"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 511
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/widget/SemPressGestureDetector;->BIXBY_TOUCH_URI:Landroid/net/Uri;

    const-string/jumbo v3, "send_bixby_touch_event"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    goto :goto_0

    .line 512
    :catch_0
    move-exception v1

    .line 513
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 515
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 566
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchTouchEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",sBixbyTouchEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/widget/SemPressGestureDetector;->sBixbyTouchEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mFindViewRestricted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mFindViewRestricted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemPressGestureDetector"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_0
    sget-boolean v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sBixbyTouchEnable:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mFindViewRestricted:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mDetachedFromWindow:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 573
    :cond_1
    sget v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sCurrentTouchMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 574
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->dispatchTouchEventDoubleFingers(Landroid/view/MotionEvent;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0

    .line 576
    .end local v0    # "result":Z
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->dispatchTouchEventOneFinger(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 578
    .restart local v0    # "result":Z
    :goto_0
    return v0

    .line 570
    .end local v0    # "result":Z
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTouchedViews()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v0, "mTouchedViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :try_start_0
    sget v1, Lcom/samsung/android/widget/SemPressGestureDetector;->sCurrentTouchMode:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_2

    .line 140
    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedRawPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 141
    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedPoints:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    iget v1, v1, Lcom/samsung/android/widget/SemPressGestureDetector$Point;->x:F

    .line 142
    .local v1, "mTouchedX0":F
    iget-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedPoints:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    iget v2, v2, Lcom/samsung/android/widget/SemPressGestureDetector$Point;->y:F

    .line 143
    .local v2, "mTouchedY0":F
    iget-object v3, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedPoints:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    iget v3, v3, Lcom/samsung/android/widget/SemPressGestureDetector$Point;->x:F

    .line 144
    .local v3, "mTouchedX1":F
    iget-object v5, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedPoints:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    iget v5, v5, Lcom/samsung/android/widget/SemPressGestureDetector$Point;->y:F

    .line 145
    .local v5, "mTouchedY1":F
    iget-object v6, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    invoke-virtual {v6, v1, v2, v4}, Landroid/view/View;->semDispatchFindView(FFZ)Landroid/view/View;

    move-result-object v6

    .line 146
    .local v6, "view0":Landroid/view/View;
    iget-object v7, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    invoke-virtual {v7, v3, v5, v4}, Landroid/view/View;->semDispatchFindView(FFZ)Landroid/view/View;

    move-result-object v4

    .line 147
    .local v4, "view1":Landroid/view/View;
    if-eqz v6, :cond_0

    .line 148
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_0
    if-eqz v4, :cond_1

    .line 151
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .end local v1    # "mTouchedX0":F
    .end local v2    # "mTouchedY0":F
    .end local v3    # "mTouchedX1":F
    .end local v4    # "view1":Landroid/view/View;
    .end local v5    # "mTouchedY1":F
    .end local v6    # "view0":Landroid/view/View;
    :cond_1
    goto :goto_0

    .line 155
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedRawPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 156
    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedPoints:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    iget v1, v1, Lcom/samsung/android/widget/SemPressGestureDetector$Point;->x:F

    .line 157
    .local v1, "mTouchedX":F
    iget-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedPoints:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    iget v2, v2, Lcom/samsung/android/widget/SemPressGestureDetector$Point;->y:F

    .line 158
    .local v2, "mTouchedY":F
    iget-object v3, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    invoke-virtual {v3, v1, v2, v4}, Landroid/view/View;->semDispatchFindView(FFZ)Landroid/view/View;

    move-result-object v3

    .line 159
    .local v3, "mTouchedView":Landroid/view/View;
    if-eqz v3, :cond_3

    .line 160
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v1    # "mTouchedX":F
    .end local v2    # "mTouchedY":F
    .end local v3    # "mTouchedView":Landroid/view/View;
    :cond_3
    :goto_0
    goto :goto_1

    .line 164
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 167
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method public blacklist init(Landroid/content/Context;Landroid/view/View;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .line 368
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 373
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mInitFailed:Z

    .line 374
    iput-object p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    .line 375
    iput-object p2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    .line 376
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCallerPackage:Ljava/lang/String;

    .line 377
    iget-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mProcessName:Ljava/lang/String;

    .line 378
    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemPressGestureDetector;->mm2px(F)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/samsung/android/widget/SemPressGestureDetector;->sTouchMoveMaxPixel:I

    .line 379
    iget-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 380
    .local v2, "wparams":Landroid/view/WindowManager$LayoutParams;
    if-eqz v2, :cond_2

    .line 381
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 382
    .local v3, "windowType":I
    const/16 v4, 0x7d0

    if-lt v3, v4, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mFindViewRestricted:Z

    .line 383
    if-eqz v0, :cond_2

    .line 384
    return-void

    .line 387
    .end local v3    # "windowType":I
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/widget/SemPressGestureDetector;->checkBlockApp()V

    .line 388
    return-void

    .line 369
    .end local v2    # "wparams":Landroid/view/WindowManager$LayoutParams;
    :cond_3
    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mInitFailed:Z

    .line 370
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mFindViewRestricted:Z

    .line 371
    return-void
.end method

.method public blacklist isInitFailed()Z
    .locals 1

    .line 391
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mInitFailed:Z

    return v0
.end method

.method public blacklist onDetached()V
    .locals 2

    .line 518
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mFindViewRestricted:Z

    if-eqz v0, :cond_0

    .line 519
    return-void

    .line 521
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mDetachedFromWindow:Z

    .line 522
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mHasDoneLongTouch:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mResponeLongTouch:Z

    if-eqz v0, :cond_1

    .line 523
    invoke-direct {p0}, Lcom/samsung/android/widget/SemPressGestureDetector;->sendBixbyLongLongCancelEvent()V

    .line 525
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 526
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCheckRestrictTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 527
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongLongTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 528
    return-void
.end method

.method public blacklist putTouchedViewInfoToBundle(Landroid/os/Bundle;Landroid/view/View;)Landroid/os/Bundle;
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "touchedView"    # Landroid/view/View;

    .line 479
    if-eqz p2, :cond_3

    .line 481
    :try_start_0
    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 482
    const-string v0, "input_type"

    move-object v1, p2

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 484
    :cond_0
    const-string v0, "bixby_touch_find_text"

    invoke-virtual {p2}, Landroid/view/View;->semGetBixbyTouchFoundText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const-string v0, "found_widget_name"

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 487
    const-string v0, "found_widget_id"

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    :cond_1
    instance-of v0, p2, Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    .line 490
    move-object v0, p2

    check-cast v0, Landroid/webkit/WebView;

    .line 491
    .local v0, "webView":Landroid/webkit/WebView;
    const-string/jumbo v1, "touch_webview"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 492
    const-string/jumbo v1, "touch_webview_url"

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const-string/jumbo v1, "touch_webview_originalUrl"

    invoke-virtual {v0}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const-string/jumbo v1, "touch_webview_title"

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    .end local v0    # "webView":Landroid/webkit/WebView;
    :cond_2
    goto :goto_0

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 500
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_0
    return-object p1
.end method

.method public blacklist setBixbyTouchEnable(Z)V
    .locals 2
    .param p1, "bixbyTouchEnable"    # Z

    .line 358
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mFindViewRestricted:Z

    if-eqz v0, :cond_0

    .line 359
    return-void

    .line 361
    :cond_0
    sput-boolean p1, Lcom/samsung/android/widget/SemPressGestureDetector;->sBixbyTouchEnable:Z

    .line 362
    if-eqz p1, :cond_1

    .line 363
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mGetSettingRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 365
    :cond_1
    return-void
.end method
