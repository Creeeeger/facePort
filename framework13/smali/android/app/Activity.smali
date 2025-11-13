.class public Landroid/app/Activity;
.super Landroid/view/ContextThemeWrapper;
.source "Activity.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;
.implements Landroid/view/Window$Callback;
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/content/ComponentCallbacks2;
.implements Landroid/view/Window$OnWindowDismissedCallback;
.implements Landroid/view/contentcapture/ContentCaptureManager$ContentCaptureClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Activity$HostCallbacks;,
        Landroid/app/Activity$SemTranslucentConversionListener;,
        Landroid/app/Activity$TranslucentConversionListener;,
        Landroid/app/Activity$RequestFinishCallback;,
        Landroid/app/Activity$DefaultKeyMode;,
        Landroid/app/Activity$ContentCaptureNotificationType;,
        Landroid/app/Activity$ManagedCursor;,
        Landroid/app/Activity$NonConfigurationInstances;,
        Landroid/app/Activity$ManagedDialog;
    }
.end annotation


# static fields
.field private static final blacklist CONTENT_CAPTURE_PAUSE:I = 0x3

.field private static final blacklist CONTENT_CAPTURE_RESUME:I = 0x2

.field private static final blacklist CONTENT_CAPTURE_START:I = 0x1

.field private static final blacklist CONTENT_CAPTURE_STOP:I = 0x4

.field private static final greylist-max-o DEBUG_LIFECYCLE:Z = false

.field public static final whitelist DEFAULT_KEYS_DIALER:I = 0x1

.field public static final whitelist DEFAULT_KEYS_DISABLE:I = 0x0

.field public static final whitelist DEFAULT_KEYS_SEARCH_GLOBAL:I = 0x4

.field public static final whitelist DEFAULT_KEYS_SEARCH_LOCAL:I = 0x3

.field public static final whitelist DEFAULT_KEYS_SHORTCUT:I = 0x2

.field public static final greylist-max-o DONT_FINISH_TASK_WITH_ACTIVITY:I = 0x0

.field public static final blacklist DUMP_ARG_AUTOFILL:Ljava/lang/String; = "--autofill"

.field public static final blacklist DUMP_ARG_CONTENT_CAPTURE:Ljava/lang/String; = "--contentcapture"

.field public static final blacklist DUMP_ARG_DUMP_DUMPABLE:Ljava/lang/String; = "--dump-dumpable"

.field public static final blacklist DUMP_ARG_LIST_DUMPABLES:Ljava/lang/String; = "--list-dumpables"

.field public static final blacklist DUMP_ARG_TRANSLATION:Ljava/lang/String; = "--translation"

.field private static final blacklist DUMP_IGNORES_SPECIAL_ARGS:J = 0x8e56fa2L

.field public static final greylist-max-o FINISH_TASK_WITH_ACTIVITY:I = 0x2

.field public static final greylist-max-o FINISH_TASK_WITH_ROOT_ACTIVITY:I = 0x1

