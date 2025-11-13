.class public Landroid/inputmethodservice/InputMethodService;
.super Landroid/inputmethodservice/AbstractInputMethodService;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/InputMethodService$Insets;,
        Landroid/inputmethodservice/InputMethodService$SettingsObserver;,
        Landroid/inputmethodservice/InputMethodService$InputMethodImpl;,
        Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;,
        Landroid/inputmethodservice/InputMethodService$BackDispositionMode;
    }
.end annotation


# static fields
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

.field public static final blacklist DISALLOW_INPUT_METHOD_INTERFACE_OVERRIDE:J = 0x8d39f80L

.field public static final blacklist ENABLE_HIDE_IME_CAPTION_BAR:Z = true

.field public static final blacklist FINISH_INPUT_NO_FALLBACK_CONNECTION:J = 0x94fa793L

.field public static final greylist-max-o IME_ACTIVE:I = 0x1

.field public static final blacklist IME_INVISIBLE:I = 0x4

.field public static final greylist-max-o IME_VISIBLE:I = 0x2

.field public static final blacklist IME_VISIBLE_IMPERCEPTIBLE:I = 0x8

.field private static final blacklist MAX_EVENTS_BUFFER:I = 0x1f4

.field private static final blacklist MINIMIZED_IME_INSET_ANIM:Z

.field static final greylist-max-o MOVEMENT_DOWN:I = -0x1

.field static final greylist-max-o MOVEMENT_UP:I = -0x2

.field private static final blacklist PROP_CAN_RENDER_GESTURAL_NAV_BUTTONS:Ljava/lang/String; = "persist.sys.ime.can_render_gestural_nav_buttons"

.field private static final blacklist STYLUS_HANDWRITING_IDLE_TIMEOUT_MAX_MS:J = 0x7530L

.field private static final blacklist STYLUS_HANDWRITING_IDLE_TIMEOUT_MS:J = 0x2710L

.field private static final blacklist STYLUS_WINDOW_IDLE_TIMEOUT_MILLIS:J = 0x493e0L

.field static final greylist-max-o TAG:Ljava/lang/String; = "InputMethodService"

.field private static final blacklist TIMEOUT_SURFACE_REMOVAL_MILLIS:J = 0x1f4L


# instance fields
.field final greylist-max-o mActionClickListener:Landroid/view/View$OnClickListener;

.field private blacklist mBackCallbackRegistered:Z

.field greylist-max-o mBackDisposition:I

.field greylist-max-o mCandidatesFrame:Landroid/widget/FrameLayout;

.field greylist-max-o mCandidatesViewStarted:Z

.field greylist-max-o mCandidatesVisibility:I

.field private final blacklist mCompatBackCallback:Landroid/window/CompatOnBackInvokedCallback;

.field private blacklist mConfigTracker:Landroid/inputmethodservice/ImsConfigurationTracker;

.field private blacklist mConnectionlessHandwritingCallback:Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

.field greylist-max-o mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field private blacklist mCurHideInputToken:Landroid/os/IBinder;

.field private blacklist mCurShowInputToken:Landroid/os/IBinder;

.field private blacklist mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

.field private blacklist mCurrentNightMode:I

.field private blacklist mCurrentOrientation:I

.field blacklist mDecorViewVisible:Z

.field blacklist mDecorViewWasVisible:Z

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

.field private blacklist mFinishHwRunnable:Ljava/lang/Runnable;

.field greylist-max-o mFullscreenApplied:Z

.field greylist-max-o mFullscreenArea:Landroid/view/ViewGroup;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mHandwritingDelegationText:Ljava/lang/CharSequence;

.field private blacklist mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

.field private blacklist mHandwritingRequestId:Ljava/util/OptionalInt;

.field private blacklist mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

.field private blacklist mImeSurfaceRemoverRunnable:Ljava/lang/Runnable;

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

.field private blacklist mIsConnectionlessHandwritingForDelegation:Z

.field greylist-max-o mIsFullscreen:Z

.field greylist-max-o mIsInputViewShown:Z

.field private blacklist mIsLastWindowVisible:Z

.field greylist-max-o mLastShowInputRequested:Z

.field private blacklist mLastWasInFullscreenMode:Z

.field private blacklist mLock:Ljava/lang/Object;

.field blacklist mMinimizedHeight:I

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

.field greylist-max-o mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

.field greylist-max-o mStatusIcon:I

.field private blacklist mStylusHwSessionsTimeout:J

.field private blacklist mStylusWindowIdleTimeoutForTest:J

.field private blacklist mStylusWindowIdleTimeoutRunnable:Ljava/lang/Runnable;

.field private blacklist mTargetDisplayContext:Landroid/content/Context;

.field greylist-max-p mTheme:I

.field greylist-max-o mThemeAttrs:Landroid/content/res/TypedArray;

.field final greylist-max-p mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

