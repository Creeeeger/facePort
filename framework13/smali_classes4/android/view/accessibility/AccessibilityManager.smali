.class public final Landroid/view/accessibility/AccessibilityManager;
.super Ljava/lang/Object;
.source "AccessibilityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityManager$MyCallback;,
        Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;,
        Landroid/view/accessibility/AccessibilityManager$AudioDescriptionRequestedChangeListener;,
        Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;,
        Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;,
        Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;,
        Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;,
        Landroid/view/accessibility/AccessibilityManager$ContentFlag;,
        Landroid/view/accessibility/AccessibilityManager$ShortcutType;
    }
.end annotation


# static fields
.field public static final blacklist ACCESSIBILITY_BUTTON:I = 0x0

.field public static final blacklist ACCESSIBILITY_DIRECT_ACCESS:I = 0x2

.field public static final blacklist ACCESSIBILITY_SHORTCUT_KEY:I = 0x1

.field public static final greylist-max-o ACTION_CHOOSE_ACCESSIBILITY_BUTTON:Ljava/lang/String; = "com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON"

.field public static final greylist-max-o AUTOCLICK_DELAY_DEFAULT:I = 0x258

.field public static final blacklist AUTO_ACTION_DELAY_DEFAULT:I = 0x258

.field public static final blacklist AUTO_ACTION_TYPE_DEFAULT:I = 0x0

.field public static final greylist-max-o DALTONIZER_CORRECT_DEUTERANOMALY:I = 0xc

.field public static final greylist-max-o DALTONIZER_DISABLED:I = -0x1

.field public static final greylist-max-r DALTONIZER_SIMULATE_MONOCHROMACY:I = 0x0

.field private static final greylist-max-o DEBUG:Z = false

.field public static final whitelist FLAG_CONTENT_CONTROLS:I = 0x4

.field public static final whitelist FLAG_CONTENT_ICONS:I = 0x1

.field public static final whitelist FLAG_CONTENT_TEXT:I = 0x2

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "AccessibilityManager"

.field public static final blacklist SEM_FLASH_NOTIFICATION_TYPE_DEFAULT:I = 0x1

.field public static final blacklist SEM_FLASH_NOTIFICATION_TYPE_SEQUENCE:I = 0x2

.field public static final blacklist SEM_STATE_FLAG_ACCESSIBILITY_MENU:I = 0x800

.field public static final blacklist SEM_STATE_FLAG_ASSISTANT_MENU:I = 0x2000

.field public static final blacklist SEM_STATE_FLAG_GOOGLE_TALKBACK:I = 0x10

.field public static final blacklist SEM_STATE_FLAG_SELECT_TO_SPEAK:I = 0x1000

.field public static final blacklist SEM_STATE_FLAG_UNIVERSAL_SWITCH:I = 0x40

.field public static final blacklist SEM_STATE_FLAG_VOICE_ASSISTANT:I = 0x20

.field public static final greylist-max-o STATE_FLAG_ACCESSIBILITY_ENABLED:I = 0x1

.field public static final blacklist STATE_FLAG_AUDIO_DESCRIPTION_BY_DEFAULT_ENABLED:I = 0x1000

.field public static final blacklist STATE_FLAG_DISPATCH_DOUBLE_TAP:I = 0x8

.field public static final greylist-max-o STATE_FLAG_HIGH_TEXT_CONTRAST_ENABLED:I = 0x4

.field public static final blacklist STATE_FLAG_REQUEST_MULTI_FINGER_GESTURES:I = 0x10

.field public static final greylist-max-o STATE_FLAG_TOUCH_EXPLORATION_ENABLED:I = 0x2

.field public static final blacklist STATE_FLAG_TRACE_A11Y_INTERACTION_CLIENT_ENABLED:I = 0x400

.field public static final blacklist STATE_FLAG_TRACE_A11Y_INTERACTION_CONNECTION_CB_ENABLED:I = 0x200

.field public static final blacklist STATE_FLAG_TRACE_A11Y_INTERACTION_CONNECTION_ENABLED:I = 0x100

.field public static final blacklist STATE_FLAG_TRACE_A11Y_SERVICE_ENABLED:I = 0x800

.field private static greylist sInstance:Landroid/view/accessibility/AccessibilityManager;

.field static final greylist sInstanceSync:Ljava/lang/Object;


# instance fields
.field public final blacklist SEM_COLOR_FILTER_TYPE_AZURE:I

.field public final blacklist SEM_COLOR_FILTER_TYPE_BLUE:I

.field public final blacklist SEM_COLOR_FILTER_TYPE_CHARTREUSE_GREEN:I

.field public final blacklist SEM_COLOR_FILTER_TYPE_CYAN:I

.field public final blacklist SEM_COLOR_FILTER_TYPE_GREEN:I

.field public final blacklist SEM_COLOR_FILTER_TYPE_MAGENTA:I

.field public final blacklist SEM_COLOR_FILTER_TYPE_ORANGE:I

.field public final blacklist SEM_COLOR_FILTER_TYPE_RED:I

.field public final blacklist SEM_COLOR_FILTER_TYPE_ROSE:I

.field public final blacklist SEM_COLOR_FILTER_TYPE_SPRING_GREEN:I

.field public final blacklist SEM_COLOR_FILTER_TYPE_VIOLET:I

.field public final blacklist SEM_COLOR_FILTER_TYPE_YELLOW:I

.field greylist-max-o mAccessibilityPolicy:Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

.field private final greylist mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mAccessibilityTracingState:I

.field private final blacklist mAudioDescriptionRequestedChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/accessibility/AccessibilityManager$AudioDescriptionRequestedChangeListener;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o mCallback:Landroid/os/Handler$Callback;

.field private final greylist-max-o mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

.field private blacklist mFocusColor:I

.field private blacklist mFocusStrokeWidth:I

.field final greylist mHandler:Landroid/os/Handler;

.field private final greylist-max-o mHighTextContrastStateChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mInteractiveUiTimeout:I

.field blacklist mIsAudioDescriptionByDefaultRequested:Z

.field greylist-max-p mIsEnabled:Z

.field greylist mIsHighTextContrastEnabled:Z

.field greylist-max-o mIsTouchExplorationEnabled:Z

.field private final greylist mLock:Ljava/lang/Object;

.field blacklist mNonInteractiveUiTimeout:I

.field private blacklist mPerformingAction:I

.field greylist-max-o mRelevantEventTypes:I

.field private greylist-max-o mRequestPreparerLists:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityRequestPreparer;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist mService:Landroid/view/accessibility/IAccessibilityManager;

.field private final greylist-max-o mServicesStateChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mToken:Landroid/os/Binder;

