.class public final Landroid/view/inputmethod/InputMethodManager;
.super Ljava/lang/Object;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InputMethodManager$PendingEvent;,
        Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;,
        Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;,
        Landroid/view/inputmethod/InputMethodManager$H;,
        Landroid/view/inputmethod/InputMethodManager$DelegateImpl;,
        Landroid/view/inputmethod/InputMethodManager$Rune;
    }
.end annotation


# static fields
.field public static final blacklist CLEAR_SHOW_FORCED_FLAG_WHEN_LEAVING:J = 0xcc1a029L

.field static final greylist-max-o DEBUG:Z = false

.field static final blacklist DEBUG_SEP:Z

.field public static final greylist-max-o DISPATCH_HANDLED:I = 0x1

.field public static final greylist-max-o DISPATCH_IN_PROGRESS:I = -0x1

.field public static final greylist-max-o DISPATCH_NOT_HANDLED:I = 0x0

.field public static final whitelist HIDE_IMPLICIT_ONLY:I = 0x1

.field public static final whitelist HIDE_NOT_ALWAYS:I = 0x2

.field static final greylist-max-o INPUT_METHOD_NOT_RESPONDING_TIMEOUT:J = 0x9c4L

.field public static final blacklist METHOD_ID_BIXBY:Ljava/lang/String; = "com.samsung.android.bixby.voiceinput/com.samsung.android.svoiceime.BixbyDictVoiceReco"

.field public static final blacklist METHOD_ID_BIXBY_DICTATION:Ljava/lang/String; = "com.samsung.android.bixby.service/.dictation.DictationInputMethodService"

.field public static final blacklist METHOD_ID_BIXBY_OLD:Ljava/lang/String; = "com.samsung.android.svoiceime/.BixbyDictVoiceReco"

.field public static final blacklist METHOD_ID_HONEYBOARD:Ljava/lang/String; = "com.samsung.android.honeyboard/.service.HoneyBoardService"

.field static final greylist-max-o MSG_BIND:I = 0x2

.field static final blacklist MSG_BIND_ACCESSIBILITY_SERVICE:I = 0xb

.field static final greylist-max-o MSG_DUMP:I = 0x1

.field static final greylist-max-o MSG_FLUSH_INPUT_EVENT:I = 0x7

.field static final blacklist MSG_ON_SHOW_REQUESTED:I = 0x1f

.field static final greylist-max-o MSG_REPORT_FULLSCREEN_MODE:I = 0xa

.field static final greylist-max-o MSG_SEND_INPUT_EVENT:I = 0x5

.field static final greylist-max-o MSG_SET_ACTIVE:I = 0x4

.field static final greylist-max-o MSG_TIMEOUT_INPUT_EVENT:I = 0x6

.field static final greylist-max-o MSG_UNBIND:I = 0x3

.field static final blacklist MSG_UNBIND_ACCESSIBILITY_SERVICE:I = 0xc

.field static final blacklist MSG_UPDATE_VIRTUAL_DISPLAY_TO_SCREEN_MATRIX:I = 0x1e

.field private static final blacklist NOT_A_SUBTYPE_ID:I = -0x1

.field private static blacklist OVERRIDE_DW_FLAG_COMMAND_LIST:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist PACKAGE_HONEYBOARD:Ljava/lang/String; = "com.samsung.android.honeyboard"

.field static final greylist-max-o PENDING_EVENT_COUNTER:Ljava/lang/String; = "aq:imm"

.field private static final greylist-max-o REQUEST_UPDATE_CURSOR_ANCHOR_INFO_NONE:I = 0x0

.field public static final whitelist RESULT_HIDDEN:I = 0x3

.field public static final whitelist RESULT_SHOWN:I = 0x2

.field public static final whitelist RESULT_UNCHANGED_HIDDEN:I = 0x1

.field public static final whitelist RESULT_UNCHANGED_SHOWN:I = 0x0

.field public static final whitelist SHOW_FORCED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SHOW_IMPLICIT:I = 0x1

.field public static final greylist-max-o SHOW_IM_PICKER_MODE_AUTO:I = 0x0

.field public static final greylist-max-o SHOW_IM_PICKER_MODE_EXCLUDE_AUXILIARY_SUBTYPES:I = 0x2

.field public static final greylist-max-o SHOW_IM_PICKER_MODE_INCLUDE_AUXILIARY_SUBTYPES:I = 0x1

.field private static final blacklist SUBTYPE_MODE_VOICE:Ljava/lang/String; = "voice"

.field static final greylist-max-o TAG:Ljava/lang/String; = "InputMethodManager"

.field static final blacklist TAG_LIFE_CYCLE:Ljava/lang/String; = "IMM_LC"

.field static greylist sInstance:Landroid/view/inputmethod/InputMethodManager;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final blacklist sInstanceMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/inputmethod/InputMethodManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sLock:Ljava/lang/Object;


# instance fields
.field final blacklist DW_CUSTOM_FLAG_DELTA:I

.field final blacklist OVERRIDE_DW_SUBTYPE_VOICE:Ljava/lang/String;

.field private final blacklist mAccessibilityInputMethodSession:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mActive:Z

.field greylist-max-o mBindSequence:I

.field final greylist-max-o mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

.field greylist-max-o mCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field greylist-max-o mCurChannel:Landroid/view/InputChannel;

.field greylist mCurId:Ljava/lang/String;

.field greylist mCurMethod:Lcom/android/internal/view/IInputMethodSession;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field blacklist mCurRootView:Landroid/view/ViewRootImpl;

.field greylist-max-o mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

.field private blacklist mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

.field greylist-max-o mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

.field private greylist-max-o mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

.field greylist-max-o mCursorCandEnd:I

.field greylist-max-o mCursorCandStart:I

.field greylist mCursorRect:Landroid/graphics/Rect;

.field greylist-max-o mCursorSelEnd:I

.field greylist-max-o mCursorSelStart:I

.field final blacklist mDelegate:Landroid/view/inputmethod/InputMethodManager$DelegateImpl;

.field private final blacklist mDisplayId:I

.field private final blacklist mFallbackInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

.field greylist-max-o mFullscreenMode:Z

.field final greylist-max-p mH:Landroid/view/inputmethod/InputMethodManager$H;

.field private final blacklist mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

.field private blacklist mImeInsetsConsumer:Landroid/view/ImeInsetsSourceConsumer;

.field blacklist mInitialSelEnd:I

.field blacklist mInitialSelStart:I

.field private blacklist mIsInputMethodSuppressingSpellChecker:Z

.field final greylist-max-o mMainLooper:Landroid/os/Looper;

.field final greylist-max-o mPendingEventPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool<",
            "Landroid/view/inputmethod/InputMethodManager$PendingEvent;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/inputmethod/InputMethodManager$PendingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mRequestUpdateCursorAnchorInfoMonitorMode:I

.field private greylist-max-o mRestartOnNextWindowFocus:Z

.field greylist-max-o mServedConnecting:Z

.field blacklist mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

.field private blacklist mServedInputConnectionHandler:Landroid/os/Handler;

.field final greylist mService:Lcom/android/internal/view/IInputMethodManager;

.field greylist mTmpCursorRect:Landroid/graphics/Rect;