.field final greylist-max-o mTmpLocation:[I

.field greylist-max-o mToken:Landroid/os/IBinder;

.field private blacklist mUsingCtrlShiftShortcut:Z

.field blacklist mViewsCreated:Z

.field greylist-max-o mWindow:Landroid/inputmethodservice/SoftInputWindow;

.field greylist-max-o mWindowVisible:Z

.field blacklist minimized:Z

.field blacklist needSetLayout:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$-ED5AL7BIiM9Pb2cd0YhrcpZDp4(Landroid/inputmethodservice/InputMethodService;Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService;->lambda$new$0(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$64CCF769URG4UxhThxsOaNifSZ8(Landroid/inputmethodservice/InputMethodService;)Landroid/os/IBinder;
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getHostInputToken()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$A0c9lqSsOJBj4WezJ0EY5v9wSC8(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->lambda$scheduleImeSurfaceRemoval$2()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$JMvMoN8TCW1vU7oF9rQbK3TZs2I(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->lambda$getFinishHandwritingRunnable$6()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$M6pF3DaA4GbLxnx5POSuQZt3OK4(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->lambda$getStylusWindowIdleTimeoutRunnable$5()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$TWBfyE3GvlQQKbYYVez-Fx8Fn2c(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->lambda$onStylusHandwritingMotionEvent$4()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$efLNqwKcMrpEkZFhflQPR8Y7qp8(Landroid/inputmethodservice/InputMethodService;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$lURwGg9PN5eodMDPZKp4MOQxhlk(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->compatHandleBack()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$oRMkK66rOxqNaqhjifweqVkTB4Q(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->resetStateForNewConfiguration()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConfigTracker(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/ImsConfigurationTracker;
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/InputMethodService;->mConfigTracker:Landroid/inputmethodservice/ImsConfigurationTracker;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurStatsToken(Landroid/inputmethodservice/InputMethodService;)Landroid/view/inputmethod/ImeTracker$Token;
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/InputMethodService;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

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

.method static bridge synthetic blacklist -$$Nest$fputmConnectionlessHandwritingCallback(Landroid/inputmethodservice/InputMethodService;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mConnectionlessHandwritingCallback:Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    return-void
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

.method static bridge synthetic blacklist -$$Nest$fputmCurStatsToken(Landroid/inputmethodservice/InputMethodService;Landroid/view/inputmethod/ImeTracker$Token;)V
    .locals 0

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

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

.method static bridge synthetic blacklist -$$Nest$fputmIsConnectionlessHandwritingForDelegation(Landroid/inputmethodservice/InputMethodService;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/inputmethodservice/InputMethodService;->mIsConnectionlessHandwritingForDelegation:Z

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

.method static bridge synthetic blacklist -$$Nest$fputmStylusWindowIdleTimeoutForTest(Landroid/inputmethodservice/InputMethodService;J)V
    .locals 0

    iput-wide p1, p0, Landroid/inputmethodservice/InputMethodService;->mStylusWindowIdleTimeoutForTest:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelStylusWindowIdleTimeout(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->cancelStylusWindowIdleTimeout()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcommitHandwritingDelegationTextIfAvailable(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->commitHandwritingDelegationTextIfAvailable()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateStatsToken(Landroid/inputmethodservice/InputMethodService;ZIZ)Landroid/view/inputmethod/ImeTracker$Token;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/inputmethodservice/InputMethodService;->createStatsToken(ZIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdiscardHandwritingDelegationText(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->discardHandwritingDelegationText()V

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

.method static bridge synthetic blacklist -$$Nest$mfinishAndRemoveStylusHandwritingWindow(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->finishAndRemoveStylusHandwritingWindow()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mmapToImeWindowStatus(Landroid/inputmethodservice/InputMethodService;)I
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->mapToImeWindowStatus()I

    move-result p0

    return p0
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

.method static bridge synthetic blacklist -$$Nest$mscheduleHandwritingSessionTimeout(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->scheduleHandwritingSessionTimeout()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mscheduleImeSurfaceRemoval(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->scheduleImeSurfaceRemoval()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mscheduleStylusWindowIdleTimeout(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->scheduleStylusWindowIdleTimeout()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetImeWindowStatus(Landroid/inputmethodservice/InputMethodService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->setImeWindowStatus(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mundoMinimizeSoftInputWrapper(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->undoMinimizeSoftInputWrapper()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateEditorToolTypeInternal(Landroid/inputmethodservice/InputMethodService;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService;->updateEditorToolTypeInternal(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetMINIMIZED_IME_INSET_ANIM()Z
    .locals 1

    sget-boolean v0, Landroid/inputmethodservice/InputMethodService;->MINIMIZED_IME_INSET_ANIM:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    const-string v0, "persist.wm.enable.minimized_ime.anim"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/inputmethodservice/InputMethodService;->MINIMIZED_IME_INSET_ANIM:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/inputmethodservice/AbstractInputMethodService;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mBackCallbackRegistered:Z

    new-instance v1, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda2;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mCompatBackCallback:Landroid/window/CompatOnBackInvokedCallback;

    const-wide/16 v1, 0x2710

    iput-wide v1, p0, Landroid/inputmethodservice/InputMethodService;->mStylusHwSessionsTimeout:J

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mUsingCtrlShiftShortcut:Z

    new-instance v1, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-direct {v1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;-><init>()V

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    new-instance v1, Landroid/inputmethodservice/NavigationBarController;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/NavigationBarController;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mNavigationBarController:Landroid/inputmethodservice/NavigationBarController;

    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mLock:Ljava/lang/Object;

    new-instance v1, Landroid/inputmethodservice/InputMethodService$Insets;

    invoke-direct {v1}, Landroid/inputmethodservice/InputMethodService$Insets;-><init>()V

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mTmpLocation:[I

    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingRequestId:Ljava/util/OptionalInt;

    new-instance v1, Landroid/inputmethodservice/ImsConfigurationTracker;

    invoke-direct {v1}, Landroid/inputmethodservice/ImsConfigurationTracker;-><init>()V

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mConfigTracker:Landroid/inputmethodservice/ImsConfigurationTracker;

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->minimized:Z

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->needSetLayout:Z

    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mMinimizedHeight:I

    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mCurrentNightMode:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mCurrentOrientation:I

    new-instance v0, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda3;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    new-instance v0, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda4;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mActionClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Landroid/inputmethodservice/InputMethodService$2;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$2;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    return-void
.end method

.method private blacklist applyVisibilityInInsetsConsumerIfNecessary(ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 4

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    const/4 v2, 0x0

    const-string v3, "InputMethodService#applyVisibilityInInsetsConsumerIfNecessary"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mCurShowInputToken:Landroid/os/IBinder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mCurHideInputToken:Landroid/os/IBinder;

    :goto_0
    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->applyImeVisibilityAsync(Landroid/os/IBinder;ZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method

.method public static blacklist canImeRenderGesturalNavButtons()Z
    .locals 2

    const-string v0, "persist.sys.ime.can_render_gestural_nav_buttons"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private blacklist cancelImeSurfaceRemoval()V
    .locals 2

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImeSurfaceRemoverRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const-string v0, "InputMethodService"

    const-string v1, "cancelImeSurfaceRemoval: removeCallbacks"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mImeSurfaceRemoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImeSurfaceRemoverRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private blacklist cancelStylusWindowIdleTimeout()V
    .locals 2

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mStylusWindowIdleTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mStylusWindowIdleTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private static blacklist changeBgColorIfNeeded(Landroid/inputmethodservice/ExtractEditText;Landroid/view/inputmethod/EditorInfo;)V
    .locals 6

    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    aget-object v3, v0, v1

    const-string v4, "AppName=Memo"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, v0, v1

    const-string v4, "AppName=Diary"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    aget-object v4, v0, v3

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    if-ne v5, v2, :cond_1

    const-string v2, "Color"

    aget-object v1, v4, v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    aget-object v1, v4, v3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0x"

    const-string v5, ""

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    :try_start_0
    aget-object v1, v4, v3

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/ExtractEditText;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist checkandshowInputMehtodPicker()V
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->dismissAndShowAgainInputMethodPicker()V

    return-void
.end method

.method private blacklist commitHandwritingDelegationTextIfAvailable()V
    .locals 3

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingDelegationText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingDelegationText:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingDelegationText:Ljava/lang/CharSequence;

    return-void
.end method

.method private blacklist compatHandleBack()V
    .locals 5

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    if-nez v0, :cond_0

    const-string v0, "InputMethodService"

    const-string v1, "Back callback invoked on a hidden IME. Removing the callback..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->unregisterDefaultOnBackInvokedCallback()V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/inputmethodservice/InputMethodService;->createBackKeyEvent(IZ)Landroid/view/KeyEvent;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v2, v1}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    nop

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v3, v4

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    move v0, v4

    :cond_1
    invoke-direct {p0, v4, v0}, Landroid/inputmethodservice/InputMethodService;->createBackKeyEvent(IZ)Landroid/view/KeyEvent;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    return-void
.end method

.method private blacklist createBackKeyEvent(IZ)Landroid/view/KeyEvent;
    .locals 16

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    new-instance v15, Landroid/view/KeyEvent;

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

    return-object v15
.end method

.method private blacklist createStatsToken(ZIZ)Landroid/view/inputmethod/ImeTracker$Token;
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    const/4 v2, 0x7

    invoke-interface {v0, v1, v2, p2, p3}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    return-object v0
.end method

.method private blacklist discardHandwritingDelegationText()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingDelegationText:Ljava/lang/CharSequence;

    return-void
.end method

.method private blacklist dispatchOnCurrentInputMethodSubtypeChanged(Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 2

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mNotifyUserActionSent:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onCurrentInputMethodSubtypeChanged(Landroid/view/inputmethod/InputMethodSubtype;)V

    return-void

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

    invoke-virtual {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onShowInputRequested(IZ)Z

    move-result v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInlineSuggestionSessionController:Landroid/inputmethodservice/InlineSuggestionSessionController;

    invoke-virtual {v1, v0}, Landroid/inputmethodservice/InlineSuggestionSessionController;->notifyOnShowInputRequested(Z)V

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    :goto_0
    return v0
.end method

.method private blacklist finishAndRemoveStylusHandwritingWindow()V
    .locals 3

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->cancelStylusWindowIdleTimeout()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mOnPreparedStylusHwCalled:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mStylusWindowIdleTimeoutRunnable:Ljava/lang/Runnable;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingRequestId:Ljava/util/OptionalInt;

    invoke-virtual {v1}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->finishStylusHandwriting()V

    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/InkWindow;->hide(Z)V

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    invoke-virtual {v1}, Landroid/inputmethodservice/InkWindow;->destroy()V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    :cond_1
    return-void
.end method

.method private blacklist finishViews(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInlineSuggestionSessionController:Landroid/inputmethodservice/InlineSuggestionSessionController;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSessionController;->notifyOnFinishInputView()V

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onFinishCandidatesView(Z)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    return-void
.end method

.method private greylist-max-o getExtractEditTextIfVisible()Landroid/inputmethodservice/ExtractEditText;
    .locals 1

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getFinishHandwritingRunnable()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFinishHwRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFinishHwRunnable:Ljava/lang/Runnable;

    return-object v0

    :cond_0
    new-instance v0, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda8;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFinishHwRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private blacklist getHostInputToken()Landroid/os/IBinder;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

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

    and-int/lit16 v0, p1, 0xff

    packed-switch v0, :pswitch_data_0

    const v0, 0x1080447

    return v0

    :pswitch_0
    const v0, 0x1080446

    return v0

    :pswitch_1
    const v0, 0x1080443

    return v0

    :pswitch_2
    const v0, 0x1080445

    return v0

    :pswitch_3
    const v0, 0x1080449

    return v0

    :pswitch_4
    const v0, 0x1080448

    return v0

    :pswitch_5
    const v0, 0x1080444

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

.method private blacklist getPaddingBottom([I)I
    .locals 5

    nop

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/inputmethodservice/SemImsUtils;->isMockIme(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Landroid/inputmethodservice/SemImsUtils;->getNavigationBarHeight(Landroid/content/res/Resources;)I

    move-result v0

    const/4 v1, 0x1

    aget v2, p1, v1

    if-lez v2, :cond_0

    aget v1, p1, v1

    if-gt v1, v0, :cond_0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "InputMethodService"

    const-string v2, "onComputeInsets: a navibar height padding is applied."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final whitelist getStylusHandwritingIdleTimeoutMax()Ljava/time/Duration;
    .locals 2

    const-wide/16 v0, 0x7530

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getStylusWindowIdleTimeoutRunnable()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mStylusWindowIdleTimeoutRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda0;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mStylusWindowIdleTimeoutRunnable:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mStylusWindowIdleTimeoutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private greylist-max-o handleBack(Z)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleBack: mShowInputRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", doIt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    const/16 v1, 0x1d

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-direct {p0, v3, v1}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(II)V

    :cond_0
    return v2

    :cond_1
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-nez v0, :cond_2

    if-eqz p1, :cond_3

    invoke-virtual {p0, v3}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-direct {p0, v1}, Landroid/inputmethodservice/InputMethodService;->hideWindowWithToken(I)V

    :cond_3
    :goto_0
    return v2

    :cond_4
    return v3
.end method

.method private static blacklist handleSepKeyboardLayoutParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsIgnoringVisibility(Z)V

    sget-boolean v0, Landroid/inputmethodservice/SemImsRune;->supportPreferredMinDisplayRefreshRate:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x42700000    # 60.0f

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    :cond_0
    return-void
.end method

.method private blacklist handleSipDualView()V
    .locals 4

    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p0, v0, v1}, Landroid/inputmethodservice/SemImsUtils;->createDisplayContextAndSetTheme(Landroid/content/Context;ILandroid/view/inputmethod/InputMethodManager;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mTargetDisplayContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mTargetDisplayContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    const-wide/16 v0, 0x20

    const-string v2, "IMS.initSoftInputWindow"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v0, Landroid/inputmethodservice/SoftInputWindow;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mTargetDisplayContext:Landroid/content/Context;

    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    invoke-direct {v0, v1, v2, v3}, Landroid/inputmethodservice/SoftInputWindow;-><init>(Landroid/content/Context;ILandroid/view/KeyEvent$DispatcherState;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    return-void
.end method

.method private blacklist hideWindowWithToken(I)V
    .locals 2

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-static {v0}, Landroid/view/inputmethod/ImeTracker;->isFromUser(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/16 v0, 0x1d

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v1, p1, v0}, Landroid/inputmethodservice/InputMethodService;->createStatsToken(ZIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    return-void
.end method

.method private blacklist initConfigurationTracker()V
    .locals 9

    const-string v0, "InputMethodService"

    const v1, 0x8080

    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-wide/32 v5, 0x8080

    invoke-static {v5, v6}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ServiceInfo;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    :try_start_1
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.view.im"

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    sget-object v8, Lcom/android/internal/R$styleable;->InputMethod:[I

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v5, :cond_2

    const/4 v7, 0x0

    :try_start_3
    invoke-virtual {v6, v7, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iget-object v8, p0, Landroid/inputmethodservice/InputMethodService;->mConfigTracker:Landroid/inputmethodservice/ImsConfigurationTracker;

    invoke-virtual {v8, v7}, Landroid/inputmethodservice/ImsConfigurationTracker;->onInitialize(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_0

    :try_start_4
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_0
    if-eqz v5, :cond_1

    :try_start_5
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_1
    goto :goto_3

    :catchall_0
    move-exception v7

    goto :goto_0

    :cond_2
    :try_start_6
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v8, "No android.view.im meta-data"

    invoke-direct {v7, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_0
    if-eqz v6, :cond_3

    :try_start_7
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v8

    :try_start_8
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v6

    if-eqz v5, :cond_4

    :try_start_9
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v7

    :try_start_a
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v6
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to load input method "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void

    :catch_1
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find input method "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private synthetic blacklist lambda$getFinishHandwritingRunnable$6()V
    .locals 2

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mFinishHwRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const-string v0, "InputMethodService"

    const-string v1, "Stylus handwriting idle timed-out. calling finishStylusHandwriting()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFinishHwRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->finishStylusHandwriting()V

    return-void
.end method

.method private synthetic blacklist lambda$getStylusWindowIdleTimeoutRunnable$5()V
    .locals 1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->finishAndRemoveStylusHandwritingWindow()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mStylusWindowIdleTimeoutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic blacklist lambda$new$0(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 5

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mNavigationBarController:Landroid/inputmethodservice/NavigationBarController;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/NavigationBarController;->updateInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mViewsCreated:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iput v1, v0, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    :cond_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    iput v4, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->setEmpty()V

    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v1, v1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v1, v1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget-object v1, v1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v0, v0, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    :goto_0
    sget-boolean v0, Landroid/inputmethodservice/InputMethodService;->MINIMIZED_IME_INSET_ANIM:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->minimizedInsets:Landroid/graphics/Rect;

    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mMinimizedHeight:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mMinimizedHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mMinimizedHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    :cond_2
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mNavigationBarController:Landroid/inputmethodservice/NavigationBarController;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    invoke-virtual {v0, v1, p1}, Landroid/inputmethodservice/NavigationBarController;->updateTouchableInsets(Landroid/inputmethodservice/InputMethodService$Insets;Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v0, v0, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    invoke-direct {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setImeExclusionRect(I)V

    :cond_3
    return-void
.end method

.method private synthetic blacklist lambda$new$1(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->actionId:I

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->actionId:I

    invoke-interface {v1, v2}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    goto :goto_0

    :cond_0
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v2, v2, 0xff

    invoke-interface {v1, v2}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$onEvaluateFullscreenMode$3(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "ignoreImeInternalFlagAppWindowPortrait=true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private synthetic blacklist lambda$onStylusHandwritingMotionEvent$4()V
    .locals 5

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPendingEvents:Lcom/android/internal/util/RingBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPendingEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPendingEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/MotionEvent;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    invoke-virtual {v4, v3}, Landroid/inputmethodservice/InkWindow;->dispatchHandwritingEvent(Landroid/view/MotionEvent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPendingEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->clear()V

    :cond_2
    return-void
.end method

.method private synthetic blacklist lambda$scheduleImeSurfaceRemoval$2()V
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->removeImeSurface()V

    return-void
.end method

.method private blacklist mapToImeWindowStatus()I
    .locals 1

    nop

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    or-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private varargs blacklist methodIsOverridden(Ljava/lang/String;[Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/inputmethodservice/InputMethodService;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Method must exist."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private greylist-max-o onToggleSoftInput(II)V
    .locals 1

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    invoke-direct {p0, p2, v0}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(II)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x35

    invoke-direct {p0, p1, v0}, Landroid/inputmethodservice/InputMethodService;->requestShowSelf(II)V

    :goto_0
    return-void
.end method

.method private blacklist prepareWindow(Z)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    :cond_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateFullscreenMode()V

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateInputViewShown()V

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mViewsCreated:Z

    if-nez v2, :cond_1

    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mViewsCreated:Z

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateCandidatesView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->setCandidatesView(Landroid/view/View;)V

    :cond_1
    return v0
.end method

.method private blacklist registerDefaultOnBackInvokedCallback()V
    .locals 3

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mBackCallbackRegistered:Z

    const-string v1, "InputMethodService"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerCompatOnBackInvokedCallback return because registered : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mBackCallbackRegistered:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerCompatOnBackInvokedCallback : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mCompatBackCallback:Landroid/window/CompatOnBackInvokedCallback;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isOnBackInvokedCallbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/view/inputmethod/Flags;->predictiveBackIme()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mCompatBackCallback:Landroid/window/CompatOnBackInvokedCallback;

    invoke-interface {v0, v1}, Landroid/window/OnBackInvokedDispatcher;->registerSystemOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mCompatBackCallback:Landroid/window/CompatOnBackInvokedCallback;

    invoke-interface {v0, v1, v2}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mBackCallbackRegistered:Z

    :cond_2
    return-void
.end method

.method private blacklist removeImeSurface()V
    .locals 2

    const-string v0, "InputMethodService"

    const-string v1, "removeImeSurface"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->cancelImeSurfaceRemoval()V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->hide()V

    :cond_0
    return-void
.end method

.method private blacklist reportFullscreenMode()V
    .locals 2

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->reportFullscreenModeAsync(Z)V

    return-void
.end method

.method private blacklist requestHideSelf(II)V
    .locals 6

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-static {v0}, Landroid/view/inputmethod/ImeTracker;->isFromUser(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/16 v0, 0x1d

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v1, p2, v0}, Landroid/inputmethodservice/InputMethodService;->createStatsToken(ZIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v2

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    const/4 v4, 0x0

    const-string v5, "InputMethodService#requestHideSelf"

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/internal/inputmethod/ImeTracing;->triggerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-virtual {v2, v1, p1, p2}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->hideMySoftInput(Landroid/view/inputmethod/ImeTracker$Token;II)V

    return-void
.end method

.method private blacklist requestShowSelf(II)V
    .locals 5

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-static {v0}, Landroid/view/inputmethod/ImeTracker;->isFromUser(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, p2, v0}, Landroid/inputmethodservice/InputMethodService;->createStatsToken(ZIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    const/4 v3, 0x0

    const-string v4, "InputMethodService#requestShowSelf"

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/inputmethod/ImeTracing;->triggerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->showMySoftInput(Landroid/view/inputmethod/ImeTracker$Token;II)V

    return-void
.end method

.method private greylist-max-o resetStateForNewConfiguration()V
    .locals 10

    const-string v0, "IMS.resetStateForNewConfiguration"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    iget v3, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v6, v7}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initViews()V

    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    iput-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    iget-boolean v7, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v9

    invoke-virtual {p0, v7, v9, v8}, Landroid/inputmethodservice/InputMethodService;->doStartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    :cond_0
    if-eqz v0, :cond_6

    const/16 v7, 0x2c

    if-eqz v4, :cond_2

    invoke-direct {p0, v3, v8}, Landroid/inputmethodservice/InputMethodService;->dispatchOnShowInputRequested(IZ)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-direct {p0, v8, v7}, Landroid/inputmethodservice/InputMethodService;->showWindowWithToken(ZI)V

    if-eqz v5, :cond_4

    iput-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    invoke-virtual {p0, v5}, Landroid/inputmethodservice/InputMethodService;->onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v7}, Landroid/inputmethodservice/InputMethodService;->hideWindowWithToken(I)V

    goto :goto_0

    :cond_2
    iget v9, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-nez v9, :cond_3

    invoke-direct {p0, v6, v7}, Landroid/inputmethodservice/InputMethodService;->showWindowWithToken(ZI)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v7}, Landroid/inputmethodservice/InputMethodService;->hideWindowWithToken(I)V

    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v6, 0x2

    :cond_5
    or-int/2addr v6, v8

    iget v8, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    invoke-direct {p0, v6, v8}, Landroid/inputmethodservice/InputMethodService;->setImeWindowStatus(II)V

    :cond_6
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method private blacklist scheduleHandwritingSessionTimeout()V
    .locals 4

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFinishHwRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mFinishHwRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getFinishHandwritingRunnable()Ljava/lang/Runnable;

    move-result-object v1

    iget-wide v2, p0, Landroid/inputmethodservice/InputMethodService;->mStylusHwSessionsTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private blacklist scheduleImeSurfaceRemoval()V
    .locals 5

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    const-string v1, "InputMethodService"

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImeSurfaceRemoverRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    :cond_1
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mLastWasInFullscreenMode:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->removeImeSurface()V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda7;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImeSurfaceRemoverRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mImeSurfaceRemoverRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "scheduleImeSurfaceRemoval: removeImeSurface is posted."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduleImeSurfaceRemoval: canceled, mShowInputRequested="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mWindowVisible="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", IsmWindowNull="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_2

    :cond_4
    move v2, v4

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", IsmImeSurfaceRemoverRunnableNotNull="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mImeSurfaceRemoverRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    move v3, v4

    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist scheduleStylusWindowIdleTimeout()V
    .locals 4

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->cancelStylusWindowIdleTimeout()V

    iget-wide v0, p0, Landroid/inputmethodservice/InputMethodService;->mStylusWindowIdleTimeoutForTest:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v0, p0, Landroid/inputmethodservice/InputMethodService;->mStylusWindowIdleTimeoutForTest:J

    goto :goto_0

    :cond_1
    const-wide/32 v0, 0x493e0

    :goto_0
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getStylusWindowIdleTimeoutRunnable()Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private blacklist sendDisplayIdForDex()V
    .locals 3

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/inputmethodservice/SemImsUtils;->isHoneyboard(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getCurTokenDisplayId()I

    move-result v1

    const-string v2, "display_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "DISPLAY_ID"

    invoke-virtual {p0, v1, v0}, Landroid/inputmethodservice/InputMethodService;->onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private blacklist sendInputViewShownState(Z)V
    .locals 2

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    invoke-static {p0, v0, p1, v1}, Landroid/inputmethodservice/SemImsUtils;->sendBroadcastShownState(Landroid/content/Context;Landroid/view/inputmethod/EditorInfo;ZI)V

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsLastWindowVisible:Z

    if-eq v0, p1, :cond_0

    invoke-static {p0, p1}, Landroid/inputmethodservice/SemImsUtils;->sendBroadcastForSSRM(Landroid/content/Context;Z)V

    iput-boolean p1, p0, Landroid/inputmethodservice/InputMethodService;->mIsLastWindowVisible:Z

    :cond_0
    return-void
.end method

.method private blacklist setImeExclusionRect(I)V
    .locals 7

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    nop

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Insets;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, p1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v5, v1, Landroid/graphics/Insets;->right:I

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-direct {v3, v4, p1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemGestureExclusionRects(Ljava/util/List;)V

    return-void
.end method

.method private blacklist setImeWindowStatus(II)V
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->setImeWindowStatusAsync(II)V

    return-void
.end method

.method private blacklist showWindowWithToken(ZI)V
    .locals 2

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-static {v0}, Landroid/view/inputmethod/ImeTracker;->isFromUser(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, p2, v0}, Landroid/inputmethodservice/InputMethodService;->createStatsToken(ZIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    return-void
.end method

.method private blacklist startViews(Z)V
    .locals 3

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startViews: mShowInputRequested="

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

    :cond_2
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    if-nez v0, :cond_4

    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInlineSuggestionSessionController:Landroid/inputmethodservice/InlineSuggestionSessionController;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSessionController;->notifyOnStartInputView()V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v0, v2}, Landroid/inputmethodservice/InputMethodService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    if-nez v0, :cond_4

    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v0, v2}, Landroid/inputmethodservice/InputMethodService;->onStartCandidatesView(Landroid/view/inputmethod/EditorInfo;Z)V

    :cond_4
    :goto_0
    if-eqz p1, :cond_5

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    :cond_5
    return-void
.end method

.method private blacklist undoMinimizeSoftInputWrapper()V
    .locals 2

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->undoMinimizeSoftInput()V

    sget-boolean v0, Landroid/inputmethodservice/InputMethodService;->MINIMIZED_IME_INSET_ANIM:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mMinimizedHeight:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "undoMinimizeSoftInputWrapper: reset minimizedHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mMinimizedHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private blacklist unregisterDefaultOnBackInvokedCallback()V
    .locals 3

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mBackCallbackRegistered:Z

    const-string v1, "InputMethodService"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterCompatOnBackInvokedCallback return because registered : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mBackCallbackRegistered:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterCompatOnBackInvokedCallback : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mCompatBackCallback:Landroid/window/CompatOnBackInvokedCallback;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mCompatBackCallback:Landroid/window/CompatOnBackInvokedCallback;

    invoke-interface {v0, v1}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mBackCallbackRegistered:Z

    :cond_1
    return-void
.end method

.method private blacklist updateEditorToolTypeInternal(I)V
    .locals 1

    invoke-static {}, Landroid/view/inputmethod/Flags;->useHandwritingListenerForTooltype()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/EditorInfo;->setInitialToolType(I)V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onUpdateEditorToolType(I)V

    return-void
.end method

.method private blacklist useWritingToolkit()Z
    .locals 2

    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->SUPPORT_WRITING_TOOLKIT:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.writingtoolkit.service.FakeHoneyBoardService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method final blacklist createInputMethodServiceInternal()Landroid/inputmethodservice/InputMethodServiceInternal;
    .locals 1

    new-instance v0, Landroid/inputmethodservice/InputMethodService$1;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$1;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    return-object v0
.end method

.method greylist-max-o doFinishInput()V
    .locals 4

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    const-string v2, "InputMethodService#doFinishInput"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/internal/inputmethod/ImeTracing;->triggerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/inputmethodservice/InputMethodService;->finishViews(Z)V

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInlineSuggestionSessionController:Landroid/inputmethodservice/InlineSuggestionSessionController;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSessionController;->notifyOnFinishInput()V

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onFinishInput()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mOnPreparedStylusHwCalled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->finishStylusHandwriting()V

    :cond_1
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->unregisterDefaultOnBackInvokedCallback()V

    return-void
.end method

.method public blacklist doMinimizeSoftInput(I)V
    .locals 0

    return-void
.end method

.method greylist-max-o doMovementKey(ILandroid/view/KeyEvent;I)Z
    .locals 9

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getExtractEditTextIfVisible()Landroid/inputmethodservice/ExtractEditText;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getLayout()Landroid/text/Layout;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    const/4 v5, -0x1

    if-ne p3, v5, :cond_0

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v2, v0, v5, p1, p2}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, p1, v4}, Landroid/inputmethodservice/InputMethodService;->reportExtractedMovement(II)V

    return v4

    :cond_0
    const/4 v6, -0x2

    if-ne p3, v6, :cond_1

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v2, v0, v5, p1, p2}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_4

    return v4

    :cond_1
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v2, v0, v6, p2}, Landroid/text/method/MovementMethod;->onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0, p1, p3}, Landroid/inputmethodservice/InputMethodService;->reportExtractedMovement(II)V

    goto :goto_1

    :cond_2
    invoke-static {p2, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v6

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v2, v0, v7, p1, v6}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {p2, v4}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v7

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v2, v0, v8, p1, v7}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    :goto_0
    add-int/2addr p3, v5

    if-lez p3, :cond_3

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v2, v0, v8, p1, v6}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v2, v0, v8, p1, v7}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p3}, Landroid/inputmethodservice/InputMethodService;->reportExtractedMovement(II)V

    :cond_4
    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    return v4

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

    if-nez p3, :cond_0

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->useWritingToolkit()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->doFinishInput()V

    :cond_0
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v1, "InputMethodService#doStartInput"

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/inputmethod/ImeTracing;->triggerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    invoke-virtual {v0, p2}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->updateClientDisplayId(Landroid/view/inputmethod/EditorInfo;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    iput-object p2, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInlineSuggestionSessionController:Landroid/inputmethodservice/InlineSuggestionSessionController;

    if-nez p2, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_1
    iget-object v2, p2, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    :goto_0
    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, p2, Landroid/view/inputmethod/EditorInfo;->autofillId:Landroid/view/autofill/AutofillId;

    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/inputmethodservice/InlineSuggestionSessionController;->notifyOnStartInput(Ljava/lang/String;Landroid/view/autofill/AutofillId;)V

    invoke-virtual {p0, p2, p3}, Landroid/inputmethodservice/InputMethodService;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eqz v1, :cond_3

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInlineSuggestionSessionController:Landroid/inputmethodservice/InlineSuggestionSessionController;

    invoke-virtual {v1}, Landroid/inputmethodservice/InlineSuggestionSessionController;->notifyOnStartInputView()V

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v1, p3}, Landroid/inputmethodservice/InputMethodService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    goto :goto_2

    :cond_3
    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-nez v1, :cond_4

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v0, p3}, Landroid/inputmethodservice/InputMethodService;->onStartCandidatesView(Landroid/view/inputmethod/EditorInfo;Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

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

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_0

    const-string v1, "  mInputEditorInfo:"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    const-string v2, "    "

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/inputmethod/EditorInfo;->dump(Landroid/util/Printer;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string v1, "  mInputEditorInfo: null"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

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

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

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

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz v1, :cond_1

    const-string v1, "  mExtractedText:"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

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

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v1, "  mExtractedText: null"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

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

    const-string v1, "  Last computed insets:"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    contentTopInsets="

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

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSettingsObserver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNavigationBarController="

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

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    invoke-virtual {v1, v0}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->dumpDexMode(Landroid/util/Printer;)V

    return-void
.end method

.method public whitelist enableHardwareAcceleration()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist finishConnectionlessStylusHandwriting(Ljava/lang/CharSequence;)V
    .locals 3

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mConnectionlessHandwritingCallback:Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    if-eqz v0, :cond_2

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mConnectionlessHandwritingCallback:Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;->onResult(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsConnectionlessHandwritingForDelegation:Z

    if-eqz v0, :cond_1

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingDelegationText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mConnectionlessHandwritingCallback:Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "InputMethodService"

    const-string v2, "Couldn\'t send connectionless handwriting result"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mConnectionlessHandwritingCallback:Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    :cond_2
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->finishStylusHandwriting()V

    return-void
.end method

.method public final whitelist finishStylusHandwriting()V
    .locals 6

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingRequestId:Ljava/util/OptionalInt;

    invoke-virtual {v0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFinishHwRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mFinishHwRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFinishHwRunnable:Ljava/lang/Runnable;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingRequestId:Ljava/util/OptionalInt;

    invoke-virtual {v1}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v1

    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v2

    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingRequestId:Ljava/util/OptionalInt;

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    invoke-virtual {v2}, Landroid/view/InputEventReceiver;->dispose()V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/inputmethodservice/InkWindow;->hide(Z)V

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mConnectionlessHandwritingCallback:Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    if-eqz v2, :cond_3

    const-string v2, "Connectionless handwriting session did not complete successfully"

    const-string v4, "InputMethodService"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mConnectionlessHandwritingCallback:Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    const/4 v5, 0x2

    invoke-interface {v2, v5}, Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v5, "Couldn\'t send connectionless handwriting error result"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mConnectionlessHandwritingCallback:Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    :cond_3
    iput-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mIsConnectionlessHandwritingForDelegation:Z

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->resetStylusHandwriting(I)V

    iput-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mOnPreparedStylusHwCalled:Z

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onFinishStylusHandwriting()V

    return-void
.end method

.method public whitelist getBackDisposition()I
    .locals 1

    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    return v0
.end method

.method public whitelist getCandidatesHiddenVisibility()I
    .locals 1

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

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputBinding:Landroid/view/inputmethod/InputBinding;

    return-object v0
.end method

.method public whitelist getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 2

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v1
.end method

.method public whitelist getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    return-object v0
.end method

.method public whitelist getCurrentInputStarted()Z
    .locals 1

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    return v0
.end method

.method public whitelist getInputMethodWindowRecommendedHeight()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "InputMethodService"

    const-string v1, "getInputMethodWindowRecommendedHeight() is deprecated and now always returns 0. Do not use this method."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public whitelist getMaxWidth()I
    .locals 2

    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    nop

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v1

    invoke-static {v1}, Landroid/window/WindowMetricsHelper;->getBoundsExcludingNavigationBarAndCutout(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    return v1
.end method

.method public final whitelist getStylusHandwritingSessionTimeout()Ljava/time/Duration;
    .locals 2

    iget-wide v0, p0, Landroid/inputmethodservice/InputMethodService;->mStylusHwSessionsTimeout:J

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist getStylusHandwritingWindow()Landroid/view/Window;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    return-object v0
.end method

.method public whitelist getTextForImeAction(I)Ljava/lang/CharSequence;
    .locals 1

    and-int/lit16 v0, p1, 0xff

    packed-switch v0, :pswitch_data_0

    const v0, 0x104064f

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :pswitch_0
    const v0, 0x1040653

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :pswitch_1
    const v0, 0x1040650

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :pswitch_2
    const v0, 0x1040652

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :pswitch_3
    const v0, 0x1040655

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :pswitch_4
    const v0, 0x1040654

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :pswitch_5
    const v0, 0x1040651

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

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

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    return-object v0
.end method

.method public whitelist hideStatusIcon()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mStatusIcon:I

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->updateStatusIconAsync(Ljava/lang/String;I)V

    return-void
.end method

.method public whitelist hideWindow()V
    .locals 6

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-static {v0}, Landroid/view/inputmethod/ImeTracker;->isFromUser(Landroid/view/View;)Z

    move-result v0

    const/16 v2, 0x2b

    invoke-direct {p0, v1, v2, v0}, Landroid/inputmethodservice/InputMethodService;->createStatsToken(ZIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    :goto_0
    nop

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v3

    const/16 v4, 0x2d

    invoke-interface {v3, v0, v4}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v3

    const-string v4, "InputMethodService#hideWindow"

    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V

    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    invoke-direct {p0, v1, v2}, Landroid/inputmethodservice/InputMethodService;->setImeWindowStatus(II)V

    invoke-direct {p0, v1, v0}, Landroid/inputmethodservice/InputMethodService;->applyVisibilityInInsetsConsumerIfNecessary(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    invoke-direct {p0, v1}, Landroid/inputmethodservice/InputMethodService;->finishViews(Z)V

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    :cond_1
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowHidden()V

    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewWasVisible:Z

    :cond_2
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mLastWasInFullscreenMode:Z

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateFullscreenMode()V

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->unregisterDefaultOnBackInvokedCallback()V

    invoke-direct {p0, v1}, Landroid/inputmethodservice/InputMethodService;->sendInputViewShownState(Z)V

    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mIsPressBtnSIPOnOff:Z

    return-void
.end method

.method greylist-max-o initViews()V
    .locals 6

    const-string v0, "IMS.initViews"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInitialized:Z

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mViewsCreated:Z

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    sget-object v3, Landroid/R$styleable;->InputMethodService:[I

    invoke-virtual {p0, v3}, Landroid/inputmethodservice/InputMethodService;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mThemeAttrs:Landroid/content/res/TypedArray;

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x109009f

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/inputmethodservice/SoftInputWindow;->setContentView(Landroid/view/View;)V

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    const v4, 0x1020330

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    const v4, 0x102001c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    iput-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    iput-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    iput-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    iput-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    const v4, 0x102001d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    const v4, 0x102001e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    iput-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCandidatesHiddenVisibility()I

    move-result v0

    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    iget v4, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mNavigationBarController:Landroid/inputmethodservice/NavigationBarController;

    invoke-virtual {v0}, Landroid/inputmethodservice/NavigationBarController;->onViewInitialized()V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method greylist-max-o initialize()V
    .locals 1

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInitialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInitialized:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onInitializeInterface()V

    :cond_0
    return-void
.end method

.method public whitelist isExtractViewShown()Z
    .locals 1

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

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    return v0
.end method

.method public final blacklist isImeNavigationBarShownForTesting()Z
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mNavigationBarController:Landroid/inputmethodservice/NavigationBarController;

    invoke-virtual {v0}, Landroid/inputmethodservice/NavigationBarController;->isShown()Z

    move-result v0

    return v0
.end method

.method public whitelist isInputViewShown()Z
    .locals 1

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    return v0
.end method

.method public whitelist isShowInputRequested()Z
    .locals 1

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    return v0
.end method

.method public whitelist onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public whitelist onBindInput()V
    .locals 0

    return-void
.end method

.method public whitelist onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .locals 7

    const-string v0, "IMS.onComputeInsets"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mTmpLocation:[I

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    aput v5, v0, v4

    :goto_0
    invoke-direct {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getPaddingBottom([I)I

    move-result v3

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v6

    iput v6, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    goto :goto_1

    :cond_1
    aget v5, v0, v4

    add-int/2addr v5, v3

    iput v5, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    :goto_1
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    :cond_2
    aget v4, v0, v4

    add-int/2addr v4, v3

    iput v4, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    const/4 v4, 0x2

    iput v4, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    iget-object v4, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->setEmpty()V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/inputmethodservice/AbstractInputMethodService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mConfigTracker:Landroid/inputmethodservice/ImsConfigurationTracker;

    new-instance v1, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda5;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    invoke-virtual {v0, p1, v1}, Landroid/inputmethodservice/ImsConfigurationTracker;->onConfigurationChanged(Landroid/content/res/Configuration;Ljava/lang/Runnable;)V

    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mCurrentNightMode:I

    if-eq v1, v0, :cond_0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->checkandshowInputMehtodPicker()V

    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mCurrentNightMode:I

    :cond_0
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mCurrentOrientation:I

    if-eq v1, v2, :cond_1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->checkandshowInputMehtodPicker()V

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Landroid/inputmethodservice/InputMethodService;->mCurrentOrientation:I

    :cond_1
    return-void
.end method

.method public whitelist onConfigureWindow(Landroid/view/Window;ZZ)V
    .locals 6

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, -0x1

    if-eqz p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, -0x2

    :goto_0
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    if-eqz v3, :cond_1

    if-eq v0, v2, :cond_1

    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->needSetLayout:Z

    if-nez v3, :cond_1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->undoMinimizeSoftInputWrapper()V

    :try_start_0
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v3}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/Window;->setLayout(II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "InputMethodService"

    const-string v5, "onConfigureWindow: IllegalArgumentException occured."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_1
    :goto_1
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v3}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method public whitelist onCreate()V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate: pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    const-string v2, "onCreateInputMethodSessionInterface"

    invoke-direct {p0, v2, v1}, Landroid/inputmethodservice/InputMethodService;->methodIsOverridden(Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/32 v1, 0x8d39f80

    invoke-static {v1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/LinkageError;

    const-string v1, "InputMethodService#onCreateInputMethodSessionInterface() can no longer be overridden!"

    invoke-direct {v0, v1}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const-string v1, "IMS.onCreate"

    const-wide/16 v2, 0x20

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget v4, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v5, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const v6, 0x1030054

    const v7, 0x103007f

    const v8, 0x103013e

    const v9, 0x103013e

    invoke-static/range {v4 .. v9}, Landroid/content/res/Resources;->selectSystemTheme(IIIIII)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    invoke-super {p0, v1}, Landroid/inputmethodservice/AbstractInputMethodService;->setTheme(I)V

    invoke-super {p0}, Landroid/inputmethodservice/AbstractInputMethodService;->onCreate()V

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->createAndRegister(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    invoke-static {v1}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->-$$Nest$mshouldShowImeWithHardKeyboard(Landroid/inputmethodservice/InputMethodService$SettingsObserver;)Z

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x11101b2

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->initConfigurationTracker()V

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->sendDisplayIdForDex()V

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->handleSipDualView()V

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v4}, Landroid/inputmethodservice/SoftInputWindow;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v4

    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    invoke-interface {v4, v5}, Landroid/window/OnBackInvokedDispatcher;->setImeOnBackInvokedDispatcher(Landroid/window/ImeOnBackInvokedDispatcher;)V

    :cond_2
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mNavigationBarController:Landroid/inputmethodservice/NavigationBarController;

    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v4, v5}, Landroid/inputmethodservice/NavigationBarController;->onSoftInputWindowCreated(Landroid/inputmethodservice/SoftInputWindow;)V

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v4}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    const-string v6, "InputMethod"

    invoke-virtual {v5, v6}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v6, 0x7db

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v6, -0x1

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v6, -0x2

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v6, 0x50

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v6

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v7

    or-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result v6

    and-int/lit8 v6, v6, -0x9

    invoke-virtual {v5, v6}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsSides(I)V

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    invoke-static {v5}, Landroid/inputmethodservice/InputMethodService;->handleSepKeyboardLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v4, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v5, -0x7ffffef8

    const v6, -0x7ffffef6

    const v7, -0x7ffffef8

    const v8, -0x7ffffef6

    invoke-virtual {v4, v7, v8}, Landroid/view/Window;->setFlags(II)V

    if-eqz v1, :cond_3

    invoke-virtual {v4, v0}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    :cond_3
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initViews()V

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    new-instance v0, Landroid/inputmethodservice/InlineSuggestionSessionController;

    new-instance v4, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda9;

    invoke-direct {v4, p0}, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda9;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    new-instance v5, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda10;

    invoke-direct {v5, p0}, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda10;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    new-instance v6, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda11;

    invoke-direct {v6, p0}, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda11;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    invoke-direct {v0, v4, v5, v6}, Landroid/inputmethodservice/InlineSuggestionSessionController;-><init>(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInlineSuggestionSessionController:Landroid/inputmethodservice/InlineSuggestionSessionController;

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->undoMinimizeSoftInputWrapper()V

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v4, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0x30

    iput v4, p0, Landroid/inputmethodservice/InputMethodService;->mCurrentNightMode:I

    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Landroid/inputmethodservice/InputMethodService;->mCurrentOrientation:I

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public whitelist onCreateCandidatesView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCreateExtractTextView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x10900a0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onCreateInlineSuggestionsRequest(Landroid/os/Bundle;)Landroid/view/inputmethod/InlineSuggestionsRequest;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCreateInputMethodInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    return-object v0
.end method

.method public whitelist onCreateInputMethodSessionInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    return-object v0
.end method

.method public whitelist onCreateInputView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist onCurrentInputMethodSubtypeChanged(Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 0

    return-void
.end method

.method public whitelist onDestroy()V
    .locals 2

    const-string v0, "InputMethodService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/inputmethodservice/SemSpenGestureManagerWrapper;->notifyKeyboardClosedForAGIF(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mDestroyed:Z

    invoke-super {p0}, Landroid/inputmethodservice/AbstractInputMethodService;->onDestroy()V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->doFinishInput()V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mNavigationBarController:Landroid/inputmethodservice/NavigationBarController;

    invoke-virtual {v0}, Landroid/inputmethodservice/NavigationBarController;->onDestroy()V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->dismissForDestroyIfNecessary()V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->unregister()V

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->remove(Landroid/os/IBinder;)V

    :cond_1
    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    return-void
.end method

.method public whitelist onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0

    return-void
.end method

.method public whitelist onEvaluateFullscreenMode()Z
    .locals 7

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    return v3

    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    return v3

    :cond_1
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v2, v2, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v2, v2, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v4, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda6;

    invoke-direct {v4}, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    :cond_2
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v2, v2, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v5, 0x2000000

    and-int/2addr v2, v5

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v2, v2, Landroid/view/inputmethod/EditorInfo;->internalImeOptions:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_5

    :cond_3
    if-nez v1, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onEvaluateFullscreenMode: false, noFullScreen="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v6, v6, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_4

    goto :goto_0

    :cond_4
    move v4, v3

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", internalImeOptions="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v4, v4, Landroid/view/inputmethod/EditorInfo;->internalImeOptions:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "InputMethodService"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_5
    return v4
.end method

.method public whitelist onEvaluateInputViewShown()Z
    .locals 9

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsPressBtnSIPOnOff:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->semIsAccessoryKeyboard()Z

    move-result v0

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    const/4 v3, 0x0

    const-string v4, "InputMethodService"

    if-nez v2, :cond_1

    const-string v1, "onEvaluateInputViewShown: mSettingsObserver must not be null here."

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v5, v2, Landroid/content/res/Configuration;->keyboard:I

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eq v5, v1, :cond_2

    iget v5, v2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v5, v7, :cond_2

    iget v5, v2, Landroid/content/res/Configuration;->keyboard:I

    if-eq v5, v6, :cond_2

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

    :cond_2
    if-eqz v0, :cond_3

    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    invoke-static {v5}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->-$$Nest$mshouldShowImeWithHardKeyboard(Landroid/inputmethodservice/InputMethodService$SettingsObserver;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v1, " virtual keyboard option is false so do not show keyboard"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    iget v5, v2, Landroid/content/res/Configuration;->keyboard:I

    if-eq v5, v1, :cond_7

    iget v5, v2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v5, v7, :cond_7

    iget v5, v2, Landroid/content/res/Configuration;->keyboard:I

    if-ne v5, v6, :cond_4

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    invoke-static {v5}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->-$$Nest$mshouldShowImeWithHardKeyboard(Landroid/inputmethodservice/InputMethodService$SettingsObserver;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v3, " virtual keyboard option is true so show keyboard"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    if-nez v0, :cond_6

    const-string v3, "AccessoryKeyboard is not connected but it can be connect BT mouse with keyboard attribute"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_6
    return v3

    :cond_7
    :goto_0
    return v1
.end method

.method public whitelist onExtractTextContextMenuItem(I)Z
    .locals 2

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist onExtractedCursorMovement(II)V
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->hasVerticalScrollBar()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public greylist onExtractedDeleteText(II)V
    .locals 3

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    invoke-interface {v0, p1, p1}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    const/4 v1, 0x0

    sub-int v2, p2, p1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_0
    return-void
.end method

.method public greylist onExtractedReplaceText(IILjava/lang/CharSequence;)V
    .locals 2

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    const/4 v1, 0x1

    invoke-interface {v0, p3, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_0
    return-void
.end method

.method public whitelist onExtractedSelectionChanged(II)V
    .locals 1

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    :cond_0
    return-void
.end method

.method public greylist onExtractedSetSpan(Ljava/lang/Object;III)V
    .locals 6

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v2

    instance-of v3, v2, Landroid/text/Spannable;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Landroid/text/Spannable;

    const/4 v4, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-interface {v3, p1, v4, v5, p4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    invoke-interface {v0, v2, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_1
    return-void
.end method

.method public whitelist onExtractedTextClicked()V
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->hasVerticalScrollBar()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    :cond_1
    return-void
.end method

.method public whitelist onExtractingInputChanged(Landroid/view/inputmethod/EditorInfo;)V
    .locals 2

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->useWritingToolkit()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v0, :cond_1

    const/4 v0, 0x2

    const/16 v1, 0x1f

    invoke-direct {p0, v0, v1}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(II)V

    :cond_1
    return-void
.end method

.method public whitelist onFinishCandidatesView(Z)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    :cond_0
    return-void
.end method

.method public whitelist onFinishInput()V
    .locals 1

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    :cond_0
    return-void
.end method

.method public whitelist onFinishInputView(Z)V
    .locals 2

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->minimized:Z

    if-eqz v0, :cond_0

    const-string v0, "InputMethodService"

    const-string v1, "hideWindow set minimized false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->minimized:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->needSetLayout:Z

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->minimized:Z

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/SoftInputWindow;->setMinimizeFlag(Z)V

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    :cond_1
    return-void
.end method

.method public whitelist onFinishStylusHandwriting()V
    .locals 0

    return-void
.end method

.method public whitelist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onInitializeInterface()V
    .locals 0

    return-void
.end method

.method public whitelist onInlineSuggestionsResponse(Landroid/view/inputmethod/InlineSuggestionsResponse;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    invoke-static {}, Landroid/view/inputmethod/Flags;->useHandwritingListenerForTooltype()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Landroid/inputmethodservice/InputMethodService;->updateEditorToolTypeInternal(I)V

    :cond_0
    const/4 v0, 0x4

    const/4 v2, 0x1

    if-ne p1, v0, :cond_3

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getExtractEditTextIfVisible()Landroid/inputmethodservice/ExtractEditText;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Landroid/inputmethodservice/ExtractEditText;->handleBackInTextActionModeIfNeeded(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    invoke-direct {p0, v1}, Landroid/inputmethodservice/InputMethodService;->handleBack(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    return v2

    :cond_2
    return v1

    :cond_3
    const/16 v0, 0x3e

    const/4 v3, -0x1

    const/16 v4, 0x1000

    if-ne p1, v0, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    and-int/lit16 v0, v0, -0xc2

    invoke-static {v0, v4}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    and-int/lit16 v0, v0, 0xc1

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    move v3, v2

    :goto_0
    move v0, v3

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-virtual {v1, v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->switchKeyboardLayoutAsync(I)V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    return v2

    :cond_5
    invoke-static {}, Landroid/view/inputmethod/Flags;->ctrlShiftShortcut()Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_9

    const/16 v0, 0x3c

    if-ne p1, v0, :cond_6

    goto :goto_2

    :cond_6
    const/16 v0, 0x71

    if-eq p1, v0, :cond_8

    const/16 v0, 0x72

    if-ne p1, v0, :cond_7

    goto :goto_1

    :cond_7
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mUsingCtrlShiftShortcut:Z

    goto :goto_3

    :cond_8
    :goto_1
    nop

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    and-int/lit16 v0, v0, -0x7001

    invoke-static {v0, v2}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mUsingCtrlShiftShortcut:Z

    goto :goto_3

    :cond_9
    :goto_2
    nop

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    and-int/lit16 v0, v0, -0xc2

    invoke-static {v0, v4}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mUsingCtrlShiftShortcut:Z

    :cond_a
    :goto_3
    invoke-virtual {p0, p1, p2, v3}, Landroid/inputmethodservice/InputMethodService;->doMovementKey(ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method public whitelist onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0, p1, p3, p2}, Landroid/inputmethodservice/InputMethodService;->doMovementKey(ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/Flags;->ctrlShiftShortcut()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/16 v0, 0x3b

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x71

    if-eq p1, v0, :cond_1

    const/16 v0, 0x72

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mUsingCtrlShiftShortcut:Z

    goto :goto_1

    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mUsingCtrlShiftShortcut:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mUsingCtrlShiftShortcut:Z

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->switchToNextInputMethod(Z)Z

    return v1

    :cond_2
    :goto_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getExtractEditTextIfVisible()Landroid/inputmethodservice/ExtractEditText;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p2}, Landroid/inputmethodservice/ExtractEditText;->handleBackInTextActionModeIfNeeded(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0, v1}, Landroid/inputmethodservice/InputMethodService;->handleBack(Z)Z

    move-result v1

    return v1

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyUp: event.isTracking="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", event.isCanceled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputMethodService"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    const/16 v0, 0x3e

    if-ne p1, v0, :cond_6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    :cond_6
    :goto_2
    nop

    :cond_7
    const/4 v0, -0x2

    invoke-virtual {p0, p1, p2, v0}, Landroid/inputmethodservice/InputMethodService;->doMovementKey(ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method public whitelist onPrepareStylusHandwriting()V
    .locals 0

    return-void
.end method

.method public whitelist onShowInputRequested(IZ)Z
    .locals 6

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "InputMethodService"

    if-nez v0, :cond_0

    const-string v0, "onShowInputRequested: false, reason: onEvaluateInputViewShown false"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    and-int/lit8 v0, p1, 0x1

    const/4 v3, 0x1

    if-nez v0, :cond_3

    if-nez p2, :cond_1

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "onShowInputRequested: false, reason: configChange false, onEvaluateFullscreenMode true, isInputViewShown false"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->-$$Nest$mshouldShowImeWithHardKeyboard(Landroid/inputmethodservice/InputMethodService$SettingsObserver;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShowInputRequested: false, reason: shouldShowImeWithHardKeyboard false, config.keyboard="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v4, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v4, v4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v4, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onShowInputRequested: false, reason: inputType null, config.keyboard="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    return v3
.end method

.method public whitelist onStartCandidatesView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0

    return-void
.end method

.method public whitelist onStartConnectionlessStylusHandwriting(ILandroid/view/inputmethod/CursorAnchorInfo;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0

    return-void
.end method

.method public whitelist onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0

    return-void
.end method

.method public whitelist onStartStylusHandwriting()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onStylusHandwritingMotionEvent(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/InkWindow;->isInkViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InkWindow;->dispatchHandwritingEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPendingEvents:Lcom/android/internal/util/RingBuffer;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Landroid/view/MotionEvent;

    const/16 v2, 0x1f4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPendingEvents:Lcom/android/internal/util/RingBuffer;

    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPendingEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    new-instance v1, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda1;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InkWindow;->setInkViewVisibilityListener(Landroid/inputmethodservice/InkWindow$InkVisibilityListener;)V

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->scheduleStylusWindowIdleTimeout()V

    :cond_3
    return-void
.end method

.method public whitelist onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onUnbindInput()V
    .locals 0

    return-void
.end method

.method public whitelist onUpdateCursor(Landroid/graphics/Rect;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public whitelist onUpdateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V
    .locals 0

    return-void
.end method

.method public whitelist onUpdateEditorToolType(I)V
    .locals 0

    return-void
.end method

.method public whitelist onUpdateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .locals 1

    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    if-eqz v0, :cond_1

    iput-object p2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    invoke-virtual {v0, p2}, Landroid/inputmethodservice/ExtractEditText;->setExtractedText(Landroid/view/inputmethod/ExtractedText;)V

    :cond_1
    return-void
.end method

.method public whitelist onUpdateExtractingViews(Landroid/view/inputmethod/EditorInfo;)V
    .locals 4

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    return-void

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

    if-eqz v0, :cond_7

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ImageButton;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageButton;

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-direct {p0, v2}, Landroid/inputmethodservice/InputMethodService;->getIconForImeAction(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->getTextForImeAction(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->getTextForImeAction(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mActionClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_7
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public whitelist onUpdateExtractingVisibility(Landroid/view/inputmethod/EditorInfo;)V
    .locals 2

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setExtractViewShown(Z)V

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setExtractViewShown(Z)V

    return-void
.end method

.method public whitelist onUpdateSelection(IIIIII)V
    .locals 3

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v1, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->startInternalChanges()V

    sub-int/2addr p3, v1

    sub-int/2addr p4, v1

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-gez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    if-le p3, v2, :cond_1

    move p3, v2

    :cond_1
    :goto_0
    if-gez p4, :cond_2

    const/4 p4, 0x0

    goto :goto_1

    :cond_2
    if-le p4, v2, :cond_3

    move p4, v2

    :cond_3
    :goto_1
    invoke-virtual {v0, p3, p4}, Landroid/inputmethodservice/ExtractEditText;->setSelection(II)V

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->finishInternalChanges()V

    :cond_4
    return-void
.end method

.method public whitelist onViewClicked(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public whitelist onWindowHidden()V
    .locals 0

    return-void
.end method

.method public whitelist onWindowShown()V
    .locals 0

    return-void
.end method

.method greylist-max-o reportExtractedMovement(II)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, p2

    goto :goto_0

    :pswitch_1
    neg-int v0, p2

    goto :goto_0

    :pswitch_2
    move v1, p2

    goto :goto_0

    :pswitch_3
    neg-int v1, p2

    nop

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/inputmethodservice/InputMethodService;->onExtractedCursorMovement(II)V

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
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(II)V

    return-void
.end method

.method public final whitelist requestShowSelf(I)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Landroid/inputmethodservice/InputMethodService;->requestShowSelf(II)V

    return-void
.end method

.method public whitelist sendDefaultEditorAction(Z)Z
    .locals 4

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

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

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v3, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v3, v3, 0xff

    invoke-interface {v1, v3}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    :cond_1
    return v2

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist sendDownUpKeyEvents(I)V
    .locals 16

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    new-instance v15, Landroid/view/KeyEvent;

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    move-object v1, v15

    move-wide v2, v13

    move-wide v4, v13

    move/from16 v7, p1

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {v0, v15}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    new-instance v15, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    move-object v1, v15

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {v0, v15}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method

.method public whitelist sendKeyChar(C)V
    .locals 3

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    const/16 v1, 0x30

    if-lt p1, v1, :cond_0

    const/16 v1, 0x39

    if-gt p1, v1, :cond_0

    add-int/lit8 v0, p1, -0x30

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->sendDownUpKeyEvents(I)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->sendDefaultEditorAction(Z)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->sendDownUpKeyEvents(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

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

    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    if-gt p1, v0, :cond_2

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->mapToImeWindowStatus()I

    move-result v0

    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    invoke-direct {p0, v0, v1}, Landroid/inputmethodservice/InputMethodService;->setImeWindowStatus(II)V

    return-void

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

    return-void
.end method

.method public whitelist setCandidatesView(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public whitelist setCandidatesViewShown(Z)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->updateCandidatesVisibility(Z)V

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    if-eq v0, p1, :cond_1

    const/16 v0, 0x2d

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/inputmethodservice/InputMethodService;->showWindowWithToken(ZI)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Landroid/inputmethodservice/InputMethodService;->hideWindowWithToken(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist setExtractView(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    if-eqz p1, :cond_1

    const v0, 0x1020025

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/ExtractEditText;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    invoke-virtual {v0, p0}, Landroid/inputmethodservice/ExtractEditText;->setIME(Landroid/inputmethodservice/InputMethodService;)V

    const v0, 0x1020059

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    if-eqz v0, :cond_0

    const v0, 0x102005a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    :goto_0
    return-void
.end method

.method public whitelist setExtractViewShown(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    if-ne v0, p1, :cond_0

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateExtractFrameVisibility()V

    :cond_0
    return-void
.end method

.method public whitelist setInputView(Landroid/view/View;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    return-void
.end method

.method public blacklist setMinimizeSoftInputInsets()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist setStylusHandwritingSessionTimeout(Ljava/time/Duration;)V
    .locals 4

    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const-wide/16 v2, 0x7530

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-wide/16 v0, 0x7530

    :cond_0
    iput-wide v0, p0, Landroid/inputmethodservice/InputMethodService;->mStylusHwSessionsTimeout:J

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->scheduleHandwritingSessionTimeout()V

    return-void

    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "A positive value should be set for Stylus handwriting session timeout."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist setTheme(I)V
    .locals 2

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-nez v0, :cond_0

    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist shouldOfferSwitchingToNextInputMethod()Z
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->shouldOfferSwitchingToNextInputMethod()Z

    move-result v0

    return v0
.end method

.method public whitelist showStatusIcon(I)V
    .locals 2

    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mStatusIcon:I

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->updateStatusIconAsync(Ljava/lang/String;I)V

    return-void
.end method

.method public whitelist showWindow(Z)V
    .locals 8

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-static {v0}, Landroid/view/inputmethod/ImeTracker;->isFromUser(Landroid/view/View;)Z

    move-result v0

    const/16 v2, 0x2a

    invoke-direct {p0, v1, v2, v0}, Landroid/inputmethodservice/InputMethodService;->createStatsToken(ZIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    :goto_0
    nop

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    const/16 v4, 0x2c

    if-eqz v3, :cond_1

    const-string v1, "InputMethodService"

    const-string v2, "Re-entrance in to showWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {v1, v0, v4}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    return-void

    :cond_1
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v3

    invoke-interface {v3, v0, v4}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v3

    const-string v4, "InputMethodService#showWindow"

    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V

    const-string v2, "IMS.showWindow"

    const-wide/16 v3, 0x20

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewWasVisible:Z

    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-nez v5, :cond_2

    const/4 v5, 0x4

    goto :goto_1

    :cond_2
    const/4 v5, 0x2

    goto :goto_1

    :cond_3
    move v5, v6

    :goto_1
    or-int/2addr v2, v5

    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService;->prepareWindow(Z)Z

    move-result v5

    invoke-direct {p0, v5}, Landroid/inputmethodservice/InputMethodService;->startViews(Z)V

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->mapToImeWindowStatus()I

    move-result v5

    if-eq v2, v5, :cond_4

    iget v7, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    invoke-direct {p0, v5, v7}, Landroid/inputmethodservice/InputMethodService;->setImeWindowStatus(II)V

    :cond_4
    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mNavigationBarController:Landroid/inputmethodservice/NavigationBarController;

    invoke-virtual {v7}, Landroid/inputmethodservice/NavigationBarController;->onWindowShown()V

    iget-boolean v7, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    if-eqz v7, :cond_5

    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService;->sendInputViewShownState(Z)V

    :cond_5
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowShown()V

    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v7}, Landroid/inputmethodservice/SoftInputWindow;->show()V

    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewWasVisible:Z

    invoke-direct {p0, v1, v0}, Landroid/inputmethodservice/InputMethodService;->applyVisibilityInInsetsConsumerIfNecessary(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->cancelImeSurfaceRemoval()V

    iput-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->registerDefaultOnBackInvokedCallback()V

    return-void
.end method

.method greylist-max-o startExtractingText(Z)V
    .locals 7

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputStarted()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    new-instance v1, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    iget v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    iput v3, v1, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    iput v2, v1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    const/16 v3, 0xa

    iput v3, v1, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxLines:I

    const/16 v3, 0x2710

    iput v3, v1, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxChars:I

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v3, v1, v2}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v4

    :goto_0
    iput-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz v4, :cond_1

    if-nez v3, :cond_2

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

    :cond_2
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v4

    :try_start_0
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->startInternalChanges()V

    invoke-virtual {p0, v4}, Landroid/inputmethodservice/InputMethodService;->onUpdateExtractingVisibility(Landroid/view/inputmethod/EditorInfo;)V

    invoke-virtual {p0, v4}, Landroid/inputmethodservice/InputMethodService;->onUpdateExtractingViews(Landroid/view/inputmethod/EditorInfo;)V

    iget v5, v4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v6, v5, 0xf

    if-ne v6, v2, :cond_3

    const/high16 v6, 0x40000

    and-int/2addr v6, v5

    if-eqz v6, :cond_3

    const/high16 v6, 0x20000

    or-int/2addr v5, v6

    :cond_3
    invoke-virtual {v0, v5}, Landroid/inputmethodservice/ExtractEditText;->setInputType(I)V

    iget-object v6, v4, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Landroid/inputmethodservice/ExtractEditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-static {v0, v4}, Landroid/inputmethodservice/InputMethodService;->changeBgColorIfNeeded(Landroid/inputmethodservice/ExtractEditText;Landroid/view/inputmethod/EditorInfo;)V

    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz v6, :cond_4

    invoke-virtual {v0, v2}, Landroid/inputmethodservice/ExtractEditText;->setEnabled(Z)V

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    invoke-virtual {v0, v2}, Landroid/inputmethodservice/ExtractEditText;->setExtractedText(Landroid/view/inputmethod/ExtractedText;)V

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/inputmethodservice/ExtractEditText;->setEnabled(Z)V

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/inputmethodservice/ExtractEditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->finishInternalChanges()V

    nop

    if-eqz p1, :cond_5

    invoke-virtual {p0, v4}, Landroid/inputmethodservice/InputMethodService;->onExtractingInputChanged(Landroid/view/inputmethod/EditorInfo;)V

    goto :goto_2

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->finishInternalChanges()V

    throw v2

    :cond_5
    :goto_2
    return-void
.end method

.method public whitelist switchInputMethod(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/inputmethodservice/SemImsUtils;->isBixbyDictationId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->setInputMethod(Ljava/lang/String;)V

    return-void
.end method

.method public final whitelist switchInputMethod(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->setInputMethodAndSubtype(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    return-void
.end method

.method public final whitelist switchToNextInputMethod(Z)Z
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->switchToNextInputMethod(Z)Z

    move-result v0

    return v0
.end method

.method public final whitelist switchToPreviousInputMethod()Z
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->switchToPreviousInputMethod()Z

    move-result v0

    return v0
.end method

.method public blacklist undoMinimizeSoftInput()V
    .locals 0

    return-void
.end method

.method greylist-max-o updateCandidatesVisibility(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCandidatesHiddenVisibility()I

    move-result v0

    :goto_0
    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    :cond_1
    return-void
.end method

.method greylist-max-o updateExtractFrameVisibility()V
    .locals 5

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

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    :cond_2
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_2
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewWasVisible:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eq v3, v0, :cond_4

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mThemeAttrs:Landroid/content/res/TypedArray;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x2

    :goto_3
    nop

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public whitelist updateFullscreenMode()V
    .locals 9

    const-string v0, "IMS.updateFullscreenMode"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mLastShowInputRequested:Z

    iget-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eq v5, v6, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    iget-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    if-ne v6, v0, :cond_2

    iget-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    if-nez v6, :cond_7

    :cond_2
    const/4 v5, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->reportFullscreenMode()V

    iput-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_3

    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/inputmethodservice/InputMethodService;->mThemeAttrs:Landroid/content/res/TypedArray;

    invoke-virtual {v8, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_2

    :cond_3
    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v7, -0x2

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v7, 0x0

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_2
    iget-boolean v7, p0, Landroid/inputmethodservice/InputMethodService;->minimized:Z

    if-eqz v7, :cond_4

    iput-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->minimized:Z

    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    iget-boolean v8, p0, Landroid/inputmethodservice/InputMethodService;->minimized:Z

    invoke-virtual {v7, v8}, Landroid/inputmethodservice/SoftInputWindow;->setMinimizeFlag(Z)V

    :cond_4
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->undoMinimizeSoftInputWrapper()V

    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v7, v8, v6}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v0, :cond_6

    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    if-nez v7, :cond_5

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateExtractTextView()Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {p0, v7}, Landroid/inputmethodservice/InputMethodService;->setExtractView(Landroid/view/View;)V

    :cond_5
    invoke-virtual {p0, v4}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    :cond_6
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateExtractFrameVisibility()V

    :cond_7
    if-eqz v5, :cond_8

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v4}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v4

    iget-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    xor-int/2addr v3, v6

    invoke-virtual {p0, v4, v0, v3}, Landroid/inputmethodservice/InputMethodService;->onConfigureWindow(Landroid/view/Window;ZZ)V

    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    iput-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mLastShowInputRequested:Z

    :cond_8
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public whitelist updateInputViewShown()V
    .locals 3

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

    :goto_0
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    if-eq v2, v0, :cond_2

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    if-eqz v2, :cond_2

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateInputView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->setInputView(Landroid/view/View;)V

    :cond_2
    return-void
.end method
