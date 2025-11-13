.class public Landroid/inputmethodservice/InputMethodService;
.super Landroid/inputmethodservice/AbstractInputMethodService;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/InputMethodService$SettingsObserver;,
        Landroid/inputmethodservice/InputMethodService$Insets;,
        Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;,
        Landroid/inputmethodservice/InputMethodService$InputMethodImpl;,
        Landroid/inputmethodservice/InputMethodService$InputMethodServiceRune;,
        Landroid/inputmethodservice/InputMethodService$BackDispositionMode;
    }
.end annotation


# static fields
.field private static final blacklist ACTION_INPUTMETHOD_STARTING_SSRM:Ljava/lang/String; = "com.samsung.android.intent.action.INPUTMETHOD_STARTING"

.field public static final whitelist BACK_DISPOSITION_ADJUST_NOTHING:I = 0x3

.field public static final whitelist BACK_DISPOSITION_DEFAULT:I = 0x0

.field private static final greylist-max-o BACK_DISPOSITION_MAX:I = 0x3

.field private static final greylist-max-o BACK_DISPOSITION_MIN:I = 0x0

.field public static final whitelist BACK_DISPOSITION_WILL_DISMISS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist BACK_DISPOSITION_WILL_NOT_DISMISS:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final greylist-max-o DEBUG:Z = false

.field private static final blacklist DEX_CONTENT_URI:Landroid/net/Uri;

.field private static final blacklist DEX_CONTENT_URI_FOR_ON_CHANGE:Landroid/net/Uri;

.field public static final blacklist FINISH_INPUT_NO_FALLBACK_CONNECTION:J = 0x94fa793L

.field public static final greylist-max-o IME_ACTIVE:I = 0x1

.field public static final blacklist IME_INVISIBLE:I = 0x4

.field public static final greylist-max-o IME_VISIBLE:I = 0x2

.field public static final blacklist IME_VISIBLE_IMPERCEPTIBLE:I = 0x8

.field private static final blacklist IS_MOVABLE_KEYPAD:Ljava/lang/String; = "AxT9IME.isMovableKeypad"

.field private static final blacklist IS_VISIBLE_CANDIDATE:Ljava/lang/String; = "AxT9IME.isVisibleCandidate"

.field private static final blacklist IS_VISIBLE_WINDOW:Ljava/lang/String; = "AxT9IME.isVisibleWindow"

.field private static final blacklist IS_VISIBLE_WINDOW_SSRM:Ljava/lang/String; = "visible"

.field private static final blacklist MAX_EVENTS_BUFFER:I = 0x1f4

.field private static final blacklist METHOD_ID_BIXBY_DICTATION:Ljava/lang/String; = "com.samsung.android.bixby.service/.dictation.DictationInputMethodService"

.field static final greylist-max-o MOVEMENT_DOWN:I = -0x1

.field static final greylist-max-o MOVEMENT_UP:I = -0x2

.field private static final blacklist PROP_CAN_RENDER_GESTURAL_NAV_BUTTONS:Ljava/lang/String; = "persist.sys.ime.can_render_gestural_nav_buttons"

.field private static final blacklist REQUEST_AXT9INFO_CLOSE:Ljava/lang/String; = "com.samsung.axt9info.close"

.field private static final blacklist RESPONSE_AXT9INFO:Ljava/lang/String; = "ResponseAxT9Info"

.field static final blacklist SEP_IMF_RUNE:Z = true

.field private static final blacklist SETTINGS_KEY_KEYBOARD_DEX:Ljava/lang/String; = "keyboard_dex"

.field private static final blacklist SETTINGS_KEY_TOUCH_KEYBOARD:Ljava/lang/String; = "touch_keyboard"

.field static final greylist-max-o TAG:Ljava/lang/String; = "InputMethodService"

.field private static final blacklist TIMEOUT_SURFACE_REMOVAL_MILLIS:J = 0x1f4L


# instance fields
.field final greylist-max-o mActionClickListener:Landroid/view/View$OnClickListener;

.field private blacklist mBackCallbackRegistered:Ljava/lang/Boolean;

.field greylist-max-o mBackDisposition:I

.field private blacklist mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field greylist-max-o mCandidatesFrame:Landroid/widget/FrameLayout;

.field greylist-max-o mCandidatesViewStarted:Z

.field greylist-max-o mCandidatesVisibility:I

.field private final blacklist mCompatBackCallback:Landroid/window/CompatOnBackInvokedCallback;

.field private blacklist mConfigTracker:Landroid/inputmethodservice/ImsConfigurationTracker;

.field greylist-max-o mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field private blacklist mCurHideInputToken:Landroid/os/IBinder;

.field private blacklist mCurShowInputToken:Landroid/os/IBinder;

.field private blacklist mCurrentNightMode:I

.field blacklist mDecorViewVisible:Z

.field blacklist mDecorViewWasVisible:Z

.field blacklist mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private blacklist mDestroyed:Z

.field private final blacklist mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

.field greylist-max-o mExtractAccessories:Landroid/view/ViewGroup;

.field greylist-max-o mExtractAction:Landroid/view/View;

.field greylist mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

.field greylist-max-o mExtractFrame:Landroid/widget/FrameLayout;

.field greylist mExtractView:Landroid/view/View;

.field greylist-max-o mExtractViewHidden:Z

.field greylist-max-o mExtractedText:Landroid/view/inputmethod/ExtractedText;

.field greylist-max-o mExtractedToken:I

.field private blacklist mFocusedDisplayId:I

.field greylist-max-o mFullscreenApplied:Z

.field greylist-max-o mFullscreenArea:Landroid/view/ViewGroup;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

.field private blacklist mHandwritingRequestId:Ljava/util/OptionalInt;

.field private blacklist mHideNavBarForKeyboard:Z

.field private blacklist mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

.field private blacklist mImeSurfaceScheduledForRemoval:Z

.field greylist-max-o mImm:Landroid/view/inputmethod/InputMethodManager;

.field greylist-max-o mInShowWindow:Z

.field greylist-max-o mInflater:Landroid/view/LayoutInflater;

.field greylist-max-o mInitialized:Z

.field private blacklist mInkWindow:Landroid/inputmethodservice/InkWindow;

.field private blacklist mInlineSuggestionSessionController:Landroid/inputmethodservice/InlineSuggestionSessionController;

.field greylist-max-o mInputBinding:Landroid/view/inputmethod/InputBinding;

.field greylist-max-o mInputConnection:Landroid/view/inputmethod/InputConnection;

.field greylist-max-o mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field greylist-max-o mInputFrame:Landroid/widget/FrameLayout;

.field greylist-max-o mInputStarted:Z

.field greylist-max-o mInputView:Landroid/view/View;

.field greylist-max-o mInputViewStarted:Z

.field final greylist-max-o mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field private blacklist mIsAutomotive:Z

.field greylist-max-o mIsFullscreen:Z

.field greylist-max-o mIsInputViewShown:Z

.field private blacklist mIsLastWindowVisible:Z

.field protected blacklist mIsMovable:Z

.field blacklist mIsVisibleWindow:Z

.field greylist-max-o mLastShowInputRequested:Z

.field private blacklist mLastWasInFullscreenMode:Z

.field private blacklist mLock:Ljava/lang/Object;

.field private final blacklist mNavigationBarController:Landroid/inputmethodservice/NavigationBarController;

.field private blacklist mNotifyUserActionSent:Z

.field private blacklist mOnPreparedStylusHwCalled:Z

.field private blacklist mPendingEvents:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

.field greylist mRootView:Landroid/view/View;

.field private greylist-max-r mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

.field greylist-max-o mShowInputFlags:I

.field greylist-max-o mShowInputRequested:Z

.field blacklist mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

.field greylist-max-o mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

.field greylist-max-o mStatusIcon:I

.field private blacklist mTargetDisplayContext:Landroid/content/Context;

.field greylist-max-p mTheme:I

.field greylist-max-o mThemeAttrs:Landroid/content/res/TypedArray;

.field final greylist-max-p mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