.field private final greylist-max-o mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field final greylist mUserId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/view/accessibility/AccessibilityManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServicesStateChangeListeners(Landroid/view/accessibility/AccessibilityManager;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Landroid/view/accessibility/AccessibilityManager;->mServicesStateChangeListeners:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetStateLocked(Landroid/view/accessibility/AccessibilityManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->setStateLocked(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateFocusAppearanceLocked(Landroid/view/accessibility/AccessibilityManager;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/accessibility/AccessibilityManager;->updateFocusAppearanceLocked(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateUiTimeout(Landroid/view/accessibility/AccessibilityManager;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/accessibility/AccessibilityManager;->updateUiTimeout(J)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 377
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityManager;->sInstanceSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/accessibility/IAccessibilityManager;IZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "service"    # Landroid/view/accessibility/IAccessibilityManager;
    .param p4, "userId"    # I
    .param p5, "serviceConnect"    # Z

    .line 702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_BLUE:I

    .line 170
    const/4 v1, 0x1

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_AZURE:I

    .line 177
    const/4 v1, 0x2

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_CYAN:I

    .line 184
    const/4 v1, 0x3

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_SPRING_GREEN:I

    .line 191
    const/4 v1, 0x4

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_GREEN:I

    .line 198
    const/4 v1, 0x5

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_CHARTREUSE_GREEN:I

    .line 205
    const/4 v1, 0x6

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_YELLOW:I

    .line 212
    const/4 v1, 0x7

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_ORANGE:I

    .line 219
    const/16 v1, 0x8

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_RED:I

    .line 226
    const/16 v1, 0x9

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_ROSE:I

    .line 233
    const/16 v1, 0xa

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_MAGENTA:I

    .line 240
    const/16 v1, 0xb

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_VIOLET:I

    .line 382
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    .line 399
    const/4 v2, -0x1

    iput v2, p0, Landroid/view/accessibility/AccessibilityManager;->mRelevantEventTypes:I

    .line 412
    iput v0, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityTracingState:I

    .line 416
    iput v0, p0, Landroid/view/accessibility/AccessibilityManager;->mPerformingAction:I

    .line 423
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;

    .line 427
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;

    .line 430
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mHighTextContrastStateChangeListeners:Landroid/util/ArrayMap;

    .line 433
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mServicesStateChangeListeners:Landroid/util/ArrayMap;

    .line 436
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mAudioDescriptionRequestedChangeListeners:Landroid/util/ArrayMap;

    .line 445
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mToken:Landroid/os/Binder;

    .line 591
    new-instance v0, Landroid/view/accessibility/AccessibilityManager$1;

    invoke-direct {v0, p0}, Landroid/view/accessibility/AccessibilityManager$1;-><init>(Landroid/view/accessibility/AccessibilityManager;)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    .line 703
    new-instance v0, Landroid/view/accessibility/AccessibilityManager$MyCallback;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/view/accessibility/AccessibilityManager$MyCallback;-><init>(Landroid/view/accessibility/AccessibilityManager;Landroid/view/accessibility/AccessibilityManager$MyCallback-IA;)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mCallback:Landroid/os/Handler$Callback;

    .line 704
    iput-object p2, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    .line 705
    iput p4, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    .line 706
    monitor-enter v1

    .line 707
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->initialFocusAppearanceLocked(Landroid/content/res/Resources;)V

    .line 708
    if-eqz p5, :cond_0

    .line 709
    invoke-direct {p0, p3}, Landroid/view/accessibility/AccessibilityManager;->tryConnectToServiceLocked(Landroid/view/accessibility/IAccessibilityManager;)V

    .line 711
    :cond_0
    monitor-exit v1

    .line 712
    return-void

    .line 711
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/view/accessibility/IAccessibilityManager;
    .param p3, "userId"    # I

    .line 676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_BLUE:I

    .line 170
    const/4 v1, 0x1

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_AZURE:I

    .line 177
    const/4 v1, 0x2

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_CYAN:I

    .line 184
    const/4 v1, 0x3

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_SPRING_GREEN:I

    .line 191
    const/4 v1, 0x4

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_GREEN:I

    .line 198
    const/4 v1, 0x5

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_CHARTREUSE_GREEN:I

    .line 205
    const/4 v1, 0x6

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_YELLOW:I

    .line 212
    const/4 v1, 0x7

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_ORANGE:I

    .line 219
    const/16 v1, 0x8

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_RED:I

    .line 226
    const/16 v1, 0x9

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_ROSE:I

    .line 233
    const/16 v1, 0xa

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_MAGENTA:I

    .line 240
    const/16 v1, 0xb

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_VIOLET:I

    .line 382
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    .line 399
    const/4 v2, -0x1

    iput v2, p0, Landroid/view/accessibility/AccessibilityManager;->mRelevantEventTypes:I

    .line 412
    iput v0, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityTracingState:I

    .line 416
    iput v0, p0, Landroid/view/accessibility/AccessibilityManager;->mPerformingAction:I

    .line 423
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;

    .line 427
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;

    .line 430
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mHighTextContrastStateChangeListeners:Landroid/util/ArrayMap;

    .line 433
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mServicesStateChangeListeners:Landroid/util/ArrayMap;

    .line 436
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mAudioDescriptionRequestedChangeListeners:Landroid/util/ArrayMap;

    .line 445
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mToken:Landroid/os/Binder;

    .line 591
    new-instance v0, Landroid/view/accessibility/AccessibilityManager$1;

    invoke-direct {v0, p0}, Landroid/view/accessibility/AccessibilityManager$1;-><init>(Landroid/view/accessibility/AccessibilityManager;)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    .line 679
    new-instance v0, Landroid/view/accessibility/AccessibilityManager$MyCallback;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/view/accessibility/AccessibilityManager$MyCallback;-><init>(Landroid/view/accessibility/AccessibilityManager;Landroid/view/accessibility/AccessibilityManager$MyCallback-IA;)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mCallback:Landroid/os/Handler$Callback;

    .line 680
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    .line 681
    iput p3, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    .line 682
    monitor-enter v1

    .line 683
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->initialFocusAppearanceLocked(Landroid/content/res/Resources;)V

    .line 684
    invoke-direct {p0, p2}, Landroid/view/accessibility/AccessibilityManager;->tryConnectToServiceLocked(Landroid/view/accessibility/IAccessibilityManager;)V

    .line 685
    monitor-exit v1

    .line 686
    return-void

    .line 685
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private blacklist dipToPixel(Landroid/content/Context;F)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pixels"    # F

    .line 1262
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1264
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v1, v2

    div-float v1, p2, v1

    float-to-int v1, v1

    .line 1267
    .local v1, "dpi":I
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v3, v1

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    return v2
.end method

.method private blacklist getExclusiveTaskManagerService(Landroid/content/Context;)Lcom/samsung/android/sepunion/ISemExclusiveTaskManager;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1876
    const-string/jumbo v0, "sepunion"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sepunion/SemUnionManager;

    .line 1877
    .local v0, "um":Lcom/samsung/android/sepunion/SemUnionManager;
    const-string v1, "exclusivetask"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sepunion/SemUnionManager;->getSemSystemService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1878
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Lcom/samsung/android/sepunion/ISemExclusiveTaskManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sepunion/ISemExclusiveTaskManager;

    move-result-object v2

    .line 1880
    .local v2, "service":Lcom/samsung/android/sepunion/ISemExclusiveTaskManager;
    return-object v2
.end method

.method public static greylist getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 647
    sget-object v0, Landroid/view/accessibility/AccessibilityManager;->sInstanceSync:Ljava/lang/Object;

    monitor-enter v0

    .line 648
    :try_start_0
    sget-object v1, Landroid/view/accessibility/AccessibilityManager;->sInstance:Landroid/view/accessibility/AccessibilityManager;

    if-nez v1, :cond_2

    .line 650
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_1

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    .line 651
    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 654
    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 659
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v1

    .local v1, "userId":I
    goto :goto_1

    .line 657
    .end local v1    # "userId":I
    :cond_1
    :goto_0
    const/4 v1, -0x2

    .line 661
    .restart local v1    # "userId":I
    :goto_1
    new-instance v2, Landroid/view/accessibility/AccessibilityManager;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v1}, Landroid/view/accessibility/AccessibilityManager;-><init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;I)V

    sput-object v2, Landroid/view/accessibility/AccessibilityManager;->sInstance:Landroid/view/accessibility/AccessibilityManager;

    .line 663
    .end local v1    # "userId":I
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    sget-object v0, Landroid/view/accessibility/AccessibilityManager;->sInstance:Landroid/view/accessibility/AccessibilityManager;

    return-object v0

    .line 663
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private greylist-max-o getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;
    .locals 1

    .line 2180
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    if-nez v0, :cond_0

    .line 2181
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->tryConnectToServiceLocked(Landroid/view/accessibility/IAccessibilityManager;)V

    .line 2183
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    return-object v0
.end method

.method private blacklist getShortcutInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/accessibilityservice/AccessibilityShortcutInfo;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 2026
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2027
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 2028
    const-string v3, "android.accessibilityshortcut.target"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 2032
    :cond_0
    :try_start_0
    new-instance v2, Landroid/accessibilityservice/AccessibilityShortcutInfo;

    invoke-direct {v2, p1, v0}, Landroid/accessibilityservice/AccessibilityShortcutInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 2033
    :catch_0
    move-exception v2

    .line 2034
    .local v2, "exp":Ljava/lang/Exception;
    const-string v3, "AccessibilityManager"

    const-string v4, "Error while initializing AccessibilityShortcutInfo"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2036
    .end local v2    # "exp":Ljava/lang/Exception;
    return-object v1

    .line 2029
    :cond_1
    :goto_0
    return-object v1
.end method

.method private blacklist initialFocusAppearanceLocked(Landroid/content/res/Resources;)V
    .locals 3
    .param p1, "resource"    # Landroid/content/res/Resources;

    .line 2337
    const v0, 0x105000b

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityManager;->mFocusStrokeWidth:I

    .line 2339
    const v0, 0x1060080

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityManager;->mFocusColor:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2347
    goto :goto_0

    .line 2340
    :catch_0
    move-exception v0

    .line 2343
    .local v0, "re":Landroid/content/res/Resources$NotFoundException;
    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->mFocusStrokeWidth:I

    .line 2344
    const v1, -0x40c64b00

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->mFocusColor:I

    .line 2345
    const-string v1, "AccessibilityManager"

    const-string v2, "Error while initialing the focus appearance data then setting to default value by hardcoded"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2348
    .end local v0    # "re":Landroid/content/res/Resources$NotFoundException;
    :goto_0
    return-void
.end method

.method public static whitelist isAccessibilityButtonSupported()Z
    .locals 2

    .line 2357
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 2358
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x11101b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    return v1
.end method

.method static synthetic blacklist lambda$notifyAccessibilityStateChanged$0(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;Z)V
    .locals 0
    .param p0, "listener"    # Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
    .param p1, "isEnabled"    # Z

    .line 2225
    invoke-interface {p0, p1}, Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;->onAccessibilityStateChanged(Z)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyAudioDescriptionbyDefaultStateChanged$3(Landroid/view/accessibility/AccessibilityManager$AudioDescriptionRequestedChangeListener;Z)V
    .locals 0
    .param p0, "listener"    # Landroid/view/accessibility/AccessibilityManager$AudioDescriptionRequestedChangeListener;
    .param p1, "isAudioDescriptionByDefaultRequested"    # Z

    .line 2291
    invoke-interface {p0, p1}, Landroid/view/accessibility/AccessibilityManager$AudioDescriptionRequestedChangeListener;->onAudioDescriptionRequestedChanged(Z)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyHighTextContrastStateChanged$2(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;Z)V
    .locals 0
    .param p0, "listener"    # Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;
    .param p1, "isHighTextContrastEnabled"    # Z

    .line 2269
    invoke-interface {p0, p1}, Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;->onHighTextContrastStateChanged(Z)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyTouchExplorationStateChanged$1(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;Z)V
    .locals 0
    .param p0, "listener"    # Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;
    .param p1, "isTouchExplorationEnabled"    # Z

    .line 2247
    invoke-interface {p0, p1}, Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;->onTouchExplorationStateChanged(Z)V

    return-void
.end method

.method private greylist-max-o notifyAccessibilityStateChanged()V
    .locals 7

    .line 2213
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2214
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2215
    monitor-exit v0

    return-void

    .line 2217
    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    .line 2218
    .local v1, "isEnabled":Z
    new-instance v2, Landroid/util/ArrayMap;

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 2219
    .local v2, "listeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;Landroid/os/Handler;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2221
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2222
    .local v0, "numListeners":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 2223
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    .line 2224
    .local v4, "listener":Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Handler;

    new-instance v6, Landroid/view/accessibility/AccessibilityManager$$ExternalSyntheticLambda1;

    invoke-direct {v6, v4, v1}, Landroid/view/accessibility/AccessibilityManager$$ExternalSyntheticLambda1;-><init>(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;Z)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2222
    .end local v4    # "listener":Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2227
    .end local v3    # "i":I
    :cond_1
    return-void

    .line 2219
    .end local v0    # "numListeners":I
    .end local v1    # "isEnabled":Z
    .end local v2    # "listeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;Landroid/os/Handler;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private blacklist notifyAudioDescriptionbyDefaultStateChanged()V
    .locals 7

    .line 2279
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2280
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mAudioDescriptionRequestedChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2281
    monitor-exit v0

    return-void

    .line 2283
    :cond_0
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsAudioDescriptionByDefaultRequested:Z

    .line 2284
    .local v1, "isAudioDescriptionByDefaultRequested":Z
    new-instance v2, Landroid/util/ArrayMap;

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mAudioDescriptionRequestedChangeListeners:Landroid/util/ArrayMap;

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 2285
    .local v2, "listeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/accessibility/AccessibilityManager$AudioDescriptionRequestedChangeListener;Ljava/util/concurrent/Executor;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2287
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2288
    .local v0, "numListeners":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 2289
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager$AudioDescriptionRequestedChangeListener;

    .line 2290
    .local v4, "listener":Landroid/view/accessibility/AccessibilityManager$AudioDescriptionRequestedChangeListener;
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Executor;

    new-instance v6, Landroid/view/accessibility/AccessibilityManager$$ExternalSyntheticLambda0;

    invoke-direct {v6, v4, v1}, Landroid/view/accessibility/AccessibilityManager$$ExternalSyntheticLambda0;-><init>(Landroid/view/accessibility/AccessibilityManager$AudioDescriptionRequestedChangeListener;Z)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2288
    .end local v4    # "listener":Landroid/view/accessibility/AccessibilityManager$AudioDescriptionRequestedChangeListener;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2294
    .end local v3    # "i":I
    :cond_1
    return-void

    .line 2285
    .end local v0    # "numListeners":I
    .end local v1    # "isAudioDescriptionByDefaultRequested":Z
    .end local v2    # "listeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/accessibility/AccessibilityManager$AudioDescriptionRequestedChangeListener;Ljava/util/concurrent/Executor;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private greylist-max-o notifyHighTextContrastStateChanged()V
    .locals 7

    .line 2257
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2258
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mHighTextContrastStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2259
    monitor-exit v0

    return-void

    .line 2261
    :cond_0
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsHighTextContrastEnabled:Z

    .line 2262
    .local v1, "isHighTextContrastEnabled":Z
    new-instance v2, Landroid/util/ArrayMap;

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mHighTextContrastStateChangeListeners:Landroid/util/ArrayMap;

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 2263
    .local v2, "listeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;Landroid/os/Handler;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2265
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2266
    .local v0, "numListeners":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 2267
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;

    .line 2268
    .local v4, "listener":Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Handler;

    new-instance v6, Landroid/view/accessibility/AccessibilityManager$$ExternalSyntheticLambda2;

    invoke-direct {v6, v4, v1}, Landroid/view/accessibility/AccessibilityManager$$ExternalSyntheticLambda2;-><init>(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;Z)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2266
    .end local v4    # "listener":Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2271
    .end local v3    # "i":I
    :cond_1
    return-void

    .line 2263
    .end local v0    # "numListeners":I
    .end local v1    # "isHighTextContrastEnabled":Z
    .end local v2    # "listeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;Landroid/os/Handler;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private greylist-max-o notifyTouchExplorationStateChanged()V
    .locals 7

    .line 2235
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2236
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2237
    monitor-exit v0

    return-void

    .line 2239
    :cond_0
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z

    .line 2240
    .local v1, "isTouchExplorationEnabled":Z
    new-instance v2, Landroid/util/ArrayMap;

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 2241
    .local v2, "listeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;Landroid/os/Handler;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2243
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2244
    .local v0, "numListeners":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 2245
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 2246
    .local v4, "listener":Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Handler;

    new-instance v6, Landroid/view/accessibility/AccessibilityManager$$ExternalSyntheticLambda3;

    invoke-direct {v6, v4, v1}, Landroid/view/accessibility/AccessibilityManager$$ExternalSyntheticLambda3;-><init>(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;Z)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2244
    .end local v4    # "listener":Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2249
    .end local v3    # "i":I
    :cond_1
    return-void

    .line 2241
    .end local v0    # "numListeners":I
    .end local v1    # "isTouchExplorationEnabled":Z
    .end local v2    # "listeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;Landroid/os/Handler;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private greylist setStateLocked(I)V
    .locals 9
    .param p1, "stateFlags"    # I

    .line 1550
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1551
    .local v0, "enabled":Z
    :goto_0
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 1553
    .local v3, "touchExplorationEnabled":Z
    :goto_1
    and-int/lit8 v4, p1, 0x4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    .line 1555
    .local v4, "highTextContrastEnabled":Z
    :goto_2
    and-int/lit16 v5, p1, 0x1000

    if-eqz v5, :cond_3

    move v1, v2

    .line 1558
    .local v1, "audioDescriptionEnabled":Z
    :cond_3
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    .line 1559
    .local v2, "wasEnabled":Z
    iget-boolean v5, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z

    .line 1560
    .local v5, "wasTouchExplorationEnabled":Z
    iget-boolean v6, p0, Landroid/view/accessibility/AccessibilityManager;->mIsHighTextContrastEnabled:Z

    .line 1561
    .local v6, "wasHighTextContrastEnabled":Z
    iget-boolean v7, p0, Landroid/view/accessibility/AccessibilityManager;->mIsAudioDescriptionByDefaultRequested:Z

    .line 1564
    .local v7, "wasAudioDescriptionByDefaultRequested":Z
    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    .line 1565
    iput-boolean v3, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z

    .line 1566
    iput-boolean v4, p0, Landroid/view/accessibility/AccessibilityManager;->mIsHighTextContrastEnabled:Z

    .line 1567
    iput-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsAudioDescriptionByDefaultRequested:Z

    .line 1569
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v8

    if-eq v2, v8, :cond_4

    .line 1570
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->notifyAccessibilityStateChanged()V

    .line 1573
    :cond_4
    if-eq v5, v3, :cond_5

    .line 1574
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->notifyTouchExplorationStateChanged()V

    .line 1577
    :cond_5
    if-eq v6, v4, :cond_6

    .line 1578
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->notifyHighTextContrastStateChanged()V

    .line 1581
    :cond_6
    if-eq v7, v1, :cond_7

    .line 1583
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->notifyAudioDescriptionbyDefaultStateChanged()V

    .line 1586
    :cond_7
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->updateAccessibilityTracingState(I)V

    .line 1587
    return-void
.end method

.method private greylist-max-o tryConnectToServiceLocked(Landroid/view/accessibility/IAccessibilityManager;)V
    .locals 4
    .param p1, "service"    # Landroid/view/accessibility/IAccessibilityManager;

    .line 2187
    if-nez p1, :cond_1

    .line 2188
    const-string v0, "accessibility"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2189
    .local v0, "iBinder":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 2190
    return-void

    .line 2192
    :cond_0
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object p1

    .line 2196
    .end local v0    # "iBinder":Landroid/os/IBinder;
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    iget v1, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    invoke-interface {p1, v0, v1}, Landroid/view/accessibility/IAccessibilityManager;->addClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)J

    move-result-wide v0

    .line 2197
    .local v0, "userStateAndRelevantEvents":J
    invoke-static {v0, v1}, Lcom/android/internal/util/IntPair;->first(J)I

    move-result v2

    invoke-direct {p0, v2}, Landroid/view/accessibility/AccessibilityManager;->setStateLocked(I)V

    .line 2198
    invoke-static {v0, v1}, Lcom/android/internal/util/IntPair;->second(J)I

    move-result v2

    iput v2, p0, Landroid/view/accessibility/AccessibilityManager;->mRelevantEventTypes:I

    .line 2199
    invoke-interface {p1}, Landroid/view/accessibility/IAccessibilityManager;->getRecommendedTimeoutMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Landroid/view/accessibility/AccessibilityManager;->updateUiTimeout(J)V

    .line 2200
    invoke-interface {p1}, Landroid/view/accessibility/IAccessibilityManager;->getFocusStrokeWidth()I

    move-result v2

    invoke-interface {p1}, Landroid/view/accessibility/IAccessibilityManager;->getFocusColor()I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/view/accessibility/AccessibilityManager;->updateFocusAppearanceLocked(II)V

    .line 2201
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2204
    .end local v0    # "userStateAndRelevantEvents":J
    goto :goto_0

    .line 2202
    :catch_0
    move-exception v0

    .line 2203
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityManager"

    const-string v2, "AccessibilityManagerService is dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2205
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private blacklist updateAccessibilityTracingState(I)V
    .locals 2
    .param p1, "stateFlag"    # I

    .line 2300
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2301
    :try_start_0
    iput p1, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityTracingState:I

    .line 2302
    monitor-exit v0

    .line 2303
    return-void

    .line 2302
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist updateFocusAppearanceLocked(II)V
    .locals 1
    .param p1, "strokeWidth"    # I
    .param p2, "color"    # I

    .line 2323
    iget v0, p0, Landroid/view/accessibility/AccessibilityManager;->mFocusStrokeWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Landroid/view/accessibility/AccessibilityManager;->mFocusColor:I

    if-ne v0, p2, :cond_0

    .line 2324
    return-void

    .line 2326
    :cond_0
    iput p1, p0, Landroid/view/accessibility/AccessibilityManager;->mFocusStrokeWidth:I

    .line 2327
    iput p2, p0, Landroid/view/accessibility/AccessibilityManager;->mFocusColor:I

    .line 2328
    return-void
.end method

.method private blacklist updateUiTimeout(J)V
    .locals 1
    .param p1, "uiTimeout"    # J

    .line 2312
    invoke-static {p1, p2}, Lcom/android/internal/util/IntPair;->first(J)I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityManager;->mInteractiveUiTimeout:I

    .line 2313
    invoke-static {p1, p2}, Lcom/android/internal/util/IntPair;->second(J)I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityManager;->mNonInteractiveUiTimeout:I

    .line 2314
    return-void
.end method


# virtual methods
.method public blacklist OnStartGestureWakeup()Z
    .locals 5

    .line 2987
    const/4 v0, 0x0

    .line 2989
    .local v0, "result":Z
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2990
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v2

    .line 2991
    .local v2, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v2, :cond_0

    .line 2992
    monitor-exit v1

    return v0

    .line 2994
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2996
    :try_start_1
    invoke-interface {v2}, Landroid/view/accessibility/IAccessibilityManager;->OnStartGestureWakeup()Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    .line 2999
    goto :goto_0

    .line 2997
    :catch_0
    move-exception v1

    .line 2998
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "AccessibilityManager"

    const-string v4, "OnStartGestureWakeup Exception:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3000
    .end local v1    # "re":Landroid/os/RemoteException;
    :goto_0
    return v0

    .line 2994
    .end local v2    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public blacklist OnStopGestureWakeup()Z
    .locals 5

    .line 3008
    const/4 v0, 0x0

    .line 3010
    .local v0, "result":Z
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3011
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v2

    .line 3012
    .local v2, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v2, :cond_0

    .line 3013
    monitor-exit v1

    return v0

    .line 3015
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3017
    :try_start_1
    invoke-interface {v2}, Landroid/view/accessibility/IAccessibilityManager;->OnStopGestureWakeup()Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    .line 3020
    goto :goto_0

    .line 3018
    :catch_0
    move-exception v1

    .line 3019
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "AccessibilityManager"

    const-string v4, "OnStopGestureWakeup Exception:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3021
    .end local v1    # "re":Landroid/os/RemoteException;
    :goto_0
    return v0

    .line 3015
    .end local v2    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public blacklist addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/accessibility/IAccessibilityInteractionConnection;)I
    .locals 9
    .param p1, "windowToken"    # Landroid/view/IWindow;
    .param p2, "leashToken"    # Landroid/os/IBinder;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "connection"    # Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .line 1625
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1626
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1627
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    const/4 v8, -0x1

    if-nez v1, :cond_0

    .line 1628
    monitor-exit v0

    return v8

    .line 1630
    :cond_0
    iget v7, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    .line 1631
    .local v7, "userId":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1633
    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    :try_start_1
    invoke-interface/range {v2 .. v7}, Landroid/view/accessibility/IAccessibilityManager;->addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/os/IBinder;Landroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;I)I

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    .line 1635
    :catch_0
    move-exception v0

    .line 1636
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string v3, "Error while adding an accessibility interaction connection. "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1638
    .end local v0    # "re":Landroid/os/RemoteException;
    return v8

    .line 1631
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .end local v7    # "userId":I
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist addAccessibilityRequestPreparer(Landroid/view/accessibility/AccessibilityRequestPreparer;)V
    .locals 4
    .param p1, "preparer"    # Landroid/view/accessibility/AccessibilityRequestPreparer;

    .line 1153
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1154
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    .line 1156
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRequestPreparer;->getAccessibilityViewId()I

    move-result v0

    .line 1157
    .local v0, "id":I
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1158
    .local v2, "requestPreparerList":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityRequestPreparer;>;"
    if-nez v2, :cond_1

    .line 1159
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v3

    .line 1160
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1162
    :cond_1
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1163
    return-void
.end method

.method public whitelist addAccessibilityServicesStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    .line 1133
    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, v0, p1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityServicesStateChangeListener(Ljava/util/concurrent/Executor;Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V

    .line 1134
    return-void
.end method

.method public whitelist addAccessibilityServicesStateChangeListener(Ljava/util/concurrent/Executor;Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    .line 1119
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1120
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mServicesStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    monitor-exit v0

    .line 1122
    return-void

    .line 1121
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1042
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1043
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;

    .line 1044
    if-nez p2, :cond_0

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    monitor-exit v0

    .line 1046
    return-void

    .line 1045
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    .line 1027
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;Landroid/os/Handler;)V

    .line 1028
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist addAudioDescriptionRequestedChangeListener(Ljava/util/concurrent/Executor;Landroid/view/accessibility/AccessibilityManager$AudioDescriptionRequestedChangeListener;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/view/accessibility/AccessibilityManager$AudioDescriptionRequestedChangeListener;

    .line 1398
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1399
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mAudioDescriptionRequestedChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1400
    monitor-exit v0

    .line 1401
    return-void

    .line 1400
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o addHighTextContrastStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1367
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1368
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mHighTextContrastStateChangeListeners:Landroid/util/ArrayMap;

    .line 1369
    if-nez p2, :cond_0

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1370
    monitor-exit v0

    .line 1371
    return-void

    .line 1370
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1089
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1090
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;

    .line 1091
    if-nez p2, :cond_0

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    monitor-exit v0

    .line 1093
    return-void

    .line 1092
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 1074
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;Landroid/os/Handler;)V

    .line 1075
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist associateEmbeddedHierarchy(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "host"    # Landroid/os/IBinder;
    .param p2, "embedded"    # Landroid/os/IBinder;

    .line 1506
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1507
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1508
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 1509
    monitor-exit v0

    return-void

    .line 1511
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1513
    :try_start_1
    invoke-interface {v1, p1, p2}, Landroid/view/accessibility/IAccessibilityManager;->associateEmbeddedHierarchy(Landroid/os/IBinder;Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1516
    nop

    .line 1517
    return-void

    .line 1514
    :catch_0
    move-exception v0

    .line 1515
    .local v0, "e":Landroid/os/RemoteException;
    return-void

    .line 1511
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist disassociateEmbeddedHierarchy(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1526
    if-nez p1, :cond_0

    .line 1527
    return-void

    .line 1530
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1531
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1532
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_1

    .line 1533
    monitor-exit v0

    return-void

    .line 1535
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1537
    :try_start_1
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->disassociateEmbeddedHierarchy(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1540
    nop

    .line 1541
    return-void

    .line 1538
    :catch_0
    move-exception v0

    .line 1539
    .local v0, "e":Landroid/os/RemoteException;
    return-void

    .line 1535
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist getAccessibilityFocusColor()I
    .locals 2

    .line 1279
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1280
    :try_start_0
    iget v1, p0, Landroid/view/accessibility/AccessibilityManager;->mFocusColor:I

    monitor-exit v0

    return v1

    .line 1281
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getAccessibilityFocusStrokeWidth()I
    .locals 2

    .line 1222
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1223
    :try_start_0
    iget v1, p0, Landroid/view/accessibility/AccessibilityManager;->mFocusStrokeWidth:I

    monitor-exit v0

    return v1

    .line 1224
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getAccessibilityServiceList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 925
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v0

    .line 926
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 927
    .local v1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ServiceInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 928
    .local v2, "infoCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 929
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 930
    .local v4, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 928
    .end local v4    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 932
    .end local v3    # "i":I
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public blacklist getAccessibilityShortcutTargets(I)Ljava/util/List;
    .locals 2
    .param p1, "shortcutType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1921
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1922
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1923
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1924
    if-eqz v1, :cond_0

    .line 1926
    :try_start_1
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->getAccessibilityShortcutTargets(I)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 1927
    :catch_0
    move-exception v0

    .line 1928
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1931
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1923
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist getAccessibilityWindowId(Landroid/os/IBinder;)I
    .locals 3
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1481
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 1482
    return v0

    .line 1486
    :cond_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1487
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v2

    .line 1488
    .local v2, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v2, :cond_1

    .line 1489
    monitor-exit v1

    return v0

    .line 1491
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1493
    :try_start_1
    invoke-interface {v2, p1}, Landroid/view/accessibility/IAccessibilityManager;->getAccessibilityWindowId(Landroid/os/IBinder;)I

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    .line 1494
    :catch_0
    move-exception v1

    .line 1495
    .local v1, "e":Landroid/os/RemoteException;
    return v0

    .line 1491
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public greylist-max-o getCallback()Landroid/os/Handler$Callback;
    .locals 1

    .line 745
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mCallback:Landroid/os/Handler$Callback;

    return-object v0
.end method

.method public greylist-max-o getClient()Landroid/view/accessibility/IAccessibilityManagerClient;
    .locals 1

    .line 718
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    return-object v0
.end method

.method public whitelist getEnabledAccessibilityServiceList(I)Ljava/util/List;
    .locals 6
    .param p1, "feedbackTypeFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .line 988
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 989
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 990
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 991
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 993
    :cond_0
    iget v2, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    .line 994
    .local v2, "userId":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 996
    const/4 v0, 0x0

    .line 998
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :try_start_1
    invoke-interface {v1, p1, v2}, Landroid/view/accessibility/IAccessibilityManager;->getEnabledAccessibilityServiceList(II)Ljava/util/List;

    move-result-object v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v3

    .line 1004
    goto :goto_0

    .line 1002
    :catch_0
    move-exception v3

    .line 1003
    .local v3, "re":Landroid/os/RemoteException;
    const-string v4, "AccessibilityManager"

    const-string v5, "Error while obtaining the enabled AccessibilityServices. "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1005
    .end local v3    # "re":Landroid/os/RemoteException;
    :goto_0
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityPolicy:Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

    if-eqz v3, :cond_1

    .line 1006
    invoke-interface {v3, p1, v0}, Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;->getEnabledAccessibilityServiceList(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1009
    :cond_1
    if-eqz v0, :cond_2

    .line 1010
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 1012
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 994
    .end local v0    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .end local v2    # "userId":I
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist getInstalledAccessibilityServiceList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .line 943
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 944
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 945
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 946
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 948
    :cond_0
    iget v2, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    .line 949
    .local v2, "userId":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 951
    const/4 v0, 0x0

    .line 953
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :try_start_1
    invoke-interface {v1, v2}, Landroid/view/accessibility/IAccessibilityManager;->getInstalledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v3

    .line 959
    goto :goto_0

    .line 957
    :catch_0
    move-exception v3

    .line 958
    .local v3, "re":Landroid/os/RemoteException;
    const-string v4, "AccessibilityManager"

    const-string v5, "Error while obtaining the installed AccessibilityServices. "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 960
    .end local v3    # "re":Landroid/os/RemoteException;
    :goto_0
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityPolicy:Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

    if-eqz v3, :cond_1

    .line 961
    invoke-interface {v3, v0}, Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;->getInstalledAccessibilityServiceList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 963
    :cond_1
    if-eqz v0, :cond_2

    .line 964
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 966
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 949
    .end local v0    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .end local v2    # "userId":I
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist getInstalledAccessibilityShortcutListAsUser(Landroid/content/Context;I)Ljava/util/List;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 1946
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1947
    .local v0, "shortcutInfos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityShortcutInfo;>;"
    const v1, 0xc8081

    .line 1952
    .local v1, "flags":I
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1953
    .local v2, "actionMain":Landroid/content/Intent;
    const-string v3, "android.intent.category.ACCESSIBILITY_SHORTCUT_TARGET"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1955
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1956
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    nop

    .line 1957
    const v4, 0xc8081

    invoke-virtual {v3, v2, v4, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    .line 1958
    .local v4, "installedShortcutList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 1959
    nop

    .line 1960
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, p1, v6}, Landroid/view/accessibility/AccessibilityManager;->getShortcutInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/accessibilityservice/AccessibilityShortcutInfo;

    move-result-object v6

    .line 1961
    .local v6, "shortcutInfo":Landroid/accessibilityservice/AccessibilityShortcutInfo;
    if-eqz v6, :cond_0

    .line 1962
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1958
    .end local v6    # "shortcutInfo":Landroid/accessibilityservice/AccessibilityShortcutInfo;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1965
    .end local v5    # "i":I
    :cond_1
    return-object v0
.end method

.method public greylist-max-o getInstalledServiceInfoWithComponentName(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 1600
    nop

    .line 1601
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v0

    .line 1602
    .local v0, "installedServiceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 1605
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1606
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1607
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    return-object v1

    .line 1605
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1610
    .end local v2    # "i":I
    :cond_2
    return-object v1

    .line 1603
    :cond_3
    :goto_1
    return-object v1
.end method

.method public whitelist getRecommendedTimeoutMillis(II)I
    .locals 4
    .param p1, "originalTimeout"    # I
    .param p2, "uiContentFlags"    # I

    .line 1201
    and-int/lit8 v0, p2, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1202
    .local v0, "hasControls":Z
    :goto_0
    and-int/lit8 v3, p2, 0x1

    if-nez v3, :cond_1

    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_2

    :cond_1
    move v1, v2

    .line 1204
    .local v1, "hasIconsOrText":Z
    :cond_2
    move v2, p1

    .line 1205
    .local v2, "recommendedTimeout":I
    if-eqz v0, :cond_3

    .line 1206
    iget v3, p0, Landroid/view/accessibility/AccessibilityManager;->mInteractiveUiTimeout:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1208
    :cond_3
    if-eqz v1, :cond_4

    .line 1209
    iget v3, p0, Landroid/view/accessibility/AccessibilityManager;->mNonInteractiveUiTimeout:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1211
    :cond_4
    return v2
.end method

.method public greylist-max-o getRequestPreparersForAccessibilityId(I)Ljava/util/List;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityRequestPreparer;",
            ">;"
        }
    .end annotation

    .line 1341
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 1342
    const/4 v0, 0x0

    return-object v0

    .line 1344
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public whitelist interrupt()V
    .locals 5

    .line 885
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 886
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 887
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 888
    monitor-exit v0

    return-void

    .line 890
    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 891
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    .line 892
    .local v2, "myLooper":Landroid/os/Looper;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 900
    const-string v3, "AccessibilityManager"

    const-string v4, "Interrupt called with accessibility disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    monitor-exit v0

    return-void

    .line 893
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Accessibility off. Did you forget to check that?"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/view/accessibility/AccessibilityManager;
    throw v3

    .line 904
    .end local v2    # "myLooper":Landroid/os/Looper;
    .restart local p0    # "this":Landroid/view/accessibility/AccessibilityManager;
    :cond_2
    iget v2, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    .line 905
    .local v2, "userId":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 907
    :try_start_1
    invoke-interface {v1, v2}, Landroid/view/accessibility/IAccessibilityManager;->interrupt(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 913
    goto :goto_0

    .line 911
    :catch_0
    move-exception v0

    .line 912
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "AccessibilityManager"

    const-string v4, "Error while requesting interrupt from all services. "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 914
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 905
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .end local v2    # "userId":I
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist isA11yInteractionClientTraceEnabled()Z
    .locals 2

    .line 1314
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1315
    :try_start_0
    iget v1, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityTracingState:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 1317
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist isA11yInteractionConnectionCBTraceEnabled()Z
    .locals 2

    .line 1302
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1303
    :try_start_0
    iget v1, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityTracingState:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 1305
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist isA11yInteractionConnectionTraceEnabled()Z
    .locals 2

    .line 1290
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1291
    :try_start_0
    iget v1, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityTracingState:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 1293
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist isA11yServiceTraceEnabled()Z
    .locals 2

    .line 1326
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1327
    :try_start_0
    iget v1, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityTracingState:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 1329
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o isAccessibilityVolumeStreamActive()Z
    .locals 3

    .line 1437
    nop

    .line 1438
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    .line 1439
    .local v0, "serviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1440
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    iget v2, v2, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    .line 1441
    const/4 v2, 0x1

    return v2

    .line 1439
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1444
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist isActivatedMagnification()Z
    .locals 5

    .line 3218
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3219
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 3220
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3221
    monitor-exit v0

    return v2

    .line 3223
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3225
    :try_start_1
    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->isActivatedMagnification()Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    .line 3226
    :catch_0
    move-exception v0

    .line 3227
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "AccessibilityManager"

    const-string v4, "Error get Magnification enable value. "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3228
    return v2

    .line 3223
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist isAudioDescriptionRequested()Z
    .locals 3

    .line 2104
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2105
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2106
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 2107
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 2109
    :cond_0
    iget-boolean v2, p0, Landroid/view/accessibility/AccessibilityManager;->mIsAudioDescriptionByDefaultRequested:Z

    monitor-exit v0

    return v2

    .line 2110
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist isEnabled()Z
    .locals 3

    .line 754
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 755
    :try_start_0
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    if-nez v1, :cond_1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityPolicy:Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

    if-eqz v2, :cond_0

    .line 756
    invoke-interface {v2, v1}, Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;->isEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    .line 755
    return v1

    .line 757
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist isHighTextContrastEnabled()Z
    .locals 3

    .line 788
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 789
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 790
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 791
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 793
    :cond_0
    iget-boolean v2, p0, Landroid/view/accessibility/AccessibilityManager;->mIsHighTextContrastEnabled:Z

    monitor-exit v0

    return v2

    .line 794
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist isSystemAudioCaptioningUiEnabled(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 2144
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2145
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2146
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 2147
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 2149
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2151
    :try_start_1
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->isSystemAudioCaptioningUiEnabled(I)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    .line 2152
    :catch_0
    move-exception v0

    .line 2153
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 2149
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist isTouchExplorationEnabled()Z
    .locals 3

    .line 766
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 767
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 768
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 769
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 771
    :cond_0
    iget-boolean v2, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z

    monitor-exit v0

    return v2

    .line 772
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist isTwoFingerGestureRecognitionEnabled()Z
    .locals 5

    .line 2692
    const/4 v0, 0x0

    .line 2694
    .local v0, "value":Z
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2695
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v2

    .line 2696
    .local v2, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v2, :cond_0

    .line 2697
    monitor-exit v1

    return v0

    .line 2699
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2701
    :try_start_1
    invoke-interface {v2}, Landroid/view/accessibility/IAccessibilityManager;->isTwoFingerGestureRecognitionEnabled()Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    .line 2704
    goto :goto_0

    .line 2702
    :catch_0
    move-exception v1

    .line 2703
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "AccessibilityManager"

    const-string v4, "isTwoFingerGestureRecognitionEnabled Exception:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2705
    .end local v1    # "re":Landroid/os/RemoteException;
    :goto_0
    return v0

    .line 2699
    .end local v2    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public blacklist notifyAccessibilityButtonClicked(I)V
    .locals 1
    .param p1, "displayId"    # I

    .line 1767
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityManager;->notifyAccessibilityButtonClicked(ILjava/lang/String;)V

    .line 1768
    return-void
.end method

.method public blacklist notifyAccessibilityButtonClicked(ILjava/lang/String;)V
    .locals 4
    .param p1, "displayId"    # I
    .param p2, "targetName"    # Ljava/lang/String;

    .line 1782
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1783
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1784
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 1785
    monitor-exit v0

    return-void

    .line 1787
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1789
    :try_start_1
    invoke-interface {v1, p1, p2}, Landroid/view/accessibility/IAccessibilityManager;->notifyAccessibilityButtonClicked(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1792
    goto :goto_0

    .line 1790
    :catch_0
    move-exception v0

    .line 1791
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string v3, "Error while dispatching accessibility button click"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1793
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 1787
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public greylist-max-o notifyAccessibilityButtonVisibilityChanged(Z)V
    .locals 4
    .param p1, "shown"    # Z

    .line 1805
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1806
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1807
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 1808
    monitor-exit v0

    return-void

    .line 1810
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1812
    :try_start_1
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->notifyAccessibilityButtonVisibilityChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1815
    goto :goto_0

    .line 1813
    :catch_0
    move-exception v0

    .line 1814
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string v3, "Error while dispatching accessibility button visibility change"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1816
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 1810
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist notifyPerformingAction(I)V
    .locals 0
    .param p1, "actionId"    # I

    .line 1354
    iput p1, p0, Landroid/view/accessibility/AccessibilityManager;->mPerformingAction:I

    .line 1355
    return-void
.end method

.method public blacklist performAccessibilityDirectAccess()V
    .locals 1

    .line 3054
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->performAccessibilityDirectAccess(Ljava/lang/String;)V

    .line 3055
    return-void
.end method

.method public blacklist performAccessibilityDirectAccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "targetName"    # Ljava/lang/String;

    .line 3068
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3069
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 3070
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 3071
    monitor-exit v0

    return-void

    .line 3073
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3075
    :try_start_1
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->performAccessibilityDirectAccess(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3078
    goto :goto_0

    .line 3076
    :catch_0
    move-exception v0

    .line 3077
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string v3, "Error performing accessibility direct access. "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3079
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 3073
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist performAccessibilityShortcut()V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1670
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->performAccessibilityShortcut(Ljava/lang/String;)V

    .line 1671
    return-void
.end method

.method public blacklist performAccessibilityShortcut(Ljava/lang/String;)V
    .locals 4
    .param p1, "targetName"    # Ljava/lang/String;

    .line 1684
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1685
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1686
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 1687
    monitor-exit v0

    return-void

    .line 1689
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1691
    :try_start_1
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->performAccessibilityShortcut(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1694
    goto :goto_0

    .line 1692
    :catch_0
    move-exception v0

    .line 1693
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string v3, "Error performing accessibility shortcut. "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1695
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 1689
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist registerSystemAction(Landroid/app/RemoteAction;I)V
    .locals 5
    .param p1, "action"    # Landroid/app/RemoteAction;
    .param p2, "actionId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1715
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1716
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1717
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 1718
    monitor-exit v0

    return-void

    .line 1720
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1722
    :try_start_1
    invoke-interface {v1, p1, p2}, Landroid/view/accessibility/IAccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1729
    goto :goto_0

    .line 1727
    :catch_0
    move-exception v0

    .line 1728
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error registering system action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1730
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 1720
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public greylist-max-o removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V
    .locals 4
    .param p1, "windowToken"    # Landroid/view/IWindow;

    .line 1649
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1650
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1651
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 1652
    monitor-exit v0

    return-void

    .line 1654
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1656
    :try_start_1
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1659
    goto :goto_0

    .line 1657
    :catch_0
    move-exception v0

    .line 1658
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string v3, "Error while removing an accessibility interaction connection. "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1660
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 1654
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist removeAccessibilityRequestPreparer(Landroid/view/accessibility/AccessibilityRequestPreparer;)V
    .locals 3
    .param p1, "preparer"    # Landroid/view/accessibility/AccessibilityRequestPreparer;

    .line 1169
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 1170
    return-void

    .line 1172
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRequestPreparer;->getAccessibilityViewId()I

    move-result v0

    .line 1173
    .local v0, "viewId":I
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1174
    .local v1, "requestPreparerList":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityRequestPreparer;>;"
    if-eqz v1, :cond_1

    .line 1175
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1176
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1177
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1180
    :cond_1
    return-void
.end method

.method public whitelist removeAccessibilityServicesStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)Z
    .locals 2
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    .line 1144
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1145
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mServicesStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 1146
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z
    .locals 3
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    .line 1056
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1057
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    .line 1058
    .local v1, "index":I
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    if-ltz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 1060
    .end local v1    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist removeAudioDescriptionRequestedChangeListener(Landroid/view/accessibility/AccessibilityManager$AudioDescriptionRequestedChangeListener;)Z
    .locals 2
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$AudioDescriptionRequestedChangeListener;

    .line 1411
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1412
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mAudioDescriptionRequestedChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 1413
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist removeClient()Z
    .locals 6

    .line 726
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 727
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 728
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 729
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 732
    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    iget v4, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    invoke-interface {v1, v3, v4}, Landroid/view/accessibility/IAccessibilityManager;->removeClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)Z

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v2

    .line 733
    :catch_0
    move-exception v3

    .line 734
    .local v3, "re":Landroid/os/RemoteException;
    const-string v4, "AccessibilityManager"

    const-string v5, "AccessibilityManagerService is dead"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 736
    nop

    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .end local v3    # "re":Landroid/os/RemoteException;
    monitor-exit v0

    .line 737
    return v2

    .line 736
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public greylist-max-o removeHighTextContrastStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;

    .line 1382
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1383
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mHighTextContrastStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1384
    monitor-exit v0

    .line 1385
    return-void

    .line 1384
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z
    .locals 3
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 1103
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1104
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    .line 1105
    .local v1, "index":I
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    if-ltz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 1107
    .end local v1    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist semCheckMdnieColorBlind([I)Z
    .locals 5
    .param p1, "nums"    # [I

    .line 2483
    const/4 v0, 0x0

    .line 2485
    .local v0, "retVal":Z
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2486
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v2

    .line 2487
    .local v2, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v2, :cond_0

    .line 2488
    monitor-exit v1

    return v0

    .line 2490
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2492
    :try_start_1
    invoke-interface {v2, p1}, Landroid/view/accessibility/IAccessibilityManager;->semCheckMdnieColorBlind([I)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    .line 2495
    goto :goto_0

    .line 2493
    :catch_0
    move-exception v1

    .line 2494
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "AccessibilityManager"

    const-string/jumbo v4, "semCheckMdnieColorBlind Exception:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2496
    .end local v1    # "re":Landroid/os/RemoteException;
    :goto_0
    return v0

    .line 2490
    .end local v2    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public whitelist semDisableAirGestureWakeUp()Z
    .locals 1

    .line 2979
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->OnStopGestureWakeup()Z

    move-result v0

    return v0
.end method

.method public whitelist semDisableMdnieColorFilter()Z
    .locals 5

    .line 2560
    const/4 v0, 0x0

    .line 2562
    .local v0, "retVal":Z
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2563
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v2

    .line 2564
    .local v2, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v2, :cond_0

    .line 2565
    monitor-exit v1

    return v0

    .line 2567
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2569
    :try_start_1
    invoke-interface {v2}, Landroid/view/accessibility/IAccessibilityManager;->semDisableMdnieColorFilter()Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    .line 2572
    goto :goto_0

    .line 2570
    :catch_0
    move-exception v1

    .line 2571
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "AccessibilityManager"

    const-string/jumbo v4, "semDisableMdnieColorFilter Exception:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2573
    .end local v1    # "re":Landroid/os/RemoteException;
    :goto_0
    return v0

    .line 2567
    .end local v2    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public whitelist semDisableWindowMagnification()V
    .locals 4

    .line 3155
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3156
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 3157
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 3158
    monitor-exit v0

    return-void

    .line 3160
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3162
    :try_start_1
    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->semDisableWindowMagnification()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3165
    goto :goto_0

    .line 3163
    :catch_0
    move-exception v0

    .line 3164
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string v3, "Error Disable AM Magnification. "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3166
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 3160
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist semDumpCallStack(Ljava/lang/String;)V
    .locals 4
    .param p1, "callStack"    # Ljava/lang/String;

    .line 3032
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3033
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 3034
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 3035
    monitor-exit v0

    return-void

    .line 3037
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3039
    :try_start_1
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->semDumpCallStack(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3042
    goto :goto_0

    .line 3040
    :catch_0
    move-exception v0

    .line 3041
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string/jumbo v3, "semDumpCallStack Exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3043
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 3037
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist semEnableAirGestureWakeUp()Z
    .locals 1

    .line 2966
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->OnStartGestureWakeup()Z

    move-result v0

    return v0
.end method

.method public whitelist semEnableMdnieColorFilter(II)Z
    .locals 5
    .param p1, "color"    # I
    .param p2, "opacity"    # I

    .line 2535
    const/4 v0, 0x0

    .line 2537
    .local v0, "retVal":Z
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2538
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v2

    .line 2539
    .local v2, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v2, :cond_0

    .line 2540
    monitor-exit v1

    return v0

    .line 2542
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2544
    :try_start_1
    invoke-interface {v2, p1, p2}, Landroid/view/accessibility/IAccessibilityManager;->semEnableMdnieColorFilter(II)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    .line 2547
    goto :goto_0

    .line 2545
    :catch_0
    move-exception v1

    .line 2546
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "AccessibilityManager"

    const-string/jumbo v4, "semEnableMdnieColorFilter Exception:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2548
    .end local v1    # "re":Landroid/os/RemoteException;
    :goto_0
    return v0

    .line 2542
    .end local v2    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public whitelist semEnableWindowMagnification(II)V
    .locals 4
    .param p1, "center_x"    # I
    .param p2, "center_y"    # I

    .line 3136
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3137
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 3138
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 3139
    monitor-exit v0

    return-void

    .line 3141
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3143
    :try_start_1
    invoke-interface {v1, p1, p2}, Landroid/view/accessibility/IAccessibilityManager;->semEnableWindowMagnification(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3146
    goto :goto_0

    .line 3144
    :catch_0
    move-exception v0

    .line 3145
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string v3, "Error Enable AM Magnification. "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3147
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 3141
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist semGetAccessibilityFocusStrokeWidth(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 1236
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_0

    .line 1237
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1238
    :try_start_0
    iget v1, p0, Landroid/view/accessibility/AccessibilityManager;->mFocusStrokeWidth:I

    monitor-exit v0

    return v1

    .line 1239
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1242
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1243
    :try_start_1
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1244
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_1

    .line 1245
    const-string v2, "AccessibilityManager"

    const-string v3, "Error service is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    iget v2, p0, Landroid/view/accessibility/AccessibilityManager;->mFocusStrokeWidth:I

    monitor-exit v0

    return v2

    .line 1248
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1251
    :try_start_2
    iget v0, p0, Landroid/view/accessibility/AccessibilityManager;->mFocusStrokeWidth:I

    int-to-float v0, v0

    invoke-interface {v1, v0}, Landroid/view/accessibility/IAccessibilityManager;->convertPixelToDpi(F)I

    move-result v0

    .line 1253
    .local v0, "dpi":I
    int-to-float v2, v0

    invoke-direct {p0, p1, v2}, Landroid/view/accessibility/AccessibilityManager;->dipToPixel(Landroid/content/Context;F)I

    move-result v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return v2

    .line 1254
    .end local v0    # "dpi":I
    :catch_0
    move-exception v0

    .line 1255
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string v3, "Error performing convertPixelToDpi() "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1256
    iget v2, p0, Landroid/view/accessibility/AccessibilityManager;->mFocusStrokeWidth:I

    return v2

    .line 1248
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public blacklist semGetExclusiveTaskList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taskName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1854
    const-string v0, "AccessibilityManager"

    const-string/jumbo v1, "semGetExclusiveTaskList()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->getExclusiveTaskManagerService(Landroid/content/Context;)Lcom/samsung/android/sepunion/ISemExclusiveTaskManager;

    move-result-object v1

    .line 1857
    .local v1, "service":Lcom/samsung/android/sepunion/ISemExclusiveTaskManager;
    if-eqz v1, :cond_0

    .line 1858
    invoke-interface {v1, p2}, Lcom/samsung/android/sepunion/ISemExclusiveTaskManager;->getExclusiveTaskList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1860
    :cond_0
    const-string v2, "ISemExclusiveTaskManager is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1864
    nop

    .end local v1    # "service":Lcom/samsung/android/sepunion/ISemExclusiveTaskManager;
    goto :goto_0

    .line 1862
    :catch_0
    move-exception v1

    .line 1863
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "semGetExclusiveTaskList() Exception:"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1866
    .end local v1    # "re":Landroid/os/RemoteException;
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public blacklist semGetInstalledAccessibilityShortcutInfoAsUser(Landroid/content/Context;I)Ljava/util/List;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/SemAccessibilityShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 1979
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1980
    .local v0, "semAccessibilityShortcutInfos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/SemAccessibilityShortcutInfo;>;"
    invoke-virtual {p0, p1, p2}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityShortcutListAsUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    .line 1981
    .local v1, "accessibilityShortcutInfos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityShortcutInfo;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1982
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accessibilityservice/AccessibilityShortcutInfo;

    .line 1983
    .local v4, "info":Landroid/accessibilityservice/AccessibilityShortcutInfo;
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1984
    .local v5, "title":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1985
    .local v6, "icon":Landroid/graphics/drawable/Drawable;
    new-instance v7, Landroid/accessibilityservice/SemAccessibilityShortcutInfo;

    invoke-direct {v7, v5, v6}, Landroid/accessibilityservice/SemAccessibilityShortcutInfo;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1986
    .end local v4    # "info":Landroid/accessibilityservice/AccessibilityShortcutInfo;
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "icon":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 1987
    :cond_0
    return-object v0
.end method

.method public whitelist semGetScreenReaderName()Ljava/lang/String;
    .locals 5

    .line 2745
    const-string v0, ""

    .line 2747
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2748
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v2

    .line 2749
    .local v2, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v2, :cond_0

    .line 2750
    monitor-exit v1

    return-object v0

    .line 2752
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2754
    :try_start_1
    invoke-interface {v2}, Landroid/view/accessibility/IAccessibilityManager;->getScreenReaderName()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    .line 2757
    goto :goto_0

    .line 2755
    :catch_0
    move-exception v1

    .line 2756
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "AccessibilityManager"

    const-string/jumbo v4, "semGetScreenReaderName Exception : "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2758
    .end local v1    # "re":Landroid/os/RemoteException;
    :goto_0
    return-object v0

    .line 2752
    .end local v2    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public whitelist semGetWindowMagnificationBounds()Landroid/graphics/Rect;
    .locals 5

    .line 3091
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3092
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 3093
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3094
    monitor-exit v0

    return-object v2

    .line 3096
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3098
    :try_start_1
    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->semGetWindowMagnificationBounds()Landroid/graphics/Rect;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 3099
    :catch_0
    move-exception v0

    .line 3100
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "AccessibilityManager"

    const-string v4, "Error Get Magnification Bounds. "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3101
    return-object v2

    .line 3096
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist semGetWindowMagnificationScale()F
    .locals 5

    .line 3113
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3114
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 3115
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3116
    monitor-exit v0

    return v2

    .line 3118
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3120
    :try_start_1
    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->semGetWindowMagnificationScale()F

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    .line 3121
    :catch_0
    move-exception v0

    .line 3122
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "AccessibilityManager"

    const-string v4, "Error Set scale AM Magnification. "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3123
    return v2

    .line 3118
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist semIsAccessibilityButtonShown()Z
    .locals 5

    .line 1828
    const/4 v0, 0x0

    .line 1830
    .local v0, "retVal":Z
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1831
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v2

    .line 1832
    .local v2, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v2, :cond_0

    .line 1833
    monitor-exit v1

    return v0

    .line 1835
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1837
    :try_start_1
    invoke-interface {v2}, Landroid/view/accessibility/IAccessibilityManager;->semIsAccessibilityButtonShown()Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    .line 1840
    goto :goto_0

    .line 1838
    :catch_0
    move-exception v1

    .line 1839
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "AccessibilityManager"

    const-string v4, "isAccessibilityButtonShown Exception:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1841
    .end local v1    # "re":Landroid/os/RemoteException;
    :goto_0
    return v0

    .line 1835
    .end local v2    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public blacklist semIsAccessibilityServiceEnabled(I)Z
    .locals 5
    .param p1, "stateFlags"    # I

    .line 2427
    const/4 v0, 0x0

    .line 2429
    .local v0, "retVal":Z
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2430
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v2

    .line 2431
    .local v2, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v2, :cond_0

    .line 2432
    monitor-exit v1

    return v0

    .line 2434
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2436
    :try_start_1
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2437
    invoke-interface {v2, p1}, Landroid/view/accessibility/IAccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v1

    move v0, v1

    goto :goto_0

    .line 2439
    :cond_1
    const-string v1, "AccessibilityManager"

    const-string v3, "accessibility service is not enabled"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2443
    :goto_0
    goto :goto_1

    .line 2441
    :catch_0
    move-exception v1

    .line 2442
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "AccessibilityManager"

    const-string/jumbo v4, "semIsAccessibilityServiceEnabled exception."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2444
    .end local v1    # "re":Landroid/os/RemoteException;
    :goto_1
    return v0

    .line 2434
    .end local v2    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public whitelist semIsDarkScreenMode()Z
    .locals 5

    .line 2796
    const/4 v0, 0x0

    .line 2798
    .local v0, "result":Z
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2799
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v2

    .line 2800
    .local v2, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v2, :cond_0

    .line 2801
    monitor-exit v1

    return v0

    .line 2803
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2805
    :try_start_1
    invoke-interface {v2}, Landroid/view/accessibility/IAccessibilityManager;->semIsDarkScreenMode()Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    .line 2808
    goto :goto_0

    .line 2806
    :catch_0
    move-exception v1

    .line 2807
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "AccessibilityManager"

    const-string/jumbo v4, "semIsDarkScreenMode Exception:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2809
    .end local v1    # "re":Landroid/os/RemoteException;
    :goto_0
    return v0

    .line 2803
    .end local v2    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public whitelist semIsScreenReaderEnabled()Z
    .locals 5

    .line 2718
    const/4 v0, 0x0

    .line 2720
    .local v0, "value":Z
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2721
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v2

    .line 2722
    .local v2, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v2, :cond_0

    .line 2723
    monitor-exit v1

    return v0

    .line 2725
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2727
    :try_start_1
    invoke-interface {v2}, Landroid/view/accessibility/IAccessibilityManager;->isScreenReaderEnabled()Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    .line 2730
    goto :goto_0

    .line 2728
    :catch_0
    move-exception v1

    .line 2729
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "AccessibilityManager"

    const-string/jumbo v4, "semIsScreenReaderEnabled Exception : "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2731
    .end local v1    # "re":Landroid/os/RemoteException;
    :goto_0
    return v0

    .line 2725
    .end local v2    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public whitelist semIsWindowMagnificationEnabled()Z
    .locals 5

    .line 3197
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3198
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 3199
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3200
    monitor-exit v0

    return v2

    .line 3202
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3204
    :try_start_1
    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->semIsWindowMagnificationEnabled()Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    .line 3205
    :catch_0
    move-exception v0

    .line 3206
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "AccessibilityManager"

    const-string v4, "Error Set scale AM Magnification. "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3207
    return v2

    .line 3202
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist semLockNow()V
    .locals 4

    .line 2843
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2844
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2845
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 2846
    monitor-exit v0

    return-void

    .line 2848
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2850
    :try_start_1
    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->semLockNow()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2853
    goto :goto_0

    .line 2851
    :catch_0
    move-exception v0

    .line 2852
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string/jumbo v3, "semLockNow Exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2854
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 2848
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist semMoveWindowMagnification(FF)V
    .locals 4
    .param p1, "offsetX"    # F
    .param p2, "offsetY"    # F

    .line 3176
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3177
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 3178
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 3179
    monitor-exit v0

    return-void

    .line 3181
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3183
    :try_start_1
    invoke-interface {v1, p1, p2}, Landroid/view/accessibility/IAccessibilityManager;->semMoveWindowMagnification(FF)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3186
    goto :goto_0

    .line 3184
    :catch_0
    move-exception v0

    .line 3185
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string v3, "Error Move AM Magnification. "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3187
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 3181
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist semOnLightNotification(Ljava/lang/String;)Z
    .locals 5
    .param p1, "notitype"    # Ljava/lang/String;

    .line 2864
    const/4 v0, 0x0

    .line 2866
    .local v0, "result":Z
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2867
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v2

    .line 2868
    .local v2, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v2, :cond_0

    .line 2869
    monitor-exit v1

    return v0

    .line 2871
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2873
    :try_start_1
    invoke-interface {v2, p1}, Landroid/view/accessibility/IAccessibilityManager;->semOnLightNotification(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    .line 2876
    goto :goto_0

    .line 2874
    :catch_0
    move-exception v1

    .line 2875
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "AccessibilityManager"

    const-string/jumbo v4, "semOnLightNotification Exception:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2877
    .end local v1    # "re":Landroid/os/RemoteException;
    :goto_0
    return v0

    .line 2871
    .end local v2    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public whitelist semOpenDeviceOptions()V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    .line 2643
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2644
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2645
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 2646
    monitor-exit v0

    return-void

    .line 2648
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2650
    :try_start_1
    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->semOpenDeviceOptions()V

    .line 2651
    const-string v0, "AccessibilityManager"

    const-string v2, "Open Device Options from manager:"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2654
    goto :goto_0

    .line 2652
    :catch_0
    move-exception v0

    .line 2653
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string v3, "Open Device Options Exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2655
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 2648
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist semPerformAccessibilityButtonClick(IILjava/lang/String;)V
    .locals 4
    .param p1, "displayId"    # I
    .param p2, "shortcutType"    # I
    .param p3, "targetName"    # Ljava/lang/String;

    .line 2001
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2002
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2003
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 2004
    monitor-exit v0

    return-void

    .line 2006
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2008
    :try_start_1
    invoke-interface {v1, p1, p2, p3}, Landroid/view/accessibility/IAccessibilityManager;->semPerformAccessibilityButtonClick(IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2011
    goto :goto_0

    .line 2009
    :catch_0
    move-exception v0

    .line 2010
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string/jumbo v3, "setMagnificationDisactivate Exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2012
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 2006
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist semRegisterAssistantMenu(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "iBinder"    # Landroid/os/IBinder;

    .line 2589
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2590
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2591
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 2592
    monitor-exit v0

    return-void

    .line 2594
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2596
    :try_start_1
    const-string v0, "AccessibilityManager"

    const-string/jumbo v2, "semRegisterAssistantMenu invoking from manager start:"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2597
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->semRegisterAssistantMenu(Landroid/os/IBinder;)V

    .line 2598
    const-string v0, "AccessibilityManager"

    const-string/jumbo v2, "semRegisterAssistantMenu invoking from manager end:"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2601
    goto :goto_0

    .line 2599
    :catch_0
    move-exception v0

    .line 2600
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string/jumbo v3, "semRegisterAssistantMenu Exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2602
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 2594
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist semSetMdnieAccessibilityMode(IZ)Z
    .locals 5
    .param p1, "mode"    # I
    .param p2, "enable"    # Z

    .line 2509
    const/4 v0, 0x0

    .line 2511
    .local v0, "retVal":Z
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2512
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v2

    .line 2513
    .local v2, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v2, :cond_0

    .line 2514
    monitor-exit v1

    return v0

    .line 2516
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2518
    :try_start_1
    invoke-interface {v2, p1, p2}, Landroid/view/accessibility/IAccessibilityManager;->semSetMdnieAccessibilityMode(IZ)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    .line 2521
    goto :goto_0

    .line 2519
    :catch_0
    move-exception v1

    .line 2520
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "AccessibilityManager"

    const-string/jumbo v4, "semSetMdnieAccessibilityMode Exception:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2522
    .end local v1    # "re":Landroid/os/RemoteException;
    :goto_0
    return v0

    .line 2516
    .end local v2    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public whitelist semSetMdnieColorBlind(ZF)Z
    .locals 5
    .param p1, "enable"    # Z
    .param p2, "userParameter"    # F

    .line 2458
    const/4 v0, 0x0

    .line 2460
    .local v0, "retVal":Z
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2461
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v2

    .line 2462
    .local v2, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v2, :cond_0

    .line 2463
    monitor-exit v1

    return v0

    .line 2465
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2467
    :try_start_1
    invoke-interface {v2, p1, p2}, Landroid/view/accessibility/IAccessibilityManager;->semSetColorBlind(ZF)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    .line 2470
    goto :goto_0

    .line 2468
    :catch_0
    move-exception v1

    .line 2469
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "AccessibilityManager"

    const-string/jumbo v4, "semSetColorBlind Exception:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2471
    .end local v1    # "re":Landroid/os/RemoteException;
    :goto_0
    return v0

    .line 2465
    .end local v2    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public whitelist semSetScreenReaderEnabled(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .line 2772
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2773
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2774
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 2775
    monitor-exit v0

    return-void

    .line 2777
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2779
    :try_start_1
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->setScreenReaderEnabled(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2782
    goto :goto_0

    .line 2780
    :catch_0
    move-exception v0

    .line 2781
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string/jumbo v3, "semSetScreenReaderEnabled Exception : "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2783
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 2777
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist semSetTwoFingerGestureRecognitionEnabled(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .line 2670
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2671
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2672
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 2673
    monitor-exit v0

    return-void

    .line 2675
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2676
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    if-eqz v0, :cond_1

    .line 2680
    :try_start_1
    const-string v0, "AccessibilityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AccessibilityManager - semSetTwoFingerGestureRecognitionEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2681
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->semSetTwoFingerGestureRecognitionEnabled(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2684
    goto :goto_0

    .line 2682
    :catch_0
    move-exception v0

    .line 2683
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string/jumbo v3, "semSetTwoFingerGestureRecognitionEnabled Exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2685
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 2677
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Accessibility off. Did you forget to check that?"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2675
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist semStartFlashNotification(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 2890
    const/4 v0, 0x0

    .line 2892
    .local v0, "retVal":Z
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2893
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v2

    .line 2894
    .local v2, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v2, :cond_0

    .line 2895
    monitor-exit v1

    return v0

    .line 2897
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2899
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mToken:Landroid/os/Binder;

    const/4 v4, 0x2

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v1, v3, v4, v5}, Landroid/view/accessibility/IAccessibilityManager;->semStartFlashNotification(Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    .line 2902
    goto :goto_0

    .line 2900
    :catch_0
    move-exception v1

    .line 2901
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "AccessibilityManager"

    const-string/jumbo v4, "semStartFlashNotification Exception:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2903
    .end local v1    # "re":Landroid/os/RemoteException;
    :goto_0
    return v0

    .line 2897
    .end local v2    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public blacklist semStartFlashNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notitype"    # Ljava/lang/String;
    .param p3, "sbnPackageName"    # Ljava/lang/String;

    .line 2913
    const/4 v0, 0x0

    .line 2915
    .local v0, "retVal":Z
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2916
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v2

    .line 2917
    .local v2, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v2, :cond_0

    .line 2918
    monitor-exit v1

    return v0

    .line 2920
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2921
    const-string v1, "AccessibilityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "semStartFlashNotification notitype = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", getOpPackageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sbnPackageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2923
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mToken:Landroid/os/Binder;

    const/4 v4, 0x1

    invoke-interface {v2, v1, v3, v4, p3}, Landroid/view/accessibility/IAccessibilityManager;->semStartFlashNotification(Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    .line 2926
    goto :goto_0

    .line 2924
    :catch_0
    move-exception v1

    .line 2925
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "AccessibilityManager"

    const-string/jumbo v4, "semStartFlashNotification Exception:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2927
    .end local v1    # "re":Landroid/os/RemoteException;
    :goto_0
    return v0

    .line 2920
    .end local v2    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public whitelist semStopFlashNotification(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 2938
    const/4 v0, 0x0

    .line 2940
    .local v0, "retVal":Z
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2941
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v2

    .line 2942
    .local v2, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v2, :cond_0

    .line 2943
    monitor-exit v1

    return v0

    .line 2945
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2947
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Landroid/view/accessibility/IAccessibilityManager;->semStopFlashNotification(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    .line 2950
    goto :goto_0

    .line 2948
    :catch_0
    move-exception v1

    .line 2949
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "AccessibilityManager"

    const-string/jumbo v4, "semStopFlashNotification Exception:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2951
    .end local v1    # "re":Landroid/os/RemoteException;
    :goto_0
    return v0

    .line 2945
    .end local v2    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public whitelist semToggleDarkScreenMode()V
    .locals 4

    .line 2821
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2822
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2823
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 2824
    monitor-exit v0

    return-void

    .line 2826
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2828
    :try_start_1
    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->semToggleDarkScreenMode()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2831
    goto :goto_0

    .line 2829
    :catch_0
    move-exception v0

    .line 2830
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string/jumbo v3, "semToggleDarkScreenMode Exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2832
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 2826
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist semTurnOffAccessibilityService(I)V
    .locals 4
    .param p1, "stateFlags"    # I

    .line 2386
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2387
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2388
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 2389
    monitor-exit v0

    return-void

    .line 2391
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2393
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2394
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->semTurnOffAccessibilityService(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2398
    :cond_1
    goto :goto_0

    .line 2396
    :catch_0
    move-exception v0

    .line 2397
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string/jumbo v3, "semTurnOffAccessibilityService exception."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2399
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 2391
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist semTurnOnAccessibilityService(I)V
    .locals 4
    .param p1, "stateFlags"    # I

    .line 2407
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2408
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2409
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 2410
    monitor-exit v0

    return-void

    .line 2412
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2414
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2415
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->semTurnOnAccessibilityService(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2419
    :cond_1
    goto :goto_0

    .line 2417
    :catch_0
    move-exception v0

    .line 2418
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string/jumbo v3, "semTurnOnAccessibilityService exception."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2420
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 2412
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist semUpdateAssitantMenu(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 2615
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2616
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2617
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 2618
    monitor-exit v0

    return-void

    .line 2620
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2622
    :try_start_1
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->semUpdateAssitantMenu(Landroid/os/Bundle;)V

    .line 2623
    const-string v0, "AccessibilityManager"

    const-string/jumbo v2, "semUpdateAssitantMenu invoking from manager:"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2626
    goto :goto_0

    .line 2624
    :catch_0
    move-exception v0

    .line 2625
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string/jumbo v3, "semUpdateAssitantMenu Exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2627
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 2620
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 814
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 815
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 816
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 817
    monitor-exit v0

    return-void

    .line 819
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEventTime(J)V

    .line 820
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 821
    iget v2, p0, Landroid/view/accessibility/AccessibilityManager;->mPerformingAction:I

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setAction(I)V

    .line 823
    :cond_1
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityPolicy:Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

    if-eqz v2, :cond_2

    .line 824
    iget-boolean v3, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    iget v4, p0, Landroid/view/accessibility/AccessibilityManager;->mRelevantEventTypes:I

    invoke-interface {v2, p1, v3, v4}, Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;ZI)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 826
    .local v2, "dispatchedEvent":Landroid/view/accessibility/AccessibilityEvent;
    if-nez v2, :cond_3

    .line 827
    monitor-exit v0

    return-void

    .line 830
    .end local v2    # "dispatchedEvent":Landroid/view/accessibility/AccessibilityEvent;
    :cond_2
    move-object v2, p1

    .line 832
    .restart local v2    # "dispatchedEvent":Landroid/view/accessibility/AccessibilityEvent;
    :cond_3
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_5

    .line 833
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    .line 834
    .local v3, "myLooper":Landroid/os/Looper;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-eq v3, v4, :cond_4

    .line 842
    const-string v4, "AccessibilityManager"

    const-string v5, "AccessibilityEvent sent with accessibility disabled"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    monitor-exit v0

    return-void

    .line 835
    :cond_4
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Accessibility off. Did you forget to check that?"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/view/accessibility/AccessibilityManager;
    .end local p1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    throw v4

    .line 846
    .end local v3    # "myLooper":Landroid/os/Looper;
    .restart local p0    # "this":Landroid/view/accessibility/AccessibilityManager;
    .restart local p1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_5
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v3

    iget v4, p0, Landroid/view/accessibility/AccessibilityManager;->mRelevantEventTypes:I

    and-int/2addr v3, v4

    if-nez v3, :cond_6

    .line 852
    monitor-exit v0

    return-void

    .line 854
    :cond_6
    iget v3, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    .line 855
    .local v3, "userId":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 860
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 862
    .local v4, "identityToken":J
    :try_start_2
    invoke-interface {v1, v2, v3}, Landroid/view/accessibility/IAccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 864
    :try_start_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 865
    nop

    .line 872
    .end local v4    # "identityToken":J
    if-eq p1, v2, :cond_7

    .line 873
    :goto_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 875
    :cond_7
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 876
    goto :goto_1

    .line 864
    .restart local v4    # "identityToken":J
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 865
    nop

    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .end local v2    # "dispatchedEvent":Landroid/view/accessibility/AccessibilityEvent;
    .end local v3    # "userId":I
    .end local p0    # "this":Landroid/view/accessibility/AccessibilityManager;
    .end local p1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    throw v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 872
    .end local v4    # "identityToken":J
    .restart local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .restart local v2    # "dispatchedEvent":Landroid/view/accessibility/AccessibilityEvent;
    .restart local v3    # "userId":I
    .restart local p0    # "this":Landroid/view/accessibility/AccessibilityManager;
    .restart local p1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 869
    :catch_0
    move-exception v0

    .line 870
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_5
    const-string v4, "AccessibilityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during sending "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 872
    nop

    .end local v0    # "re":Landroid/os/RemoteException;
    if-eq p1, v2, :cond_7

    .line 873
    goto :goto_0

    .line 877
    :goto_1
    return-void

    .line 872
    :goto_2
    if-eq p1, v2, :cond_8

    .line 873
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 875
    :cond_8
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 876
    throw v0

    .line 855
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .end local v2    # "dispatchedEvent":Landroid/view/accessibility/AccessibilityEvent;
    .end local v3    # "userId":I
    :catchall_2
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1
.end method

.method public greylist-max-o sendFingerprintGesture(I)Z
    .locals 3
    .param p1, "keyCode"    # I

    .line 1456
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1457
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1458
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1459
    monitor-exit v0

    return v2

    .line 1461
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1463
    :try_start_1
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->sendFingerprintGesture(I)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    .line 1464
    :catch_0
    move-exception v0

    .line 1465
    .local v0, "e":Landroid/os/RemoteException;
    return v2

    .line 1461
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public greylist-max-o setAccessibilityPolicy(Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;)V
    .locals 2
    .param p1, "policy"    # Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

    .line 1424
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1425
    :try_start_0
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityPolicy:Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

    .line 1426
    monitor-exit v0

    .line 1427
    return-void

    .line 1426
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setMagnificationDisactivate()V
    .locals 4

    .line 2071
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2072
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2073
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 2074
    monitor-exit v0

    return-void

    .line 2076
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2078
    :try_start_1
    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->setMagnificationDisactivate()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2081
    goto :goto_0

    .line 2079
    :catch_0
    move-exception v0

    .line 2080
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string/jumbo v3, "setMagnificationDisactivate Exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2082
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 2076
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public greylist-max-o setPictureInPictureActionReplacingConnection(Landroid/view/accessibility/IAccessibilityInteractionConnection;)V
    .locals 4
    .param p1, "connection"    # Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .line 1896
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1897
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1898
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 1899
    monitor-exit v0

    return-void

    .line 1901
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1903
    :try_start_1
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->setPictureInPictureActionReplacingConnection(Landroid/view/accessibility/IAccessibilityInteractionConnection;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1906
    goto :goto_0

    .line 1904
    :catch_0
    move-exception v0

    .line 1905
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string v3, "Error setting picture in picture action replacement"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1907
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 1901
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist setSystemAudioCaptioningEnabled(ZI)V
    .locals 3
    .param p1, "isEnabled"    # Z
    .param p2, "userId"    # I

    .line 2122
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2123
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2124
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 2125
    monitor-exit v0

    return-void

    .line 2127
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2129
    :try_start_1
    invoke-interface {v1, p1, p2}, Landroid/view/accessibility/IAccessibilityManager;->setSystemAudioCaptioningEnabled(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2132
    nop

    .line 2133
    return-void

    .line 2130
    :catch_0
    move-exception v0

    .line 2131
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 2127
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist setSystemAudioCaptioningUiEnabled(ZI)V
    .locals 3
    .param p1, "isEnabled"    # Z
    .param p2, "userId"    # I

    .line 2166
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2167
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2168
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 2169
    monitor-exit v0

    return-void

    .line 2171
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2173
    :try_start_1
    invoke-interface {v1, p1, p2}, Landroid/view/accessibility/IAccessibilityManager;->setSystemAudioCaptioningUiEnabled(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2176
    nop

    .line 2177
    return-void

    .line 2174
    :catch_0
    move-exception v0

    .line 2175
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 2171
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist setWindowMagnificationConnection(Landroid/view/accessibility/IWindowMagnificationConnection;)V
    .locals 4
    .param p1, "connection"    # Landroid/view/accessibility/IWindowMagnificationConnection;

    .line 2049
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2050
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2051
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 2052
    monitor-exit v0

    return-void

    .line 2054
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2056
    :try_start_1
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->setWindowMagnificationConnection(Landroid/view/accessibility/IWindowMagnificationConnection;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2059
    goto :goto_0

    .line 2057
    :catch_0
    move-exception v0

    .line 2058
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string v3, "Error setting window magnfication connection"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2060
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 2054
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist unregisterSystemAction(I)V
    .locals 5
    .param p1, "actionId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1742
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1743
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1744
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 1745
    monitor-exit v0

    return-void

    .line 1747
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1749
    :try_start_1
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->unregisterSystemAction(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1756
    goto :goto_0

    .line 1754
    :catch_0
    move-exception v0

    .line 1755
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error unregistering system action with actionId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1757
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 1747
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