.field private blacklist mVirtualDisplayToScreenMatrix:Landroid/graphics/Matrix;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAccessibilityInputMethodSession(Landroid/view/inputmethod/InputMethodManager;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentInputMethodSession(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodSessionWrapper;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCursorAnchorInfo(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/CursorAnchorInfo;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFallbackInputConnection(Landroid/view/inputmethod/InputMethodManager;)Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mFallbackInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImeDispatcher(Landroid/view/inputmethod/InputMethodManager;)Landroid/window/ImeOnBackInvokedDispatcher;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImeInsetsConsumer(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/ImeInsetsSourceConsumer;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mImeInsetsConsumer:Landroid/view/ImeInsetsSourceConsumer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRequestUpdateCursorAnchorInfoMonitorMode(Landroid/view/inputmethod/InputMethodManager;)I
    .locals 0

    iget p0, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRestartOnNextWindowFocus(Landroid/view/inputmethod/InputMethodManager;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/inputmethod/InputMethodManager;->mRestartOnNextWindowFocus:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVirtualDisplayToScreenMatrix(Landroid/view/inputmethod/InputMethodManager;)Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mVirtualDisplayToScreenMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentInputMethodSession(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodSessionWrapper;)V
    .locals 0

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsInputMethodSuppressingSpellChecker(Landroid/view/inputmethod/InputMethodManager;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodManager;->mIsInputMethodSuppressingSpellChecker:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRequestUpdateCursorAnchorInfoMonitorMode(Landroid/view/inputmethod/InputMethodManager;I)V
    .locals 0

    iput p1, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRestartOnNextWindowFocus(Landroid/view/inputmethod/InputMethodManager;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodManager;->mRestartOnNextWindowFocus:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmVirtualDisplayToScreenMatrix(Landroid/view/inputmethod/InputMethodManager;Landroid/graphics/Matrix;)V
    .locals 0

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mVirtualDisplayToScreenMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mforAccessibilitySessionsLocked(Landroid/view/inputmethod/InputMethodManager;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->forAccessibilitySessionsLocked(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetFocusController(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/ImeFocusController;
    .locals 0

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getFocusController()Landroid/view/ImeFocusController;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetServedViewLocked(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;
    .locals 0

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetStartInputFlags(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;I)I
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->getStartInputFlags(Landroid/view/View;I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhasServedByInputMethodLocked(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mrecyclePendingEventLocked(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->recyclePendingEventLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smcanStartInput(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Landroid/view/inputmethod/InputMethodManager;->canStartInput(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 358
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InputMethodManager;->sLock:Ljava/lang/Object;

    .line 377
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InputMethodManager;->sInstanceMap:Landroid/util/SparseArray;

    .line 594
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG_SEP:Z

    .line 628
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InputMethodManager;->OVERRIDE_DW_FLAG_COMMAND_LIST:Ljava/util/List;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/view/IInputMethodManager;ILandroid/os/Looper;)V
    .locals 4
    .param p1, "service"    # Lcom/android/internal/view/IInputMethodManager;
    .param p2, "displayId"    # I
    .param p3, "looper"    # Landroid/os/Looper;

    .line 1397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$1;

    .line 308
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager$1;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    .line 436
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    .line 442
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mRestartOnNextWindowFocus:Z

    .line 478
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    .line 480
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    .line 497
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    .line 508
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mVirtualDisplayToScreenMatrix:Landroid/graphics/Matrix;

    .line 515
    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mIsInputMethodSuppressingSpellChecker:Z

    .line 523
    const/4 v2, -0x1

    iput v2, p0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    .line 544
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    .line 550
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    .line 563
    iput v0, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    .line 570
    new-instance v2, Landroid/util/Pools$SimplePool;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEventPool:Landroid/util/Pools$Pool;

    .line 571
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    .line 573
    new-instance v2, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;

    invoke-direct {v2, p0, v1}, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$DelegateImpl-IA;)V

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mDelegate:Landroid/view/inputmethod/InputMethodManager$DelegateImpl;

    .line 629
    const/16 v2, 0x64

    iput v2, p0, Landroid/view/inputmethod/InputMethodManager;->DW_CUSTOM_FLAG_DELTA:I

    .line 630
    const-string/jumbo v2, "voice"

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->OVERRIDE_DW_SUBTYPE_VOICE:Ljava/lang/String;

    .line 1232
    new-instance v2, Landroid/view/inputmethod/InputMethodManager$2;

    invoke-direct {v2, p0}, Landroid/view/inputmethod/InputMethodManager$2;-><init>(Landroid/view/inputmethod/InputMethodManager;)V

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    .line 1398
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    .line 1399
    iput-object p3, p0, Landroid/view/inputmethod/InputMethodManager;->mMainLooper:Landroid/os/Looper;

    .line 1400
    new-instance v2, Landroid/view/inputmethod/InputMethodManager$H;

    invoke-direct {v2, p0, p3}, Landroid/view/inputmethod/InputMethodManager$H;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    .line 1401
    iput p2, p0, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    .line 1402
    new-instance v2, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    new-instance v3, Landroid/view/inputmethod/BaseInputConnection;

    invoke-direct {v3, p0, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/inputmethod/InputMethodManager;Z)V

    invoke-direct {v2, p3, v3, p0, v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;-><init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mFallbackInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    .line 1404
    return-void
.end method

.method private static greylist-max-o canStartInput(Landroid/view/View;)Z
    .locals 1
    .param p0, "servedView"    # Landroid/view/View;

    .line 691
    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/view/inputmethod/InputMethodManager;->isAutofillUIShowing(Landroid/view/View;)Z

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

.method private static blacklist createInstance(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "displayId"    # I
    .param p1, "looper"    # Landroid/os/Looper;

    .line 1334
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->createStubInstance(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    goto :goto_0

    .line 1335
    :cond_0
    invoke-static {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->createRealInstance(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1334
    :goto_0
    return-object v0
.end method

.method private static blacklist createRealInstance(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;
    .locals 6
    .param p0, "displayId"    # I
    .param p1, "looper"    # Landroid/os/Looper;

    .line 1342
    :try_start_0
    const-string v0, "input_method"

    .line 1343
    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1342
    invoke-static {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1346
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    nop

    .line 1347
    new-instance v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {v1, v0, p0, p1}, Landroid/view/inputmethod/InputMethodManager;-><init>(Lcom/android/internal/view/IInputMethodManager;ILandroid/os/Looper;)V

    .line 1355
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1357
    .local v2, "identity":J
    :try_start_1
    iget-object v4, v1, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    iget-object v5, v1, Landroid/view/inputmethod/InputMethodManager;->mFallbackInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-interface {v0, v4, v5, p0}, Lcom/android/internal/view/IInputMethodManager;->addClient(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1361
    goto :goto_0

    :catchall_0
    move-exception v4

    goto :goto_1

    .line 1358
    :catch_0
    move-exception v4

    .line 1359
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1361
    nop

    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1362
    nop

    .line 1363
    return-object v1

    .line 1361
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1362
    throw v4

    .line 1344
    .end local v0    # "service":Lcom/android/internal/view/IInputMethodManager;
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v2    # "identity":J
    :catch_1
    move-exception v0

    .line 1345
    .local v0, "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist createStubInstance(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;
    .locals 4
    .param p0, "displayId"    # I
    .param p1, "looper"    # Landroid/os/Looper;

    .line 1369
    const-class v0, Lcom/android/internal/view/IInputMethodManager;

    .line 1370
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/android/internal/view/IInputMethodManager;>;"
    nop

    .line 1371
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    new-instance v3, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/IInputMethodManager;

    .line 1394
    .local v1, "stubInterface":Lcom/android/internal/view/IInputMethodManager;
    new-instance v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {v2, v1, p0, p1}, Landroid/view/inputmethod/InputMethodManager;-><init>(Lcom/android/internal/view/IInputMethodManager;ILandroid/os/Looper;)V

    return-object v2
.end method

.method private blacklist dismissAndShowAgainInputMethodPickerLocked()V
    .locals 3

    .line 4280
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->dismissAndShowAgainInputMethodPicker()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4283
    goto :goto_0

    .line 4281
    :catch_0
    move-exception v0

    .line 4282
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    const-string v2, "Unable dismiss And Show Again InputMethodPicker"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4284
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private static greylist-max-o dumpViewInfo(Landroid/view/View;)Ljava/lang/String;
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 3909
    if-nez p0, :cond_0

    .line 3910
    const-string/jumbo v0, "null"

    return-object v0

    .line 3912
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3913
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3914
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",focus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3915
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",windowFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3916
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",autofillUiShowing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Landroid/view/inputmethod/InputMethodManager;->isAutofillUIShowing(Landroid/view/View;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3917
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",window="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3918
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3919
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",temporaryDetach="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->isTemporarilyDetached()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3920
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",hasImeFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->hasImeFocus()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3922
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist ensureDefaultInstanceForDefaultDisplayIfNecessary()V
    .locals 2

    .line 355
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/view/inputmethod/InputMethodManager;->forContextInternal(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;

    .line 356
    return-void
.end method

.method private greylist-max-o flushPendingEventsLocked()V
    .locals 6

    .line 3428
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager$H;->removeMessages(I)V

    .line 3430
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 3431
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 3432
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 3433
    .local v3, "seq":I
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v3, v5}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 3434
    .local v4, "msg":Landroid/os/Message;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3435
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 3431
    .end local v3    # "seq":I
    .end local v4    # "msg":Landroid/os/Message;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3437
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist forAccessibilitySessionsLocked(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;",
            ">;)V"
        }
    .end annotation

    .line 3989
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3990
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3989
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3992
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static blacklist forContext(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 1415
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    .line 1418
    .local v0, "displayId":I
    if-nez v0, :cond_0

    .line 1419
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 1420
    .local v1, "looper":Landroid/os/Looper;
    :goto_0
    invoke-static {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->forContextInternal(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist forContextInternal(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;
    .locals 5
    .param p0, "displayId"    # I
    .param p1, "looper"    # Landroid/os/Looper;

    .line 1425
    if-nez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1426
    .local v0, "isDefaultDisplay":Z
    :goto_0
    sget-object v1, Landroid/view/inputmethod/InputMethodManager;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1427
    :try_start_0
    sget-object v2, Landroid/view/inputmethod/InputMethodManager;->sInstanceMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 1428
    .local v3, "instance":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v3, :cond_1

    .line 1429
    monitor-exit v1

    return-object v3

    .line 1431
    :cond_1
    invoke-static {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->createInstance(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v4

    move-object v3, v4

    .line 1433
    sget-object v4, Landroid/view/inputmethod/InputMethodManager;->sInstance:Landroid/view/inputmethod/InputMethodManager;

    if-nez v4, :cond_2

    if-eqz v0, :cond_2

    .line 1434
    sput-object v3, Landroid/view/inputmethod/InputMethodManager;->sInstance:Landroid/view/inputmethod/InputMethodManager;

    .line 1436
    :cond_2
    invoke-virtual {v2, p0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1437
    monitor-exit v1

    return-object v3

    .line 1438
    .end local v3    # "instance":Landroid/view/inputmethod/InputMethodManager;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private blacklist getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .line 650
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 651
    return-object v0

    .line 659
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 660
    .local v1, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-nez v1, :cond_1

    .line 661
    return-object v0

    .line 663
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getDisplayId()I

    move-result v2

    .line 664
    .local v2, "viewRootDisplayId":I
    iget v3, p0, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    if-ne v2, v3, :cond_2

    .line 666
    return-object v0

    .line 668
    :cond_2
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const-class v4, Landroid/view/inputmethod/InputMethodManager;

    .line 669
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 670
    .local v3, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    const-string v4, "InputMethodManager"

    if-nez v3, :cond_3

    .line 671
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "b/117267690: Failed to get non-null fallback IMM. view="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    return-object v0

    .line 674
    :cond_3
    iget v5, v3, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    if-eq v5, v2, :cond_4

    .line 675
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "b/117267690: Failed to get fallback IMM with expected displayId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " actual IMM#displayId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " view="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    return-object v0

    .line 680
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "b/117267690: Display ID mismatch found. ViewRootImpl displayId="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " InputMethodManager displayId="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p0, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ". Use the right InputMethodManager instance to avoid performance overhead."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4, v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 685
    return-object v3
.end method

.method private blacklist getFocusController()Landroid/view/ImeFocusController;
    .locals 2

    .line 940
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 941
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v1, :cond_0

    .line 942
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getImeFocusController()Landroid/view/ImeFocusController;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 944
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 945
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static greylist getInstance()Landroid/view/inputmethod/InputMethodManager;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1452
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "InputMethodManager"

    const-string v2, "InputMethodManager.getInstance() is deprecated because it cannot be compatible with multi-display. Use context.getSystemService(InputMethodManager.class) instead."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1456
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->ensureDefaultInstanceForDefaultDisplayIfNecessary()V

    .line 1457
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getNextServedViewLocked()Landroid/view/View;
    .locals 1

    .line 923
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getImeFocusController()Landroid/view/ImeFocusController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ImeFocusController;->getNextServedView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 924
    :cond_0
    const/4 v0, 0x0

    .line 923
    :goto_0
    return-object v0
.end method

.method private blacklist getServedViewLocked()Landroid/view/View;
    .locals 1

    .line 919
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getImeFocusController()Landroid/view/ImeFocusController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ImeFocusController;->getServedView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private blacklist getStartInputFlags(Landroid/view/View;I)I
    .locals 1
    .param p1, "focusedView"    # Landroid/view/View;
    .param p2, "startInputFlags"    # I

    .line 2674
    or-int/lit8 p2, p2, 0x1

    .line 2675
    invoke-virtual {p1}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2676
    or-int/lit8 p2, p2, 0x2

    .line 2678
    :cond_0
    return p2
.end method

.method private blacklist handleVoiceHWKey()V
    .locals 3

    .line 4401
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 4403
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v0

    .line 4404
    .local v0, "view":Landroid/view/View;
    const-string v1, "InputMethodManager"

    if-nez v0, :cond_0

    .line 4405
    const-string v2, "handleVoiceHWKey: have no served view"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4406
    return-void

    .line 4409
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodManager;->hasActiveInputConnection(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4410
    const-string v2, "handleVoiceHWKey: have no active input connection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4411
    return-void

    .line 4415
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->handleVoiceHWKey()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4418
    nop

    .line 4419
    return-void

    .line 4416
    :catch_0
    move-exception v1

    .line 4417
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private blacklist hasServedByInputMethodLocked(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 952
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v0

    .line 953
    .local v0, "servedView":Landroid/view/View;
    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    .line 954
    invoke-virtual {v0, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 953
    :goto_1
    return v1
.end method

.method private blacklist hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z
    .locals 10
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p4, "reason"    # I

    .line 2090
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v1, "InputMethodManager#hideSoftInputFromWindow"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 2093
    const-string v0, "IMM_LC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hsifw() - flag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2095
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2096
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2097
    :try_start_0
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v1

    .line 2098
    .local v1, "servedView":Landroid/view/View;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, p1, :cond_0

    goto :goto_0

    .line 2108
    :cond_0
    :try_start_1
    const-string v2, "IMM_LC"

    const-string v3, "hsifw() - mService.hideSoftInput"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    move-object v6, p1

    move v7, p2

    move-object v8, p3

    move v9, p4

    invoke-interface/range {v4 .. v9}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v2

    .line 2111
    :catch_0
    move-exception v2

    .line 2112
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/view/inputmethod/InputMethodManager;
    .end local p1    # "windowToken":Landroid/os/IBinder;
    .end local p2    # "flags":I
    .end local p3    # "resultReceiver":Landroid/os/ResultReceiver;
    .end local p4    # "reason":I
    throw v3

    .line 2100
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/view/inputmethod/InputMethodManager;
    .restart local p1    # "windowToken":Landroid/os/IBinder;
    .restart local p2    # "flags":I
    .restart local p3    # "resultReceiver":Landroid/os/ResultReceiver;
    .restart local p4    # "reason":I
    :cond_1
    :goto_0
    const-string v2, "IMM_LC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hsifw() ignore mServedView == null or mServedView.getWindowToken() != windowToken, mServedView :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2101
    const/4 v4, 0x0

    if-eqz v1, :cond_2

    move-object v5, v1

    goto :goto_1

    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2100
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    monitor-exit v0

    return v4

    .line 2114
    .end local v1    # "servedView":Landroid/view/View;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static greylist-max-o isAutofillUIShowing(Landroid/view/View;)Z
    .locals 2
    .param p0, "servedView"    # Landroid/view/View;

    .line 634
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 635
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->isAutofillUiShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static blacklist isInEditMode()Z
    .locals 1

    .line 1329
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic blacklist lambda$createStubInstance$0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "proxy"    # Ljava/lang/Object;
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1373
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 1374
    .local v0, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    .line 1377
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1374
    if-ne v0, v1, :cond_0

    .line 1375
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 1376
    :cond_0
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 1377
    return-object v3

    .line 1378
    :cond_1
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2

    .line 1379
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 1380
    :cond_2
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_3

    .line 1381
    return-object v3

    .line 1382
    :cond_3
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4

    .line 1383
    return-object v3

    .line 1384
    :cond_4
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_5

    .line 1385
    return-object v3

    .line 1386
    :cond_5
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_6

    .line 1387
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 1388
    :cond_6
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_7

    .line 1389
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 1391
    :cond_7
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic blacklist lambda$doInvalidateInput$1(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;ILandroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;)V
    .locals 0
    .param p0, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p1, "accessibilityInputConnection"    # Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .param p2, "sessionId"    # I
    .param p3, "wrapper"    # Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;

    .line 2345
    invoke-virtual {p3, p0, p1, p2}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->invalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    return-void
.end method

.method static synthetic blacklist lambda$getShortcutInputMethodsAndSubtypes$4(Landroid/view/inputmethod/InputMethodInfo;)I
    .locals 1
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .line 3627
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic blacklist lambda$updateSelection$3(IIIIIILandroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;)V
    .locals 7
    .param p0, "oldSelStart"    # I
    .param p1, "oldSelEnd"    # I
    .param p2, "selStart"    # I
    .param p3, "selEnd"    # I
    .param p4, "candidatesStart"    # I
    .param p5, "candidatesEnd"    # I
    .param p6, "wrapper"    # Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;

    .line 2874
    move-object v0, p6

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->updateSelection(IIIIII)V

    return-void
.end method

.method private greylist-max-o obtainPendingEventLocked(Landroid/view/InputEvent;Ljava/lang/Object;Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;Landroid/os/Handler;)Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "inputMethodId"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;
    .param p5, "handler"    # Landroid/os/Handler;

    .line 3441
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .line 3442
    .local v0, "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    if-nez v0, :cond_0

    .line 3443
    new-instance v1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/view/inputmethod/InputMethodManager$PendingEvent;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$PendingEvent-IA;)V

    move-object v0, v1

    .line 3445
    :cond_0
    iput-object p1, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mEvent:Landroid/view/InputEvent;

    .line 3446
    iput-object p2, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mToken:Ljava/lang/Object;

    .line 3447
    iput-object p3, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mInputMethodId:Ljava/lang/String;

    .line 3448
    iput-object p4, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mCallback:Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;

    .line 3449
    iput-object p5, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandler:Landroid/os/Handler;

    .line 3450
    return-object v0
.end method

.method public static greylist peekInstance()Landroid/view/inputmethod/InputMethodManager;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1471
    const-string v0, "InputMethodManager"

    const-string v1, "InputMethodManager.peekInstance() is deprecated because it cannot be compatible with multi-display. Use context.getSystemService(InputMethodManager.class) instead."

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1475
    sget-object v0, Landroid/view/inputmethod/InputMethodManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1476
    :try_start_0
    sget-object v1, Landroid/view/inputmethod/InputMethodManager;->sInstance:Landroid/view/inputmethod/InputMethodManager;

    monitor-exit v0

    return-object v1

    .line 1477
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist processDump(Ljava/io/FileDescriptor;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .line 3932
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 3933
    return v0

    .line 3936
    :cond_0
    array-length v1, p2

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p2, v2

    .line 3937
    .local v3, "arg":Ljava/lang/String;
    const-string v4, "--proto-com-android-imetracing"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3938
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 3939
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->dumpDebug(Landroid/util/proto/ProtoOutputStream;[B)V

    .line 3940
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 3941
    const/4 v1, 0x1

    return v1

    .line 3936
    .end local v0    # "proto":Landroid/util/proto/ProtoOutputStream;
    .end local v3    # "arg":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3944
    :cond_2
    return v0
.end method

.method private blacklist putInfoInExtra(Landroid/view/View;Landroid/view/inputmethod/EditorInfo;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "tba"    # Landroid/view/inputmethod/EditorInfo;

    .line 4242
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG_SEP:Z

    const-string v1, "InputMethodManager"

    if-eqz v0, :cond_0

    .line 4243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting input: tba="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4246
    :cond_0
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 4247
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodManager;->getMaxLengthForEditText(Landroid/widget/EditText;)I

    move-result v0

    .line 4248
    .local v0, "maxLength":I
    if-ltz v0, :cond_1

    .line 4249
    iget-object v2, p2, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "maxLength"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4254
    .end local v0    # "maxLength":I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    const-string v2, "displayId"

    if-eqz v0, :cond_2

    .line 4255
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    .line 4256
    .local v0, "displayId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startInputInner - Id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4257
    iget-object v1, p2, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 4258
    .end local v0    # "displayId":I
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4259
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    .line 4260
    .restart local v0    # "displayId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startInputInner - Id from getContext : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4261
    iget-object v1, p2, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 4263
    .end local v0    # "displayId":I
    :cond_3
    const-string v0, "getDisplay is null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4265
    :goto_0
    return-void
.end method

.method private greylist-max-o recyclePendingEventLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V
    .locals 1
    .param p1, "p"    # Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .line 3454
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->recycle()V

    .line 3455
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 3456
    return-void
.end method

.method private blacklist reportInputConnectionOpened(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/os/Handler;Landroid/view/View;)V
    .locals 2
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "tba"    # Landroid/view/inputmethod/EditorInfo;
    .param p3, "icHandler"    # Landroid/os/Handler;
    .param p4, "view"    # Landroid/view/View;

    .line 2634
    invoke-virtual {p4, p1, p2, p3}, Landroid/view/View;->onInputConnectionOpenedInternal(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/os/Handler;)V

    .line 2635
    invoke-virtual {p4}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 2636
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 2637
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getHandwritingInitiator()Landroid/view/HandwritingInitiator;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/view/HandwritingInitiator;->onInputConnectionCreated(Landroid/view/View;)V

    .line 2639
    :cond_0
    return-void
.end method

.method private blacklist semToggleSoftInput(II)V
    .locals 6
    .param p1, "showFlags"    # I
    .param p2, "hideFlags"    # I

    .line 2266
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v1, "InputMethodManager#toggleSoftInput"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 2269
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2270
    :try_start_0
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v1

    .line 2271
    .local v1, "view":Landroid/view/View;
    const-string v3, "IMM_LC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stsi("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), served view : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2272
    if-eqz v1, :cond_1

    .line 2273
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2274
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/16 v4, 0x18

    invoke-direct {p0, v3, p2, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    goto :goto_0

    .line 2277
    :cond_0
    const/16 v3, 0x17

    invoke-direct {p0, v1, p1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;I)Z

    .line 2281
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 2282
    return-void

    .line 2281
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist setNextServedViewLocked(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 934
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_0

    .line 935
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getImeFocusController()Landroid/view/ImeFocusController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ImeFocusController;->setNextServedView(Landroid/view/View;)V

    .line 937
    :cond_0
    return-void
.end method

.method private blacklist setServedViewLocked(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 928
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_0

    .line 929
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getImeFocusController()Landroid/view/ImeFocusController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ImeFocusController;->setServedView(Landroid/view/View;)V

    .line 931
    :cond_0
    return-void
.end method

.method private greylist-max-o showInputMethodPickerLocked()V
    .locals 3

    .line 3491
    const-string v0, "InputMethodManager"

    const-string/jumbo v1, "showInputMethodPickerLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3494
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager;->showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3497
    nop

    .line 3498
    return-void

    .line 3495
    :catch_0
    move-exception v0

    .line 3496
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;I)Z
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p4, "reason"    # I

    .line 1942
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v1, "InputMethodManager#showSoftInput"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 1945
    const-string v0, "IMM_LC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ssi() - flag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " view : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1946
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " reason = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1947
    invoke-static {p4}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1945
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    instance-of v0, p1, Landroid/widget/EditText;

    if-nez v0, :cond_1

    .line 1950
    const-string v0, "IMM_LC"

    const-string/jumbo v1, "ssi() view is not EditText"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->overrideDirectWritingFlag()V

    .line 1955
    :cond_1
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1956
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2

    .line 1957
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v1

    return v1

    .line 1960
    :cond_2
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1961
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1962
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1965
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v3

    .line 1966
    .local v3, "servedView":Landroid/view/View;
    const-string v4, "IMM_LC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ssi() - cancel : servedView != view, servedView="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1967
    invoke-static {v3}, Landroid/view/inputmethod/InputMethodManager;->dumpViewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", view="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1968
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodManager;->dumpViewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1966
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    monitor-exit v1

    return v2

    .line 1975
    .end local v3    # "servedView":Landroid/view/View;
    :cond_3
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/16 v3, 0x1f

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/inputmethod/InputMethodManager$H;->executeOrSendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1981
    :try_start_1
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    .line 1983
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    .line 1981
    move v7, p2

    move-object v8, p3

    move v9, p4

    invoke-interface/range {v4 .. v9}, Lcom/android/internal/view/IInputMethodManager;->showSoftInput(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    return v2

    .line 1987
    :catch_0
    move-exception v2

    .line 1988
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v0    # "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    .end local p0    # "this":Landroid/view/inputmethod/InputMethodManager;
    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "flags":I
    .end local p3    # "resultReceiver":Landroid/os/ResultReceiver;
    .end local p4    # "reason":I
    throw v3

    .line 1990
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    .restart local p0    # "this":Landroid/view/inputmethod/InputMethodManager;
    .restart local p1    # "view":Landroid/view/View;
    .restart local p2    # "flags":I
    .restart local p3    # "resultReceiver":Landroid/os/ResultReceiver;
    .restart local p4    # "reason":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method static blacklist tearDownEditMode()V
    .locals 2

    .line 1313
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1317
    sget-object v0, Landroid/view/inputmethod/InputMethodManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1318
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Landroid/view/inputmethod/InputMethodManager;->sInstance:Landroid/view/inputmethod/InputMethodManager;

    .line 1319
    monitor-exit v0

    .line 1320
    return-void

    .line 1319
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1314
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method must be called only from layoutlib"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist updateIMESwitchEnable()V
    .locals 4

    .line 4330
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v0

    .line 4331
    .local v0, "servedView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4333
    nop

    .line 4334
    :try_start_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.honeyboard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 4335
    .local v1, "switchDisable":Z
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v2, v3, v1}, Lcom/android/internal/view/IInputMethodManager;->setInputMethodSwitchDisable(Lcom/android/internal/view/IInputMethodClient;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4338
    .end local v1    # "switchDisable":Z
    goto :goto_0

    .line 4336
    :catch_0
    move-exception v1

    .line 4337
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 4341
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager;->setInputMethodSwitchDisable(Lcom/android/internal/view/IInputMethodClient;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4344
    nop

    .line 4346
    :goto_0
    return-void

    .line 4342
    :catch_1
    move-exception v1

    .line 4343
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public greylist checkFocus()V
    .locals 3

    .line 2689
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getFocusController()Landroid/view/ImeFocusController;

    move-result-object v0

    .line 2690
    .local v0, "controller":Landroid/view/ImeFocusController;
    if-eqz v0, :cond_0

    .line 2691
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/ImeFocusController;->checkFocus(ZZ)Z

    .line 2693
    :cond_0
    return-void
.end method

.method blacklist clearAccessibilityBindingLocked(I)V
    .locals 1
    .param p1, "id"    # I

    .line 1717
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1718
    return-void
.end method

.method blacklist clearAllAccessibilityBindingLocked()V
    .locals 1

    .line 1726
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1727
    return-void
.end method

.method greylist-max-o clearBindingLocked()V
    .locals 2

    .line 1702
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->clearConnectionLocked()V

    .line 1703
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodManager;->setInputChannelLocked(Landroid/view/InputChannel;)V

    .line 1705
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    .line 1706
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    .line 1707
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    .line 1708
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    .line 1709
    return-void
.end method

.method greylist-max-o clearConnectionLocked()V
    .locals 2

    .line 1756
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 1757
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    if-eqz v1, :cond_0

    .line 1758
    invoke-virtual {v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->deactivate()V

    .line 1759
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    .line 1760
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionHandler:Landroid/os/Handler;

    .line 1762
    :cond_0
    return-void
.end method

.method greylist closeCurrentInput()V
    .locals 9

    .line 2697
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2698
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2703
    :cond_0
    const-string v1, "IMM_LC"

    const-string v2, "closeCurrentInput: mService.hideSoftInput"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2706
    :try_start_1
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    .line 2708
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x3

    .line 2706
    invoke-interface/range {v3 .. v8}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2714
    nop

    .line 2715
    :try_start_2
    monitor-exit v0

    .line 2716
    return-void

    .line 2712
    :catch_0
    move-exception v1

    .line 2713
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/view/inputmethod/InputMethodManager;
    throw v2

    .line 2699
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    :goto_0
    const-string v1, "InputMethodManager"

    const-string v2, "No current root view, ignoring closeCurrentInput()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2700
    monitor-exit v0

    return-void

    .line 2715
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist dismissAndShowAgainInputMethodPicker()V
    .locals 2

    .line 4272
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 4273
    :try_start_0
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->dismissAndShowAgainInputMethodPickerLocked()V

    .line 4274
    monitor-exit v0

    .line 4276
    return-void

    .line 4274
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;Landroid/os/Handler;)I
    .locals 9
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "callback"    # Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 3266
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 3267
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    if-eqz v1, :cond_3

    .line 3268
    instance-of v1, p1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 3269
    move-object v1, p1

    check-cast v1, Landroid/view/KeyEvent;

    .line 3270
    .local v1, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 3271
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x3f

    if-ne v3, v4, :cond_0

    .line 3272
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 3273
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPickerLocked()V

    .line 3274
    monitor-exit v0

    return v2

    .line 3278
    :cond_0
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 3279
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x44f

    if-ne v3, v4, :cond_1

    .line 3280
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 3281
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->handleVoiceHWKey()V

    .line 3282
    monitor-exit v0

    return v2

    .line 3291
    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    :cond_1
    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Landroid/view/inputmethod/InputMethodManager;->obtainPendingEventLocked(Landroid/view/InputEvent;Ljava/lang/Object;Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;Landroid/os/Handler;)Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    move-result-object v1

    .line 3293
    .local v1, "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mMainLooper:Landroid/os/Looper;

    invoke-virtual {v3}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3295
    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodManager;->sendInputEventOnMainLooperLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)I

    move-result v2

    monitor-exit v0

    return v2

    .line 3299
    :cond_2
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v1}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 3300
    .local v3, "msg":Landroid/os/Message;
    invoke-virtual {v3, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3301
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    invoke-virtual {v2, v3}, Landroid/view/inputmethod/InputMethodManager$H;->sendMessage(Landroid/os/Message;)Z

    .line 3302
    const/4 v2, -0x1

    monitor-exit v0

    return v2

    .line 3304
    .end local v1    # "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_3
    const-string v1, "InputMethodManager"

    const-string v2, "dispatchInputEvent: not handled, reason: current session is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3305
    monitor-exit v0

    .line 3306
    const/4 v0, 0x0

    return v0

    .line 3305
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist dispatchKeyEventFromInputMethod(Landroid/view/View;Landroid/view/KeyEvent;)V
    .locals 6
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 3325
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 3326
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 3327
    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->dispatchKeyEventFromInputMethod(Landroid/view/View;Landroid/view/KeyEvent;)V

    .line 3328
    return-void

    .line 3331
    :cond_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 3332
    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    goto :goto_0

    .line 3345
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 3332
    :cond_1
    const/4 v2, 0x0

    .line 3333
    .local v2, "viewRootImpl":Landroid/view/ViewRootImpl;
    :goto_0
    if-nez v2, :cond_2

    .line 3334
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v3

    .line 3335
    .local v3, "servedView":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 3336
    invoke-virtual {v3}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v4

    move-object v2, v4

    .line 3339
    .end local v3    # "servedView":Landroid/view/View;
    :cond_2
    if-eqz v2, :cond_3

    .line 3341
    const-string v3, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchKeyEventFromInputMethod: KeyEvent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3343
    invoke-virtual {v2, p2}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    .line 3345
    .end local v2    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_3
    monitor-exit v1

    .line 3346
    return-void

    .line 3345
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public whitelist displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .line 1794
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1795
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1796
    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    .line 1797
    return-void

    .line 1800
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1801
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1802
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1803
    monitor-exit v1

    return-void

    .line 1806
    :cond_1
    iput-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 1807
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    if-eqz v2, :cond_2

    .line 1808
    invoke-virtual {v2, p2}, Landroid/view/inputmethod/InputMethodSessionWrapper;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    .line 1810
    :cond_2
    monitor-exit v1

    .line 1811
    return-void

    .line 1810
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method greylist-max-o doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 3816
    invoke-direct {p0, p1, p3}, Landroid/view/inputmethod/InputMethodManager;->processDump(Ljava/io/FileDescriptor;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3817
    return-void

    .line 3820
    :cond_0
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 3821
    .local v0, "p":Landroid/util/Printer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input method client state for "

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

    .line 3823
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3824
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMainLooper="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mMainLooper:Landroid/os/Looper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3825
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mFallbackInputConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mFallbackInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3826
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mRestartOnNextWindowFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mRestartOnNextWindowFocus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mBindSequence="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCurId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3830
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mFullscreenMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3831
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    if-eqz v1, :cond_1

    .line 3832
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurMethod="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 3834
    :cond_1
    const-string v1, "  mCurMethod= null"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3836
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3837
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mAccessibilityInputMethodSession("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    .line 3838
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    .line 3839
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3837
    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3836
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3841
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurRootView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3842
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServedView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3843
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNextServedView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getNextServedViewLocked()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3844
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServedConnecting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3845
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_3

    .line 3846
    const-string v1, "  mCurrentTextBoxAttribute:"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3847
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    const-string v2, "    "

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/EditorInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_2

    .line 3849
    :cond_3
    const-string v1, "  mCurrentTextBoxAttribute: null"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3851
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServedInputConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3852
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServedInputConnectionHandler="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3853
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCompletions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3854
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCursorRect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3855
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCursorSelStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCursorSelEnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCursorCandStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCursorCandEnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3859
    return-void
.end method

.method public blacklist doInvalidateInput(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Landroid/view/inputmethod/TextSnapshot;I)Z
    .locals 5
    .param p1, "inputConnection"    # Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
    .param p2, "textSnapshot"    # Landroid/view/inputmethod/TextSnapshot;
    .param p3, "sessionId"    # I

    .line 2325
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2326
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    const/4 v2, 0x1

    if-ne v1, p1, :cond_2

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2330
    :cond_0
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    if-nez v3, :cond_1

    .line 2332
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 2334
    :cond_1
    invoke-virtual {v1}, Landroid/view/inputmethod/EditorInfo;->createCopyInternal()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 2335
    .local v1, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual {p2}, Landroid/view/inputmethod/TextSnapshot;->getSelectionStart()I

    move-result v3

    iput v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    iput v3, v1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 2336
    invoke-virtual {p2}, Landroid/view/inputmethod/TextSnapshot;->getSelectionEnd()I

    move-result v3

    iput v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    iput v3, v1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 2337
    invoke-virtual {p2}, Landroid/view/inputmethod/TextSnapshot;->getCompositionStart()I

    move-result v3

    iput v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    .line 2338
    invoke-virtual {p2}, Landroid/view/inputmethod/TextSnapshot;->getCompositionEnd()I

    move-result v3

    iput v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    .line 2339
    invoke-virtual {p2}, Landroid/view/inputmethod/TextSnapshot;->getCursorCapsMode()I

    move-result v3

    iput v3, v1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    .line 2340
    invoke-virtual {p2}, Landroid/view/inputmethod/TextSnapshot;->getSurroundingText()Landroid/view/inputmethod/SurroundingText;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/inputmethod/EditorInfo;->setInitialSurroundingTextInternal(Landroid/view/inputmethod/SurroundingText;)V

    .line 2341
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v3, v1, v4, p3}, Landroid/view/inputmethod/InputMethodSessionWrapper;->invalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;I)V

    .line 2343
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    .line 2344
    invoke-virtual {v3}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->asIRemoteAccessibilityInputConnection()Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    move-result-object v3

    .line 2345
    .local v3, "accessibilityInputConnection":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    new-instance v4, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda4;

    invoke-direct {v4, v1, v3, p3}, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda4;-><init>(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    invoke-direct {p0, v4}, Landroid/view/inputmethod/InputMethodManager;->forAccessibilitySessionsLocked(Ljava/util/function/Consumer;)V

    .line 2347
    monitor-exit v0

    return v2

    .line 2328
    .end local v1    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .end local v3    # "accessibilityInputConnection":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    :cond_2
    :goto_0
    monitor-exit v0

    return v2

    .line 2348
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;[B)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "icProto"    # [B

    .line 3957
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    if-nez v0, :cond_0

    .line 3958
    return-void

    .line 3961
    :cond_0
    const-wide v0, 0x10500000001L

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3962
    const-wide v0, 0x10b00000002L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 3963
    .local v0, "token":J
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 3964
    const-wide v3, 0x10900000001L

    :try_start_0
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3965
    const-wide v3, 0x10800000002L

    iget-boolean v5, p0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3966
    const-wide v3, 0x10800000004L

    iget-boolean v5, p0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3967
    const-wide v3, 0x10800000005L

    iget-boolean v5, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3968
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3969
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v3, :cond_1

    .line 3970
    const-wide v4, 0x10b00000003L

    invoke-virtual {v3, p1, v4, v5}, Landroid/view/ViewRootImpl;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3972
    :cond_1
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v3, :cond_2

    .line 3973
    const-wide v4, 0x10b00000006L

    invoke-virtual {v3, p1, v4, v5}, Landroid/view/inputmethod/EditorInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3975
    :cond_2
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mImeInsetsConsumer:Landroid/view/ImeInsetsSourceConsumer;

    if-eqz v3, :cond_3

    .line 3976
    const-wide v4, 0x10b00000005L

    invoke-virtual {v3, p1, v4, v5}, Landroid/view/ImeInsetsSourceConsumer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3978
    :cond_3
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    if-eqz v3, :cond_4

    .line 3979
    const-wide v4, 0x10b00000008L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3981
    :cond_4
    if-eqz p2, :cond_5

    .line 3982
    const-wide v3, 0x10b00000009L

    invoke-virtual {p1, v3, v4, p2}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 3984
    :cond_5
    monitor-exit v2

    .line 3985
    return-void

    .line 3984
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method greylist finishInputLocked()V
    .locals 3

    .line 1770
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mVirtualDisplayToScreenMatrix:Landroid/graphics/Matrix;

    .line 1771
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mIsInputMethodSuppressingSpellChecker:Z

    .line 1772
    invoke-direct {p0, v0}, Landroid/view/inputmethod/InputMethodManager;->setNextServedViewLocked(Landroid/view/View;)V

    .line 1773
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1778
    invoke-direct {p0, v0}, Landroid/view/inputmethod/InputMethodManager;->setServedViewLocked(Landroid/view/View;)V

    .line 1779
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 1780
    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 1781
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->clearConnectionLocked()V

    .line 1785
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->updateIMESwitchEnable()V

    .line 1789
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    invoke-virtual {v0}, Landroid/window/ImeOnBackInvokedDispatcher;->clear()V

    .line 1790
    return-void
.end method

.method greylist-max-o finishedInputEvent(IZZ)V
    .locals 7
    .param p1, "seq"    # I
    .param p2, "handled"    # Z
    .param p3, "timeout"    # Z

    .line 3390
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 3391
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 3392
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 3393
    monitor-exit v0

    return-void

    .line 3396
    :cond_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .line 3397
    .local v2, "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3398
    const-wide/16 v3, 0x4

    const-string v5, "aq:imm"

    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 3400
    if-eqz p3, :cond_1

    .line 3401
    const-string v3, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout waiting for IME to handle input event after 2500 ms: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mInputMethodId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3404
    :cond_1
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v4, 0x6

    invoke-virtual {v3, v4, v2}, Landroid/view/inputmethod/InputMethodManager$H;->removeMessages(ILjava/lang/Object;)V

    .line 3406
    .end local v1    # "index":I
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3408
    invoke-virtual {p0, v2, p2}, Landroid/view/inputmethod/InputMethodManager;->invokeFinishedInputEventCallback(Landroid/view/inputmethod/InputMethodManager$PendingEvent;Z)V

    .line 3409
    return-void

    .line 3406
    .end local v2    # "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist forceHideSoftInput()Z
    .locals 2

    .line 4107
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG_SEP:Z

    if-eqz v0, :cond_0

    .line 4108
    const-string v0, "IMM_LC"

    const-string v1, "forceHideSoftInput"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4111
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput(Landroid/os/ResultReceiver;)Z

    move-result v0

    return v0
.end method

.method public blacklist forceHideSoftInput(Landroid/os/ResultReceiver;)Z
    .locals 8
    .param p1, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 4122
    :try_start_0
    const-string v0, "IMM_LC"

    const-string v1, "fhsi()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4123
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v0

    .line 4124
    .local v0, "servedView":Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    move-object v4, v1

    .line 4125
    .local v4, "windowToken":Landroid/os/IBinder;
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    const/4 v5, 0x0

    const/16 v7, 0x22

    move-object v6, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 4127
    .end local v0    # "servedView":Landroid/view/View;
    .end local v4    # "windowToken":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 4128
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist getCurTokenDisplayId()I
    .locals 2

    .line 4317
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->getCurTokenDisplayId()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4318
    :catch_0
    move-exception v0

    .line 4319
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist getCurrentFocusDisplayID()I
    .locals 2

    .line 4306
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->getCurrentFocusDisplayID()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4307
    :catch_0
    move-exception v0

    .line 4308
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 2

    .line 3541
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3542
    :catch_0
    move-exception v0

    .line 3543
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getDelegate()Landroid/view/inputmethod/InputMethodManager$DelegateImpl;
    .locals 1

    .line 904
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mDelegate:Landroid/view/inputmethod/InputMethodManager$DelegateImpl;

    return-object v0
.end method

.method public blacklist getDexSettingsValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultKey"    # Ljava/lang/String;

    .line 4357
    :try_start_0
    const-string v0, "InputMethodManager"

    const-string v1, "getDexSettingsValue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4358
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->getDexSettingsValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4359
    :catch_0
    move-exception v0

    .line 4360
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getDisplayId()I
    .locals 1

    .line 3812
    iget v0, p0, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    return v0
.end method

.method public whitelist getEnabledInputMethodList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1548
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/view/IInputMethodManager;->getEnabledInputMethodList(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1549
    :catch_0
    move-exception v0

    .line 1550
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getEnabledInputMethodListAsUser(I)Ljava/util/List;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1564
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v0, p1}, Lcom/android/internal/view/IInputMethodManager;->getEnabledInputMethodList(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1565
    :catch_0
    move-exception v0

    .line 1566
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;
    .locals 2
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "allowsImplicitlySelectedSubtypes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .line 1583
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    .line 1584
    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 1583
    :goto_0
    invoke-interface {v0, v1, p2}, Lcom/android/internal/view/IInputMethodManager;->getEnabledInputMethodSubtypeList(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1586
    :catch_0
    move-exception v0

    .line 1587
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getInputMethodList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1492
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/view/IInputMethodManager;->getInputMethodList(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1493
    :catch_0
    move-exception v0

    .line 1494
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getInputMethodListAsUser(I)Ljava/util/List;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1510
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v0, p1}, Lcom/android/internal/view/IInputMethodManager;->getInputMethodList(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1511
    :catch_0
    move-exception v0

    .line 1512
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getInputMethodListAsUser(II)Ljava/util/List;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "directBootAwareness"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1530
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->getAwareLockedInputMethodList(II)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1531
    :catch_0
    move-exception v0

    .line 1532
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist getInputMethodWindowVisibleHeight()I
    .locals 2

    .line 3659
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v0, v1}, Lcom/android/internal/view/IInputMethodManager;->getInputMethodWindowVisibleHeight(Lcom/android/internal/view/IInputMethodClient;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3660
    :catch_0
    move-exception v0

    .line 3661
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 2

    .line 3799
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3800
    :catch_0
    move-exception v0

    .line 3801
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist getMaxLengthForEditText(Landroid/widget/EditText;)I
    .locals 11
    .param p1, "editText"    # Landroid/widget/EditText;

    .line 4215
    const/4 v0, -0x1

    .line 4216
    .local v0, "maxLength":I
    invoke-virtual {p1}, Landroid/widget/EditText;->onCheckIsTextEditor()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/widget/EditText;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4217
    invoke-virtual {p1}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 4218
    .local v5, "filter":Landroid/text/InputFilter;
    instance-of v6, v5, Landroid/text/InputFilter$LengthFilter;

    const-string v7, "InputMethodManager"

    if-eqz v6, :cond_0

    .line 4220
    :try_start_0
    move-object v6, v5

    check-cast v6, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual {v6}, Landroid/text/InputFilter$LengthFilter;->getMax()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 4221
    goto :goto_2

    .line 4222
    :catch_0
    move-exception v6

    .line 4223
    .local v6, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getMaxLengthForEditText LengthFilter = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4224
    .end local v6    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 4225
    :cond_0
    instance-of v6, v5, Landroid/text/InputFilter;

    if-eqz v6, :cond_1

    .line 4226
    const/4 v6, 0x0

    .line 4228
    .local v6, "m":Ljava/lang/reflect/Method;
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "getMaxLength"

    new-array v10, v3, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    move-object v6, v8

    .line 4229
    new-array v8, v3, [Ljava/lang/Object;

    invoke-virtual {v6, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 4230
    .local v8, "value":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    .line 4231
    goto :goto_2

    .line 4232
    .end local v8    # "value":Ljava/lang/Object;
    :catch_1
    move-exception v8

    .line 4233
    .local v8, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getMaxLengthForEditText InputFilter = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4217
    .end local v5    # "filter":Landroid/text/InputFilter;
    .end local v6    # "m":Ljava/lang/reflect/Method;
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4238
    :cond_2
    :goto_2
    return v0
.end method

.method public whitelist getShortcutInputMethodsAndSubtypes()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation

    .line 3624
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v0

    .line 3627
    .local v0, "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v1, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 3629
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 3630
    .local v1, "numEnabledImes":I
    const/4 v2, 0x0

    .local v2, "imiIndex":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 3631
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 3632
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v4

    .line 3634
    .local v4, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 3635
    .local v5, "subtypeCount":I
    const/4 v6, 0x0

    .local v6, "subtypeIndex":I
    :goto_1
    if-ge v6, v5, :cond_1

    .line 3636
    invoke-virtual {v3, v6}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v7

    .line 3637
    .local v7, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "voice"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3638
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v3, v8}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v8

    return-object v8

    .line 3635
    .end local v7    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3630
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v4    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v5    # "subtypeCount":I
    .end local v6    # "subtypeIndex":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3642
    .end local v2    # "imiIndex":I
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method

.method public blacklist getUpdateCursorAnchorInfoMode()I
    .locals 2

    .line 2963
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2964
    :try_start_0
    iget v1, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    monitor-exit v0

    return v1

    .line 2965
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getWACOMPen()Z
    .locals 3

    .line 4191
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    if-eqz v0, :cond_0

    .line 4192
    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->getWACOMPen()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4196
    :cond_0
    goto :goto_0

    .line 4194
    :catch_0
    move-exception v0

    .line 4195
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWACOMPen() failed by Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputMethodManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4197
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasActiveInputConnection(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 915
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mDelegate:Landroid/view/inputmethod/InputMethodManager$DelegateImpl;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->hasActiveConnection(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public blacklist hasVirtualDisplayToScreenMatrix()Z
    .locals 2

    .line 3697
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 3698
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mVirtualDisplayToScreenMatrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 3699
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist hideSoftInputFromInputMethod(Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hsifi() - flag : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IMM_LC"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3227
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->hideMySoftInput(I)V

    .line 3228
    return-void
.end method

.method public whitelist hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    .locals 1
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .line 2053
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    move-result v0

    return v0
.end method

.method public whitelist hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z
    .locals 1
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 2084
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    move-result v0

    return v0
.end method

.method public whitelist hideStatusIcon(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "imeToken"    # Landroid/os/IBinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1609
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->updateStatusIconAsync(Ljava/lang/String;I)V

    .line 1610
    return-void
.end method

.method public whitelist invalidateInput(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 2370
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2373
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2374
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 2375
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->invalidateInput(Landroid/view/View;)V

    .line 2376
    return-void

    .line 2379
    :cond_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 2380
    :try_start_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    if-eqz v2, :cond_2

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v2

    if-eq v2, p1, :cond_1

    goto :goto_0

    .line 2383
    :cond_1
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->scheduleInvalidateInput()V

    .line 2384
    monitor-exit v1

    .line 2385
    return-void

    .line 2381
    :cond_2
    :goto_0
    monitor-exit v1

    return-void

    .line 2384
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method greylist-max-o invokeFinishedInputEventCallback(Landroid/view/inputmethod/InputMethodManager$PendingEvent;Z)V
    .locals 2
    .param p1, "p"    # Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    .param p2, "handled"    # Z

    .line 3413
    iput-boolean p2, p1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandled:Z

    .line 3414
    iget-object v0, p1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3417
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->run()V

    goto :goto_0

    .line 3421
    :cond_0
    iget-object v0, p1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandler:Landroid/os/Handler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 3422
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3423
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3425
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return-void
.end method

.method public whitelist isAcceptingText()Z
    .locals 2

    .line 1681
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1682
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 1683
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 1684
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist isAccessoryKeyboardState()I
    .locals 2

    .line 4150
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->isAccessoryKeyboard()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4151
    :catch_0
    move-exception v0

    .line 4152
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isActive()Z
    .locals 2

    .line 1670
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1671
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 1672
    :try_start_0
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 1673
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist isActive(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 1655
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1656
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1657
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    return v1

    .line 1660
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1661
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1662
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    monitor-exit v1

    return v2

    .line 1663
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public blacklist isCurrentInputMethodAsSamsungKeyboard()Z
    .locals 3

    .line 4290
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 4292
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->isCurrentInputMethodAsSamsungKeyboard()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return v1

    .line 4296
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 4293
    :catch_0
    move-exception v1

    .line 4294
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 4296
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public greylist-max-r isCursorAnchorInfoEnabled()Z
    .locals 5

    .line 2936
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2937
    :try_start_0
    iget v1, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 2939
    .local v2, "isImmediate":Z
    :goto_0
    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v3

    .line 2941
    .local v1, "isMonitoring":Z
    :goto_1
    if-nez v2, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    move v3, v4

    :cond_3
    monitor-exit v0

    return v3

    .line 2942
    .end local v1    # "isMonitoring":Z
    .end local v2    # "isImmediate":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist isFullscreenMode()Z
    .locals 2

    .line 1644
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 1645
    :try_start_0
    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    monitor-exit v0

    return v1

    .line 1646
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist isInputMethodPickerShown()Z
    .locals 2

    .line 3514
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->isInputMethodPickerShownForTest()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3515
    :catch_0
    move-exception v0

    .line 3516
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isInputMethodShown()Z
    .locals 2

    .line 4032
    const/4 v0, 0x0

    .line 4034
    .local v0, "shown":Z
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->isInputMethodShown()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 4037
    goto :goto_0

    .line 4035
    :catch_0
    move-exception v1

    .line 4038
    :goto_0
    return v0
.end method

.method public whitelist isInputMethodSuppressingSpellChecker()Z
    .locals 2

    .line 1691
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 1692
    :try_start_0
    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mIsInputMethodSuppressingSpellChecker:Z

    monitor-exit v0

    return v1

    .line 1693
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist isWatchingCursor(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2925
    const/4 v0, 0x0

    return v0
.end method

.method synthetic blacklist lambda$startInputInner$2$android-view-inputmethod-InputMethodManager(I)V
    .locals 6
    .param p1, "startInputReason"    # I

    .line 2455
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mDelegate:Landroid/view/inputmethod/InputMethodManager$DelegateImpl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->startInput(ILandroid/view/View;III)Z

    return-void
.end method

.method public blacklist minimizeSoftInput(Landroid/os/IBinder;I)Z
    .locals 5
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "height"    # I

    .line 4067
    const-string v0, "IMM_LC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "minimizeSoftInput h "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4068
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 4069
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 4070
    :try_start_0
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v1

    .line 4071
    .local v1, "servedView":Landroid/view/View;
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v3, p1, :cond_0

    goto :goto_0

    .line 4075
    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v3, v4, p2}, Lcom/android/internal/view/IInputMethodManager;->minimizeSoftInput(Lcom/android/internal/view/IInputMethodClient;I)Z

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v2

    .line 4076
    :catch_0
    move-exception v3

    .line 4077
    .local v3, "e":Landroid/os/RemoteException;
    monitor-exit v0

    return v2

    .line 4072
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    monitor-exit v0

    return v2

    .line 4079
    .end local v1    # "servedView":Landroid/view/View;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist notifyImeHidden(Landroid/os/IBinder;)V
    .locals 8
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 2788
    const-string v0, "IMM_LC"

    const-string/jumbo v1, "notifyImeHidden: mService.hideSoftInput"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2790
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v1, "InputMethodManager#notifyImeHidden"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 2792
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2793
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v1, :cond_0

    .line 2794
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p1, :cond_0

    .line 2796
    :try_start_1
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x3

    move-object v4, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2801
    goto :goto_0

    .line 2799
    :catch_0
    move-exception v1

    .line 2800
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/view/inputmethod/InputMethodManager;
    .end local p1    # "windowToken":Landroid/os/IBinder;
    throw v2

    .line 2803
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/view/inputmethod/InputMethodManager;
    .restart local p1    # "windowToken":Landroid/os/IBinder;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 2804
    return-void

    .line 2803
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public greylist notifySuggestionPicked(Landroid/text/style/SuggestionSpan;Ljava/lang/String;I)V
    .locals 2
    .param p1, "span"    # Landroid/text/style/SuggestionSpan;
    .param p2, "originalString"    # Ljava/lang/String;
    .param p3, "index"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1635
    const-string v0, "InputMethodManager"

    const-string/jumbo v1, "notifySuggestionPicked() is deprecated.  Does nothing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    return-void
.end method

.method public greylist-max-p notifyUserAction()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3615
    const-string v0, "InputMethodManager"

    const-string/jumbo v1, "notifyUserAction() is a hidden method, which is now just a stub method that does nothing.  Leave comments in b.android.com/114740982 if your  application still depends on the previous behavior of this method."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3618
    return-void
.end method

.method public blacklist overrideDirectWritingFlag()V
    .locals 3

    .line 4382
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->overrideDirectWritingFlag()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4385
    goto :goto_0

    .line 4383
    :catch_0
    move-exception v0

    .line 4384
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    const-string v2, "error overriding DW flag"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4386
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist registerImeConsumer(Landroid/view/ImeInsetsSourceConsumer;)V
    .locals 2
    .param p1, "imeInsetsConsumer"    # Landroid/view/ImeInsetsSourceConsumer;

    .line 2724
    if-eqz p1, :cond_0

    .line 2728
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2729
    :try_start_0
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mImeInsetsConsumer:Landroid/view/ImeInsetsSourceConsumer;

    .line 2730
    monitor-exit v0

    .line 2731
    return-void

    .line 2730
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2725
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImeInsetsSourceConsumer cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist registerSuggestionSpansForNotification([Landroid/text/style/SuggestionSpan;)V
    .locals 2
    .param p1, "spans"    # [Landroid/text/style/SuggestionSpan;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1623
    const-string v0, "InputMethodManager"

    const-string/jumbo v1, "registerSuggestionSpansForNotification() is deprecated.  Does nothing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    return-void
.end method

.method public blacklist removeImeSurface(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 2812
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG_SEP:Z

    if-eqz v0, :cond_0

    .line 2813
    const-string v0, "InputMethodManager"

    const-string/jumbo v1, "removeImeSurface"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2815
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2817
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputMethodManager;->removeImeSurfaceFromWindowAsync(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2820
    nop

    .line 2821
    :try_start_1
    monitor-exit v0

    .line 2822
    return-void

    .line 2821
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 2818
    :catch_0
    move-exception v1

    .line 2819
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/view/inputmethod/InputMethodManager;
    .end local p1    # "windowToken":Landroid/os/IBinder;
    throw v2

    .line 2821
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/view/inputmethod/InputMethodManager;
    .restart local p1    # "windowToken":Landroid/os/IBinder;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist reportPerceptible(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "perceptible"    # Z

    .line 701
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->reportPerceptibleAsync(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    nop

    .line 705
    return-void

    .line 702
    :catch_0
    move-exception v0

    .line 703
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist reportVirtualDisplayGeometry(ILandroid/graphics/Matrix;)V
    .locals 3
    .param p1, "childDisplayId"    # I
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .line 3677
    if-nez p2, :cond_0

    .line 3678
    const/4 v0, 0x0

    .local v0, "matrixValues":[F
    goto :goto_0

    .line 3680
    .end local v0    # "matrixValues":[F
    :cond_0
    const/16 v0, 0x9

    :try_start_0
    new-array v0, v0, [F

    .line 3681
    .restart local v0    # "matrixValues":[F
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 3683
    :goto_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v1, v2, p1, v0}, Lcom/android/internal/view/IInputMethodManager;->reportVirtualDisplayGeometryAsync(Lcom/android/internal/view/IInputMethodClient;I[F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3686
    .end local v0    # "matrixValues":[F
    nop

    .line 3687
    return-void

    .line 3684
    :catch_0
    move-exception v0

    .line 3685
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist requestImeShow(Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 2761
    const-string v0, "IMM_LC"

    const-string/jumbo v1, "ris()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2763
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2764
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2765
    :try_start_0
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v1

    .line 2766
    .local v1, "servedView":Landroid/view/View;
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eq v3, p1, :cond_0

    goto :goto_0

    .line 2773
    :cond_0
    const/4 v3, 0x0

    const/16 v4, 0x19

    invoke-direct {p0, v1, v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;I)Z

    .line 2775
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 2768
    :cond_1
    :goto_0
    const-string v3, "IMM_LC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ris() ignore mServedView == null or mServedView.getWindowToken() != windowToken, mServedView :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2769
    if-eqz v1, :cond_2

    move-object v5, v1

    goto :goto_1

    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2768
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2771
    monitor-exit v0

    return v2

    .line 2776
    .end local v1    # "servedView":Landroid/view/View;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist restartInput(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .line 2295
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2296
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 2297
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 2298
    return-void

    .line 2301
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2302
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 2303
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2304
    monitor-exit v1

    return-void

    .line 2307
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 2308
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2310
    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z

    .line 2311
    return-void

    .line 2308
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public whitelist semForceHideSoftInput()Z
    .locals 2

    .line 4092
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG_SEP:Z

    if-eqz v0, :cond_0

    .line 4093
    const-string v0, "IMM_LC"

    const-string/jumbo v1, "semForceHideSoftInput"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4095
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    move-result v0

    return v0
.end method

.method public whitelist semIsAccessoryKeyboard()Z
    .locals 1

    .line 4141
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist semIsInputMethodShown()Z
    .locals 1

    .line 4024
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v0

    return v0
.end method

.method public whitelist semMinimizeSoftInput(Landroid/os/IBinder;I)Z
    .locals 2
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "height"    # I

    .line 4057
    const-string v0, "IMM_LC"

    const-string/jumbo v1, "semMinimizeSoftInput"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4058
    invoke-virtual {p0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->minimizeSoftInput(Landroid/os/IBinder;I)Z

    move-result v0

    return v0
.end method

.method public whitelist semShowSideSyncSoftInput(I)V
    .locals 0
    .param p1, "showFlags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4169
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->showSideSyncSoftInput(I)V

    .line 4170
    return-void
.end method

.method public whitelist semShowSoftInput(ILandroid/os/ResultReceiver;)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 4005
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semShowSoftInput - flag : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IMM_LC"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4007
    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    .line 4008
    add-int/lit8 p1, p1, -0x64

    .line 4009
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->overrideDirectWritingFlag()V

    .line 4012
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V

    .line 4013
    return-void
.end method

.method public whitelist sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/os/Bundle;

    .line 3060
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 3061
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 3062
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3063
    return-void

    .line 3066
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 3067
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 3068
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    goto :goto_1

    .line 3074
    :cond_1
    :try_start_1
    sget-boolean v2, Lcom/samsung/android/rune/ViewRune;->SUPPORT_DIRECT_WRITING:Z

    if-eqz v2, :cond_2

    .line 3075
    sget-object v2, Landroid/view/inputmethod/InputMethodManager;->OVERRIDE_DW_FLAG_COMMAND_LIST:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3076
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v2}, Lcom/android/internal/view/IInputMethodManager;->overrideDirectWritingFlag()V

    .line 3081
    :cond_2
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    invoke-virtual {v2, p2, p3}, Landroid/view/inputmethod/InputMethodSessionWrapper;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3084
    goto :goto_0

    .line 3082
    :catch_0
    move-exception v2

    .line 3083
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IME died: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3085
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v1

    .line 3086
    return-void

    .line 3070
    :cond_3
    :goto_1
    monitor-exit v1

    return-void

    .line 3085
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method greylist-max-o sendInputEventAndReportResultOnMainLooper(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V
    .locals 3
    .param p1, "p"    # Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .line 3351
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 3352
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->sendInputEventOnMainLooperLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)I

    move-result v1

    .line 3353
    .local v1, "result":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 3354
    monitor-exit v0

    return-void

    .line 3357
    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    .line 3358
    .local v1, "handled":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3360
    invoke-virtual {p0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->invokeFinishedInputEventCallback(Landroid/view/inputmethod/InputMethodManager$PendingEvent;Z)V

    .line 3361
    return-void

    .line 3358
    .end local v1    # "handled":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method greylist-max-o sendInputEventOnMainLooperLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)I
    .locals 7
    .param p1, "p"    # Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .line 3365
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3366
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    if-nez v2, :cond_0

    .line 3367
    new-instance v2, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager$H;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    .line 3370
    :cond_0
    iget-object v0, p1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mEvent:Landroid/view/InputEvent;

    .line 3371
    .local v0, "event":Landroid/view/InputEvent;
    invoke-virtual {v0}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v2

    .line 3372
    .local v2, "seq":I
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    invoke-virtual {v3, v2, v0}, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;->sendInputEvent(ILandroid/view/InputEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3373
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3374
    const-wide/16 v3, 0x4

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    .line 3375
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 3374
    const-string v6, "aq:imm"

    invoke-static {v3, v4, v6, v5}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 3377
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v4, 0x6

    invoke-virtual {v3, v4, v2, v1, p1}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3378
    .local v1, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3379
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const-wide/16 v4, 0x9c4

    invoke-virtual {v3, v1, v4, v5}, Landroid/view/inputmethod/InputMethodManager$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3380
    const/4 v3, -0x1

    return v3

    .line 3383
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to send input event to IME: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dropping: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "InputMethodManager"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3385
    .end local v0    # "event":Landroid/view/InputEvent;
    .end local v2    # "seq":I
    :cond_2
    return v1
.end method

.method public whitelist setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 2
    .param p1, "imiId"    # Ljava/lang/String;
    .param p2, "subtypes"    # [Landroid/view/inputmethod/InputMethodSubtype;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3791
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3794
    nop

    .line 3795
    return-void

    .line 3792
    :catch_0
    move-exception v0

    .line 3793
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Z
    .locals 10
    .param p1, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3562
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_0

    .line 3563
    const-string v0, "InputMethodManager"

    const-string v2, "System process should not call setCurrentInputMethodSubtype() because almost always it is a bug under multi-user / multi-profile environment. Consider directly interacting with InputMethodManagerService via LocalServices."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3567
    return v1

    .line 3569
    :cond_0
    if-nez p1, :cond_1

    .line 3571
    return v1

    .line 3573
    :cond_1
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 3574
    .local v0, "fallbackContext":Landroid/content/Context;
    if-nez v0, :cond_2

    .line 3575
    return v1

    .line 3577
    :cond_2
    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 3579
    return v1

    .line 3581
    :cond_3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3582
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    const-string v3, "default_input_method"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3584
    .local v3, "imeId":Ljava/lang/String;
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_4

    .line 3586
    return v1

    .line 3590
    :cond_4
    :try_start_0
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    const/4 v5, 0x1

    invoke-interface {v4, v3, v5}, Lcom/android/internal/view/IInputMethodManager;->getEnabledInputMethodSubtypeList(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3593
    .local v4, "enabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    nop

    .line 3594
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    .line 3595
    .local v6, "numSubtypes":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_6

    .line 3596
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodSubtype;

    .line 3597
    .local v8, "enabledSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v8, p1}, Landroid/view/inputmethod/InputMethodSubtype;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 3598
    nop

    .line 3599
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v1

    .line 3598
    const-string/jumbo v9, "selected_input_method_subtype"

    invoke-static {v2, v9, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3600
    return v5

    .line 3595
    .end local v8    # "enabledSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3603
    .end local v7    # "i":I
    :cond_6
    return v1

    .line 3591
    .end local v4    # "enabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v6    # "numSubtypes":I
    :catch_0
    move-exception v4

    .line 3592
    .local v4, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public blacklist setDirectWritingFlag(Z)V
    .locals 3
    .param p1, "val"    # Z

    .line 4371
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v0, p1}, Lcom/android/internal/view/IInputMethodManager;->setDirectWritingFlag(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4374
    goto :goto_0

    .line 4372
    :catch_0
    move-exception v0

    .line 4373
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    const-string v2, "error setting DW flag"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4375
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setForceShowSipAppPrivateCommandList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4392
    .local p1, "commandList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4393
    sget-object v0, Landroid/view/inputmethod/InputMethodManager;->OVERRIDE_DW_FLAG_COMMAND_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4394
    sget-object v0, Landroid/view/inputmethod/InputMethodManager;->OVERRIDE_DW_FLAG_COMMAND_LIST:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4396
    :cond_0
    return-void
.end method

.method greylist-max-o setInputChannelLocked(Landroid/view/InputChannel;)V
    .locals 2
    .param p1, "channel"    # Landroid/view/InputChannel;

    .line 1730
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    if-ne v0, p1, :cond_0

    .line 1731
    return-void

    .line 1733
    :cond_0
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1734
    invoke-virtual {v0}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1738
    return-void

    .line 1740
    :cond_1
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    if-eqz v0, :cond_2

    .line 1741
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->flushPendingEventsLocked()V

    .line 1742
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;->dispose()V

    .line 1743
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    .line 1745
    :cond_2
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_3

    .line 1746
    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 1748
    :cond_3
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    .line 1749
    return-void
.end method

.method public whitelist setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3108
    const-string v0, "InputMethodManager"

    if-nez p1, :cond_7

    .line 3112
    if-nez p2, :cond_0

    .line 3113
    return-void

    .line 3115
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_1

    .line 3116
    const-string v1, "System process should not be calling setInputMethod() because almost always it is a bug under multi-user / multi-profile environment. Consider interacting with InputMethodManagerService directly via LocalServices."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3120
    return-void

    .line 3122
    :cond_1
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 3123
    .local v1, "fallbackContext":Landroid/content/Context;
    if-nez v1, :cond_2

    .line 3124
    return-void

    .line 3126
    :cond_2
    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 3128
    return-void

    .line 3130
    :cond_3
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v2

    .line 3131
    .local v2, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 3132
    .local v3, "numImis":I
    const/4 v4, 0x0

    .line 3133
    .local v4, "found":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_5

    .line 3134
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    .line 3135
    .local v6, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3136
    const/4 v4, 0x1

    .line 3137
    goto :goto_1

    .line 3133
    .end local v6    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3140
    .end local v5    # "i":I
    :cond_5
    :goto_1
    if-nez v4, :cond_6

    .line 3142
    const-string v5, "com.samsung.android.bixby.service/.dictation.DictationInputMethodService"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 3144
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring setInputMethod(null, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") because the specified id not found in enabled IMEs."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3146
    return-void

    .line 3151
    :cond_6
    const-string v5, "The undocumented behavior that setInputMethod() accepts null token when the caller has WRITE_SECURE_SETTINGS is deprecated. This behavior may be completely removed in a future version.  Update secure settings directly instead."

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3155
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 3156
    .local v5, "resolver":Landroid/content/ContentResolver;
    const/4 v6, -0x1

    const-string/jumbo v7, "selected_input_method_subtype"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3158
    const-string v6, "default_input_method"

    invoke-static {v5, v6, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3160
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setInputMethod: Putting WRITE_SECURE_SETTINGS for id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3162
    return-void

    .line 3165
    .end local v1    # "fallbackContext":Landroid/content/Context;
    .end local v2    # "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v3    # "numImis":I
    .end local v4    # "found":Z
    .end local v5    # "resolver":Landroid/content/ContentResolver;
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling InputMethodPrivilegedOperationsRegistry.get(token).setInputMethod(id) token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3168
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->setInputMethod(Ljava/lang/String;)V

    .line 3169
    return-void
.end method

.method public whitelist setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3193
    if-nez p1, :cond_0

    .line 3194
    const-string v0, "InputMethodManager"

    const-string/jumbo v1, "setInputMethodAndSubtype() does not accept null token on Android Q and later."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3196
    return-void

    .line 3199
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->SUPPORT_DIRECT_WRITING:Z

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 3200
    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "voice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3201
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->overrideDirectWritingFlag()V

    .line 3204
    :cond_1
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->setInputMethodAndSubtype(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 3205
    return-void
.end method

.method public greylist-max-r setUpdateCursorAnchorInfoMode(I)V
    .locals 2
    .param p1, "flags"    # I

    .line 2952
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2953
    :try_start_0
    iput p1, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    .line 2954
    monitor-exit v0

    .line 2955
    return-void

    .line 2954
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist shouldOfferSwitchingToNextInputMethod(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "imeToken"    # Landroid/os/IBinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3754
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    .line 3755
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->shouldOfferSwitchingToNextInputMethod()Z

    move-result v0

    .line 3754
    return v0
.end method

.method public whitelist showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V
    .locals 2
    .param p1, "imiId"    # Ljava/lang/String;

    .line 3528
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/view/IInputMethodManager;->showInputMethodAndSubtypeEnablerFromClient(Lcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3531
    nop

    .line 3532
    return-void

    .line 3529
    :catch_0
    move-exception v0

    .line 3530
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist showInputMethodPicker()V
    .locals 2

    .line 3465
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 3466
    :try_start_0
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPickerLocked()V

    .line 3467
    monitor-exit v0

    .line 3468
    return-void

    .line 3467
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist showInputMethodPickerFromSystem(ZI)V
    .locals 3
    .param p1, "showAuxiliarySubtypes"    # Z
    .param p2, "displayId"    # I

    .line 3479
    if-eqz p1, :cond_0

    .line 3480
    const/4 v0, 0x1

    goto :goto_0

    .line 3481
    :cond_0
    const/4 v0, 0x2

    :goto_0
    nop

    .line 3483
    .local v0, "mode":I
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v1, v2, v0, p2}, Lcom/android/internal/view/IInputMethodManager;->showInputMethodPickerFromSystem(Lcom/android/internal/view/IInputMethodClient;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3486
    nop

    .line 3487
    return-void

    .line 3484
    :catch_0
    move-exception v1

    .line 3485
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist showSideSyncSoftInput(I)V
    .locals 4
    .param p1, "showFlags"    # I

    .line 4175
    const-string v0, "InputMethodManager"

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v1, :cond_0

    .line 4177
    :try_start_0
    const-string/jumbo v1, "showSideSyncSoftInput(I)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4178
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputMethodSession;->showSideSyncSoftInput(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4181
    goto :goto_0

    .line 4179
    :catch_0
    move-exception v1

    .line 4180
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showSideSyncSoftInput(I) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4183
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist showSoftInput(Landroid/view/View;I)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flags"    # I

    .line 1866
    const-string v0, "IMM_LC"

    const-string/jumbo v1, "showSoftInput(View,I)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1871
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1872
    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v1

    return v1

    .line 1875
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v1

    return v1
.end method

.method public whitelist showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 1937
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;I)Z

    move-result v0

    return v0
.end method

.method public whitelist showSoftInputFromInputMethod(Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ssifim() - flag : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IMM_LC"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3251
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->showMySoftInput(I)V

    .line 3252
    return-void
.end method

.method public greylist-max-p showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V
    .locals 9
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2004
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2006
    :try_start_0
    const-string v1, "InputMethodManager"

    const-string/jumbo v2, "showSoftInputUnchecked() is a hidden method, which will be removed soon. If you are using androidx.appcompat.widget.SearchView, please update to version 26.0 or newer version."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2015
    :cond_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/16 v2, 0x1f

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager$H;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 2016
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    .line 2018
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    const/4 v8, 0x0

    .line 2016
    move v6, p1

    move-object v7, p2

    invoke-interface/range {v3 .. v8}, Lcom/android/internal/view/IInputMethodManager;->showSoftInput(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2024
    nop

    .line 2025
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2026
    return-void

    .line 2010
    :cond_1
    :goto_0
    :try_start_2
    const-string v1, "InputMethodManager"

    const-string v2, "No current root view, ignoring showSoftInputUnchecked()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2011
    :try_start_3
    monitor-exit v0

    return-void

    .line 2025
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 2022
    :catch_0
    move-exception v1

    .line 2023
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/view/inputmethod/InputMethodManager;
    .end local p1    # "flags":I
    .end local p2    # "resultReceiver":Landroid/os/ResultReceiver;
    throw v2

    .line 2025
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/view/inputmethod/InputMethodManager;
    .restart local p1    # "flags":I
    .restart local p2    # "resultReceiver":Landroid/os/ResultReceiver;
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public whitelist showStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 1
    .param p1, "imeToken"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "iconId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1598
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    .line 1599
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->updateStatusIconAsync(Ljava/lang/String;I)V

    .line 1600
    return-void
.end method

.method greylist-max-o startInputInner(ILandroid/os/IBinder;III)Z
    .locals 27
    .param p1, "startInputReason"    # I
    .param p2, "windowGainingFocus"    # Landroid/os/IBinder;
    .param p3, "startInputFlags"    # I
    .param p4, "softInputMode"    # I
    .param p5, "windowFlags"    # I

    .line 2397
    move-object/from16 v1, p0

    move/from16 v14, p1

    iget-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 2398
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    .line 2405
    .local v15, "view":Landroid/view/View;
    const/4 v13, 0x0

    if-nez v15, :cond_0

    .line 2407
    monitor-exit v2

    return v13

    .line 2409
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    .line 2411
    if-nez p2, :cond_3

    .line 2412
    invoke-virtual {v15}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 2413
    .end local p2    # "windowGainingFocus":Landroid/os/IBinder;
    .local v0, "windowGainingFocus":Landroid/os/IBinder;
    if-nez v0, :cond_1

    .line 2414
    const-string v2, "InputMethodManager"

    const-string v3, "ABORT input: ServedView must be attached to a Window"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    return v13

    .line 2417
    :cond_1
    move/from16 v3, p3

    invoke-direct {v1, v15, v3}, Landroid/view/inputmethod/InputMethodManager;->getStartInputFlags(Landroid/view/View;I)I

    move-result v2

    .line 2423
    .end local p3    # "startInputFlags":I
    .local v2, "startInputFlags":I
    invoke-virtual {v15}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    .line 2424
    .local v3, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-nez v3, :cond_2

    .line 2425
    const-string v4, "InputMethodManager"

    const-string/jumbo v5, "startInputInner: viewRootImpl is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2426
    return v13

    .line 2428
    :cond_2
    iget-object v4, v3, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2429
    .end local p4    # "softInputMode":I
    .local v4, "softInputMode":I
    iget-object v5, v3, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object/from16 v16, v0

    move/from16 v17, v4

    move/from16 v18, v5

    .end local p5    # "windowFlags":I
    .local v5, "windowFlags":I
    goto :goto_0

    .line 2411
    .end local v0    # "windowGainingFocus":Landroid/os/IBinder;
    .end local v2    # "startInputFlags":I
    .end local v3    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .end local v4    # "softInputMode":I
    .end local v5    # "windowFlags":I
    .restart local p2    # "windowGainingFocus":Landroid/os/IBinder;
    .restart local p3    # "startInputFlags":I
    .restart local p4    # "softInputMode":I
    .restart local p5    # "windowFlags":I
    :cond_3
    move/from16 v3, p3

    move-object/from16 v16, p2

    move/from16 v17, p4

    move/from16 v18, p5

    move v2, v3

    .line 2438
    .end local p2    # "windowGainingFocus":Landroid/os/IBinder;
    .end local p3    # "startInputFlags":I
    .end local p4    # "softInputMode":I
    .end local p5    # "windowFlags":I
    .restart local v2    # "startInputFlags":I
    .local v16, "windowGainingFocus":Landroid/os/IBinder;
    .local v17, "softInputMode":I
    .local v18, "windowFlags":I
    :goto_0
    invoke-virtual {v15}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v12

    .line 2439
    .local v12, "vh":Landroid/os/Handler;
    if-nez v12, :cond_4

    .line 2446
    const-string v0, "InputMethodManager"

    const-string v3, "ABORT input: no handler for view! Close current input."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    invoke-virtual/range {p0 .. p0}, Landroid/view/inputmethod/InputMethodManager;->closeCurrentInput()V

    .line 2449
    return v13

    .line 2451
    :cond_4
    invoke-virtual {v12}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v0, v3, :cond_5

    .line 2455
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, v1, v14}, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda3;-><init>(Landroid/view/inputmethod/InputMethodManager;I)V

    invoke-virtual {v12, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2456
    return v13

    .line 2462
    :cond_5
    new-instance v0, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v0}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    move-object v11, v0

    .line 2466
    .local v11, "tba":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 2467
    invoke-virtual {v15}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    iput-object v0, v11, Landroid/view/inputmethod/EditorInfo;->autofillId:Landroid/view/autofill/AutofillId;

    .line 2468
    invoke-virtual {v15}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, v11, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    .line 2469
    invoke-virtual {v15, v11}, Landroid/view/View;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v10

    .line 2479
    .local v10, "ic":Landroid/view/inputmethod/InputConnection;
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->SUPPORT_DIRECT_WRITING:Z

    if-eqz v0, :cond_6

    .line 2480
    instance-of v0, v15, Landroid/widget/TextView;

    if-eqz v0, :cond_6

    move-object v0, v15

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getImeOptions()I

    move-result v0

    iget v3, v11, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-eq v0, v3, :cond_6

    .line 2481
    move-object v0, v15

    check-cast v0, Landroid/widget/TextView;

    iget v3, v11, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->updateImeOptions(I)V

    .line 2487
    :cond_6
    iget-object v0, v11, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_7

    .line 2488
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v11, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 2490
    :cond_7
    invoke-direct {v1, v15, v11}, Landroid/view/inputmethod/InputMethodManager;->putInfoInExtra(Landroid/view/View;Landroid/view/inputmethod/EditorInfo;)V

    .line 2493
    const/16 v19, 0x0

    .line 2494
    .local v19, "res":Lcom/android/internal/inputmethod/InputBindResult;
    iget-object v9, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v9

    .line 2497
    :try_start_1
    invoke-direct/range {p0 .. p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    move-object v8, v0

    .line 2498
    .local v8, "servedView":Landroid/view/View;
    if-ne v8, v15, :cond_15

    :try_start_2
    iget-boolean v0, v1, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    if-nez v0, :cond_8

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move-object v14, v10

    move-object/from16 v21, v12

    move/from16 v22, v13

    move-object v4, v15

    move-object v15, v11

    goto/16 :goto_b

    .line 2516
    :cond_8
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    if-nez v0, :cond_9

    .line 2517
    or-int/lit8 v2, v2, 0x4

    move/from16 v20, v2

    goto :goto_1

    .line 2516
    :cond_9
    move/from16 v20, v2

    .line 2521
    .end local v2    # "startInputFlags":I
    .local v20, "startInputFlags":I
    :goto_1
    :try_start_3
    invoke-virtual {v11}, Landroid/view/inputmethod/EditorInfo;->createCopyInternal()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    iput-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 2523
    iput-boolean v13, v1, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 2524
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    .line 2525
    :try_start_4
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->deactivate()V

    .line 2526
    iput-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    .line 2527
    iput-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionHandler:Landroid/os/Handler;

    .line 2530
    :cond_a
    if-eqz v10, :cond_c

    .line 2531
    iget v0, v11, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iput v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    .line 2532
    iget v0, v11, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    iput v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    .line 2533
    iget v3, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    iput v3, v1, Landroid/view/inputmethod/InputMethodManager;->mInitialSelStart:I

    .line 2534
    iput v0, v1, Landroid/view/inputmethod/InputMethodManager;->mInitialSelEnd:I

    .line 2535
    const/4 v0, -0x1

    iput v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    .line 2536
    iput v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    .line 2537
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2538
    iput-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2539
    const/4 v3, 0x0

    .line 2541
    .local v3, "handler":Landroid/os/Handler;
    :try_start_5
    invoke-interface {v10}, Landroid/view/inputmethod/InputConnection;->getHandler()Landroid/os/Handler;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/AbstractMethodError; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v3, v0

    .line 2544
    goto :goto_2

    .line 2542
    :catch_0
    move-exception v0

    .line 2545
    :goto_2
    move-object v0, v3

    .line 2546
    .local v0, "icHandler":Landroid/os/Handler;
    :try_start_6
    iput-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionHandler:Landroid/os/Handler;

    .line 2547
    new-instance v4, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    .line 2548
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    goto :goto_3

    :cond_b
    invoke-virtual {v12}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    :goto_3
    invoke-direct {v4, v5, v10, v1, v15}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;-><init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v3, v4

    .line 2549
    .local v3, "servedInputConnection":Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
    move-object v7, v0

    move-object v6, v3

    goto :goto_4

    .line 2618
    .end local v0    # "icHandler":Landroid/os/Handler;
    .end local v3    # "servedInputConnection":Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
    .end local v8    # "servedView":Landroid/view/View;
    :catchall_0
    move-exception v0

    move-object/from16 v25, v9

    move-object/from16 v21, v12

    move v5, v14

    move-object v4, v15

    move/from16 v2, v20

    move-object v14, v10

    move-object v15, v11

    goto/16 :goto_d

    .line 2550
    .restart local v8    # "servedView":Landroid/view/View;
    :cond_c
    const/4 v3, 0x0

    .line 2551
    .restart local v3    # "servedInputConnection":Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
    const/4 v0, 0x0

    .line 2552
    .restart local v0    # "icHandler":Landroid/os/Handler;
    :try_start_7
    iput-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionHandler:Landroid/os/Handler;

    move-object v7, v0

    move-object v6, v3

    .line 2554
    .end local v0    # "icHandler":Landroid/os/Handler;
    .end local v3    # "servedInputConnection":Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
    .local v6, "servedInputConnection":Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
    .local v7, "icHandler":Landroid/os/Handler;
    :goto_4
    iput-object v6, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 2563
    :try_start_8
    const-string v0, "InputMethodManager"

    const-string/jumbo v3, "startInputInner - mService.startInputOrWindowGainedFocus"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2565
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v4, v1, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    .line 2568
    if-nez v6, :cond_d

    move-object/from16 v21, v2

    goto :goto_5

    .line 2569
    :cond_d
    invoke-virtual {v6}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->asIRemoteAccessibilityInputConnection()Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    move-result-object v2

    move-object/from16 v21, v2

    .line 2570
    :goto_5
    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v5, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v3, v1, Landroid/view/inputmethod/InputMethodManager;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 2565
    move-object v2, v0

    move-object v0, v3

    move/from16 v3, p1

    move/from16 v22, v5

    move-object/from16 v5, v16

    move-object/from16 v23, v6

    .end local v6    # "servedInputConnection":Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
    .local v23, "servedInputConnection":Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
    move/from16 v6, v20

    move-object v14, v7

    .end local v7    # "icHandler":Landroid/os/Handler;
    .local v14, "icHandler":Landroid/os/Handler;
    move/from16 v7, v17

    move-object/from16 v24, v8

    .end local v8    # "servedView":Landroid/view/View;
    .local v24, "servedView":Landroid/view/View;
    move/from16 v8, v18

    move-object/from16 v25, v9

    move-object v9, v11

    move-object/from16 p2, v14

    move-object v14, v10

    .end local v10    # "ic":Landroid/view/inputmethod/InputConnection;
    .local v14, "ic":Landroid/view/inputmethod/InputConnection;
    .local p2, "icHandler":Landroid/os/Handler;
    move-object/from16 v10, v23

    move-object/from16 v26, v15

    move-object v15, v11

    .end local v11    # "tba":Landroid/view/inputmethod/EditorInfo;
    .local v15, "tba":Landroid/view/inputmethod/EditorInfo;
    .local v26, "view":Landroid/view/View;
    move-object/from16 v11, v21

    move-object/from16 v21, v12

    .end local v12    # "vh":Landroid/os/Handler;
    .local v21, "vh":Landroid/os/Handler;
    move/from16 v12, v22

    move/from16 v22, v13

    move-object v13, v0

    :try_start_9
    invoke-interface/range {v2 .. v13}, Lcom/android/internal/view/IInputMethodManager;->startInputOrWindowGainedFocus(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;ILandroid/window/ImeOnBackInvokedDispatcher;)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object v2, v0

    .line 2574
    .end local v19    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .local v2, "res":Lcom/android/internal/inputmethod/InputBindResult;
    nop

    .line 2576
    if-nez v2, :cond_e

    .line 2577
    :try_start_a
    const-string v0, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startInputOrWindowGainedFocus must not return null. startInputReason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2579
    invoke-static/range {p1 .. p1}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputReasonToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " editorInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " startInputFlags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2582
    invoke-static/range {v20 .. v20}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputFlagsToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2577
    invoke-static {v0, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    monitor-exit v25
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    return v22

    .line 2618
    .end local v23    # "servedInputConnection":Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
    .end local v24    # "servedView":Landroid/view/View;
    .end local p2    # "icHandler":Landroid/os/Handler;
    :catchall_1
    move-exception v0

    move/from16 v5, p1

    move-object/from16 v19, v2

    move/from16 v2, v20

    move-object/from16 v4, v26

    goto/16 :goto_d

    .line 2585
    .restart local v23    # "servedInputConnection":Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
    .restart local v24    # "servedView":Landroid/view/View;
    .restart local p2    # "icHandler":Landroid/os/Handler;
    :cond_e
    :try_start_b
    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputBindResult;->getVirtualDisplayToScreenMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mVirtualDisplayToScreenMatrix:Landroid/graphics/Matrix;

    .line 2586
    iget-boolean v0, v2, Lcom/android/internal/inputmethod/InputBindResult;->isInputMethodSuppressingSpellChecker:Z

    iput-boolean v0, v1, Landroid/view/inputmethod/InputMethodManager;->mIsInputMethodSuppressingSpellChecker:Z

    .line 2587
    iget-object v0, v2, Lcom/android/internal/inputmethod/InputBindResult;->id:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v0, :cond_11

    .line 2588
    :try_start_c
    iget-object v0, v2, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v1, v0}, Landroid/view/inputmethod/InputMethodManager;->setInputChannelLocked(Landroid/view/InputChannel;)V

    .line 2589
    iget v0, v2, Lcom/android/internal/inputmethod/InputBindResult;->sequence:I

    iput v0, v1, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    .line 2590
    iget-object v0, v2, Lcom/android/internal/inputmethod/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    iput-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    .line 2591
    iget-object v0, v2, Lcom/android/internal/inputmethod/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodSessionWrapper;->createOrNull(Lcom/android/internal/view/IInputMethodSession;)Landroid/view/inputmethod/InputMethodSessionWrapper;

    move-result-object v0

    iput-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    .line 2592
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2593
    iget-object v0, v2, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    if-eqz v0, :cond_10

    .line 2594
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v3, v2, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_10

    .line 2595
    iget-object v3, v2, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    .line 2597
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    .line 2596
    invoke-static {v3}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->createOrNull(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;)Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;

    move-result-object v3

    .line 2598
    .local v3, "wrapper":Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;
    if-eqz v3, :cond_f

    .line 2599
    iget-object v4, v1, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    iget-object v5, v2, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    .line 2600
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 2599
    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2594
    .end local v3    # "wrapper":Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 2604
    .end local v0    # "i":I
    :cond_10
    iget-object v0, v2, Lcom/android/internal/inputmethod/InputBindResult;->id:Ljava/lang/String;

    iput-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_7

    .line 2605
    :cond_11
    :try_start_d
    iget-object v0, v2, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-eqz v0, :cond_12

    :try_start_e
    iget-object v0, v2, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    iget-object v3, v1, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    if-eq v0, v3, :cond_12

    .line 2606
    iget-object v0, v2, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 2608
    :cond_12
    :goto_7
    :try_start_f
    iget v0, v2, Lcom/android/internal/inputmethod/InputBindResult;->result:I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_8

    .line 2610
    :pswitch_0
    :try_start_10
    iput-boolean v3, v1, Landroid/view/inputmethod/InputMethodManager;->mRestartOnNextWindowFocus:Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 2613
    :goto_8
    :try_start_11
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    if-eqz v0, :cond_13

    .line 2614
    :try_start_12
    iget-object v4, v1, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    if-eqz v4, :cond_13

    .line 2615
    invoke-virtual {v4, v0}, Landroid/view/inputmethod/InputMethodSessionWrapper;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 2618
    .end local v23    # "servedInputConnection":Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
    .end local v24    # "servedView":Landroid/view/View;
    :cond_13
    :try_start_13
    monitor-exit v25
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 2621
    if-eqz v14, :cond_14

    if-eqz v2, :cond_14

    iget-object v0, v2, Lcom/android/internal/inputmethod/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v0, :cond_14

    .line 2626
    move-object/from16 v5, p2

    move-object/from16 v4, v26

    .end local v26    # "view":Landroid/view/View;
    .end local p2    # "icHandler":Landroid/os/Handler;
    .local v4, "view":Landroid/view/View;
    .local v5, "icHandler":Landroid/os/Handler;
    invoke-direct {v1, v14, v15, v5, v4}, Landroid/view/inputmethod/InputMethodManager;->reportInputConnectionOpened(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/os/Handler;Landroid/view/View;)V

    goto :goto_9

    .line 2621
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "icHandler":Landroid/os/Handler;
    .restart local v26    # "view":Landroid/view/View;
    .restart local p2    # "icHandler":Landroid/os/Handler;
    :cond_14
    move-object/from16 v5, p2

    move-object/from16 v4, v26

    .line 2629
    .end local v26    # "view":Landroid/view/View;
    .end local p2    # "icHandler":Landroid/os/Handler;
    .restart local v4    # "view":Landroid/view/View;
    .restart local v5    # "icHandler":Landroid/os/Handler;
    :goto_9
    return v3

    .line 2618
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "icHandler":Landroid/os/Handler;
    .restart local v26    # "view":Landroid/view/View;
    :catchall_2
    move-exception v0

    move-object/from16 v4, v26

    move/from16 v5, p1

    move-object/from16 v19, v2

    move/from16 v2, v20

    .end local v26    # "view":Landroid/view/View;
    .restart local v4    # "view":Landroid/view/View;
    goto/16 :goto_d

    .end local v2    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .end local v4    # "view":Landroid/view/View;
    .restart local v19    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .restart local v26    # "view":Landroid/view/View;
    :catchall_3
    move-exception v0

    move-object/from16 v4, v26

    move/from16 v5, p1

    move/from16 v2, v20

    .end local v26    # "view":Landroid/view/View;
    .restart local v4    # "view":Landroid/view/View;
    goto/16 :goto_d

    .line 2572
    .end local v4    # "view":Landroid/view/View;
    .restart local v23    # "servedInputConnection":Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
    .restart local v24    # "servedView":Landroid/view/View;
    .restart local v26    # "view":Landroid/view/View;
    .restart local p2    # "icHandler":Landroid/os/Handler;
    :catch_1
    move-exception v0

    move-object/from16 v5, p2

    move-object/from16 v4, v26

    .end local v26    # "view":Landroid/view/View;
    .end local p2    # "icHandler":Landroid/os/Handler;
    .restart local v4    # "view":Landroid/view/View;
    .restart local v5    # "icHandler":Landroid/os/Handler;
    goto :goto_a

    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "icHandler":Landroid/os/Handler;
    .end local v14    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v21    # "vh":Landroid/os/Handler;
    .end local v23    # "servedInputConnection":Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
    .end local v24    # "servedView":Landroid/view/View;
    .restart local v6    # "servedInputConnection":Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
    .restart local v7    # "icHandler":Landroid/os/Handler;
    .restart local v8    # "servedView":Landroid/view/View;
    .restart local v10    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v11    # "tba":Landroid/view/inputmethod/EditorInfo;
    .restart local v12    # "vh":Landroid/os/Handler;
    .local v15, "view":Landroid/view/View;
    :catch_2
    move-exception v0

    move-object/from16 v23, v6

    move-object v5, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move-object v14, v10

    move-object/from16 v21, v12

    move-object v4, v15

    move-object v15, v11

    .line 2573
    .end local v6    # "servedInputConnection":Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
    .end local v7    # "icHandler":Landroid/os/Handler;
    .end local v8    # "servedView":Landroid/view/View;
    .end local v10    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v11    # "tba":Landroid/view/inputmethod/EditorInfo;
    .end local v12    # "vh":Landroid/os/Handler;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v4    # "view":Landroid/view/View;
    .restart local v5    # "icHandler":Landroid/os/Handler;
    .restart local v14    # "ic":Landroid/view/inputmethod/InputConnection;
    .local v15, "tba":Landroid/view/inputmethod/EditorInfo;
    .restart local v21    # "vh":Landroid/os/Handler;
    .restart local v23    # "servedInputConnection":Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
    .restart local v24    # "servedView":Landroid/view/View;
    :goto_a
    :try_start_14
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v4    # "view":Landroid/view/View;
    .end local v14    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v15    # "tba":Landroid/view/inputmethod/EditorInfo;
    .end local v16    # "windowGainingFocus":Landroid/os/IBinder;
    .end local v17    # "softInputMode":I
    .end local v18    # "windowFlags":I
    .end local v19    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .end local v20    # "startInputFlags":I
    .end local v21    # "vh":Landroid/os/Handler;
    .end local p0    # "this":Landroid/view/inputmethod/InputMethodManager;
    .end local p1    # "startInputReason":I
    throw v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 2618
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v5    # "icHandler":Landroid/os/Handler;
    .end local v23    # "servedInputConnection":Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
    .end local v24    # "servedView":Landroid/view/View;
    .restart local v4    # "view":Landroid/view/View;
    .restart local v14    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v15    # "tba":Landroid/view/inputmethod/EditorInfo;
    .restart local v16    # "windowGainingFocus":Landroid/os/IBinder;
    .restart local v17    # "softInputMode":I
    .restart local v18    # "windowFlags":I
    .restart local v19    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .restart local v20    # "startInputFlags":I
    .restart local v21    # "vh":Landroid/os/Handler;
    .restart local p0    # "this":Landroid/view/inputmethod/InputMethodManager;
    .restart local p1    # "startInputReason":I
    :catchall_4
    move-exception v0

    move/from16 v5, p1

    move/from16 v2, v20

    goto/16 :goto_d

    .end local v4    # "view":Landroid/view/View;
    .end local v14    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v21    # "vh":Landroid/os/Handler;
    .restart local v10    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v11    # "tba":Landroid/view/inputmethod/EditorInfo;
    .restart local v12    # "vh":Landroid/os/Handler;
    .local v15, "view":Landroid/view/View;
    :catchall_5
    move-exception v0

    move-object/from16 v25, v9

    move-object v14, v10

    move-object/from16 v21, v12

    move-object v4, v15

    move-object v15, v11

    move/from16 v5, p1

    move/from16 v2, v20

    .end local v10    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v11    # "tba":Landroid/view/inputmethod/EditorInfo;
    .end local v12    # "vh":Landroid/os/Handler;
    .restart local v4    # "view":Landroid/view/View;
    .restart local v14    # "ic":Landroid/view/inputmethod/InputConnection;
    .local v15, "tba":Landroid/view/inputmethod/EditorInfo;
    .restart local v21    # "vh":Landroid/os/Handler;
    goto :goto_d

    .end local v4    # "view":Landroid/view/View;
    .end local v14    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v20    # "startInputFlags":I
    .end local v21    # "vh":Landroid/os/Handler;
    .local v2, "startInputFlags":I
    .restart local v10    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v11    # "tba":Landroid/view/inputmethod/EditorInfo;
    .restart local v12    # "vh":Landroid/os/Handler;
    .local v15, "view":Landroid/view/View;
    :catchall_6
    move-exception v0

    move-object/from16 v25, v9

    move-object v14, v10

    move-object/from16 v21, v12

    move-object v4, v15

    move-object v15, v11

    move/from16 v5, p1

    .end local v10    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v11    # "tba":Landroid/view/inputmethod/EditorInfo;
    .end local v12    # "vh":Landroid/os/Handler;
    .restart local v4    # "view":Landroid/view/View;
    .restart local v14    # "ic":Landroid/view/inputmethod/InputConnection;
    .local v15, "tba":Landroid/view/inputmethod/EditorInfo;
    .restart local v21    # "vh":Landroid/os/Handler;
    goto :goto_d

    .line 2498
    .end local v4    # "view":Landroid/view/View;
    .end local v14    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v21    # "vh":Landroid/os/Handler;
    .restart local v8    # "servedView":Landroid/view/View;
    .restart local v10    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v11    # "tba":Landroid/view/inputmethod/EditorInfo;
    .restart local v12    # "vh":Landroid/os/Handler;
    .local v15, "view":Landroid/view/View;
    :cond_15
    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move-object v14, v10

    move-object/from16 v21, v12

    move/from16 v22, v13

    move-object v4, v15

    move-object v15, v11

    .line 2504
    .end local v8    # "servedView":Landroid/view/View;
    .end local v10    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v11    # "tba":Landroid/view/inputmethod/EditorInfo;
    .end local v12    # "vh":Landroid/os/Handler;
    .restart local v4    # "view":Landroid/view/View;
    .restart local v14    # "ic":Landroid/view/inputmethod/InputConnection;
    .local v15, "tba":Landroid/view/inputmethod/EditorInfo;
    .restart local v21    # "vh":Landroid/os/Handler;
    .restart local v24    # "servedView":Landroid/view/View;
    :goto_b
    :try_start_15
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    if-eqz v0, :cond_16

    const/4 v3, 0x6

    move/from16 v5, p1

    if-ne v5, v3, :cond_17

    .line 2507
    nop

    .line 2508
    :try_start_16
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iget-object v3, v1, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v6, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionHandler:Landroid/os/Handler;

    .line 2507
    invoke-direct {v1, v0, v3, v6, v4}, Landroid/view/inputmethod/InputMethodManager;->reportInputConnectionOpened(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/os/Handler;Landroid/view/View;)V

    goto :goto_c

    .line 2504
    :cond_16
    move/from16 v5, p1

    .line 2511
    :cond_17
    :goto_c
    monitor-exit v25

    return v22

    .line 2618
    .end local v24    # "servedView":Landroid/view/View;
    :catchall_7
    move-exception v0

    move/from16 v5, p1

    goto :goto_d

    .end local v4    # "view":Landroid/view/View;
    .end local v14    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v21    # "vh":Landroid/os/Handler;
    .restart local v10    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v11    # "tba":Landroid/view/inputmethod/EditorInfo;
    .restart local v12    # "vh":Landroid/os/Handler;
    .local v15, "view":Landroid/view/View;
    :catchall_8
    move-exception v0

    move-object/from16 v25, v9

    move-object/from16 v21, v12

    move v5, v14

    move-object v4, v15

    move-object v14, v10

    move-object v15, v11

    .end local v10    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v11    # "tba":Landroid/view/inputmethod/EditorInfo;
    .end local v12    # "vh":Landroid/os/Handler;
    .restart local v4    # "view":Landroid/view/View;
    .restart local v14    # "ic":Landroid/view/inputmethod/InputConnection;
    .local v15, "tba":Landroid/view/inputmethod/EditorInfo;
    .restart local v21    # "vh":Landroid/os/Handler;
    :goto_d
    monitor-exit v25
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    throw v0

    :catchall_9
    move-exception v0

    goto :goto_d

    .line 2409
    .end local v2    # "startInputFlags":I
    .end local v4    # "view":Landroid/view/View;
    .end local v14    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v15    # "tba":Landroid/view/inputmethod/EditorInfo;
    .end local v16    # "windowGainingFocus":Landroid/os/IBinder;
    .end local v17    # "softInputMode":I
    .end local v18    # "windowFlags":I
    .end local v19    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .end local v21    # "vh":Landroid/os/Handler;
    .local p2, "windowGainingFocus":Landroid/os/IBinder;
    .restart local p3    # "startInputFlags":I
    .restart local p4    # "softInputMode":I
    .restart local p5    # "windowFlags":I
    :catchall_a
    move-exception v0

    move/from16 v3, p3

    move v5, v14

    :goto_e
    :try_start_17
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    throw v0

    :catchall_b
    move-exception v0

    goto :goto_e

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist startStylusHandwriting(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .line 2134
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2135
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 2136
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->startStylusHandwriting(Landroid/view/View;)V

    .line 2138
    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2140
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "stylus_handwriting_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 2142
    const-string v1, "InputMethodManager"

    const-string v2, "Ignoring startStylusHandwriting(view) as stylus handwriting is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    return-void

    .line 2146
    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2147
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 2148
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2149
    const-string v2, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring startStylusHandwriting() as view="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not served."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    monitor-exit v1

    return-void

    .line 2153
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eq v2, v3, :cond_3

    .line 2154
    const-string v2, "InputMethodManager"

    const-string v3, "Ignoring startStylusHandwriting: View\'s window does not have focus."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    monitor-exit v1

    return-void

    .line 2157
    :cond_3
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getDelegate()Landroid/view/inputmethod/InputMethodManager$DelegateImpl;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->hasActiveConnection(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2161
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    const/4 v3, 0x3

    const/4 v4, 0x4

    iget v5, p0, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->requestCursorUpdatesFromImm(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2168
    :cond_4
    :try_start_1
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v2, v3}, Lcom/android/internal/view/IInputMethodManager;->startStylusHandwriting(Lcom/android/internal/view/IInputMethodClient;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2173
    nop

    .line 2174
    :try_start_2
    monitor-exit v1

    .line 2175
    return-void

    .line 2171
    :catch_0
    move-exception v2

    .line 2172
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v0    # "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    .end local p0    # "this":Landroid/view/inputmethod/InputMethodManager;
    .end local p1    # "view":Landroid/view/View;
    throw v3

    .line 2174
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    .restart local p0    # "this":Landroid/view/inputmethod/InputMethodManager;
    .restart local p1    # "view":Landroid/view/View;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public whitelist switchToLastInputMethod(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "imeToken"    # Landroid/os/IBinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3716
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->switchToPreviousInputMethod()Z

    move-result v0

    return v0
.end method

.method public whitelist switchToNextInputMethod(Landroid/os/IBinder;Z)Z
    .locals 1
    .param p1, "imeToken"    # Landroid/os/IBinder;
    .param p2, "onlyCurrentIme"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3734
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    .line 3735
    invoke-virtual {v0, p2}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->switchToNextInputMethod(Z)Z

    move-result v0

    .line 3734
    return v0
.end method

.method public whitelist toggleSoftInput(II)V
    .locals 0
    .param p1, "showFlags"    # I
    .param p2, "hideFlags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2239
    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->semToggleSoftInput(II)V

    .line 2240
    return-void
.end method

.method public whitelist toggleSoftInputFromWindow(Landroid/os/IBinder;II)V
    .locals 5
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "showFlags"    # I
    .param p3, "hideFlags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2198
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v1, "InputMethodManager#toggleSoftInputFromWindow"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 2201
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2202
    :try_start_0
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v1

    .line 2203
    .local v1, "servedView":Landroid/view/View;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eq v2, p1, :cond_0

    goto :goto_0

    .line 2211
    :cond_0
    const-string v2, "IMM_LC"

    const-string/jumbo v3, "tsifw()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2213
    invoke-virtual {p0, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 2214
    .end local v1    # "servedView":Landroid/view/View;
    monitor-exit v0

    .line 2215
    return-void

    .line 2205
    .restart local v1    # "servedView":Landroid/view/View;
    :cond_1
    :goto_0
    const-string v2, "IMM_LC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tsifw() ignore mServedView == null or mServedView.getWindowToken() != windowToken, mServedView :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2206
    if-eqz v1, :cond_2

    move-object v4, v1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2205
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    monitor-exit v0

    return-void

    .line 2214
    .end local v1    # "servedView":Landroid/view/View;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist undoMinimizeSoftInput()V
    .locals 5

    .line 4205
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 4207
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->undoMinimizeSoftInput()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4210
    goto :goto_0

    .line 4211
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 4208
    :catch_0
    move-exception v1

    .line 4209
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "undoMinimizeSoftInput "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4211
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 4212
    return-void

    .line 4211
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist unregisterImeConsumer(Landroid/view/ImeInsetsSourceConsumer;)V
    .locals 2
    .param p1, "imeInsetsConsumer"    # Landroid/view/ImeInsetsSourceConsumer;

    .line 2739
    if-eqz p1, :cond_1

    .line 2743
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2744
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mImeInsetsConsumer:Landroid/view/ImeInsetsSourceConsumer;

    if-ne v1, p1, :cond_0

    .line 2745
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mImeInsetsConsumer:Landroid/view/ImeInsetsSourceConsumer;

    .line 2747
    :cond_0
    monitor-exit v0

    .line 2748
    return-void

    .line 2747
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2740
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImeInsetsSourceConsumer cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist updateCursor(Landroid/view/View;IIII)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2976
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v6

    .line 2977
    .local v6, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v6, :cond_0

    .line 2978
    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateCursor(Landroid/view/View;IIII)V

    .line 2979
    return-void

    .line 2982
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2983
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2984
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    if-nez v1, :cond_1

    goto :goto_0

    .line 2989
    :cond_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2990
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2993
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodSessionWrapper;->updateCursor(Landroid/graphics/Rect;)V

    .line 2994
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2996
    :cond_2
    monitor-exit v0

    .line 2997
    return-void

    .line 2986
    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    .line 2996
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cursorAnchorInfo"    # Landroid/view/inputmethod/CursorAnchorInfo;

    .line 3004
    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    goto :goto_3

    .line 3008
    :cond_0
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 3009
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 3010
    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 3011
    return-void

    .line 3014
    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 3015
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 3016
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    if-nez v2, :cond_2

    goto :goto_2

    .line 3022
    :cond_2
    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    move v2, v3

    .line 3024
    .local v2, "isImmediate":Z
    if-nez v2, :cond_4

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    invoke-static {v3, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3031
    monitor-exit v1

    return-void

    .line 3034
    :cond_4
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mVirtualDisplayToScreenMatrix:Landroid/graphics/Matrix;

    if-eqz v3, :cond_5

    .line 3035
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    .line 3036
    invoke-static {p2, v3}, Landroid/view/inputmethod/CursorAnchorInfo;->createForAdditionalParentMatrix(Landroid/view/inputmethod/CursorAnchorInfo;Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v3

    .line 3035
    invoke-virtual {v4, v3}, Landroid/view/inputmethod/InputMethodSessionWrapper;->updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V

    goto :goto_1

    .line 3039
    :cond_5
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    invoke-virtual {v3, p2}, Landroid/view/inputmethod/InputMethodSessionWrapper;->updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 3041
    :goto_1
    iput-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    .line 3043
    iget v3, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    .line 3044
    .end local v2    # "isImmediate":Z
    monitor-exit v1

    .line 3045
    return-void

    .line 3018
    :cond_6
    :goto_2
    monitor-exit v1

    return-void

    .line 3044
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3005
    .end local v0    # "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    :cond_7
    :goto_3
    return-void
.end method

.method public whitelist updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "token"    # I
    .param p3, "text"    # Landroid/view/inputmethod/ExtractedText;

    .line 1815
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1816
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1817
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    .line 1818
    return-void

    .line 1821
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1822
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1823
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1824
    monitor-exit v1

    return-void

    .line 1827
    :cond_1
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    if-eqz v2, :cond_2

    .line 1828
    invoke-virtual {v2, p2, p3}, Landroid/view/inputmethod/InputMethodSessionWrapper;->updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    .line 1830
    :cond_2
    monitor-exit v1

    .line 1831
    return-void

    .line 1830
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public whitelist updateSelection(Landroid/view/View;IIII)V
    .locals 17
    .param p1, "view"    # Landroid/view/View;
    .param p2, "selStart"    # I
    .param p3, "selEnd"    # I
    .param p4, "candidatesStart"    # I
    .param p5, "candidatesEnd"    # I

    .line 2838
    move-object/from16 v1, p0

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    invoke-direct/range {p0 .. p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v16

    .line 2839
    .local v16, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v16, :cond_0

    .line 2840
    move-object/from16 v2, v16

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 2841
    return-void

    .line 2844
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2845
    iget-object v11, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v11

    .line 2846
    :try_start_0
    invoke-direct/range {p0 .. p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_5

    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    if-nez v0, :cond_1

    move-object v2, v11

    goto :goto_2

    .line 2851
    :cond_1
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->hasPendingInvalidation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2852
    monitor-exit v11

    return-void

    .line 2855
    :cond_2
    iget v3, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    if-ne v3, v12, :cond_4

    iget v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    if-ne v0, v13, :cond_4

    iget v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    if-ne v0, v14, :cond_4

    iget v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    if-eq v0, v15, :cond_3

    goto :goto_0

    :cond_3
    move-object v2, v11

    goto :goto_1

    .line 2863
    :cond_4
    :goto_0
    nop

    .line 2864
    .local v3, "oldSelStart":I
    iget v4, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    .line 2868
    .local v4, "oldSelEnd":I
    iput v12, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    .line 2869
    iput v13, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    .line 2870
    iput v14, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    .line 2871
    iput v15, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    .line 2872
    iget-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-virtual/range {v2 .. v8}, Landroid/view/inputmethod/InputMethodSessionWrapper;->updateSelection(IIIIII)V

    .line 2874
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v0

    move v6, v3

    move v7, v4

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move-object v2, v11

    move/from16 v11, p5

    :try_start_1
    invoke-direct/range {v5 .. v11}, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda2;-><init>(IIIIII)V

    invoke-direct {v1, v0}, Landroid/view/inputmethod/InputMethodManager;->forAccessibilitySessionsLocked(Ljava/util/function/Consumer;)V

    .line 2877
    .end local v3    # "oldSelStart":I
    .end local v4    # "oldSelEnd":I
    :goto_1
    monitor-exit v2

    .line 2878
    return-void

    .line 2846
    :cond_5
    move-object v2, v11

    .line 2848
    :goto_2
    monitor-exit v2

    return-void

    .line 2877
    :catchall_0
    move-exception v0

    move-object v2, v11

    :goto_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method public whitelist viewClicked(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2893
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2894
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 2895
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 2896
    return-void

    .line 2901
    :cond_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 2902
    :try_start_0
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v2

    .line 2903
    .local v2, "servedView":Landroid/view/View;
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getNextServedViewLocked()Landroid/view/View;

    move-result-object v3

    .line 2904
    .local v3, "nextServedView":Landroid/view/View;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2905
    if-eq v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v4, v1

    .line 2906
    .local v4, "focusChanged":Z
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2907
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v5

    .line 2908
    :try_start_1
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    if-nez v1, :cond_2

    goto :goto_1

    .line 2913
    :cond_2
    invoke-virtual {v1, v4}, Landroid/view/inputmethod/InputMethodSessionWrapper;->viewClicked(Z)V

    .line 2914
    monitor-exit v5

    .line 2915
    return-void

    .line 2910
    :cond_3
    :goto_1
    monitor-exit v5

    return-void

    .line 2914
    :catchall_0
    move-exception v1

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 2904
    .end local v2    # "servedView":Landroid/view/View;
    .end local v3    # "nextServedView":Landroid/view/View;
    .end local v4    # "focusChanged":Z
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public greylist-max-q windowDismissed(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "appWindowToken"    # Landroid/os/IBinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2671
    return-void
.end method