.field protected static final whitelist FOCUSED_STATE_SET:[I

.field static final greylist-max-r FRAGMENTS_TAG:Ljava/lang/String; = "android:fragments"

.field private static final greylist-max-o HAS_CURENT_PERMISSIONS_REQUEST_KEY:Ljava/lang/String; = "android:hasCurrentPermissionsRequest"

.field private static final blacklist KEYBOARD_SHORTCUTS_RECEIVER_DESKTOP_PKG_NAME:Ljava/lang/String; = "com.sec.android.dexsystemui"

.field private static final greylist-max-o KEYBOARD_SHORTCUTS_RECEIVER_PKG_NAME:Ljava/lang/String; = "com.android.systemui"

.field private static final greylist-max-o LOG_AM_ON_ACTIVITY_RESULT_CALLED:I = 0x756e

.field private static final greylist-max-o LOG_AM_ON_CREATE_CALLED:I = 0x7569

.field private static final greylist-max-o LOG_AM_ON_DESTROY_CALLED:I = 0x756c

.field private static final greylist-max-o LOG_AM_ON_PAUSE_CALLED:I = 0x7545

.field private static final greylist-max-o LOG_AM_ON_RESTART_CALLED:I = 0x756a

.field private static final greylist-max-o LOG_AM_ON_RESUME_CALLED:I = 0x7546

.field private static final greylist-max-o LOG_AM_ON_START_CALLED:I = 0x756b

.field private static final greylist-max-o LOG_AM_ON_STOP_CALLED:I = 0x7561

.field private static final blacklist LOG_AM_ON_TOP_RESUMED_GAINED_CALLED:I = 0x7570

.field private static final blacklist LOG_AM_ON_TOP_RESUMED_LOST_CALLED:I = 0x7571

.field private static final greylist-max-o REQUEST_PERMISSIONS_WHO_PREFIX:Ljava/lang/String; = "@android:requestPermissions:"

.field public static final whitelist RESULT_CANCELED:I = 0x0

.field public static final whitelist RESULT_FIRST_USER:I = 0x1

.field public static final whitelist RESULT_OK:I = -0x1

.field private static final greylist-max-o SAVED_DIALOGS_TAG:Ljava/lang/String; = "android:savedDialogs"

.field private static final greylist-max-o SAVED_DIALOG_ARGS_KEY_PREFIX:Ljava/lang/String; = "android:dialog_args_"

.field private static final greylist-max-o SAVED_DIALOG_IDS_KEY:Ljava/lang/String; = "android:savedDialogIds"

.field private static final greylist-max-o SAVED_DIALOG_KEY_PREFIX:Ljava/lang/String; = "android:dialog_"

.field private static final blacklist SPEG_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.speg"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Activity"

.field private static final blacklist TAG_SPEG:Ljava/lang/String; = "SPEG"

.field private static final greylist-max-o WINDOW_HIERARCHY_TAG:Ljava/lang/String; = "android:viewHierarchyState"


# instance fields
.field greylist-max-o mActionBar:Landroid/app/ActionBar;

.field private greylist-max-o mActionModeTypeStarting:I

.field greylist mActivityInfo:Landroid/content/pm/ActivityInfo;

.field private final blacklist mActivityLifecycleCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Application$ActivityLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field greylist mActivityTransitionState:Landroid/app/ActivityTransitionState;

.field private greylist mApplication:Landroid/app/Application;

.field private blacklist mAssistToken:Landroid/os/IBinder;

.field private blacklist mAutofillClientController:Landroid/view/autofill/AutofillClientController;

.field private blacklist mCallbacksController:Landroid/content/ComponentCallbacksController;

.field greylist mCalled:Z

.field private greylist-max-o mCanEnterPictureInPicture:Z

.field private greylist-max-o mChangeCanvasToTranslucent:Z

.field greylist-max-o mChangingConfigurations:Z

.field private greylist mComponent:Landroid/content/ComponentName;

.field greylist mConfigChangeFlags:I

.field private blacklist mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

.field greylist mCurrentConfig:Landroid/content/res/Configuration;

.field greylist-max-o mDecor:Landroid/view/View;

.field private blacklist mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

.field private greylist-max-o mDefaultKeyMode:I

.field private greylist-max-o mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field private greylist mDestroyed:Z

.field private blacklist mDexTaskDocking:I

.field private greylist-max-o mDoReportFullyDrawn:Z

.field private blacklist mDumpableContainer:Lcom/android/internal/util/dump/DumpableContainerImpl;

.field greylist mEmbeddedID:Ljava/lang/String;

.field private greylist-max-o mEnableDefaultActionBarUp:Z

.field blacklist mEnterAnimationComplete:Z

.field greylist-max-o mEnterTransitionListener:Landroid/app/SharedElementCallback;

.field greylist-max-o mExitTransitionListener:Landroid/app/SharedElementCallback;

.field greylist mFinished:Z

.field final greylist mFragments:Landroid/app/FragmentController;

.field private blacklist mFreeformTaskPinning:I

.field private blacklist mFreeformTaskStashing:I

.field final greylist mHandler:Landroid/os/Handler;

.field private greylist-max-o mHasCurrentPermissionsRequest:Z

.field private greylist mIdent:I

.field private blacklist mInOutsideLongPress:Z

.field private blacklist mInOutsideTouch:Z

.field private final greylist-max-o mInstanceTracker:Ljava/lang/Object;

.field private greylist mInstrumentation:Landroid/app/Instrumentation;

.field greylist mIntent:Landroid/content/Intent;

.field blacklist mIsFlexPanelMode:Z

.field private blacklist mIsInMultiWindowMode:Z

.field private blacklist mIsInPictureInPictureMode:Z

.field private blacklist mIsPopOver:Z

.field greylist mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

.field blacklist mLaunchedFromBubble:Z

.field private blacklist mLongPressDetector:Landroid/view/GestureDetector;

.field private final blacklist mLongPressListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field greylist mMainThread:Landroid/app/ActivityThread;

.field private final greylist-max-o mManagedCursors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Activity$ManagedCursor;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mManagedDialogs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/Activity$ManagedDialog;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mMenuInflater:Landroid/view/MenuInflater;

.field greylist-max-q mParent:Landroid/app/Activity;

.field blacklist mPendingOptions:Landroid/app/ActivityOptions;

.field greylist mReferrer:Ljava/lang/String;

.field private greylist-max-o mRestoredFromBundle:Z

.field greylist mResultCode:I

.field greylist mResultData:Landroid/content/Intent;

.field greylist mResumed:Z

.field private greylist-max-o mSearchEvent:Landroid/view/SearchEvent;

.field private greylist-max-o mSearchManager:Landroid/app/SearchManager;

.field private blacklist mShareableActivityToken:Landroid/os/IBinder;

.field private blacklist mShouldDockBigOverlays:Z

.field private blacklist mSplashScreen:Landroid/window/SplashScreen;

.field greylist-max-o mStartedActivity:Z

.field greylist mStopped:Z

.field private greylist-max-o mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

.field private greylist mTitle:Ljava/lang/CharSequence;

.field private greylist-max-o mTitleColor:I

.field private greylist-max-o mTitleReady:Z

.field private greylist mToken:Landroid/os/IBinder;

.field private greylist-max-o mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

.field private greylist-max-o mUiThread:Ljava/lang/Thread;

.field private blacklist mUiTranslationController:Landroid/view/translation/UiTranslationController;

.field greylist-max-p mVisibleFromClient:Z

.field greylist-max-o mVisibleFromServer:Z

.field greylist-max-p mVoiceInteractor:Landroid/app/VoiceInteractor;

.field private greylist mWindow:Landroid/view/Window;

.field greylist mWindowAdded:Z

.field private final blacklist mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

.field private greylist mWindowManager:Landroid/view/WindowManager;

.field private blacklist mWindowingMode:I


# direct methods
.method public static synthetic blacklist $r8$lambda$kHLZd6jBbWtXdNq0XZIR2rP3qPI(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;->navigateBack()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTaskDescription(Landroid/app/Activity;)Landroid/app/ActivityManager$TaskDescription;
    .locals 0

    iget-object p0, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmToken(Landroid/app/Activity;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInOutsideLongPress(Landroid/app/Activity;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/Activity;->mInOutsideLongPress:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mapplyTransparentPopOver(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;->applyTransparentPopOver()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartActivityAsUserFromFragment(Landroid/app/Activity;Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/app/Activity;->startActivityAsUserFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartIntentSenderFromFragment(Landroid/app/Activity;Landroid/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IILandroid/os/Bundle;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Landroid/app/Activity;->startIntentSenderFromFragment(Landroid/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IILandroid/os/Bundle;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 989
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101009c

    aput v2, v0, v1

    sput-object v0, Landroid/app/Activity;->FOCUSED_STATE_SET:[I

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 3

    .line 772
    invoke-direct {p0}, Landroid/view/ContextThemeWrapper;-><init>()V

    .line 889
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    .line 894
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/Activity;->mCanEnterPictureInPicture:Z

    .line 896
    iput-boolean v1, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    .line 899
    sget-object v2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iput-object v2, p0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 907
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/Activity;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    .line 925
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 926
    iput-boolean v1, p0, Landroid/app/Activity;->mWindowAdded:Z

    .line 928
    iput-boolean v1, p0, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 929
    iput-boolean v0, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    .line 931
    iput-object v2, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    .line 939
    iput v1, p0, Landroid/app/Activity;->mTitleColor:I

    .line 942
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    .line 944
    new-instance v0, Landroid/app/Activity$HostCallbacks;

    invoke-direct {v0, p0}, Landroid/app/Activity$HostCallbacks;-><init>(Landroid/app/Activity;)V

    .line 945
    invoke-static {v0}, Landroid/app/FragmentController;->createController(Landroid/app/FragmentHostCallback;)Landroid/app/FragmentController;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    .line 965
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    .line 968
    iput v1, p0, Landroid/app/Activity;->mResultCode:I

    .line 971
    iput-object v2, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    .line 980
    iput-boolean v1, p0, Landroid/app/Activity;->mTitleReady:Z

    .line 981
    iput v1, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    .line 983
    iput v1, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    .line 984
    iput-object v2, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 986
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v0}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 991
    nop

    .line 992
    invoke-static {p0}, Landroid/os/StrictMode;->trackActivity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Activity;->mInstanceTracker:Ljava/lang/Object;

    .line 996
    new-instance v0, Landroid/app/ActivityTransitionState;

    invoke-direct {v0}, Landroid/app/ActivityTransitionState;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    .line 998
    sget-object v0, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    iput-object v0, p0, Landroid/app/Activity;->mEnterTransitionListener:Landroid/app/SharedElementCallback;

    .line 999
    sget-object v0, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    iput-object v0, p0, Landroid/app/Activity;->mExitTransitionListener:Landroid/app/SharedElementCallback;

    .line 1020
    iput-boolean v1, p0, Landroid/app/Activity;->mIsFlexPanelMode:Z

    .line 1032
    new-instance v0, Landroid/app/Activity$1;

    invoke-direct {v0, p0}, Landroid/app/Activity$1;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Landroid/app/Activity;->mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

    .line 1096
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Activity;->mDexTaskDocking:I

    .line 9546
    iput-boolean v1, p0, Landroid/app/Activity;->mIsPopOver:Z

    .line 9551
    new-instance v0, Landroid/app/Activity$3;

    invoke-direct {v0, p0}, Landroid/app/Activity$3;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Landroid/app/Activity;->mLongPressListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    return-void
.end method

.method private blacklist applyTransparentPopOver()V
    .locals 2

    .line 9596
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 9597
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    .line 9599
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 9600
    return-void
.end method

.method private greylist-max-o cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "options"    # Landroid/os/Bundle;

    .line 5634
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5635
    .local v0, "decor":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_1

    .line 5636
    invoke-virtual {v0}, Landroid/view/View;->cancelPendingInputEvents()V

    .line 5638
    :cond_1
    if-eqz p1, :cond_2

    .line 5639
    iget-object v1, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v1, p0, p1}, Landroid/app/ActivityTransitionState;->startExitOutTransition(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 5641
    :cond_2
    return-void
.end method

.method private blacklist clearTransparentPopOver()V
    .locals 2

    .line 9603
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 9604
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->semClearExtensionFlags(I)V

    .line 9606
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 9607
    return-void
.end method

.method private blacklist collectActivityLifecycleCallbacks()[Ljava/lang/Object;
    .locals 3

    .line 1642
    const/4 v0, 0x0

    .line 1643
    .local v0, "callbacks":[Ljava/lang/Object;
    iget-object v1, p0, Landroid/app/Activity;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1644
    :try_start_0
    iget-object v2, p0, Landroid/app/Activity;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1645
    iget-object v2, p0, Landroid/app/Activity;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 1647
    :cond_0
    monitor-exit v1

    .line 1648
    return-object v0

    .line 1647
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private blacklist convertFromTranslucentInternal()Z
    .locals 3

    .line 7815
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    .line 7816
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->convertFromTranslucent(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7817
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerGlobal;->changeCanvasOpacity(Landroid/os/IBinder;Z)V

    .line 7818
    return v2

    .line 7820
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o createDialog(Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "dialogId"    # Ljava/lang/Integer;
    .param p2, "state"    # Landroid/os/Bundle;
    .param p3, "args"    # Landroid/os/Bundle;

    .line 1885
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 1886
    .local v0, "dialog":Landroid/app/Dialog;
    if-nez v0, :cond_0

    .line 1887
    const/4 v1, 0x0

    return-object v1

    .line 1889
    :cond_0
    invoke-virtual {v0, p2}, Landroid/app/Dialog;->dispatchOnCreate(Landroid/os/Bundle;)V

    .line 1890
    return-object v0
.end method

.method private greylist-max-o deviceSupportsPictureInPictureMode()Z
    .locals 2

    .line 3003
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    if-nez v0, :cond_0

    .line 3004
    const/4 v0, 0x0

    return v0

    .line 3007
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.picture_in_picture"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private blacklist dispatchActivityConfigurationChanged()V
    .locals 3

    .line 1629
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1630
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityConfigurationChanged(Landroid/app/Activity;)V

    .line 1632
    :cond_0
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1633
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 1634
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 1635
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1636
    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityConfigurationChanged(Landroid/app/Activity;)V

    .line 1634
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1639
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private blacklist dispatchActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1419
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/app/Application;->dispatchActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1420
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1421
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1422
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1423
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1422
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1427
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist dispatchActivityDestroyed()V
    .locals 3

    .line 1607
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1608
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1609
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1610
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 1609
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1613
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->dispatchActivityDestroyed(Landroid/app/Activity;)V

    .line 1614
    return-void
.end method

.method private blacklist dispatchActivityPaused()V
    .locals 3

    .line 1512
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1513
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1514
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1515
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    .line 1514
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1518
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->dispatchActivityPaused(Landroid/app/Activity;)V

    .line 1519
    return-void
.end method

.method private blacklist dispatchActivityPostCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1430
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1431
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1432
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1433
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1432
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1437
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Landroid/app/Application;->dispatchActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1438
    return-void
.end method

.method private blacklist dispatchActivityPostDestroyed()V
    .locals 3

    .line 1617
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1618
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1619
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1620
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1621
    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostDestroyed(Landroid/app/Activity;)V

    .line 1619
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1624
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->dispatchActivityPostDestroyed(Landroid/app/Activity;)V

    .line 1625
    return-void
.end method

.method private blacklist dispatchActivityPostPaused()V
    .locals 3

    .line 1522
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1523
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1524
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1525
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostPaused(Landroid/app/Activity;)V

    .line 1524
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1528
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->dispatchActivityPostPaused(Landroid/app/Activity;)V

    .line 1529
    return-void
.end method

.method private blacklist dispatchActivityPostResumed()V
    .locals 3

    .line 1492
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1493
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1494
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1495
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostResumed(Landroid/app/Activity;)V

    .line 1494
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1498
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->dispatchActivityPostResumed(Landroid/app/Activity;)V

    .line 1499
    return-void
.end method

.method private blacklist dispatchActivityPostSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 1585
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1586
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1587
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1588
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1589
    invoke-interface {v2, p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1587
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1592
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Landroid/app/Application;->dispatchActivityPostSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1593
    return-void
.end method

.method private blacklist dispatchActivityPostStarted()V
    .locals 3

    .line 1461
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1462
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1463
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1464
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1465
    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostStarted(Landroid/app/Activity;)V

    .line 1463
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1468
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->dispatchActivityPostStarted(Landroid/app/Activity;)V

    .line 1469
    return-void
.end method

.method private blacklist dispatchActivityPostStopped()V
    .locals 3

    .line 1552
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1553
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1554
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1555
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1556
    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostStopped(Landroid/app/Activity;)V

    .line 1554
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1559
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->dispatchActivityPostStopped(Landroid/app/Activity;)V

    .line 1560
    return-void
.end method

.method private blacklist dispatchActivityPreCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1408
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/app/Application;->dispatchActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1409
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1410
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1411
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1412
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1411
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1416
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist dispatchActivityPreDestroyed()V
    .locals 3

    .line 1596
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityPreDestroyed(Landroid/app/Activity;)V

    .line 1597
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1598
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1599
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1600
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1601
    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreDestroyed(Landroid/app/Activity;)V

    .line 1599
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1604
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist dispatchActivityPrePaused()V
    .locals 3

    .line 1502
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityPrePaused(Landroid/app/Activity;)V

    .line 1503
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1504
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1505
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1506
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPrePaused(Landroid/app/Activity;)V

    .line 1505
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1509
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist dispatchActivityPreResumed()V
    .locals 3

    .line 1472
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityPreResumed(Landroid/app/Activity;)V

    .line 1473
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1474
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1475
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1476
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreResumed(Landroid/app/Activity;)V

    .line 1475
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1479
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist dispatchActivityPreSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 1563
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/app/Application;->dispatchActivityPreSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1564
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1565
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1566
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1567
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1568
    invoke-interface {v2, p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1566
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1571
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist dispatchActivityPreStarted()V
    .locals 3

    .line 1441
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityPreStarted(Landroid/app/Activity;)V

    .line 1442
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1443
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1444
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1445
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreStarted(Landroid/app/Activity;)V

    .line 1444
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1448
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist dispatchActivityPreStopped()V
    .locals 3

    .line 1532
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityPreStopped(Landroid/app/Activity;)V

    .line 1533
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1534
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1535
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1536
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreStopped(Landroid/app/Activity;)V

    .line 1535
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1539
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist dispatchActivityResumed()V
    .locals 3

    .line 1482
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityResumed(Landroid/app/Activity;)V

    .line 1483
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1484
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1485
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1486
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    .line 1485
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1489
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist dispatchActivitySaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 1574
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1575
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1576
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1577
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1578
    invoke-interface {v2, p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1576
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1581
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Landroid/app/Application;->dispatchActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1582
    return-void
.end method

.method private blacklist dispatchActivityStarted()V
    .locals 3

    .line 1451
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityStarted(Landroid/app/Activity;)V

    .line 1452
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1453
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1454
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1455
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    .line 1454
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1458
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist dispatchActivityStopped()V
    .locals 3

    .line 1542
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1543
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1544
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1545
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStopped(Landroid/app/Activity;)V

    .line 1544
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1548
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->dispatchActivityStopped(Landroid/app/Activity;)V

    .line 1549
    return-void
.end method

.method private greylist-max-o dispatchRequestPermissionsResult(ILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .line 9118
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    .line 9120
    if-eqz p2, :cond_0

    const-string v1, "android.content.pm.extra.REQUEST_PERMISSIONS_NAMES"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 9121
    :cond_0
    new-array v1, v0, [Ljava/lang/String;

    :goto_0
    nop

    .line 9122
    .local v1, "permissions":[Ljava/lang/String;
    if-eqz p2, :cond_1

    const-string v0, "android.content.pm.extra.REQUEST_PERMISSIONS_RESULTS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    goto :goto_1

    .line 9123
    :cond_1
    new-array v0, v0, [I

    :goto_1
    nop

    .line 9124
    .local v0, "grantResults":[I
    invoke-virtual {p0, p1, v1, v0}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 9125
    return-void
.end method

.method private greylist-max-o dispatchRequestPermissionsResultToFragment(ILandroid/content/Intent;Landroid/app/Fragment;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "data"    # Landroid/content/Intent;
    .param p3, "fragment"    # Landroid/app/Fragment;

    .line 9130
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string v1, "android.content.pm.extra.REQUEST_PERMISSIONS_NAMES"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 9131
    :cond_0
    new-array v1, v0, [Ljava/lang/String;

    :goto_0
    nop

    .line 9132
    .local v1, "permissions":[Ljava/lang/String;
    if-eqz p2, :cond_1

    const-string v0, "android.content.pm.extra.REQUEST_PERMISSIONS_RESULTS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    goto :goto_1

    .line 9133
    :cond_1
    new-array v0, v0, [I

    :goto_1
    nop

    .line 9134
    .local v0, "grantResults":[I
    invoke-virtual {p3, p1, v1, v0}, Landroid/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 9135
    return-void
.end method

.method private blacklist dumpLegacyDumpable(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "legacyOption"    # Ljava/lang/String;
    .param p4, "dumpableName"    # Ljava/lang/String;

    .line 7705
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    const-string v2, "--dump-dumpable"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const-string v1, "%s%s option deprecated. Use %s %s instead\n"

    invoke-virtual {p2, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 7707
    return-void
.end method

.method private greylist-max-o ensureSearchManager()V
    .locals 2

    .line 7215
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    if-eqz v0, :cond_0

    .line 7216
    return-void

    .line 7220
    :cond_0
    :try_start_0
    new-instance v0, Landroid/app/SearchManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/SearchManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;
    :try_end_0
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7223
    nop

    .line 7224
    return-void

    .line 7221
    :catch_0
    move-exception v0

    .line 7222
    .local v0, "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private greylist-max-r finish(I)V
    .locals 4
    .param p1, "finishTask"    # I

    .line 6834
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_2

    .line 6837
    monitor-enter p0

    .line 6838
    :try_start_0
    iget v0, p0, Landroid/app/Activity;->mResultCode:I

    .line 6839
    .local v0, "resultCode":I
    iget-object v1, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    .line 6840
    .local v1, "resultData":Landroid/content/Intent;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6842
    if-eqz v1, :cond_0

    .line 6843
    invoke-virtual {v1, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 6845
    :cond_0
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v0, v1, p1}, Landroid/app/ActivityClient;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6847
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/Activity;->mFinished:Z

    .line 6849
    .end local v0    # "resultCode":I
    .end local v1    # "resultData":Landroid/content/Intent;
    :cond_1
    goto :goto_0

    .line 6840
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 6850
    :cond_2
    invoke-virtual {v0, p0}, Landroid/app/Activity;->finishFromChild(Landroid/app/Activity;)V

    .line 6853
    :goto_0
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillClientController;->onActivityFinish(Landroid/content/Intent;)V

    .line 6854
    return-void
.end method

.method private blacklist getAutofillClientController()Landroid/view/autofill/AutofillClientController;
    .locals 1

    .line 1321
    iget-object v0, p0, Landroid/app/Activity;->mAutofillClientController:Landroid/view/autofill/AutofillClientController;

    if-nez v0, :cond_0

    .line 1322
    new-instance v0, Landroid/view/autofill/AutofillClientController;

    invoke-direct {v0, p0}, Landroid/view/autofill/AutofillClientController;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Landroid/app/Activity;->mAutofillClientController:Landroid/view/autofill/AutofillClientController;

    .line 1324
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mAutofillClientController:Landroid/view/autofill/AutofillClientController;

    return-object v0
.end method

.method private blacklist getContentCaptureManager()Landroid/view/contentcapture/ContentCaptureManager;
    .locals 1

    .line 1218
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1219
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    if-nez v0, :cond_1

    .line 1220
    const-class v0, Landroid/view/contentcapture/ContentCaptureManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/contentcapture/ContentCaptureManager;

    iput-object v0, p0, Landroid/app/Activity;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    .line 1222
    :cond_1
    iget-object v0, p0, Landroid/app/Activity;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    return-object v0
.end method

.method private blacklist getContentCaptureTypeAsString(I)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # I

    .line 1241
    packed-switch p1, :pswitch_data_0

    .line 1251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOW-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1249
    :pswitch_0
    const-string v0, "STOP"

    return-object v0

    .line 1247
    :pswitch_1
    const-string v0, "PAUSE"

    return-object v0

    .line 1245
    :pswitch_2
    const-string v0, "RESUME"

    return-object v0

    .line 1243
    :pswitch_3
    const-string v0, "START"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static native greylist-max-o getDlWarning()Ljava/lang/String;
.end method

.method private blacklist getOrCreateSplashScreen()Landroid/window/SplashScreen;
    .locals 1

    .line 1726
    monitor-enter p0

    .line 1727
    :try_start_0
    iget-object v0, p0, Landroid/app/Activity;->mSplashScreen:Landroid/window/SplashScreen;

    if-nez v0, :cond_0

    .line 1728
    new-instance v0, Landroid/window/SplashScreen$SplashScreenImpl;

    invoke-direct {v0, p0}, Landroid/window/SplashScreen$SplashScreenImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/Activity;->mSplashScreen:Landroid/window/SplashScreen;

    .line 1730
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mSplashScreen:Landroid/window/SplashScreen;

    monitor-exit p0

    return-object v0

    .line 1731
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private blacklist idsUiUpdated()V
    .locals 2

    .line 3635
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getIdsController()Landroid/app/IdsController;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/IdsController;->uiUpdated(I)V

    .line 3636
    return-void
.end method

.method private greylist-max-o initWindowDecorActionBar()V
    .locals 3

    .line 3616
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 3620
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 3622
    invoke-virtual {p0}, Landroid/app/Activity;->isChild()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3626
    :cond_0
    new-instance v1, Lcom/android/internal/app/WindowDecorActionBar;

    invoke-direct {v1, p0}, Lcom/android/internal/app/WindowDecorActionBar;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    .line 3627
    iget-boolean v2, p0, Landroid/app/Activity;->mEnableDefaultActionBarUp:Z

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    .line 3629
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDefaultIcon(I)V

    .line 3630
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getLogoResource()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDefaultLogo(I)V

    .line 3631
    return-void

    .line 3623
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist interceptTouchEventForPopOver(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 9561
    iget-boolean v0, p0, Landroid/app/Activity;->mIsPopOver:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 9562
    return v1

    .line 9564
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Landroid/app/Activity;->isOutOfBounds(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9565
    iput-boolean v2, p0, Landroid/app/Activity;->mInOutsideTouch:Z

    .line 9567
    :cond_1
    iget-boolean v0, p0, Landroid/app/Activity;->mInOutsideTouch:Z

    if-nez v0, :cond_2

    .line 9568
    return v1

    .line 9570
    :cond_2
    invoke-direct {p0, p1}, Landroid/app/Activity;->onOutsideTouchEventForPopOver(Landroid/view/MotionEvent;)V

    .line 9571
    return v2
.end method

.method private blacklist isOutOfBounds(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 9592
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p0, p1}, Landroid/view/Window;->isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$setRequestedOrientation$0(Lcom/android/internal/policy/PhoneWindow;I)V
    .locals 0
    .param p0, "targetWindow"    # Lcom/android/internal/policy/PhoneWindow;
    .param p1, "requestedOr"    # I

    .line 7086
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->dispatchRequestedOrientation(I)V

    return-void
.end method

.method private greylist-max-o missingDialog(I)Ljava/lang/IllegalArgumentException;
    .locals 3
    .param p1, "id"    # I

    .line 5110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no dialog with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was ever shown via Activity#showDialog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private blacklist navigateBack()V
    .locals 4

    .line 4090
    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4092
    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    .line 4093
    return-void

    .line 4098
    :cond_0
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    new-instance v2, Landroid/app/Activity$RequestFinishCallback;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v3}, Landroid/app/Activity$RequestFinishCallback;-><init>(Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityClient;->onBackPressedOnTaskRoot(Landroid/os/IBinder;Landroid/app/IRequestFinishCallback;)V

    .line 4101
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillClientController;->onActivityBackPressed(Landroid/content/Intent;)V

    .line 4102
    return-void
.end method

.method private blacklist notifyContentCaptureManagerIfNeeded(I)V
    .locals 7
    .param p1, "type"    # I

    .line 1256
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyContentCapture("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1258
    invoke-direct {p0, p1}, Landroid/app/Activity;->getContentCaptureTypeAsString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 1259
    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1257
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1262
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/app/Activity;->getContentCaptureManager()Landroid/view/contentcapture/ContentCaptureManager;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1263
    .local v2, "cm":Landroid/view/contentcapture/ContentCaptureManager;
    if-nez v2, :cond_1

    .line 1288
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1263
    return-void

    .line 1265
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1285
    :try_start_1
    const-string v3, "Activity"

    goto :goto_0

    .line 1282
    :pswitch_0
    invoke-virtual {v2}, Landroid/view/contentcapture/ContentCaptureManager;->onActivityDestroyed()V

    .line 1283
    goto :goto_1

    .line 1279
    :pswitch_1
    invoke-virtual {v2}, Landroid/view/contentcapture/ContentCaptureManager;->onActivityPaused()V

    .line 1280
    goto :goto_1

    .line 1276
    :pswitch_2
    invoke-virtual {v2}, Landroid/view/contentcapture/ContentCaptureManager;->onActivityResumed()V

    .line 1277
    goto :goto_1

    .line 1269
    :pswitch_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 1270
    .local v3, "window":Landroid/view/Window;
    if-eqz v3, :cond_2

    .line 1271
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/contentcapture/ContentCaptureManager;->updateWindowAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1273
    :cond_2
    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/app/Activity;->mShareableActivityToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/view/contentcapture/ContentCaptureManager;->onActivityCreated(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 1274
    goto :goto_1

    .line 1285
    .end local v3    # "window":Landroid/view/Window;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid @ContentCaptureNotificationType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1288
    .end local v2    # "cm":Landroid/view/contentcapture/ContentCaptureManager;
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1289
    nop

    .line 1290
    return-void

    .line 1288
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1289
    throw v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist onOutsideTouchEventForPopOver(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 9575
    iget-boolean v0, p0, Landroid/app/Activity;->mInOutsideLongPress:Z

    if-nez v0, :cond_0

    .line 9576
    iget-object v0, p0, Landroid/app/Activity;->mLongPressDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 9579
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 9580
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 9581
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Activity;->mInOutsideTouch:Z

    .line 9582
    iget-boolean v2, p0, Landroid/app/Activity;->mInOutsideLongPress:Z

    if-eqz v2, :cond_2

    .line 9583
    iput-boolean v0, p0, Landroid/app/Activity;->mInOutsideLongPress:Z

    .line 9584
    invoke-direct {p0}, Landroid/app/Activity;->clearTransparentPopOver()V

    goto :goto_0

    .line 9585
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_3

    invoke-direct {p0, p1}, Landroid/app/Activity;->isOutOfBounds(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9586
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 9589
    :cond_3
    :goto_0
    return-void
.end method

.method private greylist-max-o restoreHasCurrentPermissionRequest(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 8937
    if-eqz p1, :cond_0

    .line 8938
    const/4 v0, 0x0

    const-string v1, "android:hasCurrentPermissionsRequest"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    .line 8941
    :cond_0
    return-void
.end method

.method private greylist-max-o restoreManagedDialogs(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1858
    const-string v0, "android:savedDialogs"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1859
    .local v0, "b":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 1860
    return-void

    .line 1863
    :cond_0
    const-string v1, "android:savedDialogIds"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 1864
    .local v1, "ids":[I
    array-length v2, v1

    .line 1865
    .local v2, "numDialogs":I
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v3, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    .line 1866
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1867
    aget v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1868
    .local v4, "dialogId":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroid/app/Activity;->savedDialogKeyFor(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 1869
    .local v5, "dialogState":Landroid/os/Bundle;
    if-eqz v5, :cond_1

    .line 1872
    new-instance v6, Landroid/app/Activity$ManagedDialog;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/app/Activity$ManagedDialog;-><init>(Landroid/app/Activity$ManagedDialog-IA;)V

    .line 1873
    .local v6, "md":Landroid/app/Activity$ManagedDialog;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Landroid/app/Activity;->savedDialogArgsKeyFor(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    .line 1874
    iget-object v7, v6, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    invoke-direct {p0, v4, v5, v7}, Landroid/app/Activity;->createDialog(Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    .line 1875
    iget-object v7, v6, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v7, :cond_1

    .line 1876
    iget-object v7, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1877
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, v6, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    iget-object v9, v6, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    invoke-virtual {p0, v7, v8, v9}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 1878
    iget-object v7, v6, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7, v5}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1866
    .end local v4    # "dialogId":Ljava/lang/Integer;
    .end local v5    # "dialogState":Landroid/os/Bundle;
    .end local v6    # "md":Landroid/app/Activity$ManagedDialog;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1882
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method private greylist saveManagedDialogs(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 2373
    iget-object v0, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 2374
    return-void

    .line 2377
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2378
    .local v0, "numDialogs":I
    if-nez v0, :cond_1

    .line 2379
    return-void

    .line 2382
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2384
    .local v1, "dialogState":Landroid/os/Bundle;
    iget-object v2, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 2387
    .local v2, "ids":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 2388
    iget-object v4, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 2389
    .local v4, "key":I
    aput v4, v2, v3

    .line 2390
    iget-object v5, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Activity$ManagedDialog;

    .line 2391
    .local v5, "md":Landroid/app/Activity$ManagedDialog;
    invoke-static {v4}, Landroid/app/Activity;->savedDialogKeyFor(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2392
    iget-object v6, v5, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    if-eqz v6, :cond_2

    .line 2393
    invoke-static {v4}, Landroid/app/Activity;->savedDialogArgsKeyFor(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2387
    .end local v4    # "key":I
    .end local v5    # "md":Landroid/app/Activity$ManagedDialog;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2397
    .end local v3    # "i":I
    :cond_3
    const-string v3, "android:savedDialogIds"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 2398
    const-string v3, "android:savedDialogs"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2399
    return-void
.end method

.method private static greylist-max-o savedDialogArgsKeyFor(I)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # I

    .line 1898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:dialog_args_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o savedDialogKeyFor(I)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # I

    .line 1894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:dialog_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist setLocusContextToContentCapture(Landroid/content/LocusId;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "locusId"    # Landroid/content/LocusId;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 1293
    invoke-direct {p0}, Landroid/app/Activity;->getContentCaptureManager()Landroid/view/contentcapture/ContentCaptureManager;

    move-result-object v0

    .line 1294
    .local v0, "cm":Landroid/view/contentcapture/ContentCaptureManager;
    if-nez v0, :cond_0

    return-void

    .line 1296
    :cond_0
    new-instance v1, Landroid/view/contentcapture/ContentCaptureContext$Builder;

    invoke-direct {v1, p1}, Landroid/view/contentcapture/ContentCaptureContext$Builder;-><init>(Landroid/content/LocusId;)V

    .line 1298
    .local v1, "contentCaptureContextBuilder":Landroid/view/contentcapture/ContentCaptureContext$Builder;
    if-eqz p2, :cond_1

    .line 1299
    invoke-virtual {v1, p2}, Landroid/view/contentcapture/ContentCaptureContext$Builder;->setExtras(Landroid/os/Bundle;)Landroid/view/contentcapture/ContentCaptureContext$Builder;

    .line 1301
    :cond_1
    invoke-virtual {v0}, Landroid/view/contentcapture/ContentCaptureManager;->getMainContentCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;

    move-result-object v2

    .line 1302
    invoke-virtual {v1}, Landroid/view/contentcapture/ContentCaptureContext$Builder;->build()Landroid/view/contentcapture/ContentCaptureContext;

    move-result-object v3

    .line 1301
    invoke-virtual {v2, v3}, Landroid/view/contentcapture/MainContentCaptureSession;->setContentCaptureContext(Landroid/view/contentcapture/ContentCaptureContext;)V

    .line 1303
    return-void
.end method

.method private greylist-max-o startActivityAsUserFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 6
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;
    .param p5, "user"    # Landroid/os/UserHandle;

    .line 6412
    iget-object v2, p1, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 6413
    return-void
.end method

.method private blacklist startAppLockService()V
    .locals 6

    .line 9466
    const/4 v0, 0x0

    .line 9467
    .local v0, "showWhenLocked":Z
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 9468
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    :goto_0
    if-eqz v1, :cond_2

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x400000

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x80000

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 9470
    :cond_1
    const/4 v0, 0x1

    .line 9473
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v0, v5}, Landroid/app/IActivityTaskManager;->startAppLockService(Landroid/os/IBinder;Landroid/content/Intent;ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9475
    goto :goto_1

    .line 9474
    :catch_0
    move-exception v2

    .line 9476
    :goto_1
    return-void
.end method

.method private blacklist startIntentSenderFromFragment(Landroid/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IILandroid/os/Bundle;)V
    .locals 8
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 6489
    iget-object v2, p1, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResultInner(Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V

    .line 6491
    return-void
.end method

.method private greylist-max-o storeHasCurrentPermissionRequest(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 8931
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    if-eqz v0, :cond_0

    .line 8932
    const/4 v0, 0x1

    const-string v1, "android:hasCurrentPermissionsRequest"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8934
    :cond_0
    return-void
.end method

.method private greylist-max-o transferSpringboardActivityOptions(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "options"    # Landroid/os/Bundle;

    .line 5656
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5657
    invoke-virtual {p0}, Landroid/app/Activity;->getActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 5658
    .local v0, "activityOptions":Landroid/app/ActivityOptions;
    if-eqz v0, :cond_0

    .line 5659
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 5660
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 5663
    .end local v0    # "activityOptions":Landroid/app/ActivityOptions;
    :cond_0
    return-object p1
.end method


# virtual methods
.method public whitelist addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 3712
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3713
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 3714
    return-void
.end method

.method public final blacklist addDumpable(Landroid/util/Dumpable;)Z
    .locals 1
    .param p1, "dumpable"    # Landroid/util/Dumpable;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 7569
    iget-object v0, p0, Landroid/app/Activity;->mDumpableContainer:Lcom/android/internal/util/dump/DumpableContainerImpl;

    if-nez v0, :cond_0

    .line 7570
    new-instance v0, Lcom/android/internal/util/dump/DumpableContainerImpl;

    invoke-direct {v0}, Lcom/android/internal/util/dump/DumpableContainerImpl;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mDumpableContainer:Lcom/android/internal/util/dump/DumpableContainerImpl;

    .line 7572
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mDumpableContainer:Lcom/android/internal/util/dump/DumpableContainerImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/dump/DumpableContainerImpl;->addDumpable(Landroid/util/Dumpable;)Z

    move-result v0

    return v0
.end method

.method final greylist-max-r attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;ILandroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Landroid/app/Activity$NonConfigurationInstances;Landroid/content/res/Configuration;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;Landroid/view/Window;Landroid/view/ViewRootImpl$ActivityConfigCallback;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aThread"    # Landroid/app/ActivityThread;
    .param p3, "instr"    # Landroid/app/Instrumentation;
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "ident"    # I
    .param p6, "application"    # Landroid/app/Application;
    .param p7, "intent"    # Landroid/content/Intent;
    .param p8, "info"    # Landroid/content/pm/ActivityInfo;
    .param p9, "title"    # Ljava/lang/CharSequence;
    .param p10, "parent"    # Landroid/app/Activity;
    .param p11, "id"    # Ljava/lang/String;
    .param p12, "lastNonConfigurationInstances"    # Landroid/app/Activity$NonConfigurationInstances;
    .param p13, "config"    # Landroid/content/res/Configuration;
    .param p14, "referrer"    # Ljava/lang/String;
    .param p15, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p16, "window"    # Landroid/view/Window;
    .param p17, "activityConfigCallback"    # Landroid/view/ViewRootImpl$ActivityConfigCallback;
    .param p18, "assistToken"    # Landroid/os/IBinder;
    .param p19, "shareableActivityToken"    # Landroid/os/IBinder;

    .line 8448
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p8

    move-object/from16 v3, p12

    move-object/from16 v4, p13

    move-object/from16 v5, p15

    invoke-virtual/range {p0 .. p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    .line 8450
    iget-object v6, v0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/FragmentController;->attachHost(Landroid/app/Fragment;)V

    .line 8452
    new-instance v6, Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v7, p16

    move-object/from16 v8, p17

    invoke-direct {v6, v0, v7, v8}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/view/ViewRootImpl$ActivityConfigCallback;)V

    iput-object v6, v0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    .line 8453
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v6, :cond_1

    .line 8455
    const-string v6, "com.samsung.speg"

    move-object/from16 v9, p14

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, v0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v10, :cond_2

    iget-object v10, v10, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    .line 8456
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 8457
    :cond_0
    const-string v6, "SPEG"

    const-string v10, "Activity launched by SPEG"

    invoke-static {v6, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8461
    const-string v6, "com.samsung.speg"

    .line 8463
    .end local p14    # "referrer":Ljava/lang/String;
    .local v6, "referrer":Ljava/lang/String;
    iget-object v9, v0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v9}, Landroid/view/Window;->setSpegOn()V

    goto :goto_0

    .line 8453
    .end local v6    # "referrer":Ljava/lang/String;
    .restart local p14    # "referrer":Ljava/lang/String;
    :cond_1
    move-object/from16 v9, p14

    .line 8466
    :cond_2
    move-object v6, v9

    .end local p14    # "referrer":Ljava/lang/String;
    .restart local v6    # "referrer":Ljava/lang/String;
    :goto_0
    iget-object v9, v0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget-object v10, v0, Landroid/app/Activity;->mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

    invoke-virtual {v9, v10}, Landroid/view/Window;->setWindowControllerCallback(Landroid/view/Window$WindowControllerCallback;)V

    .line 8467
    iget-object v9, v0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v9, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 8468
    iget-object v9, v0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v9, v0}, Landroid/view/Window;->setOnWindowDismissedCallback(Landroid/view/Window$OnWindowDismissedCallback;)V

    .line 8469
    iget-object v9, v0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v9}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/view/LayoutInflater;->setPrivateFactory(Landroid/view/LayoutInflater$Factory2;)V

    .line 8470
    iget v9, v2, Landroid/content/pm/ActivityInfo;->softInputMode:I

    if-eqz v9, :cond_3

    .line 8471
    iget-object v9, v0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget v10, v2, Landroid/content/pm/ActivityInfo;->softInputMode:I

    invoke-virtual {v9, v10}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 8473
    :cond_3
    iget v9, v2, Landroid/content/pm/ActivityInfo;->uiOptions:I

    if-eqz v9, :cond_4

    .line 8474
    iget-object v9, v0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget v10, v2, Landroid/content/pm/ActivityInfo;->uiOptions:I

    invoke-virtual {v9, v10}, Landroid/view/Window;->setUiOptions(I)V

    .line 8476
    :cond_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    iput-object v9, v0, Landroid/app/Activity;->mUiThread:Ljava/lang/Thread;

    .line 8478
    move-object/from16 v9, p2

    iput-object v9, v0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 8479
    move-object/from16 v10, p3

    iput-object v10, v0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    .line 8480
    move-object/from16 v11, p4

    iput-object v11, v0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 8481
    move-object/from16 v12, p18

    iput-object v12, v0, Landroid/app/Activity;->mAssistToken:Landroid/os/IBinder;

    .line 8482
    move-object/from16 v13, p19

    iput-object v13, v0, Landroid/app/Activity;->mShareableActivityToken:Landroid/os/IBinder;

    .line 8483
    move/from16 v14, p5

    iput v14, v0, Landroid/app/Activity;->mIdent:I

    .line 8484
    iput-object v1, v0, Landroid/app/Activity;->mApplication:Landroid/app/Application;

    .line 8485
    move-object/from16 v15, p7

    iput-object v15, v0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    .line 8486
    iput-object v6, v0, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    .line 8487
    move-object/from16 p14, v6

    .end local v6    # "referrer":Ljava/lang/String;
    .restart local p14    # "referrer":Ljava/lang/String;
    invoke-virtual/range {p7 .. p7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    iput-object v6, v0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 8488
    iput-object v2, v0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 8489
    move-object/from16 v6, p9

    iput-object v6, v0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    .line 8490
    move-object/from16 v6, p10

    iput-object v6, v0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    .line 8491
    move-object/from16 v6, p11

    iput-object v6, v0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    .line 8492
    iput-object v3, v0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    .line 8493
    if-eqz v5, :cond_6

    .line 8494
    if-eqz v3, :cond_5

    .line 8495
    iget-object v6, v3, Landroid/app/Activity$NonConfigurationInstances;->voiceInteractor:Landroid/app/VoiceInteractor;

    iput-object v6, v0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    goto :goto_1

    .line 8497
    :cond_5
    new-instance v6, Landroid/app/VoiceInteractor;

    .line 8498
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v6, v5, v0, v0, v3}, Landroid/app/VoiceInteractor;-><init>(Lcom/android/internal/app/IVoiceInteractor;Landroid/content/Context;Landroid/app/Activity;Landroid/os/Looper;)V

    iput-object v6, v0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    .line 8502
    :cond_6
    :goto_1
    iget-object v3, v0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    .line 8503
    const-string/jumbo v6, "window"

    move-object/from16 v5, p1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    iget-object v5, v0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v7, v0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 8504
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    iget v8, v2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v8, v8, 0x200

    const/16 v16, 0x1

    const/16 v17, 0x0

    if-eqz v8, :cond_7

    move/from16 v8, v16

    goto :goto_2

    :cond_7
    move/from16 v8, v17

    .line 8502
    :goto_2
    invoke-virtual {v3, v6, v5, v7, v8}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V

    .line 8506
    iget-object v3, v0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v3, :cond_8

    .line 8507
    iget-object v5, v0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/view/Window;->setContainer(Landroid/view/Window;)V

    .line 8509
    :cond_8
    iget-object v3, v0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    iput-object v3, v0, Landroid/app/Activity;->mWindowManager:Landroid/view/WindowManager;

    .line 8510
    iput-object v4, v0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 8512
    iget-object v3, v0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget v5, v2, Landroid/content/pm/ActivityInfo;->colorMode:I

    invoke-virtual {v3, v5}, Landroid/view/Window;->setColorMode(I)V

    .line 8513
    iget-object v3, v0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget v5, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v6, 0x2000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_9

    move/from16 v5, v16

    goto :goto_3

    :cond_9
    move/from16 v5, v17

    :goto_3
    invoke-virtual {v3, v5}, Landroid/view/Window;->setPreferMinimalPostProcessing(Z)V

    .line 8516
    invoke-direct/range {p0 .. p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/autofill/AutofillClientController;->onActivityAttached(Landroid/app/Application;)V

    .line 8517
    invoke-virtual/range {p6 .. p6}, Landroid/app/Application;->getContentCaptureOptions()Landroid/content/ContentCaptureOptions;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setContentCaptureOptions(Landroid/content/ContentCaptureOptions;)V

    .line 8520
    iget-object v3, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v3

    iput v3, v0, Landroid/app/Activity;->mWindowingMode:I

    .line 8526
    new-instance v3, Landroid/view/GestureDetector;

    iget-object v5, v0, Landroid/app/Activity;->mLongPressListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    iget-object v6, v0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, v0, v5, v6}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v3, v0, Landroid/app/Activity;->mLongPressDetector:Landroid/view/GestureDetector;

    .line 8527
    iget-object v3, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 8529
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->isPopOverWithoutOutlineEffect()Z

    move-result v3

    if-nez v3, :cond_a

    move/from16 v3, v16

    goto :goto_4

    :cond_a
    move/from16 v3, v17

    :goto_4
    iput-boolean v3, v0, Landroid/app/Activity;->mIsPopOver:Z

    .line 8531
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MD_DEX_TASK_DOCKING:Z

    if-eqz v3, :cond_b

    .line 8532
    iget-object v3, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getDexTaskDockingState()I

    move-result v3

    iput v3, v0, Landroid/app/Activity;->mDexTaskDocking:I

    .line 8533
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v3, :cond_b

    .line 8534
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attach mDexTaskDocking="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v0, Landroid/app/Activity;->mDexTaskDocking:I

    .line 8535
    invoke-static {v5}, Landroid/app/WindowConfiguration;->dexTaskDockingStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8534
    const-string v5, "Activity"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8540
    :cond_b
    return-void
.end method

.method protected whitelist attachBaseContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "newBase"    # Landroid/content/Context;

    .line 1307
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 1308
    if-eqz p1, :cond_0

    .line 1309
    invoke-virtual {p0}, Landroid/app/Activity;->getAutofillClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->setAutofillClient(Landroid/view/autofill/AutofillManager$AutofillClient;)V

    .line 1310
    invoke-virtual {p0}, Landroid/app/Activity;->getContentCaptureOptions()Landroid/content/ContentCaptureOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->setContentCaptureOptions(Landroid/content/ContentCaptureOptions;)V

    .line 1312
    :cond_0
    return-void
.end method

.method public greylist-max-o canStartActivityForResult()Z
    .locals 1

    .line 6444
    const/4 v0, 0x1

    return v0
.end method

.method blacklist canUseLocalRelaunchTransition()Z
    .locals 4

    .line 6814
    iget-boolean v0, p0, Landroid/app/Activity;->mStopped:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/app/Activity;->mFinished:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 6818
    :cond_0
    iget-boolean v0, p0, Landroid/app/Activity;->mIsInMultiWindowMode:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 6819
    return v2

    .line 6822
    :cond_1
    iget-object v0, p0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 6823
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    nop

    .line 6822
    :goto_0
    return v1

    .line 6815
    :cond_3
    :goto_1
    return v1
.end method

.method public greylist changeToHorizontalSplitLayout()V
    .locals 2

    .line 9333
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    .line 9334
    .local v0, "multiWindowManager":Lcom/samsung/android/multiwindow/MultiWindowManager;
    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->changeToHorizontalSplitLayout(Landroid/os/IBinder;)V

    .line 9335
    return-void
.end method

.method public whitelist closeContextMenu()V
    .locals 2

    .line 4883
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4884
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->closePanel(I)V

    .line 4886
    :cond_0
    return-void
.end method

.method public whitelist closeOptionsMenu()V
    .locals 2

    .line 4821
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 4822
    invoke-virtual {v0}, Landroid/app/ActionBar;->closeOptionsMenu()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4823
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->closePanel(I)V

    .line 4825
    :cond_1
    return-void
.end method

.method public final blacklist contentCaptureClientGetComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 7176
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public whitelist convertFromTranslucent()V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7770
    invoke-direct {p0}, Landroid/app/Activity;->convertFromTranslucentInternal()Z

    .line 7771
    return-void
.end method

.method public whitelist convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z
    .locals 3
    .param p1, "callback"    # Landroid/app/Activity$TranslucentConversionListener;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7847
    iput-object p1, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    .line 7848
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 7849
    if-nez p2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 7848
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityClient;->convertToTranslucent(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    .line 7850
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerGlobal;->changeCanvasOpacity(Landroid/os/IBinder;Z)V

    .line 7852
    iget-boolean v0, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    if-eqz v0, :cond_1

    .line 7854
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/app/Activity$TranslucentConversionListener;->onTranslucentConversionComplete(Z)V

    .line 7856
    :cond_1
    iget-boolean v0, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    return v0
.end method

.method public whitelist createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 17
    .param p1, "requestCode"    # I
    .param p2, "data"    # Landroid/content/Intent;
    .param p3, "flags"    # I

    .line 7056
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 7058
    .local v15, "packageName":Ljava/lang/String;
    const/16 v16, 0x0

    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 7059
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    const/4 v4, 0x3

    .line 7060
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    .line 7061
    iget-object v0, v1, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_0

    iget-object v0, v1, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    :goto_0
    move-object v7, v0

    iget-object v8, v1, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v10, v0, [Landroid/content/Intent;

    const/4 v0, 0x0

    aput-object v2, v10, v0

    const/4 v11, 0x0

    const/4 v13, 0x0

    .line 7062
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getUserId()I

    move-result v14

    .line 7059
    move-object v5, v15

    move/from16 v9, p1

    move/from16 v12, p3

    invoke-interface/range {v3 .. v14}, Landroid/app/IActivityManager;->getIntentSenderWithFeature(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v0

    .line 7063
    .local v0, "target":Landroid/content/IIntentSender;
    if-eqz v0, :cond_1

    new-instance v3, Landroid/app/PendingIntent;

    invoke-direct {v3, v0}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v16, v3

    :cond_1
    return-object v16

    .line 7064
    .end local v0    # "target":Landroid/content/IIntentSender;
    :catch_0
    move-exception v0

    .line 7067
    return-object v16
.end method

.method public final whitelist dismissDialog(I)V
    .locals 2
    .param p1, "id"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5094
    iget-object v0, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 5098
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity$ManagedDialog;

    .line 5099
    .local v0, "md":Landroid/app/Activity$ManagedDialog;
    if-eqz v0, :cond_0

    .line 5102
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 5103
    return-void

    .line 5100
    :cond_0
    invoke-direct {p0, p1}, Landroid/app/Activity;->missingDialog(I)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 5095
    .end local v0    # "md":Landroid/app/Activity$ManagedDialog;
    :cond_1
    invoke-direct {p0, p1}, Landroid/app/Activity;->missingDialog(I)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public final whitelist dismissKeyboardShortcutsHelper()V
    .locals 4

    .line 2604
    nop

    .line 2605
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10403a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2604
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 2607
    .local v0, "sysuiComponent":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.intent.action.DISMISS_KEYBOARD_SHORTCUTS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2608
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2611
    invoke-virtual {p0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 2612
    const-string v2, "com.sec.android.dexsystemui"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2615
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2616
    return-void
.end method

.method greylist-max-r dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;)V
    .locals 4
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;
    .param p5, "reason"    # Ljava/lang/String;

    .line 8949
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->noteStateNotSaved()V

    .line 8950
    if-nez p1, :cond_0

    .line 8951
    invoke-virtual {p0, p2, p3, p4}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_1

    .line 8952
    :cond_0
    const-string v0, "@android:requestPermissions:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8953
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 8954
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8955
    invoke-direct {p0, p2, p4}, Landroid/app/Activity;->dispatchRequestPermissionsResult(ILandroid/content/Intent;)V

    goto :goto_1

    .line 8957
    :cond_1
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p1}, Landroid/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 8958
    .local v0, "frag":Landroid/app/Fragment;
    if-eqz v0, :cond_2

    .line 8959
    invoke-direct {p0, p2, p4, v0}, Landroid/app/Activity;->dispatchRequestPermissionsResultToFragment(ILandroid/content/Intent;Landroid/app/Fragment;)V

    .line 8961
    .end local v0    # "frag":Landroid/app/Fragment;
    :cond_2
    goto :goto_1

    .line 8962
    :cond_3
    const-string v0, "@android:view:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8963
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    .line 8964
    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    .line 8963
    invoke-virtual {v0, v1}, Landroid/view/WindowManagerGlobal;->getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;

    move-result-object v0

    .line 8965
    .local v0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    .line 8966
    .local v2, "viewRoot":Landroid/view/ViewRootImpl;
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 8967
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/view/View;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 8969
    return-void

    .line 8971
    .end local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_4
    goto :goto_0

    .line 8972
    .end local v0    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    :cond_5
    goto :goto_1

    :cond_6
    const-string v0, "@android:autoFillAuth:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 8973
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Landroid/view/autofill/AutofillClientController;->onDispatchActivityResult(IILandroid/content/Intent;)V

    goto :goto_1

    .line 8975
    :cond_7
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p1}, Landroid/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 8976
    .local v0, "frag":Landroid/app/Fragment;
    if-eqz v0, :cond_8

    .line 8977
    invoke-virtual {v0, p2, p3, p4}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 8981
    .end local v0    # "frag":Landroid/app/Fragment;
    :cond_8
    :goto_1
    iget v0, p0, Landroid/app/Activity;->mIdent:I

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p5}, Landroid/app/EventLogTags;->writeWmOnActivityResultCalled(ILjava/lang/String;Ljava/lang/String;)V

    .line 8983
    return-void
.end method

.method public greylist-max-o dispatchEnterAnimationComplete()V
    .locals 2

    .line 8046
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mEnterAnimationComplete:Z

    .line 8047
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->onEnterAnimationComplete()V

    .line 8048
    invoke-virtual {p0}, Landroid/app/Activity;->onEnterAnimationComplete()V

    .line 8049
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8050
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 8051
    .local v0, "decorView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->dispatchOnEnterAnimationComplete()V

    .line 8053
    .end local v0    # "decorView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public whitelist dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 4423
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 4424
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4425
    const/4 v0, 0x1

    return v0

    .line 4427
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 4331
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 4335
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 4336
    .local v0, "keyCode":I
    const/4 v1, 0x1

    const/16 v2, 0x52

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_0

    .line 4337
    invoke-virtual {v2, p1}, Landroid/app/ActionBar;->onMenuKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4338
    return v1

    .line 4341
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 4342
    .local v2, "win":Landroid/view/Window;
    invoke-virtual {v2, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4343
    return v1

    .line 4345
    :cond_1
    iget-object v1, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 4346
    .local v1, "decor":Landroid/view/View;
    if-nez v1, :cond_2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 4347
    :cond_2
    if-eqz v1, :cond_3

    .line 4348
    invoke-virtual {v1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 4347
    :goto_0
    invoke-virtual {p1, p0, v3, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method public whitelist dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 4361
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 4362
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4363
    const/4 v0, 0x1

    return v0

    .line 4365
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method greylist-max-o dispatchMovedToDisplay(ILandroid/content/res/Configuration;)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "config"    # Landroid/content/res/Configuration;

    .line 3065
    invoke-virtual {p0, p1}, Landroid/app/Activity;->updateDisplay(I)V

    .line 3066
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onMovedToDisplay(ILandroid/content/res/Configuration;)V

    .line 3067
    return-void
.end method

.method final greylist-max-o dispatchMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 3
    .param p1, "isInMultiWindowMode"    # Z
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 8880
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentController;->dispatchMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 8883
    iget-object v0, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    iput v0, p0, Landroid/app/Activity;->mWindowingMode:I

    .line 8884
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8885
    iget v0, p0, Landroid/app/Activity;->mWindowingMode:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 8886
    invoke-static {v0}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8888
    .local v0, "split":Z
    :goto_0
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/DecorView;

    iget v2, p0, Landroid/app/Activity;->mWindowingMode:I

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/policy/DecorView;->onWindowingModeChanged(IZ)V

    .line 8892
    .end local v0    # "split":Z
    :cond_1
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_2

    .line 8893
    invoke-virtual {v0}, Landroid/view/Window;->onMultiWindowModeChanged()V

    .line 8895
    :cond_2
    iput-boolean p1, p0, Landroid/app/Activity;->mIsInMultiWindowMode:Z

    .line 8896
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 8897
    return-void
.end method

.method final greylist-max-o dispatchPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 1
    .param p1, "isInPictureInPictureMode"    # Z
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 8904
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentController;->dispatchPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    .line 8905
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    .line 8906
    invoke-virtual {v0, p1}, Landroid/view/Window;->onPictureInPictureModeChanged(Z)V

    .line 8908
    :cond_0
    iput-boolean p1, p0, Landroid/app/Activity;->mIsInPictureInPictureMode:Z

    .line 8909
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    .line 8910
    return-void
.end method

.method public whitelist dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 4431
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 4432
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 4434
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 4435
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4437
    .local v1, "isFullScreen":Z
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFullScreen(Z)V

    .line 4439
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 4440
    .local v3, "title":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4441
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4444
    :cond_1
    return v2
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 4379
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 4380
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 4383
    :cond_0
    nop

    .line 4384
    invoke-direct {p0, p1}, Landroid/app/Activity;->interceptTouchEventForPopOver(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 4385
    return v1

    .line 4388
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4389
    return v1

    .line 4391
    :cond_2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 4405
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 4406
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4407
    const/4 v0, 0x1

    return v0

    .line 4409
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 7558
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dumpInner(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 7559
    return-void
.end method

.method greylist-max-o dumpInner(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 7656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7658
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Local Activity "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7659
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7660
    const-string v1, " State:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7661
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7662
    iget-boolean v1, p0, Landroid/app/Activity;->mResumed:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7663
    iget-boolean v1, p0, Landroid/app/Activity;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mFinished="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7664
    iget-boolean v1, p0, Landroid/app/Activity;->mFinished:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 7665
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mIsInMultiWindowMode="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7666
    iget-boolean v1, p0, Landroid/app/Activity;->mIsInMultiWindowMode:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 7667
    const-string v1, " mIsInPictureInPictureMode="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7668
    iget-boolean v1, p0, Landroid/app/Activity;->mIsInPictureInPictureMode:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 7669
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mChangingConfigurations="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7670
    iget-boolean v1, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 7671
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mCurrentConfig="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7672
    iget-object v1, p0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7674
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/app/FragmentController;->dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 7675
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1}, Landroid/app/FragmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/app/FragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 7676
    iget-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v1, :cond_0

    .line 7677
    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/app/VoiceInteractor;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 7682
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    instance-of v1, v1, Lcom/android/internal/policy/PhoneWindow;

    if-eqz v1, :cond_1

    .line 7683
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/policy/PhoneWindow;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 7688
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7689
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7690
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7691
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Landroid/view/ViewRootImpl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 7694
    :cond_2
    iget-object v1, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/util/PrintWriterPrinter;

    invoke-direct {v2, p3}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v1, v2, p1}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 7696
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Landroid/app/ResourcesManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 7698
    iget-object v1, p0, Landroid/app/Activity;->mDumpableContainer:Lcom/android/internal/util/dump/DumpableContainerImpl;

    if-eqz v1, :cond_3

    .line 7699
    invoke-virtual {v1, p1, p3, p4}, Lcom/android/internal/util/dump/DumpableContainerImpl;->dumpAllDumpables(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 7701
    :cond_3
    return-void
.end method

.method public blacklist dumpInternal(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 7589
    iget-object v0, p0, Landroid/app/Activity;->mAutofillClientController:Landroid/view/autofill/AutofillClientController;

    if-eqz v0, :cond_0

    .line 7590
    invoke-virtual {p0, v0}, Landroid/app/Activity;->addDumpable(Landroid/util/Dumpable;)Z

    .line 7592
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mUiTranslationController:Landroid/view/translation/UiTranslationController;

    if-eqz v0, :cond_1

    .line 7593
    invoke-virtual {p0, v0}, Landroid/app/Activity;->addDumpable(Landroid/util/Dumpable;)Z

    .line 7595
    :cond_1
    iget-object v0, p0, Landroid/app/Activity;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    if-eqz v0, :cond_2

    .line 7596
    invoke-virtual {v0, p0}, Landroid/view/contentcapture/ContentCaptureManager;->addDumpable(Landroid/app/Activity;)V

    .line 7599
    :cond_2
    const/4 v0, 0x1

    .line 7600
    .local v0, "dumpInternalState":Z
    const/4 v1, 0x0

    .line 7601
    .local v1, "arg":Ljava/lang/String;
    if-eqz p4, :cond_7

    array-length v2, p4

    if-lez v2, :cond_7

    .line 7602
    const/4 v2, 0x0

    aget-object v1, p4, v2

    .line 7603
    const/4 v3, 0x1

    .line 7605
    .local v3, "isSpecialCase":Z
    const/4 v4, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const-string v6, "--dump-dumpable"

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v5, :sswitch_data_0

    :cond_3
    goto :goto_0

    :sswitch_0
    const-string v5, "--autofill"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v4, v2

    goto :goto_0

    :sswitch_1
    const-string v5, "--contentcapture"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v4, v8

    goto :goto_0

    :sswitch_2
    const-string v5, "--list-dumpables"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v4, 0x3

    goto :goto_0

    :sswitch_3
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v4, 0x4

    goto :goto_0

    :sswitch_4
    const-string v5, "--translation"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v4, v7

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 7639
    const/4 v3, 0x0

    goto :goto_2

    .line 7626
    :pswitch_0
    array-length v4, p4

    if-ne v4, v8, :cond_4

    .line 7627
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7628
    const-string v2, " requires the dumpable name"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 7629
    :cond_4
    iget-object v4, p0, Landroid/app/Activity;->mDumpableContainer:Lcom/android/internal/util/dump/DumpableContainerImpl;

    if-nez v4, :cond_5

    .line 7630
    const-string/jumbo v2, "no dumpables"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 7633
    :cond_5
    array-length v4, p4

    sub-int/2addr v4, v7

    new-array v4, v4, [Ljava/lang/String;

    .line 7634
    .local v4, "prunedArgs":[Ljava/lang/String;
    array-length v5, v4

    invoke-static {p4, v7, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7635
    iget-object v2, p0, Landroid/app/Activity;->mDumpableContainer:Lcom/android/internal/util/dump/DumpableContainerImpl;

    aget-object v5, p4, v8

    invoke-virtual {v2, p1, p3, v5, v4}, Lcom/android/internal/util/dump/DumpableContainerImpl;->dumpOneDumpable(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 7637
    .end local v4    # "prunedArgs":[Ljava/lang/String;
    goto :goto_2

    .line 7619
    :pswitch_1
    iget-object v2, p0, Landroid/app/Activity;->mDumpableContainer:Lcom/android/internal/util/dump/DumpableContainerImpl;

    if-nez v2, :cond_6

    .line 7620
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "No dumpables"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 7622
    :cond_6
    invoke-virtual {v2, p1, p3}, Lcom/android/internal/util/dump/DumpableContainerImpl;->listDumpables(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 7624
    :goto_1
    return-void

    .line 7615
    :pswitch_2
    const-string v2, "UiTranslationController"

    invoke-direct {p0, p1, p3, v1, v2}, Landroid/app/Activity;->dumpLegacyDumpable(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 7617
    return-void

    .line 7611
    :pswitch_3
    const-string v2, "ContentCaptureManager"

    invoke-direct {p0, p1, p3, v1, v2}, Landroid/app/Activity;->dumpLegacyDumpable(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 7613
    return-void

    .line 7607
    :pswitch_4
    const-string v2, "AutofillManager"

    invoke-direct {p0, p1, p3, v1, v2}, Landroid/app/Activity;->dumpLegacyDumpable(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 7609
    return-void

    .line 7642
    :goto_2
    if-eqz v3, :cond_7

    .line 7643
    const-wide/32 v4, 0x8e56fa2

    invoke-static {v4, v5}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v2

    xor-int/2addr v2, v8

    move v0, v2

    .line 7647
    .end local v3    # "isSpecialCase":Z
    :cond_7
    if-eqz v0, :cond_8

    .line 7648
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_3

    .line 7650
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not calling dump() on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " because of special argument "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Activity"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7652
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2673d6ef -> :sswitch_4
        0x5fd0f67 -> :sswitch_3
        0x1c2b8816 -> :sswitch_2
        0x4519f64d -> :sswitch_1
        0x56b9c952 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist enterPictureInPictureMode()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2926
    new-instance v0, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {v0}, Landroid/app/PictureInPictureParams$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->enterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z

    .line 2927
    return-void
.end method

.method public whitelist enterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z
    .locals 2
    .param p1, "params"    # Landroid/app/PictureInPictureParams;

    .line 2953
    invoke-direct {p0}, Landroid/app/Activity;->deviceSupportsPictureInPictureMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2954
    const/4 v0, 0x0

    return v0

    .line 2956
    :cond_0
    if-eqz p1, :cond_2

    .line 2959
    iget-boolean v0, p0, Landroid/app/Activity;->mCanEnterPictureInPicture:Z

    if-eqz v0, :cond_1

    .line 2967
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->enterPictureInPictureMode(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Activity;->mIsInPictureInPictureMode:Z

    .line 2969
    return v0

    .line 2960
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity must be resumed to enter picture-in-picture"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2957
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected non-null picture-in-picture params"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 3528
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist finish()V
    .locals 1

    .line 6862
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/Activity;->finish(I)V

    .line 6863
    return-void
.end method

.method public whitelist finishActivity(I)V
    .locals 3
    .param p1, "requestCode"    # I

    .line 6929
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 6930
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/ActivityClient;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    goto :goto_0

    .line 6932
    :cond_0
    invoke-virtual {v0, p0, p1}, Landroid/app/Activity;->finishActivityFromChild(Landroid/app/Activity;I)V

    .line 6934
    :goto_0
    return-void
.end method

.method public whitelist finishActivityFromChild(Landroid/app/Activity;I)V
    .locals 3
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6947
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v2, p1, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p2}, Landroid/app/ActivityClient;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 6948
    return-void
.end method

.method public whitelist finishAffinity()V
    .locals 2

    .line 6880
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_2

    .line 6883
    iget v0, p0, Landroid/app/Activity;->mResultCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    if-nez v0, :cond_1

    .line 6886
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->finishActivityAffinity(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6887
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mFinished:Z

    .line 6889
    :cond_0
    return-void

    .line 6884
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not be called to deliver a result"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6881
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not be called from an embedded activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist finishAfterTransition()V
    .locals 1

    .line 6914
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p0}, Landroid/app/ActivityTransitionState;->startExitBackTransition(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6915
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 6917
    :cond_0
    return-void
.end method

.method public whitelist finishAndRemoveTask()V
    .locals 1

    .line 6955
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/Activity;->finish(I)V

    .line 6956
    return-void
.end method

.method public whitelist finishFromChild(Landroid/app/Activity;)V
    .locals 0
    .param p1, "child"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6903
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 6904
    return-void
.end method

.method public whitelist getActionBar()Landroid/app/ActionBar;
    .locals 1

    .line 3562
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 3563
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method public final blacklist getActivityInfo()Landroid/content/pm/ActivityInfo;
    .locals 1

    .line 8566
    iget-object v0, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method greylist getActivityOptions()Landroid/app/ActivityOptions;
    .locals 2

    .line 7923
    iget-object v0, p0, Landroid/app/Activity;->mPendingOptions:Landroid/app/ActivityOptions;

    .line 7925
    .local v0, "options":Landroid/app/ActivityOptions;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Activity;->mPendingOptions:Landroid/app/ActivityOptions;

    .line 7926
    return-object v0
.end method

.method public final greylist-max-o getActivityThread()Landroid/app/ActivityThread;
    .locals 1

    .line 8561
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    return-object v0
.end method

.method public final greylist getActivityToken()Landroid/os/IBinder;
    .locals 1

    .line 8545
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    :goto_0
    return-object v0
.end method

.method public final whitelist getApplication()Landroid/app/Application;
    .locals 1

    .line 1157
    iget-object v0, p0, Landroid/app/Activity;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public final blacklist getAssistToken()Landroid/os/IBinder;
    .locals 1

    .line 8550
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getAssistToken()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mAssistToken:Landroid/os/IBinder;

    :goto_0
    return-object v0
.end method

.method public final greylist-max-o getAutofillClient()Landroid/view/autofill/AutofillManager$AutofillClient;
    .locals 1

    .line 1317
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCallingActivity()Landroid/content/ComponentName;
    .locals 2

    .line 6711
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCallingPackage()Ljava/lang/String;
    .locals 2

    .line 6692
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getChangingConfigurations()I
    .locals 1

    .line 3165
    iget v0, p0, Landroid/app/Activity;->mConfigChangeFlags:I

    return v0
.end method

.method public whitelist getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 7170
    iget-object v0, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public final blacklist getContentCaptureClient()Landroid/view/contentcapture/ContentCaptureManager$ContentCaptureClient;
    .locals 0

    .line 1330
    return-object p0
.end method

.method public whitelist getContentScene()Landroid/transition/Scene;
    .locals 1

    .line 3748
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getContentScene()Landroid/transition/Scene;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getContentTransitionManager()Landroid/transition/TransitionManager;
    .locals 1

    .line 3726
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getTransitionManager()Landroid/transition/TransitionManager;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist getCurrentConfig()Landroid/content/res/Configuration;
    .locals 1

    .line 9541
    iget-object v0, p0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public whitelist getCurrentFocus()Landroid/view/View;
    .locals 1

    .line 1208
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method blacklist getDexTaskDocking()I
    .locals 1

    .line 9512
    iget v0, p0, Landroid/app/Activity;->mDexTaskDocking:I

    return v0
.end method

.method public whitelist getFragmentManager()Landroid/app/FragmentManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3341
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method blacklist getFreeformTaskPinning()I
    .locals 1

    .line 9482
    iget v0, p0, Landroid/app/Activity;->mFreeformTaskPinning:I

    return v0
.end method

.method blacklist getFreeformTaskStashing()I
    .locals 1

    .line 9497
    iget v0, p0, Landroid/app/Activity;->mFreeformTaskStashing:I

    return v0
.end method

.method public whitelist getIntent()Landroid/content/Intent;
    .locals 1

    .line 1101
    iget-object v0, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method greylist-max-o getLastNonConfigurationChildInstances()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3269
    iget-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    if-eqz v0, :cond_0

    .line 3270
    iget-object v0, v0, Landroid/app/Activity$NonConfigurationInstances;->children:Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3269
    :goto_0
    return-object v0
.end method

.method public whitelist getLastNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .line 3190
    iget-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    if-eqz v0, :cond_0

    .line 3191
    iget-object v0, v0, Landroid/app/Activity$NonConfigurationInstances;->activity:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3190
    :goto_0
    return-object v0
.end method

.method public blacklist getLaunchedFromPackage()Ljava/lang/String;
    .locals 2

    .line 6728
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLaunchedFromUid()I
    .locals 2

    .line 6719
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method public whitelist getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 5323
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLoaderManager()Landroid/app/LoaderManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1194
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLocalClassName()Ljava/lang/String;
    .locals 5

    .line 7154
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 7155
    .local v0, "pkg":Ljava/lang/String;
    iget-object v1, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 7156
    .local v1, "cls":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 7157
    .local v2, "packageLen":I
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v2, :cond_1

    .line 7158
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 7161
    :cond_0
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 7159
    :cond_1
    :goto_0
    return-object v1
.end method

.method public whitelist getMaxNumPictureInPictureActions()I
    .locals 1

    .line 2995
    invoke-static {p0}, Landroid/app/ActivityTaskManager;->getMaxNumPictureInPictureActions(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public final whitelist getMediaController()Landroid/media/session/MediaController;
    .locals 1

    .line 7480
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getMediaController()Landroid/media/session/MediaController;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 5332
    iget-object v0, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_1

    .line 5333
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 5334
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 5335
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    goto :goto_0

    .line 5337
    :cond_0
    new-instance v0, Landroid/view/MenuInflater;

    invoke-direct {v0, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    .line 5340
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    return-object v0
.end method

.method public greylist-max-o getNextAutofillId()I
    .locals 1

    .line 2135
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillClientController;->getNextAutofillId()I

    move-result v0

    return v0
.end method

.method public whitelist getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;
    .locals 2

    .line 9450
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    .line 9454
    invoke-virtual {v0}, Landroid/view/Window;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    return-object v0

    .line 9451
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OnBackInvokedDispatcher are not available on non-visual activities"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist getParent()Landroid/app/Activity;
    .locals 1

    .line 1167
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    return-object v0
.end method

.method public whitelist getParentActivityIntent()Landroid/content/Intent;
    .locals 6

    .line 8332
    iget-object v0, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 8333
    .local v0, "parentName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 8334
    return-object v2

    .line 8338
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 8340
    .local v1, "target":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 8341
    .local v3, "parentInfo":Landroid/content/pm/ActivityInfo;
    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 8342
    .local v4, "parentActivity":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 8343
    invoke-static {v1}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_0

    .line 8344
    :cond_1
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v5, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    nop

    .line 8345
    .local v2, "parentIntent":Landroid/content/Intent;
    return-object v2

    .line 8346
    .end local v2    # "parentIntent":Landroid/content/Intent;
    .end local v3    # "parentInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "parentActivity":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 8347
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getParentActivityIntent: bad parentActivityName \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' in manifest"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Activity"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8349
    return-object v2
.end method

.method public whitelist getPreferences(I)Landroid/content/SharedPreferences;
    .locals 1
    .param p1, "mode"    # I

    .line 7192
    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getReferrer()Landroid/net/Uri;
    .locals 5

    .line 6628
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    const-string v1, "android-app"

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    const-string v2, "com.samsung.speg"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6630
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6631
    .local v0, "launcher":Landroid/content/Intent;
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 6632
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    .line 6633
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 6634
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const-string v3, "SPEG"

    const-string v4, "Pretend to be the default launcher"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6635
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v3, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 6636
    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 6635
    return-object v1

    .line 6638
    .end local v0    # "launcher":Landroid/content/Intent;
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 6639
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_3

    .line 6641
    :try_start_0
    const-string v2, "android.intent.extra.REFERRER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 6642
    .local v2, "referrer":Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 6643
    return-object v2

    .line 6645
    :cond_1
    const-string v3, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6646
    .local v3, "referrerName":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 6647
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 6652
    .end local v2    # "referrer":Landroid/net/Uri;
    .end local v3    # "referrerName":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 6649
    :catch_0
    move-exception v2

    .line 6650
    .local v2, "e":Landroid/os/BadParcelableException;
    const-string v3, "Activity"

    const-string v4, "Cannot read referrer from intent; intent extras contain unknown custom Parcelable objects"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6654
    .end local v2    # "e":Landroid/os/BadParcelableException;
    :cond_3
    :goto_0
    iget-object v2, p0, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 6655
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 6657
    :cond_4
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getRequestedOrientation()I
    .locals 2

    .line 7104
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 7105
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->getRequestedOrientation(Landroid/os/IBinder;)I

    move-result v0

    return v0

    .line 7107
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    return v0
.end method

.method public final whitelist getSearchEvent()Landroid/view/SearchEvent;
    .locals 1

    .line 5201
    iget-object v0, p0, Landroid/app/Activity;->mSearchEvent:Landroid/view/SearchEvent;

    return-object v0
.end method

.method public final blacklist getShareableActivityToken()Landroid/os/IBinder;
    .locals 1

    .line 8555
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getShareableActivityToken()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mShareableActivityToken:Landroid/os/IBinder;

    :goto_0
    return-object v0
.end method

.method public final whitelist getSplashScreen()Landroid/window/SplashScreen;
    .locals 1

    .line 1722
    invoke-direct {p0}, Landroid/app/Activity;->getOrCreateSplashScreen()Landroid/window/SplashScreen;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 7228
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7233
    const-string/jumbo v0, "window"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7234
    iget-object v0, p0, Landroid/app/Activity;->mWindowManager:Landroid/view/WindowManager;

    return-object v0

    .line 7235
    :cond_0
    const-string/jumbo v0, "search"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7236
    invoke-direct {p0}, Landroid/app/Activity;->ensureSearchManager()V

    .line 7237
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    return-object v0

    .line 7239
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 7229
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "System services not available to Activities before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTaskId()I
    .locals 3

    .line 7118
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityClient;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v0

    return v0
.end method

.method public final whitelist getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 7284
    iget-object v0, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final whitelist getTitleColor()I
    .locals 1

    .line 7288
    iget v0, p0, Landroid/app/Activity;->mTitleColor:I

    return v0
.end method

.method public whitelist getVoiceInteractor()Landroid/app/VoiceInteractor;
    .locals 1

    .line 2168
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    return-object v0
.end method

.method public final whitelist getVolumeControlStream()I
    .locals 1

    .line 7447
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getVolumeControlStream()I

    move-result v0

    return v0
.end method

.method public whitelist getWindow()Landroid/view/Window;
    .locals 1

    .line 1184
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method public whitelist getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .line 1172
    iget-object v0, p0, Landroid/app/Activity;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method blacklist getWindowingMode()I
    .locals 1

    .line 9460
    iget v0, p0, Landroid/app/Activity;->mWindowingMode:I

    return v0
.end method

.method public whitelist hasWindowFocus()Z
    .locals 3

    .line 4298
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 4299
    .local v0, "w":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 4300
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 4301
    .local v1, "d":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 4302
    invoke-virtual {v1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    return v2

    .line 4305
    .end local v1    # "d":Landroid/view/View;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist invalidateOptionsMenu()V
    .locals 2

    .line 4595
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 4596
    invoke-virtual {v0}, Landroid/app/ActionBar;->invalidateOptionsMenu()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4597
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->invalidatePanelMenu(I)V

    .line 4599
    :cond_1
    return-void
.end method

.method public whitelist isActivityTransitionRunning()Z
    .locals 1

    .line 5652
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0}, Landroid/app/ActivityTransitionState;->isTransitionRunning()Z

    move-result v0

    return v0
.end method

.method public whitelist isBackgroundVisibleBehind()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8010
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isChangingConfigurations()Z
    .locals 1

    .line 6793
    iget-boolean v0, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    return v0
.end method

.method public final whitelist isChild()Z
    .locals 1

    .line 1162
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isDestroyed()Z
    .locals 1

    .line 6780
    iget-boolean v0, p0, Landroid/app/Activity;->mDestroyed:Z

    return v0
.end method

.method public whitelist isFinishing()Z
    .locals 1

    .line 6772
    iget-boolean v0, p0, Landroid/app/Activity;->mFinished:Z

    return v0
.end method

.method public whitelist isImmersive()Z
    .locals 2

    .line 7721
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->isImmersive(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public whitelist isInMultiWindowMode()Z
    .locals 1

    .line 2847
    iget-boolean v0, p0, Landroid/app/Activity;->mIsInMultiWindowMode:Z

    return v0
.end method

.method public whitelist isInPictureInPictureMode()Z
    .locals 1

    .line 2913
    iget-boolean v0, p0, Landroid/app/Activity;->mIsInPictureInPictureMode:Z

    return v0
.end method

.method public whitelist isLaunchedFromBubble()Z
    .locals 1

    .line 7211
    iget-boolean v0, p0, Landroid/app/Activity;->mLaunchedFromBubble:Z

    return v0
.end method

.method public whitelist isLocalVoiceInteractionSupported()Z
    .locals 1

    .line 2180
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->supportsLocalVoiceInteraction()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2181
    :catch_0
    move-exception v0

    .line 2183
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o isOverlayWithDecorCaptionEnabled()Z
    .locals 1

    .line 9049
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->isOverlayWithDecorCaptionEnabled()Z

    move-result v0

    return v0
.end method

.method public final greylist isResumed()Z
    .locals 1

    .line 8917
    iget-boolean v0, p0, Landroid/app/Activity;->mResumed:Z

    return v0
.end method

.method public whitelist isTaskRoot()Z
    .locals 1

    .line 7128
    iget-object v0, p0, Landroid/app/Activity;->mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

    invoke-interface {v0}, Landroid/view/Window$WindowControllerCallback;->isTaskRoot()Z

    move-result v0

    return v0
.end method

.method final greylist-max-o isTopOfTask()Z
    .locals 2

    .line 7732
    iget-object v0, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-nez v0, :cond_0

    goto :goto_0

    .line 7735
    :cond_0
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->isTopOfTask(Landroid/os/IBinder;)Z

    move-result v0

    return v0

    .line 7733
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist isVisibleForAutofill()Z
    .locals 1

    .line 9141
    iget-boolean v0, p0, Landroid/app/Activity;->mStopped:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist isVoiceInteraction()Z
    .locals 1

    .line 2144
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isVoiceInteractionRoot()Z
    .locals 2

    .line 2159
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v0, :cond_0

    .line 2160
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->isRootVoiceInteraction(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2159
    :goto_0
    return v0
.end method

.method greylist-max-o makeVisible()V
    .locals 3

    .line 6752
    iget-boolean v0, p0, Landroid/app/Activity;->mWindowAdded:Z

    if-nez v0, :cond_0

    .line 6753
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 6754
    .local v0, "wm":Landroid/view/ViewManager;
    iget-object v1, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6755
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Activity;->mWindowAdded:Z

    .line 6757
    .end local v0    # "wm":Landroid/view/ViewManager;
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6758
    return-void
.end method

.method public final greylist-max-r managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3390
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3391
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 3392
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 3394
    :cond_0
    return-object v0
.end method

.method public final whitelist managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3430
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3431
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 3432
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 3434
    :cond_0
    return-object v0
.end method

.method public whitelist moveTaskToBack(Z)Z
    .locals 2
    .param p1, "nonRoot"    # Z

    .line 7143
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist navigateUpTo(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "upIntent"    # Landroid/content/Intent;

    .line 8274
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_3

    .line 8275
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 8276
    .local v0, "destInfo":Landroid/content/ComponentName;
    if-nez v0, :cond_1

    .line 8277
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 8278
    if-nez v0, :cond_0

    .line 8279
    const/4 v1, 0x0

    return v1

    .line 8281
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object p1, v1

    .line 8282
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object v2, v0

    goto :goto_0

    .line 8276
    :cond_1
    move-object v1, p1

    move-object v2, v0

    .line 8286
    .end local v0    # "destInfo":Landroid/content/ComponentName;
    .end local p1    # "upIntent":Landroid/content/Intent;
    .local v1, "upIntent":Landroid/content/Intent;
    .local v2, "destInfo":Landroid/content/ComponentName;
    :goto_0
    monitor-enter p0

    .line 8287
    :try_start_0
    iget p1, p0, Landroid/app/Activity;->mResultCode:I

    .line 8288
    .local p1, "resultCode":I
    iget-object v0, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    .line 8289
    .local v0, "resultData":Landroid/content/Intent;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8290
    if-eqz v0, :cond_2

    .line 8291
    invoke-virtual {v0, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 8293
    :cond_2
    invoke-virtual {v1, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 8294
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v1, p1, v0}, Landroid/app/ActivityClient;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z

    move-result v3

    return v3

    .line 8289
    .end local v0    # "resultData":Landroid/content/Intent;
    .end local p1    # "resultCode":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 8297
    .end local v1    # "upIntent":Landroid/content/Intent;
    .end local v2    # "destInfo":Landroid/content/ComponentName;
    .local p1, "upIntent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {v0, p0, p1}, Landroid/app/Activity;->navigateUpToFromChild(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public whitelist navigateUpToFromChild(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "upIntent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8316
    invoke-virtual {p0, p2}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 8219
    return-void
.end method

.method public whitelist onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 8208
    return-void
.end method

.method public whitelist onActivityReenter(ILandroid/content/Intent;)V
    .locals 0
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .line 7025
    return-void
.end method

.method protected whitelist onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 7004
    return-void
.end method

.method protected whitelist onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 11
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .line 5352
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5353
    invoke-super {p0, p1, p2, p3}, Landroid/view/ContextThemeWrapper;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    goto :goto_1

    .line 5356
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5359
    goto :goto_0

    .line 5357
    :catch_0
    move-exception v0

    .line 5360
    :goto_0
    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 5364
    :goto_1
    sget-object v0, Lcom/android/internal/R$styleable;->ActivityTaskDescription:[I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 5366
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v2, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v2

    const/16 v3, 0xff

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 5367
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 5369
    .local v2, "colorPrimary":I
    if-eqz v2, :cond_1

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    if-ne v5, v3, :cond_1

    .line 5370
    iget-object v5, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5, v2}, Landroid/app/ActivityManager$TaskDescription;->setPrimaryColor(I)V

    .line 5374
    .end local v2    # "colorPrimary":I
    :cond_1
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 5376
    .local v2, "colorBackground":I
    if-eqz v2, :cond_2

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    if-ne v5, v3, :cond_2

    .line 5377
    iget-object v5, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5, v2}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColor(I)V

    .line 5380
    :cond_2
    const/4 v5, 0x4

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 5383
    .local v5, "colorBackgroundFloating":I
    if-eqz v5, :cond_3

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    if-ne v6, v3, :cond_3

    .line 5384
    iget-object v3, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v3, v5}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColorFloating(I)V

    .line 5387
    :cond_3
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 5389
    .local v3, "statusBarColor":I
    if-eqz v3, :cond_4

    .line 5390
    iget-object v6, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v6, v3}, Landroid/app/ActivityManager$TaskDescription;->setStatusBarColor(I)V

    .line 5393
    :cond_4
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 5395
    .local v6, "navigationBarColor":I
    if-eqz v6, :cond_5

    .line 5396
    iget-object v7, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v7, v6}, Landroid/app/ActivityManager$TaskDescription;->setNavigationBarColor(I)V

    .line 5399
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 5400
    .local v7, "targetSdk":I
    const/16 v8, 0x1d

    if-ge v7, v8, :cond_6

    move v8, v4

    goto :goto_2

    :cond_6
    move v8, v1

    .line 5401
    .local v8, "targetPreQ":Z
    :goto_2
    if-nez v8, :cond_7

    .line 5402
    iget-object v9, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    const/4 v10, 0x5

    invoke-virtual {v0, v10, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v9, v1}, Landroid/app/ActivityManager$TaskDescription;->setEnsureStatusBarContrastWhenTransparent(Z)V

    .line 5405
    iget-object v1, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    const/4 v9, 0x6

    invoke-virtual {v0, v9, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/app/ActivityManager$TaskDescription;->setEnsureNavigationBarContrastWhenTransparent(Z)V

    .line 5411
    :cond_7
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 5412
    iget-object v1, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 5413
    return-void
.end method

.method public whitelist onAttachFragment(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3354
    return-void
.end method

.method public whitelist onAttachedToWindow()V
    .locals 0

    .line 4277
    return-void
.end method

.method public whitelist onBackPressed()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4073
    const-string v0, "Activity"

    const-string/jumbo v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4077
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActionBar;->collapseActionView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4078
    return-void

    .line 4081
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 4083
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->isStateSaved()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4084
    return-void

    .line 4086
    :cond_1
    invoke-direct {p0}, Landroid/app/Activity;->navigateBack()V

    .line 4087
    return-void
.end method

.method public whitelist onBackgroundVisibleBehindChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8032
    return-void
.end method

.method protected whitelist onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "childActivity"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .line 7307
    return-void
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 3113
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 3117
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 3119
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->isPopOverWithoutOutlineEffect()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3120
    .local v0, "isPopOver":Z
    :goto_0
    iget-boolean v1, p0, Landroid/app/Activity;->mIsPopOver:Z

    if-eq v1, v0, :cond_1

    .line 3121
    iput-boolean v0, p0, Landroid/app/Activity;->mIsPopOver:Z

    .line 3122
    iput-boolean v2, p0, Landroid/app/Activity;->mInOutsideTouch:Z

    .line 3123
    iget-boolean v1, p0, Landroid/app/Activity;->mInOutsideLongPress:Z

    if-eqz v1, :cond_1

    .line 3124
    iput-boolean v2, p0, Landroid/app/Activity;->mInOutsideLongPress:Z

    .line 3125
    invoke-direct {p0}, Landroid/app/Activity;->clearTransparentPopOver()V

    .line 3131
    .end local v0    # "isPopOver":Z
    :cond_1
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p1}, Landroid/app/FragmentController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3133
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_2

    .line 3135
    invoke-virtual {v0, p1}, Landroid/view/Window;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3138
    :cond_2
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_3

    .line 3141
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3144
    :cond_3
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityConfigurationChanged()V

    .line 3145
    iget-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    if-eqz v0, :cond_4

    .line 3146
    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3148
    :cond_4
    return-void
.end method

.method public whitelist onContentChanged()V
    .locals 0

    .line 4224
    return-void
.end method

.method public whitelist onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 4906
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 4907
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 4909
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onContextMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .line 4920
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 4921
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 4923
    :cond_0
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1682
    iget-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    if-eqz v0, :cond_0

    .line 1683
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    iget-object v0, v0, Landroid/app/Activity$NonConfigurationInstances;->loaders:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/app/FragmentController;->restoreLoaderNonConfig(Landroid/util/ArrayMap;)V

    .line 1685
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1686
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_1

    .line 1687
    iput-boolean v1, p0, Landroid/app/Activity;->mEnableDefaultActionBarUp:Z

    goto :goto_0

    .line 1689
    :cond_1
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    .line 1693
    :cond_2
    :goto_0
    if-eqz p1, :cond_4

    .line 1694
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/autofill/AutofillClientController;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1696
    const-string v0, "android:fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1697
    .local v0, "p":Landroid/os/Parcelable;
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    iget-object v3, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    if-eqz v3, :cond_3

    .line 1698
    iget-object v3, v3, Landroid/app/Activity$NonConfigurationInstances;->fragments:Landroid/app/FragmentManagerNonConfig;

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 1697
    :goto_1
    invoke-virtual {v2, v0, v3}, Landroid/app/FragmentController;->restoreAllState(Landroid/os/Parcelable;Landroid/app/FragmentManagerNonConfig;)V

    .line 1700
    .end local v0    # "p":Landroid/os/Parcelable;
    :cond_4
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchCreate()V

    .line 1701
    invoke-direct {p0, p1}, Landroid/app/Activity;->dispatchActivityCreated(Landroid/os/Bundle;)V

    .line 1702
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v0, :cond_5

    .line 1703
    invoke-virtual {v0, p0}, Landroid/app/VoiceInteractor;->attachActivity(Landroid/app/Activity;)V

    .line 1705
    :cond_5
    if-eqz p1, :cond_6

    move v0, v1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Landroid/app/Activity;->mRestoredFromBundle:Z

    .line 1706
    iput-boolean v1, p0, Landroid/app/Activity;->mCalled:Z

    .line 1708
    nop

    .line 1709
    invoke-static {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 1710
    .local v0, "aheadOfTimeBack":Z
    if-eqz v0, :cond_7

    .line 1712
    new-instance v1, Landroid/app/Activity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/app/Activity$$ExternalSyntheticLambda1;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Landroid/app/Activity;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    .line 1713
    invoke-virtual {p0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    invoke-interface {v1, v2}, Landroid/window/OnBackInvokedDispatcher;->registerSystemOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 1715
    :cond_7
    return-void
.end method

.method public whitelist onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    .line 1756
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1757
    return-void
.end method

.method public whitelist onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .line 4841
    return-void
.end method

.method public whitelist onCreateDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 2492
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4930
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4969
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onCreateNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V
    .locals 0
    .param p1, "builder"    # Landroid/app/TaskStackBuilder;

    .line 4774
    invoke-virtual {p1, p0}, Landroid/app/TaskStackBuilder;->addParentStack(Landroid/app/Activity;)Landroid/app/TaskStackBuilder;

    .line 4775
    return-void
.end method

.method public whitelist onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .line 4630
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 4631
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 4633
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 4468
    if-nez p1, :cond_0

    .line 4469
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 4470
    .local v0, "show":Z
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/app/FragmentController;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 4471
    return v0

    .line 4473
    .end local v0    # "show":Z
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .param p1, "featureId"    # I

    .line 4456
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z
    .locals 1
    .param p1, "outBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2471
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .line 7528
    const-string v0, "fragment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7529
    invoke-virtual {p0, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 7532
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/FragmentController;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 7512
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist onDestroy()V
    .locals 6

    .line 2718
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 2720
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillClientController;->onActivityDestroyed()V

    .line 2723
    iget-object v0, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2724
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2725
    .local v0, "numDialogs":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2726
    iget-object v3, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity$ManagedDialog;

    .line 2727
    .local v3, "md":Landroid/app/Activity$ManagedDialog;
    iget-object v4, v3, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2728
    iget-object v4, v3, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 2725
    .end local v3    # "md":Landroid/app/Activity$ManagedDialog;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2731
    .end local v2    # "i":I
    :cond_1
    iput-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    .line 2735
    .end local v0    # "numDialogs":I
    :cond_2
    iget-object v0, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2736
    :try_start_0
    iget-object v2, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2737
    .local v2, "numCursors":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_4

    .line 2738
    iget-object v4, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity$ManagedCursor;

    .line 2739
    .local v4, "c":Landroid/app/Activity$ManagedCursor;
    if-eqz v4, :cond_3

    .line 2740
    invoke-static {v4}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fgetmCursor(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 2737
    .end local v4    # "c":Landroid/app/Activity$ManagedCursor;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2743
    .end local v3    # "i":I
    :cond_4
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2744
    .end local v2    # "numCursors":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2747
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    if-eqz v0, :cond_5

    .line 2748
    invoke-virtual {v0}, Landroid/app/SearchManager;->stopSearch()V

    .line 2751
    :cond_5
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_6

    .line 2752
    invoke-virtual {v0}, Landroid/app/ActionBar;->onDestroy()V

    .line 2755
    :cond_6
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityDestroyed()V

    .line 2757
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/app/Activity;->notifyContentCaptureManagerIfNeeded(I)V

    .line 2759
    iget-object v0, p0, Landroid/app/Activity;->mUiTranslationController:Landroid/view/translation/UiTranslationController;

    if-eqz v0, :cond_7

    .line 2760
    invoke-virtual {v0}, Landroid/view/translation/UiTranslationController;->onActivityDestroyed()V

    .line 2762
    :cond_7
    iget-object v0, p0, Landroid/app/Activity;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    if-eqz v0, :cond_8

    .line 2763
    invoke-virtual {p0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v2, p0, Landroid/app/Activity;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    invoke-interface {v0, v2}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 2764
    iput-object v1, p0, Landroid/app/Activity;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    .line 2766
    :cond_8
    iget-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    if-eqz v0, :cond_9

    .line 2767
    invoke-virtual {v0}, Landroid/content/ComponentCallbacksController;->clearCallbacks()V

    .line 2769
    :cond_9
    return-void

    .line 2744
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist onDetachedFromWindow()V
    .locals 0

    .line 4287
    return-void
.end method

.method blacklist onDexTaskDockingChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .line 9517
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_DEBUG_LEVEL_MID:Z

    if-eqz v0, :cond_1

    .line 9518
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDexTaskDockingChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9519
    invoke-static {p1}, Landroid/app/WindowConfiguration;->dexTaskDockingStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   mDecor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9518
    const-string v1, "Activity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9522
    :cond_1
    iget-object v0, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 9523
    check-cast v0, Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->onDexTaskDockingChanged(I)V

    .line 9525
    :cond_2
    iput p1, p0, Landroid/app/Activity;->mDexTaskDocking:I

    .line 9526
    return-void
.end method

.method public whitelist onEnterAnimationComplete()V
    .locals 0

    .line 8040
    return-void
.end method

.method blacklist onFlexPanelModeChanged(Z)V
    .locals 1
    .param p1, "flexPanelMode"    # Z

    .line 9613
    iput-boolean p1, p0, Landroid/app/Activity;->mIsFlexPanelMode:Z

    .line 9614
    iget-object v0, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 9615
    check-cast v0, Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->onFlexPanelModeChanged(Z)V

    .line 9617
    :cond_0
    return-void
.end method

.method blacklist onFreeformStashingChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .line 9502
    iget-object v0, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 9503
    check-cast v0, Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->onFreeformStashingChanged(I)V

    .line 9505
    :cond_0
    iput p1, p0, Landroid/app/Activity;->mFreeformTaskStashing:I

    .line 9506
    return-void
.end method

.method blacklist onFreeformTaskPinningChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .line 9487
    iget-object v0, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 9488
    check-cast v0, Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->onFreeformTaskPinningChanged(I)V

    .line 9490
    :cond_0
    iput p1, p0, Landroid/app/Activity;->mFreeformTaskPinning:I

    .line 9491
    return-void
.end method

.method public whitelist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 4183
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onGetDirectActions(Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .locals 1
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/app/DirectAction;",
            ">;>;)V"
        }
    .end annotation

    .line 2560
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/app/DirectAction;>;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2561
    return-void
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 3882
    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 3883
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 3887
    const-string v1, "Activity"

    const-string/jumbo v2, "onKeyDown(KEYCODE_BACK)"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3890
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    goto :goto_0

    .line 3892
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 3894
    :goto_0
    return v0

    .line 3897
    :cond_1
    iget v1, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 3898
    return v2

    .line 3899
    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 3900
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 3901
    .local v1, "w":Landroid/view/Window;
    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3902
    invoke-virtual {v1, v2, p1, p2, v3}, Landroid/view/Window;->performPanelShortcut(IILandroid/view/KeyEvent;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3904
    return v0

    .line 3906
    :cond_3
    return v2

    .line 3907
    .end local v1    # "w":Landroid/view/Window;
    :cond_4
    const/16 v1, 0x3d

    if-ne p1, v1, :cond_5

    .line 3910
    return v2

    .line 3913
    :cond_5
    const/4 v1, 0x0

    .line 3915
    .local v1, "clearSpannable":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_1

    .line 3919
    :cond_6
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 3921
    .local v3, "handled":Z
    if-eqz v3, :cond_8

    iget-object v4, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_8

    .line 3924
    iget-object v4, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3925
    .local v4, "str":Ljava/lang/String;
    const/4 v1, 0x1

    .line 3927
    iget v6, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 3937
    :pswitch_1
    invoke-virtual {p0, v4, v2, v5, v0}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_2

    .line 3934
    :pswitch_2
    invoke-virtual {p0, v4, v2, v5, v2}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 3935
    goto :goto_2

    .line 3929
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "android.intent.action.DIAL"

    invoke-direct {v0, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3930
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3931
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 3932
    goto :goto_2

    .line 3916
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v3    # "handled":Z
    .end local v4    # "str":Ljava/lang/String;
    :cond_7
    :goto_1
    const/4 v1, 0x1

    .line 3917
    const/4 v3, 0x0

    .line 3942
    .restart local v3    # "handled":Z
    :cond_8
    :goto_2
    if-eqz v1, :cond_9

    .line 3943
    iget-object v0, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 3944
    iget-object v0, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 3945
    iget-object v0, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-static {v0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 3947
    :cond_9
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 3962
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 4008
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 4116
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 4117
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/app/ActionBar;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 3981
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 3982
    .local v0, "sdkVersion":I
    const/4 v1, 0x0

    const/4 v2, 0x5

    if-lt v0, v2, :cond_2

    .line 3984
    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne p1, v3, :cond_1

    .line 3985
    iget-object v4, p0, Landroid/app/Activity;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    .line 3986
    .local v4, "hasCallback":Z
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onKeyUp(KEYCODE_BACK) isTracking()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isCanceled()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3987
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " hasCallback="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3986
    const-string v6, "Activity"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3990
    .end local v4    # "hasCallback":Z
    :cond_1
    if-ne p1, v3, :cond_2

    .line 3991
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3992
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/app/Activity;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    if-nez v3, :cond_2

    .line 3995
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 3996
    return v2

    .line 3999
    :cond_2
    return v1
.end method

.method public whitelist onLocalVoiceInteractionStarted()V
    .locals 0

    .line 2202
    return-void
.end method

.method public whitelist onLocalVoiceInteractionStopped()V
    .locals 0

    .line 2211
    return-void
.end method

.method public whitelist onLowMemory()V
    .locals 1

    .line 3317
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 3318
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchLowMemory()V

    .line 3319
    iget-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    if-eqz v0, :cond_0

    .line 3320
    invoke-virtual {v0}, Landroid/content/ComponentCallbacksController;->dispatchLowMemory()V

    .line 3322
    :cond_0
    return-void
.end method

.method public whitelist onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 6
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 4522
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    .line 4524
    .local v0, "titleCondensed":Ljava/lang/CharSequence;
    const/4 v1, 0x2

    const v2, 0xc350

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 4558
    return v3

    .line 4549
    :sswitch_0
    if-eqz v0, :cond_0

    .line 4550
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4552
    :cond_0
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4553
    return v4

    .line 4555
    :cond_1
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1, p2}, Landroid/app/FragmentController;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 4529
    :sswitch_1
    if-eqz v0, :cond_2

    .line 4530
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4532
    :cond_2
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4533
    return v4

    .line 4535
    :cond_3
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1, p2}, Landroid/app/FragmentController;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4536
    return v4

    .line 4538
    :cond_4
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_6

    .line 4539
    invoke-virtual {v1}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    .line 4540
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v1, :cond_5

    .line 4541
    invoke-virtual {p0}, Landroid/app/Activity;->onNavigateUp()Z

    move-result v1

    return v1

    .line 4543
    :cond_5
    invoke-virtual {v1, p0}, Landroid/app/Activity;->onNavigateUpFromChild(Landroid/app/Activity;)Z

    move-result v1

    return v1

    .line 4546
    :cond_6
    return v3

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist onMenuOpened(ILandroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 4501
    const/4 v0, 0x1

    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    .line 4502
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 4503
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    .line 4504
    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    goto :goto_0

    .line 4506
    :cond_0
    const-string v1, "Activity"

    const-string v2, "Tried to open action bar menu with no action bar"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4509
    :cond_1
    :goto_0
    return v0
.end method

.method public greylist-max-r onMovedToDisplay(ILandroid/content/res/Configuration;)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "config"    # Landroid/content/res/Configuration;

    .line 3093
    return-void
.end method

.method public whitelist onMultiWindowModeChanged(Z)V
    .locals 0
    .param p1, "isInMultiWindowMode"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2838
    return-void
.end method

.method public whitelist onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0
    .param p1, "isInMultiWindowMode"    # Z
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 2821
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onMultiWindowModeChanged(Z)V

    .line 2822
    return-void
.end method

.method public whitelist onNavigateUp()Z
    .locals 4

    .line 4712
    invoke-virtual {p0}, Landroid/app/Activity;->getParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 4713
    .local v0, "upIntent":Landroid/content/Intent;
    if-eqz v0, :cond_4

    .line 4714
    iget-object v1, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4718
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 4719
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4720
    invoke-static {p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    .line 4721
    .local v1, "b":Landroid/app/TaskStackBuilder;
    invoke-virtual {p0, v1}, Landroid/app/Activity;->onCreateNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V

    .line 4722
    invoke-virtual {p0, v1}, Landroid/app/Activity;->onPrepareNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V

    .line 4723
    invoke-virtual {v1}, Landroid/app/TaskStackBuilder;->startActivities()V

    .line 4727
    iget v2, p0, Landroid/app/Activity;->mResultCode:I

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    if-eqz v2, :cond_1

    goto :goto_0

    .line 4732
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    goto :goto_1

    .line 4729
    :cond_2
    :goto_0
    const-string v2, "Activity"

    const-string/jumbo v3, "onNavigateUp only finishing topmost activity to return a result"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4730
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 4734
    .end local v1    # "b":Landroid/app/TaskStackBuilder;
    :goto_1
    goto :goto_2

    .line 4735
    :cond_3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    .line 4737
    :goto_2
    const/4 v1, 0x1

    return v1

    .line 4739
    :cond_4
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist onNavigateUpFromChild(Landroid/app/Activity;)Z
    .locals 1
    .param p1, "child"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4751
    invoke-virtual {p0}, Landroid/app/Activity;->onNavigateUp()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o onNewActivityOptions(Landroid/app/ActivityOptions;)V
    .locals 1
    .param p1, "options"    # Landroid/app/ActivityOptions;

    .line 7907
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p0, p1}, Landroid/app/ActivityTransitionState;->setEnterActivityOptions(Landroid/app/Activity;Landroid/app/ActivityOptions;)V

    .line 7908
    iget-boolean v0, p0, Landroid/app/Activity;->mStopped:Z

    if-nez v0, :cond_0

    .line 7909
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p0}, Landroid/app/ActivityTransitionState;->enterReady(Landroid/app/Activity;)V

    .line 7911
    :cond_0
    return-void
.end method

.method protected whitelist onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 2248
    return-void
.end method

.method public whitelist onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 4680
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 4681
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 4683
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .line 4800
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 4801
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 4803
    :cond_0
    return-void
.end method

.method public whitelist onPanelClosed(ILandroid/view/Menu;)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 4572
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 4583
    :sswitch_0
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 4584
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    goto :goto_0

    .line 4579
    :sswitch_1
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 4580
    goto :goto_0

    .line 4574
    :sswitch_2
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p2}, Landroid/app/FragmentController;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    .line 4575
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 4576
    nop

    .line 4587
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x6 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method protected whitelist onPause()V
    .locals 1

    .line 2440
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPaused()V

    .line 2441
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillClientController;->onActivityPaused()V

    .line 2443
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/app/Activity;->notifyContentCaptureManagerIfNeeded(I)V

    .line 2444
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 2445
    return-void
.end method

.method public whitelist onPerformDirectAction(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .locals 0
    .param p1, "actionId"    # Ljava/lang/String;
    .param p2, "arguments"    # Landroid/os/Bundle;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 2579
    .local p4, "resultListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/Bundle;>;"
    return-void
.end method

.method public whitelist onPictureInPictureModeChanged(Z)V
    .locals 0
    .param p1, "isInPictureInPictureMode"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2904
    return-void
.end method

.method public whitelist onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0
    .param p1, "isInPictureInPictureMode"    # Z
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 2865
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onPictureInPictureModeChanged(Z)V

    .line 2866
    return-void
.end method

.method public whitelist onPictureInPictureRequested()Z
    .locals 1

    .line 3025
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onPictureInPictureUiStateChanged(Landroid/app/PictureInPictureUiState;)V
    .locals 0
    .param p1, "pipState"    # Landroid/app/PictureInPictureUiState;

    .line 2889
    return-void
.end method

.method protected whitelist onPostCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1918
    invoke-virtual {p0}, Landroid/app/Activity;->isChild()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1919
    iput-boolean v1, p0, Landroid/app/Activity;->mTitleReady:Z

    .line 1920
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getTitleColor()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 1923
    :cond_0
    iput-boolean v1, p0, Landroid/app/Activity;->mCalled:Z

    .line 1925
    invoke-direct {p0, v1}, Landroid/app/Activity;->notifyContentCaptureManagerIfNeeded(I)V

    .line 1926
    return-void
.end method

.method public whitelist onPostCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    .line 1941
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 1942
    return-void
.end method

.method protected whitelist onPostResume()V
    .locals 3

    .line 2066
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 2067
    .local v0, "win":Landroid/view/Window;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->makeActive()V

    .line 2068
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 2069
    :cond_1
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    .line 2070
    return-void
.end method

.method protected whitelist onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4978
    invoke-virtual {p2, p0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 4979
    return-void
.end method

.method protected whitelist onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5007
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 5008
    return-void
.end method

.method public whitelist onPrepareNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V
    .locals 0
    .param p1, "builder"    # Landroid/app/TaskStackBuilder;

    .line 4790
    return-void
.end method

.method public whitelist onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .line 4655
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 4656
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 4658
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .line 4486
    if-nez p1, :cond_0

    .line 4487
    invoke-virtual {p0, p3}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 4488
    .local v0, "goforit":Z
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1, p3}, Landroid/app/FragmentController;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 4489
    return v0

    .line 4491
    .end local v0    # "goforit":Z
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onProvideAssistContent(Landroid/app/assist/AssistContent;)V
    .locals 0
    .param p1, "outContent"    # Landroid/app/assist/AssistContent;

    .line 2529
    return-void
.end method

.method public whitelist onProvideAssistData(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "data"    # Landroid/os/Bundle;

    .line 2507
    return-void
.end method

.method public whitelist onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 10
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "deviceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    .line 2621
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutGroup;>;"
    if-nez p2, :cond_0

    .line 2622
    return-void

    .line 2624
    :cond_0
    const/4 v0, 0x0

    .line 2625
    .local v0, "group":Landroid/view/KeyboardShortcutGroup;
    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result v1

    .line 2626
    .local v1, "menuSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 2627
    invoke-interface {p2, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2628
    .local v3, "item":Landroid/view/MenuItem;
    invoke-interface {v3}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 2629
    .local v4, "title":Ljava/lang/CharSequence;
    invoke-interface {v3}, Landroid/view/MenuItem;->getAlphabeticShortcut()C

    move-result v5

    .line 2630
    .local v5, "alphaShortcut":C
    invoke-interface {v3}, Landroid/view/MenuItem;->getAlphabeticModifiers()I

    move-result v6

    .line 2631
    .local v6, "alphaModifiers":I
    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    .line 2632
    if-nez v0, :cond_2

    .line 2633
    iget-object v7, p0, Landroid/app/Activity;->mApplication:Landroid/app/Application;

    invoke-virtual {v7}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 2634
    .local v7, "resource":I
    new-instance v8, Landroid/view/KeyboardShortcutGroup;

    if-eqz v7, :cond_1

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    invoke-direct {v8, v9}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;)V

    move-object v0, v8

    .line 2636
    .end local v7    # "resource":I
    :cond_2
    new-instance v7, Landroid/view/KeyboardShortcutInfo;

    invoke-direct {v7, v4, v5, v6}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;CI)V

    invoke-virtual {v0, v7}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    .line 2626
    .end local v3    # "item":Landroid/view/MenuItem;
    .end local v4    # "title":Ljava/lang/CharSequence;
    .end local v5    # "alphaShortcut":C
    .end local v6    # "alphaModifiers":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2640
    .end local v2    # "i":I
    :cond_4
    if-eqz v0, :cond_5

    .line 2641
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2643
    :cond_5
    return-void
.end method

.method public whitelist onProvideReferrer()Landroid/net/Uri;
    .locals 1

    .line 6667
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 5525
    return-void
.end method

.method protected whitelist onRestart()V
    .locals 1

    .line 1996
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 1997
    return-void
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1812
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    .line 1813
    const-string v0, "android:viewHierarchyState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1814
    .local v0, "windowState":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1815
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 1818
    .end local v0    # "windowState":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public whitelist onRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    .line 1847
    if-eqz p1, :cond_0

    .line 1848
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1850
    :cond_0
    return-void
.end method

.method protected whitelist onResume()V
    .locals 1

    .line 2043
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityResumed()V

    .line 2044
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p0}, Landroid/app/ActivityTransitionState;->onResume(Landroid/app/Activity;)V

    .line 2045
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillClientController;->onActivityResumed()V

    .line 2047
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/app/Activity;->notifyContentCaptureManagerIfNeeded(I)V

    .line 2049
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 2050
    return-void
.end method

.method greylist-max-o onRetainNonConfigurationChildInstances()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3282
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .line 3247
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 2336
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->saveHierarchyState()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android:viewHierarchyState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2338
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->saveAllState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2339
    .local v0, "p":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 2340
    const-string v1, "android:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2342
    :cond_0
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/autofill/AutofillClientController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2343
    invoke-direct {p0, p1}, Landroid/app/Activity;->dispatchActivitySaveInstanceState(Landroid/os/Bundle;)V

    .line 2344
    return-void
.end method

.method public whitelist onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;
    .param p2, "outPersistentState"    # Landroid/os/PersistableBundle;

    .line 2363
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2364
    return-void
.end method

.method public whitelist onSearchRequested()Z
    .locals 3

    .line 5182
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0xf

    .line 5184
    .local v0, "uiMode":I
    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    .line 5186
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, v2, v1}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 5187
    const/4 v1, 0x1

    return v1

    .line 5189
    :cond_0
    return v1
.end method

.method public whitelist onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 2
    .param p1, "searchEvent"    # Landroid/view/SearchEvent;

    .line 5172
    iput-object p1, p0, Landroid/app/Activity;->mSearchEvent:Landroid/view/SearchEvent;

    .line 5173
    invoke-virtual {p0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v0

    .line 5174
    .local v0, "result":Z
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Activity;->mSearchEvent:Landroid/view/SearchEvent;

    .line 5175
    return v0
.end method

.method protected whitelist onStart()V
    .locals 1

    .line 1965
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 1967
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->doLoaderStart()V

    .line 1969
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityStarted()V

    .line 1971
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillClientController;->onActivityStarted()V

    .line 1972
    return-void
.end method

.method public whitelist onStateNotSaved()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2012
    return-void
.end method

.method protected whitelist onStop()V
    .locals 4

    .line 2677
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 2678
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p0}, Landroid/app/ActivityTransitionState;->onStop(Landroid/app/Activity;)V

    .line 2679
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityStopped()V

    .line 2680
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    .line 2681
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 2683
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    iget-object v2, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    iget-boolean v3, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    invoke-virtual {v0, v2, v3}, Landroid/view/autofill/AutofillClientController;->onActivityStopped(Landroid/content/Intent;Z)V

    .line 2684
    iput-boolean v1, p0, Landroid/app/Activity;->mEnterAnimationComplete:Z

    .line 2685
    return-void
.end method

.method protected whitelist onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "color"    # I

    .line 7292
    iget-boolean v0, p0, Landroid/app/Activity;->mTitleReady:Z

    if-eqz v0, :cond_1

    .line 7293
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 7294
    .local v0, "win":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 7295
    invoke-virtual {v0, p1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 7296
    if-eqz p2, :cond_0

    .line 7297
    invoke-virtual {v0, p2}, Landroid/view/Window;->setTitleColor(I)V

    .line 7300
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_1

    .line 7301
    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 7304
    .end local v0    # "win":Landroid/view/Window;
    :cond_1
    return-void
.end method

.method public whitelist onTopResumedActivityChanged(Z)V
    .locals 0
    .param p1, "isTopResumedActivity"    # Z

    .line 2093
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 4131
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p0, p1}, Landroid/view/Window;->shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4132
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 4133
    const/4 v0, 0x1

    return v0

    .line 4136
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 4154
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o onTranslucentConversionComplete(Z)V
    .locals 3
    .param p1, "drawComplete"    # Z

    .line 7896
    iget-object v0, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    if-eqz v0, :cond_0

    .line 7897
    invoke-interface {v0, p1}, Landroid/app/Activity$TranslucentConversionListener;->onTranslucentConversionComplete(Z)V

    .line 7898
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    .line 7900
    :cond_0
    iget-boolean v0, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    if-eqz v0, :cond_1

    .line 7901
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerGlobal;->changeCanvasOpacity(Landroid/os/IBinder;Z)V

    .line 7903
    :cond_1
    return-void
.end method

.method public whitelist onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .line 3326
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 3327
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p1}, Landroid/app/FragmentController;->dispatchTrimMemory(I)V

    .line 3328
    iget-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    if-eqz v0, :cond_0

    .line 3329
    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->dispatchTrimMemory(I)V

    .line 3331
    :cond_0
    return-void
.end method

.method public whitelist onUserInteraction()V
    .locals 0

    .line 4206
    return-void
.end method

.method protected whitelist onUserLeaveHint()V
    .locals 0

    .line 2464
    return-void
.end method

.method public whitelist onVisibleBehindCanceled()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7989
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 7990
    return-void
.end method

.method public whitelist onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 4212
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 4213
    iget-object v0, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 4214
    .local v0, "decor":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4215
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4216
    iget-object v1, p0, Landroid/app/Activity;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    if-eqz v1, :cond_0

    .line 4217
    invoke-virtual {v1, p1}, Landroid/view/contentcapture/ContentCaptureManager;->updateWindowAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4221
    .end local v0    # "decor":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public greylist-max-o onWindowDismissed(ZZ)V
    .locals 2
    .param p1, "finishTask"    # Z
    .param p2, "suppressWindowTransition"    # Z

    .line 4314
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-direct {p0, v1}, Landroid/app/Activity;->finish(I)V

    .line 4315
    if-eqz p2, :cond_1

    .line 4316
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 4318
    :cond_1
    return-void
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .line 4267
    return-void
.end method

.method public whitelist onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .line 8176
    iget v0, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    if-nez v0, :cond_0

    .line 8177
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 8178
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 8179
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    .line 8182
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 2
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .line 8192
    const/4 v0, 0x0

    :try_start_0
    iput p2, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    .line 8193
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8195
    iput v0, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    .line 8193
    return-object v1

    .line 8195
    :catchall_0
    move-exception v1

    iput v0, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    .line 8196
    throw v1
.end method

.method public whitelist openContextMenu(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 4876
    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    .line 4877
    return-void
.end method

.method public whitelist openOptionsMenu()V
    .locals 3

    .line 4810
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 4811
    invoke-virtual {v0}, Landroid/app/ActionBar;->openOptionsMenu()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4812
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->openPanel(ILandroid/view/KeyEvent;)V

    .line 4814
    :cond_1
    return-void
.end method

.method public whitelist overridePendingTransition(II)V
    .locals 1
    .param p1, "enterAnim"    # I
    .param p2, "exitAnim"    # I

    .line 6515
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Activity;->overridePendingTransition(III)V

    .line 6516
    return-void
.end method

.method public whitelist overridePendingTransition(III)V
    .locals 6
    .param p1, "enterAnim"    # I
    .param p2, "exitAnim"    # I
    .param p3, "backgroundColor"    # I

    .line 6558
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityClient;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;III)V

    .line 6560
    return-void
.end method

.method final greylist-max-o performCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 8570
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->performCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 8571
    return-void
.end method

.method final greylist-max-r performCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    .line 8575
    const-wide/16 v0, 0x20

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8576
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performCreate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 8577
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8576
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8579
    :cond_0
    invoke-direct {p0, p1}, Landroid/app/Activity;->dispatchActivityPreCreated(Landroid/os/Bundle;)V

    .line 8580
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/Activity;->mCanEnterPictureInPicture:Z

    .line 8582
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 8583
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v3

    .line 8584
    .local v3, "windowingMode":I
    invoke-static {v3}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v4

    iput-boolean v4, p0, Landroid/app/Activity;->mIsInMultiWindowMode:Z

    .line 8585
    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    iput-boolean v4, p0, Landroid/app/Activity;->mIsInPictureInPictureMode:Z

    .line 8586
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x111011a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Landroid/app/Activity;->mShouldDockBigOverlays:Z

    .line 8587
    invoke-direct {p0, p1}, Landroid/app/Activity;->restoreHasCurrentPermissionRequest(Landroid/os/Bundle;)V

    .line 8588
    if-eqz p2, :cond_2

    .line 8589
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    goto :goto_1

    .line 8591
    :cond_2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 8593
    :goto_1
    iget v4, p0, Landroid/app/Activity;->mIdent:I

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "performCreate"

    invoke-static {v4, v6, v7}, Landroid/app/EventLogTags;->writeWmOnCreateCalled(ILjava/lang/String;Ljava/lang/String;)V

    .line 8595
    iget-object v4, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v4, p1}, Landroid/app/ActivityTransitionState;->readState(Landroid/os/Bundle;)V

    .line 8597
    iget-object v4, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v4

    const/16 v6, 0xa

    invoke-virtual {v4, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    xor-int/2addr v2, v4

    iput-boolean v2, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    .line 8599
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v2}, Landroid/app/FragmentController;->dispatchActivityCreated()V

    .line 8600
    iget-object v2, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v4

    invoke-virtual {v2, p0, v4}, Landroid/app/ActivityTransitionState;->setEnterActivityOptions(Landroid/app/Activity;Landroid/app/ActivityOptions;)V

    .line 8601
    invoke-direct {p0, p1}, Landroid/app/Activity;->dispatchActivityPostCreated(Landroid/os/Bundle;)V

    .line 8602
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 8603
    return-void
.end method

.method final greylist-max-o performDestroy()V
    .locals 5

    .line 8856
    const-wide/16 v0, 0x20

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8857
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performDestroy:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 8858
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8857
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8860
    :cond_0
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPreDestroyed()V

    .line 8861
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/Activity;->mDestroyed:Z

    .line 8862
    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->destroy()V

    .line 8863
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v2}, Landroid/app/FragmentController;->dispatchDestroy()V

    .line 8864
    invoke-virtual {p0}, Landroid/app/Activity;->onDestroy()V

    .line 8865
    iget v2, p0, Landroid/app/Activity;->mIdent:I

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "performDestroy"

    invoke-static {v2, v3, v4}, Landroid/app/EventLogTags;->writeWmOnDestroyCalled(ILjava/lang/String;Ljava/lang/String;)V

    .line 8867
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v2}, Landroid/app/FragmentController;->doLoaderDestroy()V

    .line 8868
    iget-object v2, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v2, :cond_1

    .line 8869
    invoke-virtual {v2}, Landroid/app/VoiceInteractor;->detachActivity()V

    .line 8871
    :cond_1
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPostDestroyed()V

    .line 8872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 8873
    return-void
.end method

.method final greylist-max-o performNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 8606
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCanEnterPictureInPicture:Z

    .line 8607
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 8608
    return-void
.end method

.method final greylist-max-o performPause()V
    .locals 6

    .line 8770
    const-wide/16 v0, 0x20

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8771
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performPause:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 8772
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8771
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8774
    :cond_0
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPrePaused()V

    .line 8775
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    .line 8776
    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v3}, Landroid/app/FragmentController;->dispatchPause()V

    .line 8777
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    .line 8778
    invoke-virtual {p0}, Landroid/app/Activity;->onPause()V

    .line 8779
    iget v3, p0, Landroid/app/Activity;->mIdent:I

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "performPause"

    invoke-static {v3, v4, v5}, Landroid/app/EventLogTags;->writeWmOnPausedCalled(ILjava/lang/String;Ljava/lang/String;)V

    .line 8781
    iput-boolean v2, p0, Landroid/app/Activity;->mResumed:Z

    .line 8782
    iget-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x9

    if-ge v2, v3, :cond_1

    goto :goto_0

    .line 8784
    :cond_1
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 8785
    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8789
    :cond_2
    :goto_0
    iget-object v2, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    instance-of v3, v2, Lcom/android/internal/policy/DecorView;

    if-eqz v3, :cond_3

    .line 8790
    check-cast v2, Lcom/android/internal/policy/DecorView;

    invoke-virtual {v2}, Lcom/android/internal/policy/DecorView;->resetDecorViewStateIfNeeded()V

    .line 8793
    :cond_3
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPostPaused()V

    .line 8794
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 8795
    return-void
.end method

.method final greylist-max-o performRestart(ZLjava/lang/String;)V
    .locals 7
    .param p1, "start"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 8669
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCanEnterPictureInPicture:Z

    .line 8670
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->noteStateNotSaved()V

    .line 8672
    iget-object v0, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 8674
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v2, v1}, Landroid/view/WindowManagerGlobal;->setStoppedState(Landroid/os/IBinder;Z)V

    .line 8677
    :cond_0
    iget-boolean v0, p0, Landroid/app/Activity;->mStopped:Z

    if-eqz v0, :cond_7

    .line 8678
    iput-boolean v1, p0, Landroid/app/Activity;->mStopped:Z

    .line 8680
    iget-object v0, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v0

    .line 8681
    :try_start_0
    iget-object v2, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 8682
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_5

    .line 8683
    iget-object v4, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity$ManagedCursor;

    .line 8684
    .local v4, "mc":Landroid/app/Activity$ManagedCursor;
    invoke-static {v4}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fgetmReleased(Landroid/app/Activity$ManagedCursor;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fgetmUpdated(Landroid/app/Activity$ManagedCursor;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 8685
    :cond_1
    invoke-static {v4}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fgetmCursor(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->requery()Z

    move-result v5

    if-nez v5, :cond_3

    .line 8686
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0xe

    if-ge v5, v6, :cond_2

    goto :goto_1

    .line 8688
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "trying to requery an already closed cursor  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fgetmCursor(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/Activity;
    .end local p1    # "start":Z
    .end local p2    # "reason":Ljava/lang/String;
    throw v1

    .line 8693
    .restart local p0    # "this":Landroid/app/Activity;
    .restart local p1    # "start":Z
    .restart local p2    # "reason":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-static {v4, v1}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fputmReleased(Landroid/app/Activity$ManagedCursor;Z)V

    .line 8694
    invoke-static {v4, v1}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fputmUpdated(Landroid/app/Activity$ManagedCursor;Z)V

    .line 8682
    .end local v4    # "mc":Landroid/app/Activity$ManagedCursor;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8697
    .end local v2    # "N":I
    .end local v3    # "i":I
    :cond_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8699
    iput-boolean v1, p0, Landroid/app/Activity;->mCalled:Z

    .line 8700
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, p0}, Landroid/app/Instrumentation;->callActivityOnRestart(Landroid/app/Activity;)V

    .line 8701
    iget v0, p0, Landroid/app/Activity;->mIdent:I

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/app/EventLogTags;->writeWmOnRestartCalled(ILjava/lang/String;Ljava/lang/String;)V

    .line 8702
    iget-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    if-eqz v0, :cond_6

    .line 8707
    if-eqz p1, :cond_7

    .line 8708
    invoke-virtual {p0, p2}, Landroid/app/Activity;->performStart(Ljava/lang/String;)V

    goto :goto_2

    .line 8703
    :cond_6
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 8704
    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onRestart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8697
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 8711
    :cond_7
    :goto_2
    return-void
.end method

.method final greylist-max-o performRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1768
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1769
    invoke-direct {p0, p1}, Landroid/app/Activity;->restoreManagedDialogs(Landroid/os/Bundle;)V

    .line 1770
    return-void
.end method

.method final greylist-max-o performRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    .line 1783
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 1784
    if-eqz p1, :cond_0

    .line 1785
    invoke-direct {p0, p1}, Landroid/app/Activity;->restoreManagedDialogs(Landroid/os/Bundle;)V

    .line 1787
    :cond_0
    return-void
.end method

.method final greylist-max-o performResume(ZLjava/lang/String;)V
    .locals 6
    .param p1, "followedByPause"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 8714
    const-wide/16 v0, 0x20

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8715
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performResume:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 8716
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8715
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8718
    :cond_0
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPreResumed()V

    .line 8720
    iget-object v2, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    instance-of v3, v2, Lcom/android/internal/policy/DecorView;

    if-eqz v3, :cond_1

    .line 8721
    check-cast v2, Lcom/android/internal/policy/DecorView;

    invoke-virtual {v2}, Lcom/android/internal/policy/DecorView;->resetDecorViewStateIfNeeded()V

    .line 8724
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2, p2}, Landroid/app/Activity;->performRestart(ZLjava/lang/String;)V

    .line 8726
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v2}, Landroid/app/FragmentController;->execPendingActions()Z

    .line 8728
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    .line 8730
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/autofill/AutofillClientController;->onActivityPerformResume(Z)V

    .line 8732
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    .line 8734
    iget-object v3, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, p0}, Landroid/app/Instrumentation;->callActivityOnResume(Landroid/app/Activity;)V

    .line 8735
    iget v3, p0, Landroid/app/Activity;->mIdent:I

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p2}, Landroid/app/EventLogTags;->writeWmOnResumeCalled(ILjava/lang/String;Ljava/lang/String;)V

    .line 8736
    iget-boolean v3, p0, Landroid/app/Activity;->mCalled:Z

    const-string v4, "Activity "

    if-eqz v3, :cond_5

    .line 8743
    iget-boolean v3, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Landroid/app/Activity;->mFinished:Z

    if-nez v3, :cond_3

    .line 8744
    const-string v3, "Activity"

    const-string v5, "An activity without a UI must call finish() before onResume() completes"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8745
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x16

    if-gt v3, v5, :cond_2

    goto :goto_0

    .line 8747
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 8748
    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call finish() prior to onResume() completing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8754
    :cond_3
    :goto_0
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    .line 8756
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v2}, Landroid/app/FragmentController;->dispatchResume()V

    .line 8757
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v2}, Landroid/app/FragmentController;->execPendingActions()Z

    .line 8759
    invoke-virtual {p0}, Landroid/app/Activity;->onPostResume()V

    .line 8760
    iget-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    if-eqz v2, :cond_4

    .line 8765
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPostResumed()V

    .line 8766
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 8767
    return-void

    .line 8761
    :cond_4
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 8762
    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onPostResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8737
    :cond_5
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 8738
    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final greylist-max-o performSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 2259
    invoke-direct {p0, p1}, Landroid/app/Activity;->dispatchActivityPreSaveInstanceState(Landroid/os/Bundle;)V

    .line 2260
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2261
    invoke-direct {p0, p1}, Landroid/app/Activity;->saveManagedDialogs(Landroid/os/Bundle;)V

    .line 2262
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p1}, Landroid/app/ActivityTransitionState;->saveState(Landroid/os/Bundle;)V

    .line 2263
    invoke-direct {p0, p1}, Landroid/app/Activity;->storeHasCurrentPermissionRequest(Landroid/os/Bundle;)V

    .line 2265
    invoke-direct {p0, p1}, Landroid/app/Activity;->dispatchActivityPostSaveInstanceState(Landroid/os/Bundle;)V

    .line 2266
    return-void
.end method

.method final greylist-max-o performSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;
    .param p2, "outPersistentState"    # Landroid/os/PersistableBundle;

    .line 2279
    invoke-direct {p0, p1}, Landroid/app/Activity;->dispatchActivityPreSaveInstanceState(Landroid/os/Bundle;)V

    .line 2280
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 2281
    invoke-direct {p0, p1}, Landroid/app/Activity;->saveManagedDialogs(Landroid/os/Bundle;)V

    .line 2282
    invoke-direct {p0, p1}, Landroid/app/Activity;->storeHasCurrentPermissionRequest(Landroid/os/Bundle;)V

    .line 2285
    invoke-direct {p0, p1}, Landroid/app/Activity;->dispatchActivityPostSaveInstanceState(Landroid/os/Bundle;)V

    .line 2286
    return-void
.end method

.method final greylist-max-o performStart(Ljava/lang/String;)V
    .locals 8
    .param p1, "reason"    # Ljava/lang/String;

    .line 8611
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPreStarted()V

    .line 8612
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/app/ActivityTransitionState;->setEnterActivityOptions(Landroid/app/Activity;Landroid/app/ActivityOptions;)V

    .line 8613
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->noteStateNotSaved()V

    .line 8614
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 8615
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1}, Landroid/app/FragmentController;->execPendingActions()Z

    .line 8616
    iget-object v1, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v1, p0}, Landroid/app/Instrumentation;->callActivityOnStart(Landroid/app/Activity;)V

    .line 8617
    iget v1, p0, Landroid/app/Activity;->mIdent:I

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/app/EventLogTags;->writeWmOnStartCalled(ILjava/lang/String;Ljava/lang/String;)V

    .line 8619
    iget-boolean v1, p0, Landroid/app/Activity;->mCalled:Z

    if-eqz v1, :cond_4

    .line 8624
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1}, Landroid/app/FragmentController;->dispatchStart()V

    .line 8625
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1}, Landroid/app/FragmentController;->reportLoaderStart()V

    .line 8628
    iget-object v1, p0, Landroid/app/Activity;->mApplication:Landroid/app/Application;

    .line 8629
    invoke-virtual {v1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    .line 8630
    .local v1, "isAppDebuggable":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 8631
    invoke-static {}, Landroid/app/Activity;->getDlWarning()Ljava/lang/String;

    move-result-object v3

    .line 8632
    .local v3, "dlwarning":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 8633
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 8634
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 8635
    .local v4, "appName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Detected problems with app native libraries\n(please consult log for detail):\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 8637
    .local v5, "warning":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 8638
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8639
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 8640
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v6, 0x104000a

    const/4 v7, 0x0

    .line 8641
    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 8642
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 8643
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 8645
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 8650
    .end local v3    # "dlwarning":Ljava/lang/String;
    .end local v4    # "appName":Ljava/lang/String;
    .end local v5    # "warning":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/GraphicsEnvironment;->getInstance()Landroid/os/GraphicsEnvironment;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/GraphicsEnvironment;->showAngleInUseDialogBox(Landroid/content/Context;)V

    .line 8652
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p0}, Landroid/app/ActivityTransitionState;->enterReady(Landroid/app/Activity;)V

    .line 8653
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPostStarted()V

    .line 8656
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z

    if-eqz v0, :cond_3

    .line 8657
    invoke-direct {p0}, Landroid/app/Activity;->startAppLockService()V

    .line 8660
    :cond_3
    return-void

    .line 8620
    .end local v1    # "isAppDebuggable":Z
    :cond_4
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 8621
    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final greylist-max-o performStop(ZLjava/lang/String;)V
    .locals 9
    .param p1, "preserveWindow"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 8803
    const-wide/16 v0, 0x20

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8804
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performStop:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 8805
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8804
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8807
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    .line 8808
    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    iget-boolean v4, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    invoke-virtual {v3, v4}, Landroid/app/FragmentController;->doLoaderStop(Z)V

    .line 8811
    iput-boolean v2, p0, Landroid/app/Activity;->mCanEnterPictureInPicture:Z

    .line 8813
    iget-boolean v3, p0, Landroid/app/Activity;->mStopped:Z

    if-nez v3, :cond_6

    .line 8814
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPreStopped()V

    .line 8815
    iget-object v3, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v3, :cond_1

    .line 8816
    invoke-virtual {v3}, Landroid/view/Window;->closeAllPanels()V

    .line 8822
    :cond_1
    const/4 v3, 0x1

    if-nez p1, :cond_2

    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v4, :cond_2

    .line 8823
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v4

    iget-object v5, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5, v3}, Landroid/view/WindowManagerGlobal;->setStoppedState(Landroid/os/IBinder;Z)V

    .line 8826
    :cond_2
    iget-object v4, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v4}, Landroid/app/FragmentController;->dispatchStop()V

    .line 8828
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    .line 8829
    iget-object v4, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v4, p0}, Landroid/app/Instrumentation;->callActivityOnStop(Landroid/app/Activity;)V

    .line 8830
    iget v4, p0, Landroid/app/Activity;->mIdent:I

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p2}, Landroid/app/EventLogTags;->writeWmOnStopCalled(ILjava/lang/String;Ljava/lang/String;)V

    .line 8831
    iget-boolean v4, p0, Landroid/app/Activity;->mCalled:Z

    if-eqz v4, :cond_5

    .line 8837
    iget-object v4, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v4

    .line 8838
    :try_start_0
    iget-object v5, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 8839
    .local v5, "N":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_4

    .line 8840
    iget-object v7, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Activity$ManagedCursor;

    .line 8841
    .local v7, "mc":Landroid/app/Activity$ManagedCursor;
    invoke-static {v7}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fgetmReleased(Landroid/app/Activity$ManagedCursor;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 8842
    invoke-static {v7}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fgetmCursor(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8}, Landroid/database/Cursor;->deactivate()V

    .line 8843
    invoke-static {v7, v3}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fputmReleased(Landroid/app/Activity$ManagedCursor;Z)V

    .line 8839
    .end local v7    # "mc":Landroid/app/Activity$ManagedCursor;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 8846
    .end local v5    # "N":I
    .end local v6    # "i":I
    :cond_4
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8848
    iput-boolean v3, p0, Landroid/app/Activity;->mStopped:Z

    .line 8849
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPostStopped()V

    goto :goto_1

    .line 8846
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 8832
    :cond_5
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 8833
    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8851
    :cond_6
    :goto_1
    iput-boolean v2, p0, Landroid/app/Activity;->mResumed:Z

    .line 8852
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 8853
    return-void
.end method

.method final blacklist performTopResumedActivityChanged(ZLjava/lang/String;)V
    .locals 2
    .param p1, "isTopResumedActivity"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 2096
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onTopResumedActivityChanged(Z)V

    .line 2098
    if-eqz p1, :cond_0

    .line 2099
    iget v0, p0, Landroid/app/Activity;->mIdent:I

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/app/EventLogTags;->writeWmOnTopResumedGainedCalled(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2102
    :cond_0
    iget v0, p0, Landroid/app/Activity;->mIdent:I

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/app/EventLogTags;->writeWmOnTopResumedLostCalled(ILjava/lang/String;Ljava/lang/String;)V

    .line 2105
    :goto_0
    return-void
.end method

.method final greylist-max-o performUserLeaving()V
    .locals 0

    .line 8798
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 8799
    invoke-virtual {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 8800
    return-void
.end method

.method public whitelist postponeEnterTransition()V
    .locals 1

    .line 8400
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0}, Landroid/app/ActivityTransitionState;->postponeEnterTransition()V

    .line 8401
    return-void
.end method

.method public whitelist recreate()V
    .locals 2

    .line 6803
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 6806
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 6809
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread;->scheduleRelaunchActivity(Landroid/os/IBinder;)V

    .line 6810
    return-void

    .line 6807
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called from main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6804
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can only be called on top-level activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 2
    .param p1, "callback"    # Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1365
    iget-object v0, p0, Landroid/app/Activity;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1366
    :try_start_0
    iget-object v1, p0, Landroid/app/Activity;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1367
    monitor-exit v0

    .line 1368
    return-void

    .line 1367
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 2
    .param p1, "callback"    # Landroid/content/ComponentCallbacks;

    .line 1387
    const-wide/32 v0, 0xb84ba9c

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    if-nez v0, :cond_0

    .line 1389
    new-instance v0, Landroid/content/ComponentCallbacksController;

    invoke-direct {v0}, Landroid/content/ComponentCallbacksController;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    .line 1391
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    if-eqz v0, :cond_1

    .line 1392
    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->registerCallbacks(Landroid/content/ComponentCallbacks;)V

    goto :goto_0

    .line 1394
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 1396
    :goto_0
    return-void
.end method

.method public whitelist registerForContextMenu(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 4854
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 4855
    return-void
.end method

.method public blacklist registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    .locals 2
    .param p1, "definition"    # Landroid/view/RemoteAnimationDefinition;

    .line 9274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerRemoteAnimations, activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", definition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Activity"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9278
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->registerRemoteAnimations(Landroid/os/IBinder;Landroid/view/RemoteAnimationDefinition;)V

    .line 9279
    return-void
.end method

.method blacklist releaseActivityFocusIfNeeded()V
    .locals 2

    .line 9532
    iget-object v0, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/internal/policy/DecorView;

    if-eqz v1, :cond_0

    .line 9533
    check-cast v0, Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->releaseActivityFocusIfNeeded()V

    .line 9535
    :cond_0
    return-void
.end method

.method public whitelist releaseInstance()Z
    .locals 2

    .line 6970
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->releaseActivityInstance(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public final whitelist removeDialog(I)V
    .locals 2
    .param p1, "id"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5138
    iget-object v0, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 5139
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity$ManagedDialog;

    .line 5140
    .local v0, "md":Landroid/app/Activity$ManagedDialog;
    if-eqz v0, :cond_0

    .line 5141
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 5142
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 5145
    .end local v0    # "md":Landroid/app/Activity$ManagedDialog;
    :cond_0
    return-void
.end method

.method public whitelist reportFullyDrawn()V
    .locals 5

    .line 2791
    iget-boolean v0, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    if-eqz v0, :cond_1

    .line 2792
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2793
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reportFullyDrawn() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 2794
    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2793
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2796
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    .line 2798
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-boolean v4, p0, Landroid/app/Activity;->mRestoredFromBundle:Z

    invoke-virtual {v2, v3, v4}, Landroid/app/ActivityClient;->reportActivityFullyDrawn(Landroid/os/IBinder;Z)V

    .line 2800
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->notifyStartupCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2802
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2803
    goto :goto_0

    .line 2802
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2803
    throw v2

    .line 2805
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;
    .locals 2
    .param p1, "event"    # Landroid/view/DragEvent;

    .line 8420
    invoke-static {p1}, Landroid/view/DragAndDropPermissions;->obtain(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    move-result-object v0

    .line 8421
    .local v0, "dragAndDropPermissions":Landroid/view/DragAndDropPermissions;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/DragAndDropPermissions;->take(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8422
    return-object v0

    .line 8424
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public final whitelist requestPermissions([Ljava/lang/String;I)V
    .locals 5
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I

    .line 5479
    if-ltz p2, :cond_3

    .line 5483
    iget-boolean v0, p0, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    if-eqz v0, :cond_0

    .line 5484
    const-string v0, "Activity"

    const-string v1, "Can request only one set of permissions at a time"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5486
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    new-array v0, v0, [I

    invoke-virtual {p0, p2, v1, v0}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 5487
    return-void

    .line 5490
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5491
    array-length v0, p1

    .line 5492
    .local v0, "permissionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 5493
    invoke-virtual {p0}, Landroid/app/Activity;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v2

    aget-object v3, p1, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5492
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5494
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot request renounced permission: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5500
    .end local v0    # "permissionCount":I
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->buildRequestPermissionsIntent([Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 5501
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    const-string v2, "@android:requestPermissions:"

    invoke-virtual {p0, v2, v0, p2, v1}, Landroid/app/Activity;->startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 5502
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    .line 5503
    return-void

    .line 5480
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "requestCode should be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist requestShowKeyboardShortcuts()V
    .locals 4

    .line 2586
    nop

    .line 2587
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10403a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2586
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 2589
    .local v0, "sysuiComponent":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.intent.action.SHOW_KEYBOARD_SHORTCUTS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2590
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2593
    invoke-virtual {p0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 2594
    const-string v2, "com.sec.android.dexsystemui"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2597
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2598
    return-void
.end method

.method public whitelist requestVisibleBehind(Z)Z
    .locals 1
    .param p1, "visible"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7967
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist requestWindowFeature(I)Z
    .locals 1
    .param p1, "featureId"    # I

    .line 5282
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    return v0
.end method

.method public final whitelist requireViewById(I)Landroid/view/View;
    .locals 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 3548
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3549
    .local v0, "view":Landroid/view/View;, "TT;"
    if-eqz v0, :cond_0

    .line 3552
    return-object v0

    .line 3550
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ID does not reference a View inside this Activity"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method greylist-max-o retainNonConfigurationInstances()Landroid/app/Activity$NonConfigurationInstances;
    .locals 6

    .line 3286
    invoke-virtual {p0}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 3287
    .local v0, "activity":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/app/Activity;->onRetainNonConfigurationChildInstances()Ljava/util/HashMap;

    move-result-object v1

    .line 3288
    .local v1, "children":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v2}, Landroid/app/FragmentController;->retainNestedNonConfig()Landroid/app/FragmentManagerNonConfig;

    move-result-object v2

    .line 3294
    .local v2, "fragments":Landroid/app/FragmentManagerNonConfig;
    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v3}, Landroid/app/FragmentController;->doLoaderStart()V

    .line 3295
    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/FragmentController;->doLoaderStop(Z)V

    .line 3296
    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v3}, Landroid/app/FragmentController;->retainLoaderNonConfig()Landroid/util/ArrayMap;

    move-result-object v3

    .line 3298
    .local v3, "loaders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/LoaderManager;>;"
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    iget-object v4, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-nez v4, :cond_0

    .line 3300
    const/4 v4, 0x0

    return-object v4

    .line 3303
    :cond_0
    new-instance v4, Landroid/app/Activity$NonConfigurationInstances;

    invoke-direct {v4}, Landroid/app/Activity$NonConfigurationInstances;-><init>()V

    .line 3304
    .local v4, "nci":Landroid/app/Activity$NonConfigurationInstances;
    iput-object v0, v4, Landroid/app/Activity$NonConfigurationInstances;->activity:Ljava/lang/Object;

    .line 3305
    iput-object v1, v4, Landroid/app/Activity$NonConfigurationInstances;->children:Ljava/util/HashMap;

    .line 3306
    iput-object v2, v4, Landroid/app/Activity$NonConfigurationInstances;->fragments:Landroid/app/FragmentManagerNonConfig;

    .line 3307
    iput-object v3, v4, Landroid/app/Activity$NonConfigurationInstances;->loaders:Landroid/util/ArrayMap;

    .line 3308
    iget-object v5, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v5, :cond_1

    .line 3309
    invoke-virtual {v5}, Landroid/app/VoiceInteractor;->retainInstance()V

    .line 3310
    iget-object v5, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    iput-object v5, v4, Landroid/app/Activity$NonConfigurationInstances;->voiceInteractor:Landroid/app/VoiceInteractor;

    .line 3312
    :cond_1
    return-object v4
.end method

.method public final whitelist runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 7491
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mUiThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 7492
    iget-object v0, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 7494
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 7496
    :goto_0
    return-void
.end method

.method public whitelist semConvertFromTranslucent(Z)V
    .locals 3
    .param p1, "skipSetWindowOpaque"    # Z

    .line 7793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semConvertFromTranslucent, activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 7794
    const/4 v1, 0x3

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7793
    const-string v1, "Activity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7797
    nop

    .line 7798
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowingMode()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 7799
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 7800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semConvertFromTranslucent: skipSetWindowOpaque. reason=freeform, activity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7803
    :cond_0
    const/4 p1, 0x1

    .line 7805
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    .line 7806
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->convertFromTranslucent(Landroid/os/IBinder;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 7808
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerGlobal;->changeCanvasOpacity(Landroid/os/IBinder;Z)V

    .line 7811
    :cond_2
    return-void
.end method

.method public whitelist semConvertToTranslucent(Landroid/app/Activity$SemTranslucentConversionListener;)Z
    .locals 2
    .param p1, "callback"    # Landroid/app/Activity$SemTranslucentConversionListener;

    .line 7881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semConvertToTranslucent, activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 7882
    const/4 v1, 0x3

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7881
    const-string v1, "Activity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7884
    new-instance v0, Landroid/app/Activity$2;

    invoke-direct {v0, p0, p1}, Landroid/app/Activity$2;-><init>(Landroid/app/Activity;Landroid/app/Activity$SemTranslucentConversionListener;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z

    move-result v0

    return v0
.end method

.method public whitelist semExitMultiWindowMode()Z
    .locals 3

    .line 9320
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    .line 9321
    .local v0, "multiWindowManager":Lcom/samsung/android/multiwindow/MultiWindowManager;
    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->exitMultiWindow(Landroid/os/IBinder;Z)Z

    move-result v1

    return v1
.end method

.method public final whitelist semIsResumed()Z
    .locals 1

    .line 8926
    iget-boolean v0, p0, Landroid/app/Activity;->mResumed:Z

    return v0
.end method

.method public whitelist semOverridePendingTransition(II)V
    .locals 3
    .param p1, "enterAnim"    # I
    .param p2, "exitAnim"    # I

    .line 6532
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/app/ActivityClient;->overridePendingTaskTransition(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 6535
    return-void
.end method

.method public whitelist semSetDisablePreviewScreenshots(Z)V
    .locals 1
    .param p1, "disable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9199
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRecentsScreenshotEnabled(Z)V

    .line 9201
    return-void
.end method

.method public whitelist setActionBar(Landroid/widget/Toolbar;)V
    .locals 4
    .param p1, "toolbar"    # Landroid/widget/Toolbar;

    .line 3582
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 3583
    .local v0, "ab":Landroid/app/ActionBar;
    instance-of v1, v0, Lcom/android/internal/app/WindowDecorActionBar;

    if-nez v1, :cond_2

    .line 3591
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    .line 3594
    if-eqz v0, :cond_0

    .line 3595
    invoke-virtual {v0}, Landroid/app/ActionBar;->onDestroy()V

    .line 3598
    :cond_0
    if-eqz p1, :cond_1

    .line 3599
    new-instance v1, Lcom/android/internal/app/ToolbarActionBar;

    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, p1, v2, p0}, Lcom/android/internal/app/ToolbarActionBar;-><init>(Landroid/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V

    .line 3600
    .local v1, "tbab":Lcom/android/internal/app/ToolbarActionBar;
    iput-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    .line 3601
    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Lcom/android/internal/app/ToolbarActionBar;->getWrappedWindowCallback()Landroid/view/Window$Callback;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 3602
    .end local v1    # "tbab":Lcom/android/internal/app/ToolbarActionBar;
    goto :goto_0

    .line 3603
    :cond_1
    iput-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    .line 3605
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 3608
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 3609
    return-void

    .line 3584
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_ACTION_BAR and set android:windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setContentTransitionManager(Landroid/transition/TransitionManager;)V
    .locals 1
    .param p1, "tm"    # Landroid/transition/TransitionManager;

    .line 3736
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setTransitionManager(Landroid/transition/TransitionManager;)V

    .line 3737
    return-void
.end method

.method public whitelist setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I

    .line 3649
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(I)V

    .line 3650
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 3656
    return-void
.end method

.method public whitelist setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 3674
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 3675
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 3681
    return-void
.end method

.method public whitelist setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 3695
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3696
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 3702
    return-void
.end method

.method public final whitelist setDefaultKeyMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 3835
    iput p1, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    .line 3839
    packed-switch p1, :pswitch_data_0

    .line 3851
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 3847
    :pswitch_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 3848
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 3849
    goto :goto_0

    .line 3842
    :pswitch_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 3843
    nop

    .line 3853
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setDisablePreviewScreenshots(Z)V
    .locals 1
    .param p1, "disable"    # Z

    .line 9150
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRecentsScreenshotEnabled(Z)V

    .line 9151
    return-void
.end method

.method public whitelist setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/app/SharedElementCallback;

    .line 8362
    if-nez p1, :cond_0

    .line 8363
    sget-object p1, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    .line 8365
    :cond_0
    iput-object p1, p0, Landroid/app/Activity;->mEnterTransitionListener:Landroid/app/SharedElementCallback;

    .line 8366
    return-void
.end method

.method public whitelist setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/app/SharedElementCallback;

    .line 8378
    if-nez p1, :cond_0

    .line 8379
    sget-object p1, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    .line 8381
    :cond_0
    iput-object p1, p0, Landroid/app/Activity;->mExitTransitionListener:Landroid/app/SharedElementCallback;

    .line 8382
    return-void
.end method

.method public final whitelist setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 5306
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 5307
    return-void
.end method

.method public final whitelist setFeatureDrawableAlpha(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "alpha"    # I

    .line 5314
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableAlpha(II)V

    .line 5315
    return-void
.end method

.method public final whitelist setFeatureDrawableResource(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "resId"    # I

    .line 5290
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 5291
    return-void
.end method

.method public final whitelist setFeatureDrawableUri(ILandroid/net/Uri;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .line 5298
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableUri(ILandroid/net/Uri;)V

    .line 5299
    return-void
.end method

.method public whitelist setFinishOnTouchOutside(Z)V
    .locals 1
    .param p1, "finish"    # Z

    .line 3756
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 3757
    return-void
.end method

.method public whitelist setImmersive(Z)V
    .locals 2
    .param p1, "i"    # Z

    .line 8070
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->setImmersive(Landroid/os/IBinder;Z)V

    .line 8071
    return-void
.end method

.method public whitelist setInheritShowWhenLocked(Z)V
    .locals 2
    .param p1, "inheritShowWhenLocked"    # Z

    .line 9237
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->setInheritShowWhenLocked(Landroid/os/IBinder;Z)V

    .line 9238
    return-void
.end method

.method public whitelist setIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "newIntent"    # Landroid/content/Intent;

    .line 1115
    iput-object p1, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    .line 1116
    return-void
.end method

.method public whitelist setLocusContext(Landroid/content/LocusId;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "locusId"    # Landroid/content/LocusId;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 1145
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1, v2}, Landroid/app/IActivityManager;->setActivityLocusContext(Landroid/content/ComponentName;Landroid/content/LocusId;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1148
    goto :goto_0

    .line 1146
    :catch_0
    move-exception v0

    .line 1147
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1150
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    if-eqz p1, :cond_0

    .line 1151
    invoke-direct {p0, p1, p2}, Landroid/app/Activity;->setLocusContextToContentCapture(Landroid/content/LocusId;Landroid/os/Bundle;)V

    .line 1153
    :cond_0
    return-void
.end method

.method public final whitelist setMediaController(Landroid/media/session/MediaController;)V
    .locals 1
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .line 7469
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setMediaController(Landroid/media/session/MediaController;)V

    .line 7470
    return-void
.end method

.method public greylist-max-o setOverlayWithDecorCaptionEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 9061
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setOverlayWithDecorCaptionEnabled(Z)V

    .line 9062
    return-void
.end method

.method final greylist-max-p setParent(Landroid/app/Activity;)V
    .locals 0
    .param p1, "parent"    # Landroid/app/Activity;

    .line 8431
    iput-object p1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    .line 8432
    return-void
.end method

.method public greylist setPersistent(Z)V
    .locals 0
    .param p1, "isPersistent"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3510
    return-void
.end method

.method public whitelist setPictureInPictureParams(Landroid/app/PictureInPictureParams;)V
    .locals 2
    .param p1, "params"    # Landroid/app/PictureInPictureParams;

    .line 2979
    invoke-direct {p0}, Landroid/app/Activity;->deviceSupportsPictureInPictureMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2980
    return-void

    .line 2982
    :cond_0
    if-eqz p1, :cond_1

    .line 2985
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->setPictureInPictureParams(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)V

    .line 2986
    return-void

    .line 2983
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected non-null picture-in-picture params"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist setProgress(I)V
    .locals 3
    .param p1, "progress"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7395
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    add-int/lit8 v1, p1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 7396
    return-void
.end method

.method public final whitelist setProgressBarIndeterminate(Z)V
    .locals 3
    .param p1, "indeterminate"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7377
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 7378
    if-eqz p1, :cond_0

    const/4 v1, -0x3

    goto :goto_0

    .line 7379
    :cond_0
    const/4 v1, -0x4

    .line 7377
    :goto_0
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 7380
    return-void
.end method

.method public final whitelist setProgressBarIndeterminateVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7361
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 7362
    if-eqz p1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x2

    .line 7361
    :goto_0
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 7363
    return-void
.end method

.method public final whitelist setProgressBarVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7346
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    .line 7347
    :cond_0
    const/4 v1, -0x2

    .line 7346
    :goto_0
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 7348
    return-void
.end method

.method public whitelist setRecentsScreenshotEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 9172
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->setRecentsScreenshotEnabled(Landroid/os/IBinder;Z)V

    .line 9173
    return-void
.end method

.method public whitelist setRequestedOrientation(I)V
    .locals 3
    .param p1, "requestedOrientation"    # I

    .line 7081
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 7082
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->setRequestedOrientation(Landroid/os/IBinder;I)V

    .line 7083
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/policy/PhoneWindow;

    if-eqz v1, :cond_1

    .line 7084
    check-cast v0, Lcom/android/internal/policy/PhoneWindow;

    .line 7085
    .local v0, "targetWindow":Lcom/android/internal/policy/PhoneWindow;
    move v1, p1

    .line 7086
    .local v1, "requestedOr":I
    new-instance v2, Landroid/app/Activity$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1}, Landroid/app/Activity$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/policy/PhoneWindow;I)V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 7087
    .end local v0    # "targetWindow":Lcom/android/internal/policy/PhoneWindow;
    .end local v1    # "requestedOr":I
    goto :goto_0

    .line 7089
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 7091
    :cond_1
    :goto_0
    return-void
.end method

.method public final whitelist setResult(I)V
    .locals 1
    .param p1, "resultCode"    # I

    .line 6575
    monitor-enter p0

    .line 6576
    :try_start_0
    iput p1, p0, Landroid/app/Activity;->mResultCode:I

    .line 6577
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    .line 6578
    monitor-exit p0

    .line 6579
    return-void

    .line 6578
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final whitelist setResult(ILandroid/content/Intent;)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .line 6604
    monitor-enter p0

    .line 6605
    :try_start_0
    iput p1, p0, Landroid/app/Activity;->mResultCode:I

    .line 6606
    iput-object p2, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    .line 6607
    monitor-exit p0

    .line 6608
    return-void

    .line 6607
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final whitelist setSecondaryProgress(I)V
    .locals 3
    .param p1, "secondaryProgress"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7414
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    add-int/lit16 v1, p1, 0x4e20

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 7416
    return-void
.end method

.method public whitelist setShouldDockBigOverlays(Z)V
    .locals 2
    .param p1, "shouldDockBigOverlays"    # Z

    .line 3047
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->setShouldDockBigOverlays(Landroid/os/IBinder;Z)V

    .line 3048
    iput-boolean p1, p0, Landroid/app/Activity;->mShouldDockBigOverlays:Z

    .line 3049
    return-void
.end method

.method public whitelist setShowWhenLocked(Z)V
    .locals 2
    .param p1, "showWhenLocked"    # Z

    .line 9218
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->setShowWhenLocked(Landroid/os/IBinder;Z)V

    .line 9219
    return-void
.end method

.method public whitelist setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 4
    .param p1, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .line 7322
    iget-object v0, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eq v0, p1, :cond_0

    .line 7323
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->copyFromPreserveHiddenFields(Landroid/app/ActivityManager$TaskDescription;)V

    .line 7325
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7326
    invoke-static {p0}, Landroid/app/ActivityManager;->getLauncherLargeIconSizeInner(Landroid/content/Context;)I

    move-result v0

    .line 7327
    .local v0, "size":I
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 7329
    .local v1, "icon":Landroid/graphics/Bitmap;
    iget-object v2, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-static {v1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager$TaskDescription;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 7332
    .end local v0    # "size":I
    .end local v1    # "icon":Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityClient;->setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V

    .line 7333
    return-void
.end method

.method public whitelist setTheme(I)V
    .locals 1
    .param p1, "resid"    # I

    .line 5345
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    .line 5346
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setTheme(I)V

    .line 5347
    return-void
.end method

.method public whitelist setTitle(I)V
    .locals 1
    .param p1, "titleId"    # I

    .line 7264
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 7265
    return-void
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 7249
    iput-object p1, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    .line 7250
    iget v0, p0, Landroid/app/Activity;->mTitleColor:I

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 7252
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 7253
    invoke-virtual {v0, p0, p1}, Landroid/app/Activity;->onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    .line 7255
    :cond_0
    return-void
.end method

.method public whitelist setTitleColor(I)V
    .locals 1
    .param p1, "textColor"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7279
    iput p1, p0, Landroid/app/Activity;->mTitleColor:I

    .line 7280
    iget-object v0, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 7281
    return-void
.end method

.method public whitelist setTranslucent(Z)Z
    .locals 1
    .param p1, "translucent"    # Z

    .line 7749
    if-eqz p1, :cond_0

    .line 7750
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z

    move-result v0

    return v0

    .line 7752
    :cond_0
    invoke-direct {p0}, Landroid/app/Activity;->convertFromTranslucentInternal()Z

    move-result v0

    return v0
.end method

.method public whitelist setTurnScreenOn(Z)V
    .locals 2
    .param p1, "turnScreenOn"    # Z

    .line 9260
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->setTurnScreenOn(Landroid/os/IBinder;Z)V

    .line 9261
    return-void
.end method

.method public whitelist setVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 6742
    iget-boolean v0, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eq v0, p1, :cond_1

    .line 6743
    iput-boolean p1, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    .line 6744
    iget-boolean v0, p0, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v0, :cond_1

    .line 6745
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->makeVisible()V

    goto :goto_0

    .line 6746
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6749
    :cond_1
    :goto_0
    return-void
.end method

.method greylist-max-o setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 5
    .param p1, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    .line 2108
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v0, :cond_0

    .line 2109
    invoke-virtual {v0}, Landroid/app/VoiceInteractor;->getActiveRequests()[Landroid/app/VoiceInteractor$Request;

    move-result-object v0

    .line 2110
    .local v0, "requests":[Landroid/app/VoiceInteractor$Request;
    if-eqz v0, :cond_0

    .line 2111
    iget-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    invoke-virtual {v1}, Landroid/app/VoiceInteractor;->getActiveRequests()[Landroid/app/VoiceInteractor$Request;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 2112
    .local v4, "activeRequest":Landroid/app/VoiceInteractor$Request;
    invoke-virtual {v4}, Landroid/app/VoiceInteractor$Request;->cancel()V

    .line 2113
    invoke-virtual {v4}, Landroid/app/VoiceInteractor$Request;->clear()V

    .line 2111
    .end local v4    # "activeRequest":Landroid/app/VoiceInteractor$Request;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2117
    .end local v0    # "requests":[Landroid/app/VoiceInteractor$Request;
    :cond_0
    if-nez p1, :cond_1

    .line 2118
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    goto :goto_1

    .line 2120
    :cond_1
    new-instance v0, Landroid/app/VoiceInteractor;

    .line 2121
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, p0, p0, v1}, Landroid/app/VoiceInteractor;-><init>(Lcom/android/internal/app/IVoiceInteractor;Landroid/content/Context;Landroid/app/Activity;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    .line 2123
    :goto_1
    return-void
.end method

.method public final whitelist setVolumeControlStream(I)V
    .locals 1
    .param p1, "streamType"    # I

    .line 7435
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 7436
    return-void
.end method

.method public whitelist setVrModeEnabled(ZLandroid/content/ComponentName;)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "requestedComponent"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 8129
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/ActivityClient;->setVrMode(Landroid/os/IBinder;ZLandroid/content/ComponentName;)I

    move-result v0

    if-nez v0, :cond_0

    .line 8132
    return-void

    .line 8130
    :cond_0
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist shouldDockBigOverlays()Z
    .locals 1

    .line 3061
    iget-boolean v0, p0, Landroid/app/Activity;->mShouldDockBigOverlays:Z

    return v0
.end method

.method public whitelist shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .line 5538
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 7
    .param p1, "targetIntent"    # Landroid/content/Intent;

    .line 8236
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 8237
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 8238
    .local v2, "cn":Landroid/content/ComponentName;
    if-nez v2, :cond_0

    .line 8239
    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    move-object v2, v3

    .line 8241
    :cond_0
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 8242
    .local v3, "info":Landroid/content/pm/ActivityInfo;
    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 8243
    return v0

    .line 8245
    :cond_1
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v4

    iget-object v5, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/app/ActivityClient;->shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 8246
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "cn":Landroid/content/ComponentName;
    .end local v3    # "info":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v1

    .line 8247
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method public whitelist showAssist(Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .line 2656
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public final whitelist showDialog(I)V
    .locals 1
    .param p1, "id"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5021
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    .line 5022
    return-void
.end method

.method public final whitelist showDialog(ILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5056
    iget-object v0, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 5057
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    .line 5059
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity$ManagedDialog;

    .line 5060
    .local v0, "md":Landroid/app/Activity$ManagedDialog;
    if-nez v0, :cond_2

    .line 5061
    new-instance v1, Landroid/app/Activity$ManagedDialog;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/app/Activity$ManagedDialog;-><init>(Landroid/app/Activity$ManagedDialog-IA;)V

    move-object v0, v1

    .line 5062
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1, v2, p2}, Landroid/app/Activity;->createDialog(Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    .line 5063
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    if-nez v1, :cond_1

    .line 5064
    const/4 v1, 0x0

    return v1

    .line 5066
    :cond_1
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5069
    :cond_2
    iput-object p2, v0, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    .line 5070
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0, p1, v1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 5071
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 5072
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist showLockTaskEscapeMessage()V
    .locals 2

    .line 9037
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->showLockTaskEscapeMessage(Landroid/os/IBinder;)V

    .line 9038
    return-void
.end method

.method public whitelist startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .line 8144
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public whitelist startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .line 8158
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public whitelist startActivities([Landroid/content/Intent;)V
    .locals 1
    .param p1, "intents"    # [Landroid/content/Intent;

    .line 6069
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 6070
    return-void
.end method

.method public whitelist startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 6096
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v1, p0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/app/Instrumentation;->execStartActivities(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 6098
    return-void
.end method

.method public whitelist startActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 6019
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 6020
    return-void
.end method

.method public whitelist startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 6046
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1, v1}, Landroid/view/autofill/AutofillClientController;->onStartActivity(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 6047
    const/4 v0, -0x1

    if-eqz p2, :cond_0

    .line 6048
    invoke-virtual {p0, p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 6052
    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 6054
    :goto_0
    return-void
.end method

.method public greylist-max-o startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "ignoreTargetSecurity"    # Z
    .param p4, "userId"    # I

    .line 5859
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZII)V

    .line 5860
    return-void
.end method

.method public blacklist startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZII)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "ignoreTargetSecurity"    # Z
    .param p4, "userId"    # I
    .param p5, "requestCode"    # I

    .line 5870
    move-object v10, p0

    iget-object v0, v10, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 5873
    move-object v0, p2

    invoke-direct {p0, p2}, Landroid/app/Activity;->transferSpringboardActivityOptions(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v11

    .line 5874
    .end local p2    # "options":Landroid/os/Bundle;
    .local v11, "options":Landroid/os/Bundle;
    iget-object v0, v10, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, v10, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 5876
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, v10, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 5875
    move-object v1, p0

    move-object v4, p0

    move-object v5, p1

    move/from16 v6, p5

    move-object v7, v11

    move v8, p3

    move/from16 v9, p4

    invoke-virtual/range {v0 .. v9}, Landroid/app/Instrumentation;->execStartActivityAsCaller(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;ZI)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    .line 5878
    .local v0, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v0, :cond_0

    .line 5879
    iget-object v1, v10, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v2, v10, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v3, v10, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    .line 5880
    invoke-virtual {v0}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v5

    invoke-virtual {v0}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v6

    .line 5879
    move/from16 v4, p5

    invoke-virtual/range {v1 .. v6}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 5882
    :cond_0
    invoke-direct {p0, v11}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 5883
    return-void

    .line 5871
    .end local v0    # "ar":Landroid/app/Instrumentation$ActivityResult;
    .end local v11    # "options":Landroid/os/Bundle;
    .restart local p2    # "options":Landroid/os/Bundle;
    :cond_1
    move-object v0, p2

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Can\'t be called from a child"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 5826
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 5829
    invoke-direct {p0, p2}, Landroid/app/Activity;->transferSpringboardActivityOptions(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    .line 5830
    iget-object v1, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 5832
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    const/4 v7, -0x1

    .line 5831
    move-object v2, p0

    move-object v6, p1

    move-object v8, p2

    move-object v9, p3

    invoke-virtual/range {v1 .. v9}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    .line 5834
    .local v0, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v0, :cond_0

    .line 5835
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    const/4 v4, -0x1

    .line 5836
    invoke-virtual {v0}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v5

    .line 5837
    invoke-virtual {v0}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v6

    .line 5835
    invoke-virtual/range {v1 .. v6}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 5839
    :cond_0
    invoke-direct {p0, p2}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 5840
    return-void

    .line 5827
    .end local v0    # "ar":Landroid/app/Instrumentation$ActivityResult;
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t be called from a child"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 5806
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 5807
    return-void
.end method

.method public whitelist startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .line 5554
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 5555
    return-void
.end method

.method public whitelist startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .line 5593
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_2

    .line 5594
    invoke-direct {p0, p3}, Landroid/app/Activity;->transferSpringboardActivityOptions(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p3

    .line 5595
    iget-object v1, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 5597
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 5596
    move-object v2, p0

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    move-object v8, p3

    invoke-virtual/range {v1 .. v8}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    .line 5599
    .local v0, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v0, :cond_0

    .line 5600
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    .line 5601
    invoke-virtual {v0}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v5

    .line 5602
    invoke-virtual {v0}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v6

    .line 5600
    move v4, p2

    invoke-virtual/range {v1 .. v6}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 5604
    :cond_0
    if-ltz p2, :cond_1

    .line 5612
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Activity;->mStartedActivity:Z

    .line 5615
    :cond_1
    invoke-direct {p0, p3}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 5617
    .end local v0    # "ar":Landroid/app/Instrumentation$ActivityResult;
    goto :goto_0

    .line 5618
    :cond_2
    if-eqz p3, :cond_3

    .line 5619
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 5623
    :cond_3
    invoke-virtual {v0, p0, p1, p2}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 5626
    :goto_0
    return-void
.end method

.method public greylist-max-r startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 10
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .line 6422
    invoke-virtual {p0}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    move-result-object v0

    .line 6423
    .local v0, "referrer":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 6424
    const-string v1, "android.intent.extra.REFERRER"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6426
    :cond_0
    invoke-direct {p0, p4}, Landroid/app/Activity;->transferSpringboardActivityOptions(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p4

    .line 6427
    iget-object v2, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 6429
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v4

    iget-object v5, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 6428
    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    move-object v9, p4

    invoke-virtual/range {v2 .. v9}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v1

    .line 6431
    .local v1, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v1, :cond_1

    .line 6432
    iget-object v2, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 6434
    invoke-virtual {v1}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v6

    invoke-virtual {v1}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v7

    .line 6432
    move-object v4, p1

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 6436
    :cond_1
    invoke-direct {p0, p4}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 6437
    return-void
.end method

.method public whitelist startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5737
    iget-object v2, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 5738
    return-void
.end method

.method public whitelist startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5699
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 5700
    return-void
.end method

.method public whitelist startActivityForResultAsUser(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultWho"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;
    .param p5, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5776
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_2

    .line 5779
    invoke-direct {p0, p4}, Landroid/app/Activity;->transferSpringboardActivityOptions(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p4

    .line 5780
    iget-object v1, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 5781
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 5780
    move-object v2, p0

    move-object v5, p2

    move-object v6, p1

    move v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-virtual/range {v1 .. v9}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    .line 5783
    .local v0, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v0, :cond_0

    .line 5784
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    .line 5785
    invoke-virtual {v0}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v5

    invoke-virtual {v0}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v6

    .line 5784
    move v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 5787
    :cond_0
    if-ltz p3, :cond_1

    .line 5795
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Activity;->mStartedActivity:Z

    .line 5798
    :cond_1
    invoke-direct {p0, p4}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 5799
    return-void

    .line 5777
    .end local v0    # "ar":Landroid/app/Instrumentation$ActivityResult;
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t be called from a child"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 1
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6318
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 6319
    return-void
.end method

.method public whitelist startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 8
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6345
    invoke-direct {p0, p4}, Landroid/app/Activity;->transferSpringboardActivityOptions(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p4

    .line 6346
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 6348
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 6347
    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    .line 6350
    .local v0, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v0, :cond_0

    .line 6351
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v3, p1, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    .line 6353
    invoke-virtual {v0}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v5

    invoke-virtual {v0}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v6

    .line 6351
    move v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 6355
    :cond_0
    invoke-direct {p0, p4}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 6356
    return-void
.end method

.method public whitelist startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6377
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 6378
    return-void
.end method

.method public whitelist startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6406
    iget-object v0, p1, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/app/Activity;->startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 6407
    return-void
.end method

.method public whitelist startActivityIfNeeded(Landroid/content/Intent;I)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .line 6173
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public whitelist startActivityIfNeeded(Landroid/content/Intent;ILandroid/os/Bundle;)Z
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .line 6208
    move-object/from16 v1, p0

    move-object/from16 v14, p1

    iget-object v0, v1, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_3

    .line 6209
    const/4 v15, 0x1

    .line 6211
    .local v15, "result":I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    move-result-object v0

    .line 6212
    .local v0, "referrer":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 6213
    const-string v2, "android.intent.extra.REFERRER"

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6215
    :cond_0
    invoke-virtual {v14, v1}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    .line 6216
    invoke-virtual {v14, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 6217
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    iget-object v3, v1, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 6218
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 6219
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 6220
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v14, v6}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v9, v1, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 6218
    move-object/from16 v6, p1

    move/from16 v10, p2

    move-object/from16 v13, p3

    invoke-interface/range {v2 .. v13}, Landroid/app/IActivityTaskManager;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v15, v2

    .line 6224
    .end local v0    # "referrer":Landroid/net/Uri;
    goto :goto_0

    .line 6222
    :catch_0
    move-exception v0

    .line 6226
    :goto_0
    invoke-static {v15, v14}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V

    .line 6228
    const/4 v0, 0x1

    if-ltz p2, :cond_1

    .line 6236
    iput-boolean v0, v1, Landroid/app/Activity;->mStartedActivity:Z

    .line 6238
    :cond_1
    if-eq v15, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 6241
    .end local v15    # "result":I
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "startActivityIfNeeded can only be called from a top-level activity"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    .locals 7
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "fillInIntent"    # Landroid/content/Intent;
    .param p3, "flagsMask"    # I
    .param p4, "flagsValues"    # I
    .param p5, "extraFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 6117
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 6119
    return-void
.end method

.method public whitelist startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "fillInIntent"    # Landroid/content/Intent;
    .param p3, "flagsMask"    # I
    .param p4, "flagsValues"    # I
    .param p5, "extraFlags"    # I
    .param p6, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 6145
    if-eqz p6, :cond_0

    .line 6146
    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    goto :goto_0

    .line 6151
    :cond_0
    const/4 v5, -0x1

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-virtual/range {v3 .. v9}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    .line 6154
    :goto_0
    return-void
.end method

.method public whitelist startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 8
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 5903
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 5905
    return-void
.end method

.method public whitelist startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 5947
    move-object v9, p0

    iget-object v0, v9, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 5948
    iget-object v2, v9, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResultInner(Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V

    goto :goto_0

    .line 5950
    :cond_0
    if-eqz p7, :cond_1

    .line 5951
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    goto :goto_0

    .line 5956
    :cond_1
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    .line 5959
    :goto_0
    return-void
.end method

.method public blacklist startIntentSenderForResult(Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "who"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 5915
    invoke-virtual/range {p0 .. p7}, Landroid/app/Activity;->startIntentSenderForResultInner(Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V

    .line 5917
    return-void
.end method

.method public greylist-max-o startIntentSenderForResultInner(Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V
    .locals 16
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "who"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v14, p4

    .line 5969
    move-object/from16 v2, p7

    :try_start_0
    invoke-direct {v1, v2}, Landroid/app/Activity;->transferSpringboardActivityOptions(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v15, v0

    .line 5970
    .end local p7    # "options":Landroid/os/Bundle;
    .local v15, "options":Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 5971
    .local v0, "resolvedType":Ljava/lang/String;
    if-eqz v14, :cond_0

    .line 5972
    :try_start_1
    invoke-virtual {v14, v1}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    .line 5973
    invoke-virtual {v14, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 5974
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 5976
    :cond_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    iget-object v3, v1, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 5977
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    .line 5978
    const/4 v13, 0x0

    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/content/IntentSender;->getTarget()Landroid/content/IIntentSender;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v13

    .line 5979
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/content/IntentSender;->getWhitelistToken()Landroid/os/IBinder;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, v13

    :goto_1
    iget-object v8, v1, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 5977
    move-object/from16 v6, p4

    move-object v7, v0

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 p7, v0

    move-object v0, v13

    .end local v0    # "resolvedType":Ljava/lang/String;
    .local p7, "resolvedType":Ljava/lang/String;
    move-object v13, v15

    invoke-interface/range {v2 .. v13}, Landroid/app/IActivityTaskManager;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IIntentSender;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v2

    .line 5982
    .local v2, "result":I
    const/16 v3, -0x60

    if-eq v2, v3, :cond_4

    .line 5985
    invoke-static {v2, v0}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V

    .line 5987
    if-eqz v15, :cond_3

    .line 5990
    invoke-direct {v1, v15}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 5993
    .end local v2    # "result":I
    .end local p7    # "resolvedType":Ljava/lang/String;
    :cond_3
    goto :goto_2

    .line 5983
    .restart local v2    # "result":I
    .restart local p7    # "resolvedType":Ljava/lang/String;
    :cond_4
    new-instance v0, Landroid/content/IntentSender$SendIntentException;

    invoke-direct {v0}, Landroid/content/IntentSender$SendIntentException;-><init>()V

    .end local v15    # "options":Landroid/os/Bundle;
    .end local p0    # "this":Landroid/app/Activity;
    .end local p1    # "intent":Landroid/content/IntentSender;
    .end local p2    # "who":Ljava/lang/String;
    .end local p3    # "requestCode":I
    .end local p4    # "fillInIntent":Landroid/content/Intent;
    .end local p5    # "flagsMask":I
    .end local p6    # "flagsValues":I
    throw v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5992
    .end local v2    # "result":I
    .end local p7    # "resolvedType":Ljava/lang/String;
    .restart local v15    # "options":Landroid/os/Bundle;
    .restart local p0    # "this":Landroid/app/Activity;
    .restart local p1    # "intent":Landroid/content/IntentSender;
    .restart local p2    # "who":Ljava/lang/String;
    .restart local p3    # "requestCode":I
    .restart local p4    # "fillInIntent":Landroid/content/Intent;
    .restart local p5    # "flagsMask":I
    .restart local p6    # "flagsValues":I
    :catch_0
    move-exception v0

    goto :goto_2

    .end local v15    # "options":Landroid/os/Bundle;
    .local p7, "options":Landroid/os/Bundle;
    :catch_1
    move-exception v0

    move-object v15, v2

    .line 5994
    .end local p7    # "options":Landroid/os/Bundle;
    .restart local v15    # "options":Landroid/os/Bundle;
    :goto_2
    if-ltz p3, :cond_5

    .line 6002
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/app/Activity;->mStartedActivity:Z

    .line 6004
    :cond_5
    return-void
.end method

.method public whitelist startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 9
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "extraFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6458
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 6460
    return-void
.end method

.method public whitelist startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 9
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "extraFlags"    # I
    .param p8, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6476
    move-object v0, p1

    iget-object v3, v0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p8

    invoke-virtual/range {v1 .. v8}, Landroid/app/Activity;->startIntentSenderForResultInner(Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V

    .line 6478
    return-void
.end method

.method public whitelist startLocalVoiceInteraction(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "privateOptions"    # Landroid/os/Bundle;

    .line 2193
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 2194
    return-void
.end method

.method public whitelist startLockTask()V
    .locals 2

    .line 9008
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->startLockTaskModeByToken(Landroid/os/IBinder;)V

    .line 9009
    return-void
.end method

.method public whitelist startManagingCursor(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "c"    # Landroid/database/Cursor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3466
    iget-object v0, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3467
    :try_start_0
    iget-object v1, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    new-instance v2, Landroid/app/Activity$ManagedCursor;

    invoke-direct {v2, p1}, Landroid/app/Activity$ManagedCursor;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3468
    monitor-exit v0

    .line 3469
    return-void

    .line 3468
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist startNextMatchingActivity(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 6260
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startNextMatchingActivity(Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public whitelist startNextMatchingActivity(Landroid/content/Intent;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 6284
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 6286
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    .line 6287
    invoke-virtual {p1, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 6288
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 6289
    invoke-interface {v0, v1, p1, p2}, Landroid/app/IActivityTaskManager;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6288
    return v0

    .line 6290
    :catch_0
    move-exception v0

    .line 6293
    const/4 v0, 0x0

    return v0

    .line 6296
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "startNextMatchingActivity can only be called from a top-level activity"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist startPostponedEnterTransition()V
    .locals 1

    .line 8409
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0}, Landroid/app/ActivityTransitionState;->startPostponedEnterTransition()V

    .line 8410
    return-void
.end method

.method public whitelist startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 6
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "appSearchData"    # Landroid/os/Bundle;
    .param p4, "globalSearch"    # Z

    .line 5239
    invoke-direct {p0}, Landroid/app/Activity;->ensureSearchManager()V

    .line 5240
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 5242
    return-void
.end method

.method public whitelist stopLocalVoiceInteraction()V
    .locals 2

    .line 2219
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->stopLocalVoiceInteraction(Landroid/os/IBinder;)V

    .line 2220
    return-void
.end method

.method public whitelist stopLockTask()V
    .locals 2

    .line 9028
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->stopLockTaskModeByToken(Landroid/os/IBinder;)V

    .line 9029
    return-void
.end method

.method public whitelist stopManagingCursor(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "c"    # Landroid/database/Cursor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3490
    iget-object v0, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3491
    :try_start_0
    iget-object v1, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3492
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3493
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity$ManagedCursor;

    .line 3494
    .local v3, "mc":Landroid/app/Activity$ManagedCursor;
    invoke-static {v3}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fgetmCursor(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 3495
    iget-object v4, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3496
    goto :goto_1

    .line 3492
    .end local v3    # "mc":Landroid/app/Activity$ManagedCursor;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3499
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_1
    :goto_1
    monitor-exit v0

    .line 3500
    return-void

    .line 3499
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist takeKeyEvents(Z)V
    .locals 1
    .param p1, "get"    # Z

    .line 5267
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->takeKeyEvents(Z)V

    .line 5268
    return-void
.end method

.method public whitelist triggerSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "appSearchData"    # Landroid/os/Bundle;

    .line 5255
    invoke-direct {p0}, Landroid/app/Activity;->ensureSearchManager()V

    .line 5256
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Landroid/app/SearchManager;->triggerSearch(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;)V

    .line 5257
    return-void
.end method

.method public whitelist unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 2
    .param p1, "callback"    # Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1380
    iget-object v0, p0, Landroid/app/Activity;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1381
    :try_start_0
    iget-object v1, p0, Landroid/app/Activity;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1382
    monitor-exit v0

    .line 1383
    return-void

    .line 1382
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 1
    .param p1, "callback"    # Landroid/content/ComponentCallbacks;

    .line 1400
    iget-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    if-eqz v0, :cond_0

    .line 1401
    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->unregisterCallbacks(Landroid/content/ComponentCallbacks;)V

    goto :goto_0

    .line 1403
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 1405
    :goto_0
    return-void
.end method

.method public whitelist unregisterForContextMenu(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 4865
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 4866
    return-void
.end method

.method public blacklist unregisterRemoteAnimations()V
    .locals 2

    .line 9288
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->unregisterRemoteAnimations(Landroid/os/IBinder;)V

    .line 9289
    return-void
.end method

.method public blacklist updateUiTranslationState(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V
    .locals 8
    .param p1, "state"    # I
    .param p2, "sourceSpec"    # Landroid/view/translation/TranslationSpec;
    .param p3, "targetSpec"    # Landroid/view/translation/TranslationSpec;
    .param p5, "uiTranslationSpec"    # Landroid/view/translation/UiTranslationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/translation/TranslationSpec;",
            "Landroid/view/translation/TranslationSpec;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Landroid/view/translation/UiTranslationSpec;",
            ")V"
        }
    .end annotation

    .line 9298
    .local p4, "viewIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    iget-object v0, p0, Landroid/app/Activity;->mUiTranslationController:Landroid/view/translation/UiTranslationController;

    if-nez v0, :cond_0

    .line 9299
    new-instance v0, Landroid/view/translation/UiTranslationController;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/view/translation/UiTranslationController;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/Activity;->mUiTranslationController:Landroid/view/translation/UiTranslationController;

    .line 9301
    :cond_0
    iget-object v2, p0, Landroid/app/Activity;->mUiTranslationController:Landroid/view/translation/UiTranslationController;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/view/translation/UiTranslationController;->updateUiTranslationState(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V

    .line 9303
    return-void
.end method