.field final greylist-max-o mTmpLocation:[I

.field greylist-max-o mToken:Landroid/os/IBinder;

.field blacklist mViewsCreated:Z

.field greylist-max-o mWindow:Landroid/inputmethodservice/SoftInputWindow;

.field greylist-max-o mWindowVisible:Z

.field blacklist minimized:Z

.field blacklist needSetlayout:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$-vPZ7V8VU8u6dYeZosnYXOoHJXE(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->resetStateForNewConfiguration()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$I2MHKh0Hj5M_t-sKBgZ9yhLUrWY(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->compatHandleBack()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$nMoGsSshcBNZe61VPESespVJMGQ(Landroid/inputmethodservice/InputMethodService;)Landroid/os/IBinder;
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getHostInputToken()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConfigTracker(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/ImsConfigurationTracker;
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/InputMethodService;->mConfigTracker:Landroid/inputmethodservice/ImsConfigurationTracker;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDestroyed(Landroid/inputmethodservice/InputMethodService;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/inputmethodservice/InputMethodService;->mDestroyed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDumper(Landroid/inputmethodservice/InputMethodService;)Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/InputMethodService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFocusedDisplayId(Landroid/inputmethodservice/InputMethodService;)I
    .locals 0

    iget p0, p0, Landroid/inputmethodservice/InputMethodService;->mFocusedDisplayId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandwritingRequestId(Landroid/inputmethodservice/InputMethodService;)Ljava/util/OptionalInt;
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingRequestId:Ljava/util/OptionalInt;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInkWindow(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/InkWindow;
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInlineSuggestionSessionController(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/InlineSuggestionSessionController;
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/InputMethodService;->mInlineSuggestionSessionController:Landroid/inputmethodservice/InlineSuggestionSessionController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/inputmethodservice/InputMethodService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/InputMethodService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNavigationBarController(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/NavigationBarController;
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/InputMethodService;->mNavigationBarController:Landroid/inputmethodservice/NavigationBarController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNotifyUserActionSent(Landroid/inputmethodservice/InputMethodService;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/inputmethodservice/InputMethodService;->mNotifyUserActionSent:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnPreparedStylusHwCalled(Landroid/inputmethodservice/InputMethodService;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/inputmethodservice/InputMethodService;->mOnPreparedStylusHwCalled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPrivOps(Landroid/inputmethodservice/InputMethodService;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSettingsObserver(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/InputMethodService$SettingsObserver;
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurHideInputToken(Landroid/inputmethodservice/InputMethodService;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mCurHideInputToken:Landroid/os/IBinder;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurShowInputToken(Landroid/inputmethodservice/InputMethodService;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mCurShowInputToken:Landroid/os/IBinder;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHandwritingEventReceiver(Landroid/inputmethodservice/InputMethodService;Landroid/view/InputEventReceiver;)V
    .locals 0

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHandwritingRequestId(Landroid/inputmethodservice/InputMethodService;Ljava/util/OptionalInt;)V
    .locals 0

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingRequestId:Ljava/util/OptionalInt;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmImeDispatcher(Landroid/inputmethodservice/InputMethodService;Landroid/window/ImeOnBackInvokedDispatcher;)V
    .locals 0

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInkWindow(Landroid/inputmethodservice/InputMethodService;Landroid/inputmethodservice/InkWindow;)V
    .locals 0

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNotifyUserActionSent(Landroid/inputmethodservice/InputMethodService;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/inputmethodservice/InputMethodService;->mNotifyUserActionSent:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOnPreparedStylusHwCalled(Landroid/inputmethodservice/InputMethodService;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/inputmethodservice/InputMethodService;->mOnPreparedStylusHwCalled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchOnCurrentInputMethodSubtypeChanged(Landroid/inputmethodservice/InputMethodService;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService;->dispatchOnCurrentInputMethodSubtypeChanged(Landroid/view/inputmethod/InputMethodSubtype;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchOnShowInputRequested(Landroid/inputmethodservice/InputMethodService;IZ)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->dispatchOnShowInputRequested(IZ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetOnscreenKeyboardForDEXValue(Landroid/inputmethodservice/InputMethodService;)Z
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getOnscreenKeyboardForDEXValue()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misDEXStandAloneMode(Landroid/inputmethodservice/InputMethodService;)Z
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->isDEXStandAloneMode()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misDeskTopMode(Landroid/inputmethodservice/InputMethodService;)Z
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->isDeskTopMode()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misPackageExist(Landroid/inputmethodservice/InputMethodService;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService;->isPackageExist(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misSystemUser(Landroid/inputmethodservice/InputMethodService;)Z
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->isSystemUser()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mmapToImeWindowStatus(Landroid/inputmethodservice/InputMethodService;)I
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->mapToImeWindowStatus()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$monShowSideSyncSoftInput(Landroid/inputmethodservice/InputMethodService;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onShowSideSyncSoftInput(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monToggleSoftInput(Landroid/inputmethodservice/InputMethodService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onToggleSoftInput(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreportFullscreenMode(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->reportFullscreenMode()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mresetStateForNewConfiguration(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->resetStateForNewConfiguration()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mscheduleImeSurfaceRemoval(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->scheduleImeSurfaceRemoval()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetImeWindowStatus(Landroid/inputmethodservice/InputMethodService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->setImeWindowStatus(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEX_CONTENT_URI()Landroid/net/Uri;
    .locals 1

    sget-object v0, Landroid/inputmethodservice/InputMethodService;->DEX_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEX_CONTENT_URI_FOR_ON_CHANGE()Landroid/net/Uri;
    .locals 1

    sget-object v0, Landroid/inputmethodservice/InputMethodService;->DEX_CONTENT_URI_FOR_ON_CHANGE:Landroid/net/Uri;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 712
    const-string v0, "content://0@com.sec.android.desktopmode.uiservice.SettingsProvider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/inputmethodservice/InputMethodService;->DEX_CONTENT_URI:Landroid/net/Uri;

    .line 713
    const-string v0, "content://com.sec.android.desktopmode.uiservice.SettingsProvider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/inputmethodservice/InputMethodService;->DEX_CONTENT_URI_FOR_ON_CHANGE:Landroid/net/Uri;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    .line 360
    invoke-direct {p0}, Landroid/inputmethodservice/AbstractInputMethodService;-><init>()V

    .line 399
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mBackCallbackRegistered:Ljava/lang/Boolean;

    .line 400
    new-instance v1, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda1;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mCompatBackCallback:Landroid/window/CompatOnBackInvokedCallback;

    .line 549
    new-instance v1, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-direct {v1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;-><init>()V

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    .line 551
    new-instance v1, Landroid/inputmethodservice/NavigationBarController;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/NavigationBarController;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mNavigationBarController:Landroid/inputmethodservice/NavigationBarController;

    .line 555
    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    .line 637
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mLock:Ljava/lang/Object;

    .line 641
    new-instance v1, Landroid/inputmethodservice/InputMethodService$Insets;

    invoke-direct {v1}, Landroid/inputmethodservice/InputMethodService$Insets;-><init>()V

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    .line 643
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mTmpLocation:[I

    .line 649
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingRequestId:Ljava/util/OptionalInt;

    .line 653
    new-instance v1, Landroid/inputmethodservice/ImsConfigurationTracker;

    invoke-direct {v1}, Landroid/inputmethodservice/ImsConfigurationTracker;-><init>()V

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mConfigTracker:Landroid/inputmethodservice/ImsConfigurationTracker;

    .line 703
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->minimized:Z

    .line 704
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->needSetlayout:Z

    .line 711
    const/4 v1, -0x1

    iput v1, p0, Landroid/inputmethodservice/InputMethodService;->mFocusedDisplayId:I

    .line 724
    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mCurrentNightMode:I

    .line 729
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsMovable:Z

    .line 732
    new-instance v0, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda2;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 758
    new-instance v0, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda3;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mActionClickListener:Landroid/view/View$OnClickListener;

    .line 4350
    new-instance v0, Landroid/inputmethodservice/InputMethodService$2;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$2;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    .line 4423
    new-instance v0, Landroid/inputmethodservice/InputMethodService$3;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$3;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private blacklist adjustSideMargin(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "extractSideMargin"    # I

    .line 4546
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x30

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 4550
    .local v0, "paramsForCorner":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 4551
    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 4552
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4553
    return-void
.end method

.method private blacklist applyVisibilityInInsetsConsumerIfNecessary(Z)V
    .locals 4
    .param p1, "setVisible"    # Z

    .line 3162
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    const-string v2, "InputMethodService#applyVisibilityInInsetsConsumerIfNecessary"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/internal/inputmethod/ImeTracing;->triggerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V

    .line 3165
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    if-eqz p1, :cond_0

    .line 3166
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mCurShowInputToken:Landroid/os/IBinder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mCurHideInputToken:Landroid/os/IBinder;

    .line 3165
    :goto_0
    invoke-virtual {v0, v1, p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->applyImeVisibilityAsync(Landroid/os/IBinder;Z)V

    .line 3167
    return-void
.end method

.method public static blacklist canImeRenderGesturalNavButtons()Z
    .locals 2

    .line 419
    const-string v0, "persist.sys.ime.can_render_gestural_nav_buttons"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private blacklist cancelImeSurfaceRemoval()V
    .locals 2

    .line 1296
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mImeSurfaceScheduledForRemoval:Z

    if-eqz v1, :cond_0

    .line 1297
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1298
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mImeSurfaceScheduledForRemoval:Z

    .line 1300
    :cond_0
    return-void
.end method

.method private blacklist checkFocusedDisplay(Landroid/view/inputmethod/EditorInfo;)V
    .locals 3
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;

    .line 4594
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 4596
    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v1, "displayId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 4597
    .local v0, "displayId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkFocusedDisplay() display Id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "last "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mFocusedDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputMethodService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4598
    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mFocusedDisplayId:I

    if-eq v1, v0, :cond_0

    .line 4599
    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mFocusedDisplayId:I

    .line 4602
    .end local v0    # "displayId":I
    :cond_0
    return-void
.end method

.method private blacklist checkTargetContext()V
    .locals 8

    .line 4478
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getCurTokenDisplayId()I

    move-result v0

    .line 4479
    .local v0, "targetDisplayId":I
    const-string v1, "InputMethodService"

    const-string v2, "checkTargetContext "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4480
    const-string v2, "display"

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    .line 4482
    .local v2, "dm":Landroid/hardware/display/DisplayManager;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v3

    .line 4484
    .local v3, "displays":[Landroid/view/Display;
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 4485
    .local v6, "display":Landroid/view/Display;
    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    move-result v7

    if-ne v7, v0, :cond_0

    .line 4486
    invoke-virtual {p0, v6}, Landroid/inputmethodservice/InputMethodService;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mTargetDisplayContext:Landroid/content/Context;

    .line 4487
    goto :goto_1

    .line 4484
    .end local v6    # "display":Landroid/view/Display;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4491
    :cond_1
    :goto_1
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mTargetDisplayContext:Landroid/content/Context;

    if-nez v4, :cond_2

    .line 4492
    const-string v4, "checkTargetContext mTargetDisplayContext is null"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4494
    :cond_2
    return-void
.end method

.method private blacklist checkandshowInputMehtodPicker()V
    .locals 1

    .line 4541
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->dismissAndShowAgainInputMethodPicker()V

    .line 4542
    return-void
.end method

.method private blacklist compatHandleBack()V
    .locals 5

    .line 4392
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    if-nez v0, :cond_0

    .line 4393
    const-string v0, "InputMethodService"

    const-string v1, "Back callback invoked on a hidden IME. Removing the callback..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4394
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->unregisterCompatOnBackInvokedCallback()V

    .line 4395
    return-void

    .line 4397
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/inputmethodservice/InputMethodService;->createBackKeyEvent(IZ)Landroid/view/KeyEvent;

    move-result-object v1

    .line 4399
    .local v1, "downEvent":Landroid/view/KeyEvent;
    const/4 v2, 0x4

    invoke-virtual {p0, v2, v1}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 4400
    nop

    .line 4401
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v3, v4

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    move v0, v4

    .line 4402
    .local v0, "hasStartedTracking":Z
    :cond_1
    invoke-direct {p0, v4, v0}, Landroid/inputmethodservice/InputMethodService;->createBackKeyEvent(IZ)Landroid/view/KeyEvent;

    move-result-object v3

    .line 4403
    .local v3, "upEvent":Landroid/view/KeyEvent;
    invoke-virtual {p0, v2, v3}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 4404
    return-void
.end method

.method private blacklist createBackKeyEvent(IZ)Landroid/view/KeyEvent;
    .locals 16
    .param p1, "action"    # I
    .param p2, "isTracking"    # Z

    .line 3095
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 3096
    .local v13, "when":J
    new-instance v15, Landroid/view/KeyEvent;

    .line 3100
    if-eqz p2, :cond_0

    const/16 v0, 0x200

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    or-int/lit8 v11, v0, 0x48

    const/16 v12, 0x101

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object v0, v15

    move-wide v1, v13

    move-wide v3, v13

    move/from16 v5, p1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 3096
    return-object v15
.end method

.method private blacklist dispatchOnCurrentInputMethodSubtypeChanged(Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 2
    .param p1, "newSubtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .line 4148
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4149
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mNotifyUserActionSent:Z

    .line 4150
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4151
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onCurrentInputMethodSubtypeChanged(Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 4152
    return-void

    .line 4150
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private greylist-max-o dispatchOnShowInputRequested(IZ)Z
    .locals 2
    .param p1, "flags"    # I
    .param p2, "configChange"    # Z

    .line 3005
    invoke-virtual {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onShowInputRequested(IZ)Z

    move-result v0

    .line 3006
    .local v0, "result":Z
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInlineSuggestionSessionController:Landroid/inputmethodservice/InlineSuggestionSessionController;

    invoke-virtual {v1, v0}, Landroid/inputmethodservice/InlineSuggestionSessionController;->notifyOnShowInputRequested(Z)V

    .line 3007
    if-eqz v0, :cond_0

    .line 3008
    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    goto :goto_0

    .line 3010
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    .line 3012
    :goto_0
    return v0
.end method

.method private blacklist dumpDexMode(Landroid/util/Printer;)V
    .locals 2
    .param p1, "p"    # Landroid/util/Printer;

    .line 4416
    const-string v0, "Input method service Dex state"

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  DexDesktopMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->isDeskTopMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  DexStandAloneMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->isDEXStandAloneMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  DexShowOnScreenKeyboardInSamsungDex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getOnscreenKeyboardForDEXValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  DexDualViewEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->isDualViewEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4421
    return-void
.end method

.method private blacklist finishViews(Z)V
    .locals 1
    .param p1, "finishingInput"    # Z

    .line 3170
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    if-eqz v0, :cond_0

    .line 3172
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInlineSuggestionSessionController:Landroid/inputmethodservice/InlineSuggestionSessionController;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSessionController;->notifyOnFinishInputView()V

    .line 3173
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    goto :goto_0

    .line 3174
    :cond_0
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    if-eqz v0, :cond_1

    .line 3176
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onFinishCandidatesView(Z)V

    .line 3178
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    .line 3179
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    .line 3180
    return-void
.end method

.method private greylist-max-o getExtractEditTextIfVisible()Landroid/inputmethodservice/ExtractEditText;
    .locals 1

    .line 3499
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3502
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    return-object v0

    .line 3500
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getExtractSideMargin()I
    .locals 4

    .line 4558
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SYSTEMUI_CONFIG_CORNER_ROUND"

    const-string v2, "0.0"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 4561
    .local v0, "secFloatingFeatureSystemuiConfigCornerRound":F
    const/high16 v1, 0x41200000    # 10.0f

    sub-float/2addr v1, v0

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 4564
    .local v1, "extractSideMargin":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setExtractView, margin : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-int/lit8 v3, v1, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputMethodService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4565
    mul-int/lit8 v2, v1, 0x2

    return v2
.end method

.method private blacklist getHostInputToken()Landroid/os/IBinder;
    .locals 2

    .line 1243
    const/4 v0, 0x0

    .line 1244
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1245
    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1247
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getInputToken()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private greylist-max-o getIconForImeAction(I)I
    .locals 1
    .param p1, "imeOptions"    # I

    .line 3964
    and-int/lit16 v0, p1, 0xff

    packed-switch v0, :pswitch_data_0

    .line 3978
    const v0, 0x10803fb

    return v0

    .line 3976
    :pswitch_0
    const v0, 0x10803fa

    return v0

    .line 3974
    :pswitch_1
    const v0, 0x10803f7

    return v0

    .line 3972
    :pswitch_2
    const v0, 0x10803f9

    return v0

    .line 3970
    :pswitch_3
    const v0, 0x10803fd

    return v0

    .line 3968
    :pswitch_4
    const v0, 0x10803fc

    return v0

    .line 3966
    :pswitch_5
    const v0, 0x10803f8

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist getIsVisibleWindow()Z
    .locals 1

    .line 4412
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsVisibleWindow:Z

    return v0
.end method

.method private blacklist getNavigationBarHeight()I
    .locals 4

    .line 4776
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4777
    .local v0, "resources":Landroid/content/res/Resources;
    const-string v1, "navigation_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 4778
    .local v1, "resourceId":I
    if-lez v1, :cond_0

    .line 4779
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    return v2

    .line 4781
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private blacklist getOnscreenKeyboardForDEXValue()Z
    .locals 3

    .line 4497
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const-string v1, "keyboard_dex"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->getDexSettingsValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 4499
    .local v0, "showImeWithHardKeyboardForDEX":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOnscreenKeyboardForDEXValue showImeWithHardKeyboardForDEX() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputMethodService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4500
    return v0
.end method

.method private greylist-max-o handleBack(Z)Z
    .locals 3
    .param p1, "doIt"    # Z

    .line 3473
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3476
    if-eqz p1, :cond_0

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    .line 3477
    :cond_0
    return v1

    .line 3478
    :cond_1
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    if-eqz v0, :cond_4

    .line 3479
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-nez v0, :cond_2

    .line 3482
    if-eqz p1, :cond_3

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    goto :goto_0

    .line 3487
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    .line 3489
    :cond_3
    :goto_0
    return v1

    .line 3491
    :cond_4
    return v2
.end method

.method private blacklist isAutomotive()Z
    .locals 2

    .line 4284
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private blacklist isDEXStandAloneMode()Z
    .locals 6

    .line 4737
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    const/4 v1, 0x0

    const-string v2, "InputMethodService"

    if-eqz v0, :cond_1

    .line 4738
    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    .line 4739
    .local v0, "state":Lcom/samsung/android/desktopmode/SemDesktopModeState;
    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v3

    .line 4740
    .local v3, "type":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DESKTOP TYPE! : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4741
    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v4

    const/16 v5, 0x65

    if-ne v4, v5, :cond_0

    .line 4742
    const-string v1, "IN KNOX DESKTOP MODE with STAND ALONE!"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4743
    const/4 v1, 0x1

    return v1

    .line 4745
    :cond_0
    const-string v4, "NOT IN KNOX DESKTOP MODE with STAND ALONE!"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4746
    return v1

    .line 4749
    .end local v0    # "state":Lcom/samsung/android/desktopmode/SemDesktopModeState;
    .end local v3    # "type":I
    :cond_1
    const-string v0, "mDesktopModeManager null!"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4750
    return v1
.end method

.method private blacklist isDeskTopMode()Z
    .locals 5

    .line 4720
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    const/4 v1, 0x0

    const-string v2, "InputMethodService"

    if-eqz v0, :cond_2

    .line 4721
    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    .line 4722
    .local v0, "state":Lcom/samsung/android/desktopmode/SemDesktopModeState;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DESKTOP MODE! : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4723
    iget v3, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    iget v3, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 4728
    :cond_0
    const-string v3, "NOT IN KNOX DESKTOP MODE!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4729
    return v1

    .line 4725
    :cond_1
    :goto_0
    const-string v1, "IN KNOX DESKTOP MODE!"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4726
    const/4 v1, 0x1

    return v1

    .line 4732
    .end local v0    # "state":Lcom/samsung/android/desktopmode/SemDesktopModeState;
    :cond_2
    const-string v0, "mDesktopModeManager null!"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4733
    return v1
.end method

.method private blacklist isDualViewEnabled()Z
    .locals 3

    .line 4507
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const-string/jumbo v1, "touch_keyboard"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->getDexSettingsValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 4508
    .local v0, "rVal":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDualViewEnabled() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputMethodService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4509
    return v0
.end method

.method private blacklist isPackageExist(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4518
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 4519
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    .line 4520
    iget-boolean v0, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4524
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    goto :goto_0

    .line 4522
    :catch_0
    move-exception v1

    .line 4523
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPackageExists failed: unknown package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputMethodService"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4525
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return v0
.end method

.method private blacklist isSystemUser()Z
    .locals 4

    .line 4533
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 4534
    .local v0, "usrMgr":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->isSystemUser()Z

    move-result v1

    .line 4535
    .local v1, "userId":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSystemUser(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputMethodService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4536
    return v1
.end method

.method private blacklist mapToImeWindowStatus()I
    .locals 1

    .line 4279
    nop

    .line 4280
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    or-int/lit8 v0, v0, 0x1

    .line 4279
    return v0
.end method

.method private blacklist notifyKeyboardClosedForAGIF()V
    .locals 2

    .line 4708
    const-string v0, "InputMethodService"

    const-string v1, "notifyKeyboardClosed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4709
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    if-eqz v0, :cond_0

    .line 4710
    invoke-virtual {v0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->notifyKeyboardClosed()V

    .line 4712
    :cond_0
    return-void
.end method

.method private blacklist onShowSideSyncSoftInput(I)V
    .locals 0
    .param p1, "showFlags"    # I

    .line 4587
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->requestShowSelf(I)V

    .line 4588
    return-void
.end method

.method private greylist-max-o onToggleSoftInput(II)V
    .locals 1
    .param p1, "showFlags"    # I
    .param p2, "hideFlags"    # I

    .line 3626
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3627
    invoke-virtual {p0, p2}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    goto :goto_0

    .line 3629
    :cond_0
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->requestShowSelf(I)V

    .line 3631
    :goto_0
    return-void
.end method

.method private blacklist prepareWindow(Z)Z
    .locals 3
    .param p1, "showInput"    # Z

    .line 3105
    const/4 v0, 0x0

    .line 3106
    .local v0, "doShowInput":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    .line 3107
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 3108
    const/4 v0, 0x1

    .line 3109
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    .line 3113
    :cond_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 3114
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateFullscreenMode()V

    .line 3115
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateInputViewShown()V

    .line 3117
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mViewsCreated:Z

    if-nez v2, :cond_1

    .line 3118
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mViewsCreated:Z

    .line 3119
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 3121
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateCandidatesView()Landroid/view/View;

    move-result-object v1

    .line 3123
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 3124
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->setCandidatesView(Landroid/view/View;)V

    .line 3127
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    return v0
.end method

.method private blacklist registerCompatOnBackInvokedCallback()V
    .locals 3

    .line 3073
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mBackCallbackRegistered:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3074
    return-void

    .line 3076
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-eqz v0, :cond_1

    .line 3077
    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mCompatBackCallback:Landroid/window/CompatOnBackInvokedCallback;

    invoke-interface {v0, v1, v2}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 3079
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mBackCallbackRegistered:Ljava/lang/Boolean;

    .line 3081
    :cond_1
    return-void
.end method

.method private blacklist removeImeSurface()V
    .locals 2

    .line 1285
    const-string v0, "InputMethodService"

    const-string v1, "removeImeSurface"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-eqz v0, :cond_0

    .line 1290
    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->hide()V

    .line 1292
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mImeSurfaceScheduledForRemoval:Z

    .line 1293
    return-void
.end method

.method private blacklist reportFullscreenMode()V
    .locals 2

    .line 2161
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->reportFullscreenModeAsync(Z)V

    .line 2162
    return-void
.end method

.method private greylist-max-o resetStateForNewConfiguration()V
    .locals 10

    .line 1974
    const-wide/16 v0, 0x20

    const-string v2, "IMS.resetStateForNewConfiguration"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1975
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    .line 1976
    .local v2, "visible":Z
    iget v3, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    .line 1977
    .local v3, "showFlags":I
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    .line 1978
    .local v4, "showingInput":Z
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 1979
    .local v5, "completions":[Landroid/view/inputmethod/CompletionInfo;
    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v6, v7}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 1980
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initViews()V

    .line 1981
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    .line 1982
    iput-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    .line 1983
    iget-boolean v7, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    .line 1984
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    .line 1985
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v9

    .line 1984
    invoke-virtual {p0, v7, v9, v8}, Landroid/inputmethodservice/InputMethodService;->doStartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1987
    :cond_0
    if-eqz v2, :cond_6

    .line 1988
    if-eqz v4, :cond_2

    .line 1990
    invoke-direct {p0, v3, v8}, Landroid/inputmethodservice/InputMethodService;->dispatchOnShowInputRequested(IZ)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1991
    invoke-virtual {p0, v8}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    .line 1992
    if-eqz v5, :cond_4

    .line 1993
    iput-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 1994
    invoke-virtual {p0, v5}, Landroid/inputmethodservice/InputMethodService;->onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    goto :goto_0

    .line 1997
    :cond_1
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    goto :goto_0

    .line 1999
    :cond_2
    iget v7, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-nez v7, :cond_3

    .line 2002
    invoke-virtual {p0, v6}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    goto :goto_0

    .line 2005
    :cond_3
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    .line 2008
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    move-result v7

    .line 2009
    .local v7, "showing":Z
    if-eqz v7, :cond_5

    const/4 v6, 0x2

    :cond_5
    or-int/2addr v6, v8

    iget v8, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    invoke-direct {p0, v6, v8}, Landroid/inputmethodservice/InputMethodService;->setImeWindowStatus(II)V

    .line 2011
    .end local v7    # "showing":Z
    :cond_6
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2012
    return-void
.end method

.method private blacklist scheduleImeSurfaceRemoval()V
    .locals 2

    .line 1251
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mImeSurfaceScheduledForRemoval:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1262
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 1263
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    .line 1279
    :cond_1
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->removeImeSurface()V

    .line 1281
    return-void

    .line 1254
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scheduleImeSurfaceRemoval: canceled, mShowInputRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWindowVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", IsmWindowNull="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mImeSurfaceScheduledForRemoval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mImeSurfaceScheduledForRemoval:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    return-void
.end method

.method private blacklist sendInputViewShownState()V
    .locals 3

    .line 4448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AxT9IME.sendInputViewShownState(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getIsVisibleWindow()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AxT9IME.IS_VISIBLE_CANDIDATE(): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4450
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4451
    .local v0, "respInt":Landroid/content/Intent;
    const-string v1, "ResponseAxT9Info"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4452
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getIsVisibleWindow()Z

    move-result v1

    const-string v2, "AxT9IME.isVisibleWindow"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4453
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isMovable()Z

    move-result v1

    const-string v2, "AxT9IME.isMovableKeypad"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4454
    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    const-string v2, "AxT9IME.isVisibleCandidate"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4455
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const-string v2, "PID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4456
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_0

    .line 4457
    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const-string v2, "inputType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4458
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const-string v2, "imeOptions"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4460
    :cond_0
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 4461
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 4464
    :cond_1
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 4462
    :cond_2
    :goto_0
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/inputmethodservice/InputMethodService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4466
    :goto_1
    return-void
.end method

.method private blacklist sendInputViewShownState(Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .line 4469
    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService;->setFlagIsVisibleWindow(Z)V

    .line 4470
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->sendInputViewShownState()V

    .line 4471
    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService;->sendInputViewShownStateSSRM(Z)V

    .line 4472
    return-void
.end method

.method private blacklist sendInputViewShownStateSSRM(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .line 4436
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsLastWindowVisible:Z

    if-eq v0, p1, :cond_0

    .line 4437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendInputViewShownStateSSRM(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4438
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4439
    .local v0, "respInt":Landroid/content/Intent;
    const-string v1, "com.samsung.android.intent.action.INPUTMETHOD_STARTING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4440
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4441
    const-string/jumbo v1, "visible"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4442
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->sendBroadcast(Landroid/content/Intent;)V

    .line 4443
    iput-boolean p1, p0, Landroid/inputmethodservice/InputMethodService;->mIsLastWindowVisible:Z

    .line 4445
    .end local v0    # "respInt":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private blacklist setFlagIsVisibleWindow(Z)V
    .locals 0
    .param p1, "isVisibleWindow"    # Z

    .line 4408
    iput-boolean p1, p0, Landroid/inputmethodservice/InputMethodService;->mIsVisibleWindow:Z

    .line 4409
    return-void
.end method

.method private blacklist setImeExclusionRect(I)V
    .locals 7
    .param p1, "visibleTopInsets"    # I

    .line 1308
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 1309
    .local v0, "rootView":Landroid/view/View;
    nop

    .line 1310
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    .line 1311
    .local v1, "systemGesture":Landroid/graphics/Insets;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1312
    .local v2, "exclusionRects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    new-instance v3, Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Insets;->left:I

    .line 1315
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, p1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1312
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1316
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v5, v1, Landroid/graphics/Insets;->right:I

    sub-int/2addr v4, v5

    .line 1318
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 1319
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-direct {v3, v4, p1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1316
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1320
    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemGestureExclusionRects(Ljava/util/List;)V

    .line 1321
    return-void
.end method

.method private blacklist setImeWindowStatus(II)V
    .locals 1
    .param p1, "visibilityFlags"    # I
    .param p2, "backDisposition"    # I

    .line 1303
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->setImeWindowStatusAsync(II)V

    .line 1304
    return-void
.end method

.method private blacklist startViews(Z)V
    .locals 3
    .param p1, "doShowInput"    # Z

    .line 3133
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    if-nez v1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    if-eqz v0, :cond_2

    .line 3135
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startViews: mShowInputRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInputViewStarted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCandidatesViewStarted= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3141
    :cond_2
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 3142
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    if-nez v0, :cond_4

    .line 3144
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    .line 3145
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInlineSuggestionSessionController:Landroid/inputmethodservice/InlineSuggestionSessionController;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSessionController;->notifyOnStartInputView()V

    .line 3146
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v0, v2}, Landroid/inputmethodservice/InputMethodService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    goto :goto_0

    .line 3148
    :cond_3
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    if-nez v0, :cond_4

    .line 3150
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    .line 3151
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v0, v2}, Landroid/inputmethodservice/InputMethodService;->onStartCandidatesView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 3153
    :cond_4
    :goto_0
    if-eqz p1, :cond_5

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    .line 3154
    :cond_5
    return-void
.end method

.method private blacklist unregisterCompatOnBackInvokedCallback()V
    .locals 2

    .line 3084
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mBackCallbackRegistered:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3085
    return-void

    .line 3087
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-eqz v0, :cond_1

    .line 3088
    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mCompatBackCallback:Landroid/window/CompatOnBackInvokedCallback;

    .line 3089
    invoke-interface {v0, v1}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 3090
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mBackCallbackRegistered:Ljava/lang/Boolean;

    .line 3092
    :cond_1
    return-void
.end method


# virtual methods
.method final blacklist createInputMethodServiceInternal()Landroid/inputmethodservice/InputMethodServiceInternal;
    .locals 1

    .line 4198
    new-instance v0, Landroid/inputmethodservice/InputMethodService$1;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$1;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    return-object v0
.end method

.method greylist-max-o doFinishInput()V
    .locals 4

    .line 3265
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    const-string v2, "InputMethodService#doFinishInput"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/internal/inputmethod/ImeTracing;->triggerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V

    .line 3267
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/inputmethodservice/InputMethodService;->finishViews(Z)V

    .line 3268
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    if-eqz v0, :cond_0

    .line 3269
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInlineSuggestionSessionController:Landroid/inputmethodservice/InlineSuggestionSessionController;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSessionController;->notifyOnFinishInput()V

    .line 3271
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onFinishInput()V

    .line 3273
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    .line 3274
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 3275
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 3276
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    if-eqz v0, :cond_1

    .line 3277
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->finishStylusHandwriting()V

    .line 3283
    :cond_1
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->unregisterCompatOnBackInvokedCallback()V

    .line 3284
    return-void
.end method

.method public blacklist doMinimizeSoftInput()V
    .locals 0

    .line 4671
    return-void
.end method

.method public blacklist doMinimizeSoftInput(I)V
    .locals 0
    .param p1, "height"    # I

    .line 4682
    return-void
.end method

.method greylist-max-o doMovementKey(ILandroid/view/KeyEvent;I)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "count"    # I

    .line 3656
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getExtractEditTextIfVisible()Landroid/inputmethodservice/ExtractEditText;

    move-result-object v0

    .line 3657
    .local v0, "eet":Landroid/inputmethodservice/ExtractEditText;
    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 3661
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v2

    .line 3662
    .local v2, "movement":Landroid/text/method/MovementMethod;
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 3663
    .local v3, "layout":Landroid/text/Layout;
    const/4 v4, 0x1

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    .line 3666
    const/4 v5, -0x1

    if-ne p3, v5, :cond_0

    .line 3667
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v2, v0, v5, p1, p2}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3668
    invoke-virtual {p0, p1, v4}, Landroid/inputmethodservice/InputMethodService;->reportExtractedMovement(II)V

    .line 3669
    return v4

    .line 3671
    :cond_0
    const/4 v6, -0x2

    if-ne p3, v6, :cond_1

    .line 3672
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v2, v0, v5, p1, p2}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3673
    return v4

    .line 3676
    :cond_1
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v2, v0, v6, p2}, Landroid/text/method/MovementMethod;->onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3677
    invoke-virtual {p0, p1, p3}, Landroid/inputmethodservice/InputMethodService;->reportExtractedMovement(II)V

    goto :goto_1

    .line 3679
    :cond_2
    invoke-static {p2, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v6

    .line 3680
    .local v6, "down":Landroid/view/KeyEvent;
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v2, v0, v7, p1, v6}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3681
    invoke-static {p2, v4}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v7

    .line 3682
    .local v7, "up":Landroid/view/KeyEvent;
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v2, v0, v8, p1, v7}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 3683
    :goto_0
    add-int/2addr p3, v5

    if-lez p3, :cond_3

    .line 3684
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v2, v0, v8, p1, v6}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 3685
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v2, v0, v8, p1, v7}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 3687
    :cond_3
    invoke-virtual {p0, p1, p3}, Landroid/inputmethodservice/InputMethodService;->reportExtractedMovement(II)V

    .line 3694
    .end local v6    # "down":Landroid/view/KeyEvent;
    .end local v7    # "up":Landroid/view/KeyEvent;
    :cond_4
    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 3702
    :pswitch_0
    return v4

    .line 3706
    .end local v2    # "movement":Landroid/text/method/MovementMethod;
    .end local v3    # "layout":Landroid/text/Layout;
    :cond_5
    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method greylist-max-o doStartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 4
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p3, "restarting"    # Z

    .line 3287
    if-nez p3, :cond_0

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    if-eqz v0, :cond_0

    .line 3288
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->doFinishInput()V

    .line 3290
    :cond_0
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    const-string v2, "InputMethodService#doStartInput"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/internal/inputmethod/ImeTracing;->triggerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V

    .line 3293
    invoke-direct {p0, p2}, Landroid/inputmethodservice/InputMethodService;->checkFocusedDisplay(Landroid/view/inputmethod/EditorInfo;)V

    .line 3295
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    .line 3296
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 3297
    iput-object p2, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 3298
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 3299
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInlineSuggestionSessionController:Landroid/inputmethodservice/InlineSuggestionSessionController;

    .line 3300
    if-nez p2, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_1
    iget-object v2, p2, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 3301
    :goto_0
    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, p2, Landroid/view/inputmethod/EditorInfo;->autofillId:Landroid/view/autofill/AutofillId;

    .line 3299
    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/inputmethodservice/InlineSuggestionSessionController;->notifyOnStartInput(Ljava/lang/String;Landroid/view/autofill/AutofillId;)V

    .line 3303
    invoke-virtual {p0, p2, p3}, Landroid/inputmethodservice/InputMethodService;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 3304
    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    if-eqz v1, :cond_4

    .line 3305
    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eqz v1, :cond_3

    .line 3307
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    .line 3308
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInlineSuggestionSessionController:Landroid/inputmethodservice/InlineSuggestionSessionController;

    invoke-virtual {v1}, Landroid/inputmethodservice/InlineSuggestionSessionController;->notifyOnStartInputView()V

    .line 3309
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v1, p3}, Landroid/inputmethodservice/InputMethodService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 3310
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    goto :goto_2

    .line 3311
    :cond_3
    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-nez v1, :cond_4

    .line 3313
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    .line 3314
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v0, p3}, Landroid/inputmethodservice/InputMethodService;->onStartCandidatesView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 3317
    :cond_4
    :goto_2
    return-void
.end method

.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 4293
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 4294
    .local v0, "p":Landroid/util/Printer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input method service state for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mViewsCreated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mViewsCreated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDecorViewVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDecorViewWasVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewWasVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mWindowVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mInShowWindow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Configuration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mInputBinding="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputBinding:Landroid/view/inputmethod/InputBinding;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mInputConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStartedInputConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mInputStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mInputViewStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCandidatesViewStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4309
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_0

    .line 4310
    const-string v1, "  mInputEditorInfo:"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4311
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    const-string v2, "    "

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/EditorInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_0

    .line 4313
    :cond_0
    const-string v1, "  mInputEditorInfo: null"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4316
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mShowInputRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLastShowInputRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mLastShowInputRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mShowInputFlags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    .line 4318
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4316
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCandidatesVisibility="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFullscreenApplied="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsFullscreen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mExtractViewHidden="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4324
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz v1, :cond_1

    .line 4325
    const-string v1, "  mExtractedText:"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget-object v2, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " chars startOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    selectionStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selectionEnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 4330
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4328
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 4332
    :cond_1
    const-string v1, "  mExtractedText: null"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4334
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mExtractedToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mIsInputViewShown="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mStatusIcon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mStatusIcon:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4337
    const-string v1, "Last computed insets:"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  contentTopInsets="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " visibleTopInsets="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " touchableInsets="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " touchableRegion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget-object v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mSettingsObserver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mNavigationBarController="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mNavigationBarController:Landroid/inputmethodservice/NavigationBarController;

    invoke-virtual {v2}, Landroid/inputmethodservice/NavigationBarController;->toDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4346
    invoke-direct {p0, v0}, Landroid/inputmethodservice/InputMethodService;->dumpDexMode(Landroid/util/Printer;)V

    .line 4348
    return-void
.end method

.method public whitelist enableHardwareAcceleration()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1727
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-nez v0, :cond_0

    .line 1730
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    return v0

    .line 1728
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist finishStylusHandwriting()V
    .locals 3

    .line 2907
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    if-nez v0, :cond_0

    .line 2908
    return-void

    .line 2910
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingRequestId:Ljava/util/OptionalInt;

    invoke-virtual {v0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2911
    return-void

    .line 2914
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingRequestId:Ljava/util/OptionalInt;

    invoke-virtual {v0}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v0

    .line 2915
    .local v0, "requestId":I
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingRequestId:Ljava/util/OptionalInt;

    .line 2917
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    invoke-virtual {v1}, Landroid/view/InputEventReceiver;->dispose()V

    .line 2918
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    .line 2919
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/InkWindow;->hide(Z)V

    .line 2921
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-virtual {v1, v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->resetStylusHandwriting(I)V

    .line 2922
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mOnPreparedStylusHwCalled:Z

    .line 2923
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onFinishStylusHandwriting()V

    .line 2924
    return-void
.end method

.method public blacklist forceExtractEditTextClose()V
    .locals 2

    .line 4645
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4648
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    goto :goto_0

    .line 4649
    :cond_0
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v0, :cond_2

    .line 4650
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-nez v0, :cond_1

    .line 4653
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    goto :goto_0

    .line 4658
    :cond_1
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    .line 4661
    :cond_2
    :goto_0
    return-void
.end method

.method public whitelist getBackDisposition()I
    .locals 1

    .line 2071
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    return v0
.end method

.method public whitelist getCandidatesHiddenVisibility()I
    .locals 1

    .line 2562
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    return v0
.end method

.method public whitelist getCurrentInputBinding()Landroid/view/inputmethod/InputBinding;
    .locals 1

    .line 2101
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputBinding:Landroid/view/inputmethod/InputBinding;

    return-object v0
.end method

.method public whitelist getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 2

    .line 2109
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 2110
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 2111
    return-object v0

    .line 2113
    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v1
.end method

.method public whitelist getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;
    .locals 1

    .line 2157
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    return-object v0
.end method

.method public whitelist getCurrentInputStarted()Z
    .locals 1

    .line 2153
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    return v0
.end method

.method public whitelist getInputMethodWindowRecommendedHeight()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4185
    const-string v0, "InputMethodService"

    const-string v1, "getInputMethodWindowRecommendedHeight() is deprecated and now always returns 0. Do not use this method."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4187
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 2033
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public whitelist getMaxWidth()I
    .locals 2

    .line 2091
    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2092
    .local v0, "windowManager":Landroid/view/WindowManager;
    nop

    .line 2093
    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v1

    .line 2092
    invoke-static {v1}, Landroid/window/WindowMetricsHelper;->getBoundsExcludingNavigationBarAndCutout(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    move-result-object v1

    .line 2093
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 2092
    return v1
.end method

.method public final whitelist getStylusHandwritingWindow()Landroid/view/Window;
    .locals 1

    .line 2890
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    return-object v0
.end method

.method public whitelist getTextForImeAction(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "imeOptions"    # I

    .line 3934
    and-int/lit16 v0, p1, 0xff

    packed-switch v0, :pswitch_data_0

    .line 3950
    const v0, 0x1040603

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 3948
    :pswitch_0
    const v0, 0x1040607

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 3946
    :pswitch_1
    const v0, 0x1040604

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 3944
    :pswitch_2
    const v0, 0x1040606

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 3942
    :pswitch_3
    const v0, 0x1040609

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 3940
    :pswitch_4
    const v0, 0x1040608

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 3938
    :pswitch_5
    const v0, 0x1040605

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 3936
    :pswitch_6
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist getWindow()Landroid/app/Dialog;
    .locals 1

    .line 2037
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    return-object v0
.end method

.method public blacklist hideExtractCursorController()V
    .locals 1

    .line 4635
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 4636
    .local v0, "eet":Landroid/inputmethodservice/ExtractEditText;
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->hideCursorControllers()V

    .line 4637
    return-void
.end method

.method public whitelist hideStatusIcon()V
    .locals 3

    .line 2571
    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mStatusIcon:I

    .line 2572
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->updateStatusIconAsync(Ljava/lang/String;I)V

    .line 2573
    return-void
.end method

.method public whitelist hideWindow()V
    .locals 4

    .line 3184
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    const-string v2, "InputMethodService#hideWindow"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/internal/inputmethod/ImeTracing;->triggerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V

    .line 3186
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/inputmethodservice/InputMethodService;->setImeWindowStatus(II)V

    .line 3187
    invoke-direct {p0, v1}, Landroid/inputmethodservice/InputMethodService;->applyVisibilityInInsetsConsumerIfNecessary(Z)V

    .line 3188
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    .line 3189
    invoke-direct {p0, v1}, Landroid/inputmethodservice/InputMethodService;->finishViews(Z)V

    .line 3190
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    if-eqz v0, :cond_1

    .line 3192
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3193
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 3195
    :cond_0
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    .line 3196
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowHidden()V

    .line 3197
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewWasVisible:Z

    .line 3199
    :cond_1
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mLastWasInFullscreenMode:Z

    .line 3200
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateFullscreenMode()V

    .line 3201
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->unregisterCompatOnBackInvokedCallback()V

    .line 3204
    invoke-direct {p0, v1}, Landroid/inputmethodservice/InputMethodService;->sendInputViewShownState(Z)V

    .line 3205
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mIsPressBtnSIPOnOff:Z

    .line 3207
    return-void
.end method

.method greylist-max-o initViews()V
    .locals 6

    .line 1883
    const-wide/16 v0, 0x20

    const-string v2, "IMS.initViews"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1884
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInitialized:Z

    .line 1885
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mViewsCreated:Z

    .line 1886
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    .line 1887
    iput v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    .line 1889
    sget-object v3, Landroid/R$styleable;->InputMethodService:[I

    invoke-virtual {p0, v3}, Landroid/inputmethodservice/InputMethodService;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mThemeAttrs:Landroid/content/res/TypedArray;

    .line 1890
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x109009e

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    .line 1892
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v4, v3}, Landroid/inputmethodservice/SoftInputWindow;->setContentView(Landroid/view/View;)V

    .line 1893
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 1894
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    const v4, 0x1020326

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    .line 1895
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    .line 1896
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    const v4, 0x102001c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    .line 1897
    iput-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    .line 1898
    iput-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 1899
    iput-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    .line 1900
    iput-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    .line 1901
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    .line 1903
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    const v4, 0x102001d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    .line 1904
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    const v4, 0x102001e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    .line 1905
    iput-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    .line 1906
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    .line 1908
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1909
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCandidatesHiddenVisibility()I

    move-result v2

    iput v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    .line 1910
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1911
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1912
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mNavigationBarController:Landroid/inputmethodservice/NavigationBarController;

    invoke-virtual {v2}, Landroid/inputmethodservice/NavigationBarController;->onViewInitialized()V

    .line 1913
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1914
    return-void
.end method

.method greylist-max-o initialize()V
    .locals 1

    .line 1872
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInitialized:Z

    if-nez v0, :cond_0

    .line 1873
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInitialized:Z

    .line 1876
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    .line 1878
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onInitializeInterface()V

    .line 1880
    :cond_0
    return-void
.end method

.method public whitelist isExtractViewShown()Z
    .locals 1

    .line 2343
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isFullscreenMode()Z
    .locals 1

    .line 2271
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    return v0
.end method

.method public whitelist isInputViewShown()Z
    .locals 1

    .line 2459
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    return v0
.end method

.method public blacklist isMovable()Z
    .locals 1

    .line 4581
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsMovable:Z

    return v0
.end method

.method public whitelist isShowInputRequested()Z
    .locals 1

    .line 2450
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    return v0
.end method

.method synthetic blacklist lambda$new$0$android-inputmethodservice-InputMethodService(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 733
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    .line 734
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mViewsCreated:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 736
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iput v1, v0, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    .line 738
    :cond_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 741
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 742
    .local v0, "decor":Landroid/view/View;
    iget-object v2, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 743
    iget-object v2, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->setEmpty()V

    .line 744
    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 745
    .end local v0    # "decor":Landroid/view/View;
    goto :goto_0

    .line 746
    :cond_1
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v1, v1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 747
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v1, v1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 748
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget-object v1, v1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 749
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v0, v0, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 751
    :goto_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mNavigationBarController:Landroid/inputmethodservice/NavigationBarController;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    invoke-virtual {v0, v1, p1}, Landroid/inputmethodservice/NavigationBarController;->updateTouchableInsets(Landroid/inputmethodservice/InputMethodService$Insets;Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    .line 753
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 754
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v0, v0, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    invoke-direct {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setImeExclusionRect(I)V

    .line 756
    :cond_2
    return-void
.end method

.method synthetic blacklist lambda$new$1$android-inputmethodservice-InputMethodService(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 759
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 760
    .local v0, "ei":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 761
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 762
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->actionId:I

    if-eqz v2, :cond_0

    .line 763
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->actionId:I

    invoke-interface {v1, v2}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    goto :goto_0

    .line 764
    :cond_0
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 765
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v2, v2, 0xff

    invoke-interface {v1, v2}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    .line 768
    :cond_1
    :goto_0
    return-void
.end method

.method synthetic blacklist lambda$onStylusHandwritingMotionEvent$2$android-inputmethodservice-InputMethodService()V
    .locals 5

    .line 2856
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPendingEvents:Lcom/android/internal/util/RingBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2857
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPendingEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/MotionEvent;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2858
    .local v3, "event":Landroid/view/MotionEvent;
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    invoke-virtual {v4}, Landroid/inputmethodservice/InkWindow;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2857
    .end local v3    # "event":Landroid/view/MotionEvent;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2860
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPendingEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->clear()V

    .line 2862
    :cond_1
    return-void
.end method

.method public whitelist onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 3619
    return-void
.end method

.method public whitelist onBindInput()V
    .locals 0

    .line 3235
    return-void
.end method

.method public whitelist onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .locals 9
    .param p1, "outInsets"    # Landroid/inputmethodservice/InputMethodService$Insets;

    .line 2388
    const-wide/16 v0, 0x20

    const-string v2, "IMS.onComputeInsets"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2389
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpLocation:[I

    .line 2390
    .local v2, "loc":[I
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 2391
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    goto :goto_0

    .line 2393
    :cond_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 2394
    .local v3, "decor":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    aput v5, v2, v4

    .line 2398
    .end local v3    # "decor":Landroid/view/View;
    :goto_0
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getNavigationBarHeight()I

    move-result v3

    .line 2399
    .local v3, "navigationBarHeight":I
    aget v5, v2, v4

    if-lez v5, :cond_1

    aget v5, v2, v4

    if-ge v5, v3, :cond_1

    .line 2400
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.cts.mockime"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2401
    const-string v5, "InputMethodService"

    const-string v6, "onComputeInsets: a navibar height padding is applied."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v6

    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v7

    iget-object v8, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    .line 2403
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v8

    .line 2402
    invoke-virtual {v5, v6, v7, v8, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 2407
    :cond_1
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2409
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    .line 2410
    .local v5, "decor":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v6

    iput v6, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    .line 2411
    .end local v5    # "decor":Landroid/view/View;
    goto :goto_1

    .line 2412
    :cond_2
    aget v5, v2, v4

    iput v5, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    .line 2414
    :goto_1
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    .line 2415
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 2417
    :cond_3
    aget v4, v2, v4

    iput v4, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    .line 2418
    const/4 v4, 0x2

    iput v4, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    .line 2419
    iget-object v4, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->setEmpty()V

    .line 2420
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2421
    return-void
.end method

.method public blacklist onConfiguratinChangedForAllDisplays([Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfigs"    # [Landroid/content/res/Configuration;

    .line 4762
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getCurrentFocusDisplayID()I

    move-result v0

    .line 4764
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    .line 4767
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v1

    monitor-enter v1

    .line 4768
    :try_start_0
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v2

    aget-object v3, p1, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/ResourcesManager;->applyConfigurationToResources(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    .line 4769
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4770
    const-string v1, "InputMethodService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfiguratinChangedForAllDisplays newConfigs[index] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4771
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 4769
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 4773
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 1962
    invoke-super {p0, p1}, Landroid/inputmethodservice/AbstractInputMethodService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1963
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mConfigTracker:Landroid/inputmethodservice/ImsConfigurationTracker;

    new-instance v1, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda0;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    invoke-virtual {v0, p1, v1}, Landroid/inputmethodservice/ImsConfigurationTracker;->onConfigurationChanged(Landroid/content/res/Configuration;Ljava/lang/Runnable;)V

    .line 1965
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    .line 1966
    .local v0, "changedNightMode":I
    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mCurrentNightMode:I

    if-eq v1, v0, :cond_0

    .line 1967
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->checkandshowInputMehtodPicker()V

    .line 1968
    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mCurrentNightMode:I

    .line 1971
    :cond_0
    return-void
.end method

.method public whitelist onConfigureWindow(Landroid/view/Window;ZZ)V
    .locals 6
    .param p1, "win"    # Landroid/view/Window;
    .param p2, "isFullscreen"    # Z
    .param p3, "isCandidatesOnly"    # Z

    .line 2241
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2242
    .local v0, "currentHeight":I
    const/4 v1, -0x1

    if-eqz p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, -0x2

    .line 2243
    .local v2, "newHeight":I
    :goto_0
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    if-eqz v3, :cond_1

    if-eq v0, v2, :cond_1

    .line 2251
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->needSetlayout:Z

    if-nez v3, :cond_1

    .line 2252
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->undoMinimizeSoftInput()V

    .line 2254
    :try_start_0
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v3}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/Window;->setLayout(II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2258
    goto :goto_1

    .line 2255
    :catch_0
    move-exception v3

    .line 2256
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "InputMethodService"

    const-string v5, "onConfigureWindow: IllegalArgumentException occured."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 2262
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    :goto_1
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v3}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 2263
    return-void
.end method

.method public whitelist onCreate()V
    .locals 10

    .line 1735
    const-string v0, "InputMethodService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    const-wide/16 v1, 0x20

    const-string v3, "IMS.onCreate"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1739
    iget v4, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    .line 1740
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v5, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1739
    const v6, 0x1030054

    const v7, 0x103007f

    const v8, 0x103013e

    const v9, 0x103013e

    invoke-static/range {v4 .. v9}, Landroid/content/res/Resources;->selectSystemTheme(IIIIII)I

    move-result v3

    iput v3, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    .line 1745
    invoke-super {p0, v3}, Landroid/inputmethodservice/AbstractInputMethodService;->setTheme(I)V

    .line 1746
    invoke-super {p0}, Landroid/inputmethodservice/AbstractInputMethodService;->onCreate()V

    .line 1747
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 1748
    invoke-static {p0}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->createAndRegister(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    move-result-object v3

    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    .line 1751
    invoke-static {v3}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->-$$Nest$mshouldShowImeWithHardKeyboard(Landroid/inputmethodservice/InputMethodService$SettingsObserver;)Z

    .line 1753
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x111016d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mHideNavBarForKeyboard:Z

    .line 1758
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->isCurrentInputMethodAsSamsungKeyboard()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1759
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1760
    .local v3, "bundle":Landroid/os/Bundle;
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodManager;->getCurTokenDisplayId()I

    move-result v4

    const-string v5, "display_id"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1761
    const-string v4, "DISPLAY_ID"

    invoke-virtual {p0, v4, v3}, Landroid/inputmethodservice/InputMethodService;->onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1764
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_0
    const-string v3, "desktopmode"

    invoke-virtual {p0, v3}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 1767
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->isCurrentInputMethodAsSamsungKeyboard()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1768
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->checkTargetContext()V

    .line 1770
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate getCurrentFocusDisplayID() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodManager;->getCurrentFocusDisplayID()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate getCurTokenDisplayId() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodManager;->getCurTokenDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mTargetDisplayContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    if-eqz v3, :cond_2

    .line 1773
    const-string v3, "onCreate mTargetDisplayContext mWindow mInflater "

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mTargetDisplayContext:Landroid/content/Context;

    iget v3, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->setTheme(I)V

    .line 1775
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mTargetDisplayContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    .line 1777
    new-instance v0, Landroid/inputmethodservice/SoftInputWindow;

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mTargetDisplayContext:Landroid/content/Context;

    iget v4, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    invoke-direct {v0, v3, v4, v5}, Landroid/inputmethodservice/SoftInputWindow;-><init>(Landroid/content/Context;ILandroid/view/KeyEvent$DispatcherState;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    goto :goto_0

    .line 1779
    :cond_2
    const-string v3, "mTargetDisplayContext is null"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    invoke-virtual {p0, v4}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    .line 1786
    const-string v0, "IMS.initSoftInputWindow"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1787
    new-instance v0, Landroid/inputmethodservice/SoftInputWindow;

    iget v3, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    invoke-direct {v0, p0, v3, v4}, Landroid/inputmethodservice/SoftInputWindow;-><init>(Landroid/content/Context;ILandroid/view/KeyEvent$DispatcherState;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    .line 1791
    :goto_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    if-eqz v0, :cond_3

    .line 1792
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    .line 1793
    invoke-interface {v0, v3}, Landroid/window/OnBackInvokedDispatcher;->setImeOnBackInvokedDispatcher(Landroid/window/ImeOnBackInvokedDispatcher;)V

    .line 1795
    :cond_3
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mNavigationBarController:Landroid/inputmethodservice/NavigationBarController;

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0, v3}, Landroid/inputmethodservice/NavigationBarController;->onSoftInputWindowCreated(Landroid/inputmethodservice/SoftInputWindow;)V

    .line 1797
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1799
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 1800
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    const-string v4, "InputMethod"

    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1801
    const/16 v4, 0x7db

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1802
    const/4 v4, -0x1

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1803
    const/4 v4, -0x2

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1804
    const/16 v4, 0x50

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1805
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v4

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 1806
    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result v4

    and-int/lit8 v4, v4, -0x9

    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsSides(I)V

    .line 1807
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    .line 1809
    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsIgnoringVisibility(Z)V

    .line 1811
    const/high16 v4, 0x42700000    # 60.0f

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    .line 1814
    invoke-virtual {v0, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1819
    .end local v3    # "lp":Landroid/view/WindowManager$LayoutParams;
    const v3, -0x7ffffef8

    .line 1822
    .local v3, "windowFlags":I
    const v4, -0x7ffffef6

    .line 1824
    .local v4, "windowFlagsMask":I
    const v5, -0x7ffffef8

    const v6, -0x7ffffef6

    invoke-virtual {v0, v5, v6}, Landroid/view/Window;->setFlags(II)V

    .line 1831
    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mHideNavBarForKeyboard:Z

    if-eqz v5, :cond_4

    .line 1832
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 1836
    .end local v0    # "window":Landroid/view/Window;
    .end local v3    # "windowFlags":I
    .end local v4    # "windowFlagsMask":I
    :cond_4
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initViews()V

    .line 1837
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1839
    new-instance v0, Landroid/inputmethodservice/InlineSuggestionSessionController;

    new-instance v3, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda5;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    new-instance v4, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0}, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda6;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    new-instance v5, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda7;

    invoke-direct {v5, p0}, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda7;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    invoke-direct {v0, v3, v4, v5}, Landroid/inputmethodservice/InlineSuggestionSessionController;-><init>(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInlineSuggestionSessionController:Landroid/inputmethodservice/InlineSuggestionSessionController;

    .line 1845
    const-string/jumbo v0, "spengestureservice"

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/content/smartclip/SpenGestureManager;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    .line 1847
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->undoMinimizeSoftInput()V

    .line 1850
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1851
    .local v0, "currentConfig":Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0x30

    iput v3, p0, Landroid/inputmethodservice/InputMethodService;->mCurrentNightMode:I

    .line 1853
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1854
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v4, "com.samsung.axt9info.close"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1855
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v3}, Landroid/inputmethodservice/InputMethodService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1858
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1859
    return-void
.end method

.method public whitelist onCreateCandidatesView()Landroid/view/View;
    .locals 1

    .line 2699
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCreateExtractTextView()Landroid/view/View;
    .locals 3

    .line 2683
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x10901b2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onCreateInlineSuggestionsRequest(Landroid/os/Bundle;)Landroid/view/inputmethod/InlineSuggestionsRequest;
    .locals 1
    .param p1, "uiExtras"    # Landroid/os/Bundle;

    .line 1222
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCreateInputMethodInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;
    .locals 1

    .line 2020
    new-instance v0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    return-object v0
.end method

.method public whitelist onCreateInputMethodSessionInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;
    .locals 1

    .line 2029
    new-instance v0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    return-object v0
.end method

.method public whitelist onCreateInputView()Landroid/view/View;
    .locals 1

    .line 2714
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist onCurrentInputMethodSubtypeChanged(Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 0
    .param p1, "newSubtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .line 4169
    return-void
.end method

.method public whitelist onDestroy()V
    .locals 2

    .line 1918
    const-string v0, "InputMethodService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->notifyKeyboardClosedForAGIF()V

    .line 1920
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1923
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mDestroyed:Z

    .line 1924
    invoke-super {p0}, Landroid/inputmethodservice/AbstractInputMethodService;->onDestroy()V

    .line 1925
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 1927
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->doFinishInput()V

    .line 1928
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mNavigationBarController:Landroid/inputmethodservice/NavigationBarController;

    invoke-virtual {v0}, Landroid/inputmethodservice/NavigationBarController;->onDestroy()V

    .line 1929
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->dismissForDestroyIfNecessary()V

    .line 1930
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1931
    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->unregister()V

    .line 1932
    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    .line 1934
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    .line 1937
    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->remove(Landroid/os/IBinder;)V

    .line 1939
    :cond_1
    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    .line 1940
    return-void
.end method

.method public whitelist onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .line 3349
    return-void
.end method

.method public whitelist onEvaluateFullscreenMode()Z
    .locals 5

    .line 2283
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2284
    .local v0, "config":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    .line 2285
    return v2

    .line 2299
    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_1

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v3, 0x10000000

    and-int/2addr v1, v3

    if-eqz v1, :cond_1

    .line 2301
    return v2

    .line 2305
    :cond_1
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v4, 0x2000000

    and-int/2addr v1, v4

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->internalImeOptions:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_3

    .line 2311
    :cond_2
    return v2

    .line 2313
    :cond_3
    return v3
.end method

.method public whitelist onEvaluateInputViewShown()Z
    .locals 9

    .line 2488
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsPressBtnSIPOnOff:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2489
    return v1

    .line 2492
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->semIsAccessoryKeyboard()Z

    move-result v0

    .line 2493
    .local v0, "isAccessoryKeyboard":Z
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    const/4 v3, 0x0

    const-string v4, "InputMethodService"

    if-nez v2, :cond_1

    .line 2494
    const-string v1, "onEvaluateInputViewShown: mSettingsObserver must not be null here."

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2495
    return v3

    .line 2498
    :cond_1
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 2500
    .local v2, "config":Landroid/content/res/Configuration;
    iget v5, v2, Landroid/content/res/Configuration;->keyboard:I

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eq v5, v1, :cond_2

    iget v5, v2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v5, v7, :cond_2

    iget v5, v2, Landroid/content/res/Configuration;->keyboard:I

    if-eq v5, v6, :cond_2

    .line 2503
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "config.keyboard : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, v2, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " config.hardKeyboardHidden : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, v2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    :cond_2
    if-eqz v0, :cond_3

    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    invoke-static {v5}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->-$$Nest$mshouldShowImeWithHardKeyboard(Landroid/inputmethodservice/InputMethodService$SettingsObserver;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2508
    const-string v1, " virtual keyboard option is false so do not show keyboard"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2509
    return v3

    .line 2510
    :cond_3
    iget v5, v2, Landroid/content/res/Configuration;->keyboard:I

    if-eq v5, v1, :cond_7

    iget v5, v2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v5, v7, :cond_7

    iget v5, v2, Landroid/content/res/Configuration;->keyboard:I

    if-ne v5, v6, :cond_4

    goto :goto_0

    .line 2514
    :cond_4
    if-eqz v0, :cond_5

    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    invoke-static {v5}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->-$$Nest$mshouldShowImeWithHardKeyboard(Landroid/inputmethodservice/InputMethodService$SettingsObserver;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2515
    const-string v3, " virtual keyboard option is true so show keyboard"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2516
    return v1

    .line 2517
    :cond_5
    if-nez v0, :cond_6

    .line 2518
    const-string v3, "AccessoryKeyboard is not connected but it can be connect BT mouse with keyboard attribute"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2519
    return v1

    .line 2521
    :cond_6
    return v3

    .line 2513
    :cond_7
    :goto_0
    return v1
.end method

.method public whitelist onExtractTextContextMenuItem(I)Z
    .locals 2
    .param p1, "id"    # I

    .line 3915
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 3916
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 3917
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    .line 3919
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist onExtractedCursorMovement(II)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 3898
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 3901
    :cond_0
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->hasVerticalScrollBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3902
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    .line 3904
    :cond_1
    return-void

    .line 3899
    :cond_2
    :goto_0
    return-void
.end method

.method public greylist onExtractedDeleteText(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 3834
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 3835
    .local v0, "conn":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 3836
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 3837
    invoke-interface {v0, p1, p1}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 3838
    const/4 v1, 0x0

    sub-int v2, p2, p1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 3840
    :cond_0
    return-void
.end method

.method public greylist onExtractedReplaceText(IILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;

    .line 3847
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 3848
    .local v0, "conn":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 3849
    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    .line 3850
    const/4 v1, 0x1

    invoke-interface {v0, p3, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 3852
    :cond_0
    return-void
.end method

.method public whitelist onExtractedSelectionChanged(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 3823
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 3824
    .local v0, "conn":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 3825
    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 3827
    :cond_0
    return-void
.end method

.method public greylist onExtractedSetSpan(Ljava/lang/Object;III)V
    .locals 6
    .param p1, "span"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I

    .line 3859
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 3860
    .local v0, "conn":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 3861
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3862
    :cond_0
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 3863
    .local v2, "text":Ljava/lang/CharSequence;
    instance-of v3, v2, Landroid/text/Spannable;

    if-eqz v3, :cond_1

    .line 3864
    move-object v3, v2

    check-cast v3, Landroid/text/Spannable;

    const/4 v4, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-interface {v3, p1, v4, v5, p4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3865
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    .line 3866
    invoke-interface {v0, v2, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 3869
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_1
    return-void
.end method

.method public whitelist onExtractedTextClicked()V
    .locals 1

    .line 3879
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    if-nez v0, :cond_0

    .line 3880
    return-void

    .line 3882
    :cond_0
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->hasVerticalScrollBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3883
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    .line 3885
    :cond_1
    return-void
.end method

.method public whitelist onExtractingInputChanged(Landroid/view/inputmethod/EditorInfo;)V
    .locals 1
    .param p1, "ei"    # Landroid/view/inputmethod/EditorInfo;

    .line 4064
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v0, :cond_0

    .line 4065
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    .line 4067
    :cond_0
    return-void
.end method

.method public whitelist onFinishCandidatesView(Z)V
    .locals 1
    .param p1, "finishingInput"    # Z

    .line 2800
    if-nez p1, :cond_0

    .line 2801
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2802
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 2803
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 2806
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    return-void
.end method

.method public whitelist onFinishInput()V
    .locals 1

    .line 3332
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 3333
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 3334
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 3336
    :cond_0
    return-void
.end method

.method public whitelist onFinishInputView(Z)V
    .locals 2
    .param p1, "finishingInput"    # Z

    .line 2748
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->minimized:Z

    if-eqz v0, :cond_0

    .line 2749
    const-string v0, "InputMethodService"

    const-string v1, "hideWindow set minimized false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2750
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->minimized:Z

    .line 2751
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->needSetlayout:Z

    .line 2752
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v1, v0}, Landroid/inputmethodservice/SoftInputWindow;->setMinimizeFlag(Z)V

    .line 2755
    :cond_0
    if-nez p1, :cond_1

    .line 2756
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2757
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 2758
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 2761
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_1
    return-void
.end method

.method public whitelist onFinishStylusHandwriting()V
    .locals 0

    .line 2875
    return-void
.end method

.method public whitelist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 3615
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onInitializeInterface()V
    .locals 0

    .line 1869
    return-void
.end method

.method public whitelist onInlineSuggestionsResponse(Landroid/view/inputmethod/InlineSuggestionsResponse;)Z
    .locals 1
    .param p1, "response"    # Landroid/view/inputmethod/InlineSuggestionsResponse;

    .line 1235
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 3528
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 3529
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getExtractEditTextIfVisible()Landroid/inputmethodservice/ExtractEditText;

    move-result-object v0

    .line 3530
    .local v0, "eet":Landroid/inputmethodservice/ExtractEditText;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/inputmethodservice/ExtractEditText;->handleBackInTextActionModeIfNeeded(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3531
    return v1

    .line 3533
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/inputmethodservice/InputMethodService;->handleBack(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3534
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 3535
    return v1

    .line 3537
    :cond_1
    return v2

    .line 3539
    .end local v0    # "eet":Landroid/inputmethodservice/ExtractEditText;
    :cond_2
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/inputmethodservice/InputMethodService;->doMovementKey(ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method public whitelist onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 3548
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 3564
    invoke-virtual {p0, p1, p3, p2}, Landroid/inputmethodservice/InputMethodService;->doMovementKey(ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 3580
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 3581
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getExtractEditTextIfVisible()Landroid/inputmethodservice/ExtractEditText;

    move-result-object v0

    .line 3582
    .local v0, "eet":Landroid/inputmethodservice/ExtractEditText;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/inputmethodservice/ExtractEditText;->handleBackInTextActionModeIfNeeded(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3583
    return v1

    .line 3585
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3586
    invoke-direct {p0, v1}, Landroid/inputmethodservice/InputMethodService;->handleBack(Z)Z

    move-result v1

    return v1

    .line 3589
    .end local v0    # "eet":Landroid/inputmethodservice/ExtractEditText;
    :cond_1
    const/4 v0, -0x2

    invoke-virtual {p0, p1, p2, v0}, Landroid/inputmethodservice/InputMethodService;->doMovementKey(ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method public whitelist onPrepareStylusHandwriting()V
    .locals 0

    .line 2818
    return-void
.end method

.method public blacklist onReplaceDeleteText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "oldText"    # Ljava/lang/CharSequence;
    .param p2, "newText"    # Ljava/lang/CharSequence;

    .line 4612
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 4613
    .local v0, "conn":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 4614
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 4615
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {v0, v2, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 4616
    invoke-interface {v0, p2, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 4618
    :cond_0
    return-void
.end method

.method public whitelist onShowInputRequested(IZ)Z
    .locals 6
    .param p1, "flags"    # I
    .param p2, "configChange"    # Z

    .line 2942
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "InputMethodService"

    if-nez v0, :cond_0

    .line 2944
    const-string v0, "onShowInputRequested: false, reason: onEvaluateInputViewShown() false"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2946
    return v1

    .line 2948
    :cond_0
    and-int/lit8 v0, p1, 0x1

    const/4 v3, 0x1

    if-nez v0, :cond_3

    .line 2949
    if-nez p2, :cond_1

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2956
    const-string v0, "onShowInputRequested: false, reason: configChange is false, FullscreenMode"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2959
    return v1

    .line 2961
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->-$$Nest$mshouldShowImeWithHardKeyboard(Landroid/inputmethodservice/InputMethodService$SettingsObserver;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2962
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, v3, :cond_2

    .line 2967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShowInputRequested: false, reason: show_ime_with_hard_keyboard = 0, config.keyboard = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2968
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2967
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2970
    return v1

    .line 2974
    :cond_2
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2975
    .local v0, "config":Landroid/content/res/Configuration;
    iget v4, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 2980
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v4, :cond_3

    iget v4, v4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v4, :cond_3

    .line 2981
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onShowInputRequested: false, reason: inputType = null, config.keyboard = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2983
    return v1

    .line 2988
    .end local v0    # "config":Landroid/content/res/Configuration;
    :cond_3
    return v3
.end method

.method public whitelist onStartCandidatesView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0
    .param p1, "info"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .line 2784
    return-void
.end method

.method public whitelist onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0
    .param p1, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .line 3261
    return-void
.end method

.method public whitelist onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0
    .param p1, "info"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .line 2730
    return-void
.end method

.method public whitelist onStartStylusHandwriting()Z
    .locals 1

    .line 2836
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onStylusHandwritingMotionEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 2848
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/InkWindow;->isInkViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2849
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/InkWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 2851
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPendingEvents:Lcom/android/internal/util/RingBuffer;

    if-nez v0, :cond_1

    .line 2852
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Landroid/view/MotionEvent;

    const/16 v2, 0x1f4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPendingEvents:Lcom/android/internal/util/RingBuffer;

    .line 2854
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPendingEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 2855
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    new-instance v1, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda4;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InkWindow;->setInkViewVisibilityListener(Landroid/inputmethodservice/InkWindow$InkVisibilityListener;)V

    .line 2864
    :goto_0
    return-void
.end method

.method public whitelist onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 3602
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onUnbindInput()V
    .locals 0

    .line 3245
    return-void
.end method

.method public whitelist onUpdateCursor(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "newCursor"    # Landroid/graphics/Rect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3429
    return-void
.end method

.method public whitelist onUpdateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V
    .locals 0
    .param p1, "cursorAnchorInfo"    # Landroid/view/inputmethod/CursorAnchorInfo;

    .line 3440
    return-void
.end method

.method public whitelist onUpdateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "text"    # Landroid/view/inputmethod/ExtractedText;

    .line 3358
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    if-eq v0, p1, :cond_0

    .line 3359
    return-void

    .line 3361
    :cond_0
    if-eqz p2, :cond_1

    .line 3362
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    if-eqz v0, :cond_1

    .line 3363
    iput-object p2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    .line 3364
    invoke-virtual {v0, p2}, Landroid/inputmethodservice/ExtractEditText;->setExtractedText(Landroid/view/inputmethod/ExtractedText;)V

    .line 3367
    :cond_1
    return-void
.end method

.method public whitelist onUpdateExtractingViews(Landroid/view/inputmethod/EditorInfo;)V
    .locals 4
    .param p1, "ei"    # Landroid/view/inputmethod/EditorInfo;

    .line 4018
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4019
    return-void

    .line 4022
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 4023
    return-void

    .line 4025
    :cond_1
    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v0, v0, 0xff

    if-eq v0, v2, :cond_2

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v3, 0x20000000

    and-int/2addr v0, v3

    if-nez v0, :cond_2

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :cond_3
    :goto_0
    move v0, v2

    .line 4029
    .local v0, "hasAction":Z
    if-eqz v0, :cond_7

    .line 4030
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4031
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    if-eqz v1, :cond_8

    .line 4032
    instance-of v2, v1, Landroid/widget/ImageButton;

    if-eqz v2, :cond_5

    .line 4033
    check-cast v1, Landroid/widget/ImageButton;

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 4034
    invoke-direct {p0, v2}, Landroid/inputmethodservice/InputMethodService;->getIconForImeAction(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 4035
    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    .line 4036
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 4038
    :cond_4
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->getTextForImeAction(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 4041
    :cond_5
    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_6

    .line 4042
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 4044
    :cond_6
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->getTextForImeAction(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4047
    :goto_1
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mActionClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 4050
    :cond_7
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4051
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    if-eqz v1, :cond_8

    .line 4052
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4055
    :cond_8
    :goto_2
    return-void
.end method

.method public whitelist onUpdateExtractingVisibility(Landroid/view/inputmethod/EditorInfo;)V
    .locals 2
    .param p1, "ei"    # Landroid/view/inputmethod/EditorInfo;

    .line 3992
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3999
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setExtractViewShown(Z)V

    .line 4000
    return-void

    .line 3995
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setExtractViewShown(Z)V

    .line 3996
    return-void
.end method

.method public whitelist onUpdateSelection(IIIIII)V
    .locals 3
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesStart"    # I
    .param p6, "candidatesEnd"    # I

    .line 3386
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 3387
    .local v0, "eet":Landroid/inputmethodservice/ExtractEditText;
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz v1, :cond_4

    .line 3388
    iget v1, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 3389
    .local v1, "off":I
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->startInternalChanges()V

    .line 3390
    sub-int/2addr p3, v1

    .line 3391
    sub-int/2addr p4, v1

    .line 3392
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    .line 3393
    .local v2, "len":I
    if-gez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 3394
    :cond_0
    if-le p3, v2, :cond_1

    move p3, v2

    .line 3395
    :cond_1
    :goto_0
    if-gez p4, :cond_2

    const/4 p4, 0x0

    goto :goto_1

    .line 3396
    :cond_2
    if-le p4, v2, :cond_3

    move p4, v2

    .line 3397
    :cond_3
    :goto_1
    invoke-virtual {v0, p3, p4}, Landroid/inputmethodservice/ExtractEditText;->setSelection(II)V

    .line 3398
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->finishInternalChanges()V

    .line 3400
    .end local v1    # "off":I
    .end local v2    # "len":I
    :cond_4
    return-void
.end method

.method public whitelist onViewClicked(Z)V
    .locals 0
    .param p1, "focusChanged"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3418
    return-void
.end method

.method public whitelist onWindowHidden()V
    .locals 0

    .line 3224
    return-void
.end method

.method public whitelist onWindowShown()V
    .locals 0

    .line 3216
    return-void
.end method

.method greylist-max-o reportExtractedMovement(II)V
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "count"    # I

    .line 3637
    const/4 v0, 0x0

    .local v0, "dx":I
    const/4 v1, 0x0

    .line 3638
    .local v1, "dy":I
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 3643
    :pswitch_0
    move v0, p2

    .line 3644
    goto :goto_0

    .line 3640
    :pswitch_1
    neg-int v0, p2

    .line 3641
    goto :goto_0

    .line 3649
    :pswitch_2
    move v1, p2

    goto :goto_0

    .line 3646
    :pswitch_3
    neg-int v1, p2

    .line 3647
    nop

    .line 3652
    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/inputmethodservice/InputMethodService;->onExtractedCursorMovement(II)V

    .line 3653
    return-void

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist requestHideSelf(I)V
    .locals 4
    .param p1, "flags"    # I

    .line 3453
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    const-string v2, "InputMethodService#requestHideSelf"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/internal/inputmethod/ImeTracing;->triggerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V

    .line 3455
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->hideMySoftInput(I)V

    .line 3456
    return-void
.end method

.method public final whitelist requestShowSelf(I)V
    .locals 4
    .param p1, "flags"    # I

    .line 3467
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    const-string v2, "InputMethodService#requestShowSelf"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/internal/inputmethod/ImeTracing;->triggerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V

    .line 3469
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->showMySoftInput(I)V

    .line 3470
    return-void
.end method

.method public whitelist sendDefaultEditorAction(Z)Z
    .locals 4
    .param p1, "fromEnterKey"    # Z

    .line 3762
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 3763
    .local v0, "ei":Landroid/view/inputmethod/EditorInfo;
    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    iget v1, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-nez v1, :cond_2

    :cond_0
    iget v1, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 3771
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 3772
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_1

    .line 3773
    iget v3, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v3, v3, 0xff

    invoke-interface {v1, v3}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    .line 3775
    :cond_1
    return v2

    .line 3778
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist sendDownUpKeyEvents(I)V
    .locals 16
    .param p1, "keyEventCode"    # I

    .line 3729
    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 3730
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_0

    return-void

    .line 3731
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 3732
    .local v13, "eventTime":J
    new-instance v15, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x6

    move-object v1, v15

    move-wide v2, v13

    move-wide v4, v13

    move/from16 v7, p1

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {v0, v15}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 3735
    new-instance v15, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    move-object v1, v15

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {v0, v15}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 3738
    return-void
.end method

.method public whitelist sendKeyChar(C)V
    .locals 3
    .param p1, "charCode"    # C

    .line 3796
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 3804
    const/16 v1, 0x30

    if-lt p1, v1, :cond_0

    const/16 v1, 0x39

    if-gt p1, v1, :cond_0

    .line 3805
    add-int/lit8 v0, p1, -0x30

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->sendDownUpKeyEvents(I)V

    goto :goto_0

    .line 3798
    :pswitch_0
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->sendDefaultEditorAction(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3799
    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->sendDownUpKeyEvents(I)V

    goto :goto_0

    .line 3807
    :cond_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 3808
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_1

    .line 3809
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 3814
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist setBackDisposition(I)V
    .locals 2
    .param p1, "disposition"    # I

    .line 2052
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    if-ne p1, v0, :cond_0

    .line 2053
    return-void

    .line 2055
    :cond_0
    const/4 v0, 0x3

    if-gt p1, v0, :cond_2

    if-gez p1, :cond_1

    goto :goto_0

    .line 2059
    :cond_1
    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    .line 2060
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->mapToImeWindowStatus()I

    move-result v0

    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    invoke-direct {p0, v0, v1}, Landroid/inputmethodservice/InputMethodService;->setImeWindowStatus(II)V

    .line 2061
    return-void

    .line 2056
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid back disposition value ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") specified."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    return-void
.end method

.method public whitelist setCandidatesView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 2649
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2650
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2653
    return-void
.end method

.method public whitelist setCandidatesViewShown(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .line 2530
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->updateCandidatesVisibility(Z)V

    .line 2531
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    if-eq v0, p1, :cond_1

    .line 2535
    if-eqz p1, :cond_0

    .line 2536
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    goto :goto_0

    .line 2538
    :cond_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    .line 2541
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist setExtractSelectionToEnd()V
    .locals 2

    .line 4625
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 4626
    .local v0, "eet":Landroid/inputmethodservice/ExtractEditText;
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 4627
    .local v1, "selectionEnd":I
    invoke-virtual {v0, v1}, Landroid/inputmethodservice/ExtractEditText;->setSelection(I)V

    .line 4628
    invoke-virtual {v0, v1, v1}, Landroid/inputmethodservice/ExtractEditText;->onSelectionChanged(II)V

    .line 4629
    return-void
.end method

.method public whitelist setExtractView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 2607
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2609
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getExtractSideMargin()I

    move-result v0

    .line 2610
    .local v0, "extractSideMargin":I
    const/4 v1, -0x1

    if-lez v0, :cond_0

    .line 2611
    invoke-direct {p0, p1, v0}, Landroid/inputmethodservice/InputMethodService;->adjustSideMargin(Landroid/view/View;I)V

    goto :goto_0

    .line 2614
    :cond_0
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2620
    :goto_0
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    .line 2621
    if-eqz p1, :cond_2

    .line 2622
    const v2, 0x1020025

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/inputmethodservice/ExtractEditText;

    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 2624
    invoke-virtual {v2, p0}, Landroid/inputmethodservice/ExtractEditText;->setIME(Landroid/inputmethodservice/InputMethodService;)V

    .line 2625
    const v2, 0x1020059

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    .line 2627
    if-eqz v2, :cond_1

    .line 2628
    const v2, 0x102005a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    .line 2631
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 2634
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    goto :goto_1

    .line 2636
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 2637
    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    .line 2638
    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    .line 2640
    :goto_1
    return-void
.end method

.method public whitelist setExtractViewShown(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .line 2326
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    if-ne v0, p1, :cond_0

    .line 2327
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    .line 2328
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateExtractFrameVisibility()V

    .line 2330
    :cond_0
    return-void
.end method

.method public whitelist setInputView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 2663
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2664
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2667
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2668
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2671
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    .line 2672
    return-void
.end method

.method public blacklist setIsMovable(Z)V
    .locals 0
    .param p1, "isMovable"    # Z

    .line 4574
    iput-boolean p1, p0, Landroid/inputmethodservice/InputMethodService;->mIsMovable:Z

    .line 4575
    return-void
.end method

.method public blacklist setPointerIconType(I)V
    .locals 1
    .param p1, "type"    # I

    .line 4700
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    .line 4701
    return-void
.end method

.method public whitelist setTheme(I)V
    .locals 2
    .param p1, "theme"    # I

    .line 1703
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-nez v0, :cond_0

    .line 1706
    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    .line 1707
    return-void

    .line 1704
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist shouldOfferSwitchingToNextInputMethod()Z
    .locals 1

    .line 2149
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->shouldOfferSwitchingToNextInputMethod()Z

    move-result v0

    return v0
.end method

.method public whitelist showStatusIcon(I)V
    .locals 2
    .param p1, "iconResId"    # I

    .line 2566
    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mStatusIcon:I

    .line 2567
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->updateStatusIconAsync(Ljava/lang/String;I)V

    .line 2568
    return-void
.end method

.method public whitelist showWindow(Z)V
    .locals 7
    .param p1, "showInput"    # Z

    .line 3024
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    if-eqz v0, :cond_0

    .line 3025
    const-string v0, "InputMethodService"

    const-string v1, "Re-entrance in to showWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3026
    return-void

    .line 3029
    :cond_0
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    const/4 v2, 0x0

    const-string v3, "InputMethodService#showWindow"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V

    .line 3031
    const-wide/16 v0, 0x20

    const-string v2, "IMS.showWindow"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3032
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewWasVisible:Z

    .line 3033
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    .line 3035
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 3036
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-nez v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    goto :goto_0

    :cond_2
    move v4, v5

    :goto_0
    or-int/2addr v2, v4

    .line 3037
    .local v2, "previousImeWindowStatus":I
    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService;->prepareWindow(Z)Z

    move-result v4

    invoke-direct {p0, v4}, Landroid/inputmethodservice/InputMethodService;->startViews(Z)V

    .line 3038
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->mapToImeWindowStatus()I

    move-result v4

    .line 3039
    .local v4, "nextImeWindowStatus":I
    if-eq v2, v4, :cond_3

    .line 3040
    iget v6, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    invoke-direct {p0, v4, v6}, Landroid/inputmethodservice/InputMethodService;->setImeWindowStatus(II)V

    .line 3043
    :cond_3
    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService;->mNavigationBarController:Landroid/inputmethodservice/NavigationBarController;

    invoke-virtual {v6}, Landroid/inputmethodservice/NavigationBarController;->onWindowShown()V

    .line 3046
    iget-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    if-eqz v6, :cond_4

    .line 3047
    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService;->sendInputViewShownState(Z)V

    .line 3052
    :cond_4
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowShown()V

    .line 3053
    iput-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    .line 3057
    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v6}, Landroid/inputmethodservice/SoftInputWindow;->show()V

    .line 3058
    iput-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewWasVisible:Z

    .line 3059
    invoke-direct {p0, v3}, Landroid/inputmethodservice/InputMethodService;->applyVisibilityInInsetsConsumerIfNecessary(Z)V

    .line 3060
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->cancelImeSurfaceRemoval()V

    .line 3061
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    .line 3062
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3063
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->registerCompatOnBackInvokedCallback()V

    .line 3064
    return-void
.end method

.method greylist-max-o startExtractingText(Z)V
    .locals 12
    .param p1, "inputChanged"    # Z

    .line 4070
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 4071
    .local v0, "eet":Landroid/inputmethodservice/ExtractEditText;
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputStarted()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4072
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4073
    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    .line 4074
    new-instance v1, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 4075
    .local v1, "req":Landroid/view/inputmethod/ExtractedTextRequest;
    iget v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    iput v3, v1, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    .line 4076
    iput v2, v1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    .line 4077
    const/16 v3, 0xa

    iput v3, v1, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxLines:I

    .line 4078
    const/16 v3, 0x2710

    iput v3, v1, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxChars:I

    .line 4079
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 4080
    .local v3, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v3, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    .line 4081
    :cond_0
    invoke-interface {v3, v1, v2}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v4

    :goto_0
    iput-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    .line 4082
    if-eqz v4, :cond_1

    if-nez v3, :cond_2

    .line 4083
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected null in startExtractingText : mExtractedText = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", input connection = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "InputMethodService"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4086
    :cond_2
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v4

    .line 4089
    .local v4, "ei":Landroid/view/inputmethod/EditorInfo;
    :try_start_0
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->startInternalChanges()V

    .line 4090
    invoke-virtual {p0, v4}, Landroid/inputmethodservice/InputMethodService;->onUpdateExtractingVisibility(Landroid/view/inputmethod/EditorInfo;)V

    .line 4091
    invoke-virtual {p0, v4}, Landroid/inputmethodservice/InputMethodService;->onUpdateExtractingViews(Landroid/view/inputmethod/EditorInfo;)V

    .line 4092
    iget v5, v4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 4093
    .local v5, "inputType":I
    and-int/lit8 v6, v5, 0xf

    if-ne v6, v2, :cond_3

    .line 4095
    const/high16 v6, 0x40000

    and-int/2addr v6, v5

    if-eqz v6, :cond_3

    .line 4096
    const/high16 v6, 0x20000

    or-int/2addr v5, v6

    .line 4099
    :cond_3
    invoke-virtual {v0, v5}, Landroid/inputmethodservice/ExtractEditText;->setInputType(I)V

    .line 4100
    iget-object v6, v4, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Landroid/inputmethodservice/ExtractEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 4104
    const/4 v6, 0x0

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/inputmethodservice/ExtractEditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 4106
    const/4 v7, -0x1

    invoke-virtual {v0, v7}, Landroid/inputmethodservice/ExtractEditText;->setBackgroundColor(I)V

    .line 4109
    iget-object v7, v4, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, ""

    if-eqz v7, :cond_5

    .line 4110
    :try_start_1
    iget-object v7, v4, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    const-string v9, "#"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 4112
    .local v7, "tmpImeOptions":[Ljava/lang/String;
    array-length v9, v7

    const/4 v10, 0x2

    if-ne v9, v10, :cond_5

    const-string v9, "AppName=Memo"

    aget-object v11, v7, v6

    .line 4113
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "AppName=Diary"

    aget-object v11, v7, v6

    .line 4114
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 4115
    :cond_4
    aget-object v9, v7, v2

    const-string v11, "="

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 4117
    .local v9, "tmpColor":[Ljava/lang/String;
    array-length v11, v9

    if-ne v11, v10, :cond_5

    const-string v10, "Color"

    aget-object v11, v9, v6

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 4118
    aget-object v10, v9, v2

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "0x"

    invoke-virtual {v10, v11, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4120
    :try_start_2
    aget-object v10, v9, v2

    const/16 v11, 0x10

    invoke-static {v10, v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v10

    long-to-int v10, v10

    .line 4121
    .local v10, "color":I
    invoke-virtual {v0, v10}, Landroid/inputmethodservice/ExtractEditText;->setBackgroundColor(I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4124
    .end local v10    # "color":I
    goto :goto_1

    .line 4122
    :catch_0
    move-exception v10

    .line 4130
    .end local v7    # "tmpImeOptions":[Ljava/lang/String;
    .end local v9    # "tmpColor":[Ljava/lang/String;
    :cond_5
    :goto_1
    :try_start_3
    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz v7, :cond_6

    .line 4131
    invoke-virtual {v0, v2}, Landroid/inputmethodservice/ExtractEditText;->setEnabled(Z)V

    .line 4132
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    invoke-virtual {v0, v2}, Landroid/inputmethodservice/ExtractEditText;->setExtractedText(Landroid/view/inputmethod/ExtractedText;)V

    goto :goto_2

    .line 4134
    :cond_6
    invoke-virtual {v0, v6}, Landroid/inputmethodservice/ExtractEditText;->setEnabled(Z)V

    .line 4135
    invoke-virtual {v0, v8}, Landroid/inputmethodservice/ExtractEditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4138
    .end local v5    # "inputType":I
    :goto_2
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->finishInternalChanges()V

    .line 4139
    nop

    .line 4141
    if-eqz p1, :cond_7

    .line 4142
    invoke-virtual {p0, v4}, Landroid/inputmethodservice/InputMethodService;->onExtractingInputChanged(Landroid/view/inputmethod/EditorInfo;)V

    goto :goto_3

    .line 4138
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->finishInternalChanges()V

    .line 4139
    throw v2

    .line 4145
    .end local v1    # "req":Landroid/view/inputmethod/ExtractedTextRequest;
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v4    # "ei":Landroid/view/inputmethod/EditorInfo;
    :cond_7
    :goto_3
    return-void
.end method

.method public whitelist switchInputMethod(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .line 2584
    const-string v0, "com.samsung.android.bixby.service/.dictation.DictationInputMethodService"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2585
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    goto :goto_0

    .line 2588
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->setInputMethod(Ljava/lang/String;)V

    .line 2592
    :goto_0
    return-void
.end method

.method public final whitelist switchInputMethod(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .line 2603
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->setInputMethodAndSubtype(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 2604
    return-void
.end method

.method public final whitelist switchToNextInputMethod(Z)Z
    .locals 1
    .param p1, "onlyCurrentIme"    # Z

    .line 2136
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->switchToNextInputMethod(Z)Z

    move-result v0

    return v0
.end method

.method public final whitelist switchToPreviousInputMethod()Z
    .locals 1

    .line 2124
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->switchToPreviousInputMethod()Z

    move-result v0

    return v0
.end method

.method public blacklist undoMinimizeSoftInput()V
    .locals 0

    .line 4692
    return-void
.end method

.method greylist-max-o updateCandidatesVisibility(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .line 2544
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCandidatesHiddenVisibility()I

    move-result v0

    .line 2545
    .local v0, "vis":I
    :goto_0
    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-eq v1, v0, :cond_1

    .line 2546
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2547
    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    .line 2549
    :cond_1
    return-void
.end method

.method greylist-max-o updateExtractFrameVisibility()V
    .locals 5

    .line 2348
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->updateCandidatesVisibility(Z)V

    .line 2350
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2351
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :cond_1
    move v0, v2

    .line 2353
    .local v0, "vis":I
    :goto_1
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    .line 2357
    .end local v0    # "vis":I
    :cond_2
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    .line 2358
    .restart local v0    # "vis":I
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2361
    :goto_2
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewWasVisible:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eq v3, v0, :cond_4

    .line 2362
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mThemeAttrs:Landroid/content/res/TypedArray;

    if-nez v0, :cond_3

    .line 2363
    goto :goto_3

    .line 2364
    :cond_3
    const/4 v1, 0x2

    :goto_3
    nop

    .line 2362
    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 2366
    .local v1, "animRes":I
    if-eqz v1, :cond_4

    .line 2367
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2371
    .end local v1    # "animRes":I
    :cond_4
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2372
    return-void
.end method

.method public whitelist updateFullscreenMode()V
    .locals 9

    .line 2173
    const-wide/16 v0, 0x20

    const-string v2, "IMS.updateFullscreenMode"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2174
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 2175
    .local v2, "isFullscreen":Z
    :goto_0
    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mLastShowInputRequested:Z

    iget-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eq v5, v6, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    .line 2176
    .local v5, "changed":Z
    :goto_1
    iget-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    if-ne v6, v2, :cond_2

    iget-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    if-nez v6, :cond_7

    .line 2177
    :cond_2
    const/4 v5, 0x1

    .line 2178
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    .line 2179
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->reportFullscreenMode()V

    .line 2180
    iput-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    .line 2181
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 2182
    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    .line 2183
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 2184
    .local v6, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v2, :cond_3

    .line 2185
    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/inputmethodservice/InputMethodService;->mThemeAttrs:Landroid/content/res/TypedArray;

    invoke-virtual {v8, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2187
    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2188
    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_2

    .line 2190
    :cond_3
    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2191
    const/4 v7, -0x2

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2192
    const/4 v7, 0x0

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2195
    :goto_2
    iget-boolean v7, p0, Landroid/inputmethodservice/InputMethodService;->minimized:Z

    if-eqz v7, :cond_4

    .line 2196
    iput-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->minimized:Z

    .line 2197
    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v7, v4}, Landroid/inputmethodservice/SoftInputWindow;->setMinimizeFlag(Z)V

    .line 2200
    :cond_4
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->undoMinimizeSoftInput()V

    .line 2202
    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v7, v8, v6}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2204
    if-eqz v2, :cond_6

    .line 2205
    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    if-nez v7, :cond_5

    .line 2206
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateExtractTextView()Landroid/view/View;

    move-result-object v7

    .line 2207
    .local v7, "v":Landroid/view/View;
    if-eqz v7, :cond_5

    .line 2208
    invoke-virtual {p0, v7}, Landroid/inputmethodservice/InputMethodService;->setExtractView(Landroid/view/View;)V

    .line 2211
    .end local v7    # "v":Landroid/view/View;
    :cond_5
    invoke-virtual {p0, v4}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    .line 2213
    :cond_6
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateExtractFrameVisibility()V

    .line 2216
    .end local v6    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_7
    if-eqz v5, :cond_8

    .line 2217
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v4}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v4

    iget-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    xor-int/2addr v3, v6

    invoke-virtual {p0, v4, v2, v3}, Landroid/inputmethodservice/InputMethodService;->onConfigureWindow(Landroid/view/Window;ZZ)V

    .line 2218
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    iput-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mLastShowInputRequested:Z

    .line 2220
    :cond_8
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2221
    return-void
.end method

.method public whitelist updateInputViewShown()V
    .locals 3

    .line 2432
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2433
    .local v0, "isShown":Z
    :goto_0
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    if-eq v2, v0, :cond_2

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    if-eqz v2, :cond_2

    .line 2434
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    .line 2435
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2436
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    if-nez v1, :cond_2

    .line 2437
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 2438
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateInputView()Landroid/view/View;

    move-result-object v1

    .line 2439
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 2440
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->setInputView(Landroid/view/View;)V

    .line 2444
    .end local v1    # "v":Landroid/view/View;
    :cond_2
    return-void
.end method
