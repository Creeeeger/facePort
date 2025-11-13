.class public final Landroid/view/autofill/AutofillManager;
.super Ljava/lang/Object;
.source "AutofillManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/autofill/AutofillManager$AutofillClient;,
        Landroid/view/autofill/AutofillManager$CompatibilityBridge;,
        Landroid/view/autofill/AutofillManager$TrackedViews;,
        Landroid/view/autofill/AutofillManager$AutofillCallback;,
        Landroid/view/autofill/AutofillManager$AutofillManagerClient;,
        Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient;,
        Landroid/view/autofill/AutofillManager$AutofillCommitReason;,
        Landroid/view/autofill/AutofillManager$SmartSuggestionMode;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_RESPONSE_EXPIRED:I = 0x5

.field public static final greylist-max-o ACTION_START_SESSION:I = 0x1

.field public static final greylist-max-o ACTION_VALUE_CHANGED:I = 0x4

.field public static final greylist-max-o ACTION_VIEW_ENTERED:I = 0x2

.field public static final greylist-max-o ACTION_VIEW_EXITED:I = 0x3

.field public static final blacklist ANY_HINT:Ljava/lang/String; = "any"

.field private static final greylist-max-o AUTHENTICATION_ID_DATASET_ID_MASK:I = 0xffff

.field private static final greylist-max-o AUTHENTICATION_ID_DATASET_ID_SHIFT:I = 0x10

.field public static final greylist-max-o AUTHENTICATION_ID_DATASET_ID_UNDEFINED:I = 0xffff

.field public static final blacklist COMMIT_REASON_ACTIVITY_FINISHED:I = 0x1

.field public static final blacklist COMMIT_REASON_SESSION_DESTROYED:I = 0x5

.field public static final blacklist COMMIT_REASON_UNKNOWN:I = 0x0

.field public static final blacklist COMMIT_REASON_VIEW_CHANGED:I = 0x4

.field public static final blacklist COMMIT_REASON_VIEW_CLICKED:I = 0x3

.field public static final blacklist COMMIT_REASON_VIEW_COMMITTED:I = 0x2

.field private static final blacklist DBG:Z = false

.field public static final blacklist DEFAULT_LOGGING_LEVEL:I

.field public static final blacklist DEFAULT_MAX_PARTITIONS_SIZE:I = 0xa

.field public static final whitelist EXTRA_ASSIST_STRUCTURE:Ljava/lang/String; = "android.view.autofill.extra.ASSIST_STRUCTURE"

.field public static final blacklist EXTRA_AUGMENTED_AUTOFILL_CLIENT:Ljava/lang/String; = "android.view.autofill.extra.AUGMENTED_AUTOFILL_CLIENT"

.field public static final whitelist EXTRA_AUTHENTICATION_RESULT:Ljava/lang/String; = "android.view.autofill.extra.AUTHENTICATION_RESULT"

.field public static final whitelist EXTRA_AUTHENTICATION_RESULT_EPHEMERAL_DATASET:Ljava/lang/String; = "android.view.autofill.extra.AUTHENTICATION_RESULT_EPHEMERAL_DATASET"

.field public static final blacklist EXTRA_AUTH_STATE:Ljava/lang/String; = "android.view.autofill.extra.AUTH_STATE"

.field public static final blacklist EXTRA_AUTOFILL_REQUEST_ID:Ljava/lang/String; = "android.view.autofill.extra.AUTOFILL_REQUEST_ID"

.field public static final whitelist EXTRA_CLIENT_STATE:Ljava/lang/String; = "android.view.autofill.extra.CLIENT_STATE"

.field public static final whitelist EXTRA_INLINE_SUGGESTIONS_REQUEST:Ljava/lang/String; = "android.view.autofill.extra.INLINE_SUGGESTIONS_REQUEST"

.field public static final blacklist EXTRA_RESTORE_CROSS_ACTIVITY:Ljava/lang/String; = "android.view.autofill.extra.RESTORE_CROSS_ACTIVITY"

.field public static final greylist-max-o EXTRA_RESTORE_SESSION_TOKEN:Ljava/lang/String; = "android.view.autofill.extra.RESTORE_SESSION_TOKEN"

.field public static final greylist-max-o FC_SERVICE_TIMEOUT:I = 0x1388

.field public static final greylist-max-o FLAG_ADD_CLIENT_DEBUG:I = 0x2

.field public static final greylist-max-o FLAG_ADD_CLIENT_ENABLED:I = 0x1

.field public static final blacklist FLAG_ADD_CLIENT_ENABLED_FOR_AUGMENTED_AUTOFILL_ONLY:I = 0x8

.field public static final greylist-max-o FLAG_ADD_CLIENT_VERBOSE:I = 0x4

.field public static final blacklist FLAG_SMART_SUGGESTION_OFF:I = 0x0

.field public static final blacklist FLAG_SMART_SUGGESTION_SYSTEM:I = 0x1

.field private static final greylist-max-o LAST_AUTOFILLED_DATA_TAG:Ljava/lang/String; = "android:lastAutoFilledData"

.field public static final blacklist MAX_TEMP_AUGMENTED_SERVICE_DURATION_MS:I = 0x1d4c0

.field public static final blacklist NO_LOGGING:I = 0x0

.field public static final greylist-max-o NO_SESSION:I = 0x7fffffff

.field public static final greylist-max-o PENDING_UI_OPERATION_CANCEL:I = 0x1

.field public static final greylist-max-o PENDING_UI_OPERATION_RESTORE:I = 0x2

.field public static final blacklist PINNED_DATASET_ID:Ljava/lang/String; = "PINNED_DATASET_ID"

.field public static final blacklist RECEIVER_FLAG_SESSION_FOR_AUGMENTED_AUTOFILL_ONLY:I = 0x1

.field public static final blacklist RESULT_CODE_NOT_SERVICE:I = -0x1

.field public static final blacklist RESULT_OK:I = 0x0

.field private static final greylist-max-o SESSION_ID_TAG:Ljava/lang/String; = "android:sessionId"

.field public static final greylist-max-o SET_STATE_FLAG_DEBUG:I = 0x8

.field public static final greylist-max-o SET_STATE_FLAG_ENABLED:I = 0x1

.field public static final blacklist SET_STATE_FLAG_FOR_AUTOFILL_ONLY:I = 0x20

.field public static final greylist-max-o SET_STATE_FLAG_RESET_CLIENT:I = 0x4

.field public static final greylist-max-o SET_STATE_FLAG_RESET_SESSION:I = 0x2

.field public static final greylist-max-o SET_STATE_FLAG_VERBOSE:I = 0x10

.field public static final greylist-max-o STATE_ACTIVE:I = 0x1

.field public static final greylist-max-o STATE_DISABLED_BY_SERVICE:I = 0x4

.field public static final greylist-max-o STATE_FINISHED:I = 0x2

.field public static final blacklist STATE_PENDING_AUTHENTICATION:I = 0x7

.field public static final greylist-max-o STATE_SHOWING_SAVE_UI:I = 0x3

.field private static final greylist-max-o STATE_TAG:Ljava/lang/String; = "android:state"

.field public static final greylist-max-o STATE_UNKNOWN:I = 0x0

.field public static final greylist-max-o STATE_UNKNOWN_COMPAT_MODE:I = 0x5

.field public static final blacklist STATE_UNKNOWN_FAILED:I = 0x6

.field private static final blacklist SYNC_CALLS_TIMEOUT_MS:I = 0x1388

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AutofillManager"


# instance fields
.field private final blacklist mAllTrackedViews:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAllowedActivitySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAugmentedAutofillServiceClient:Landroid/view/autofill/IAugmentedAutofillManagerClient;

.field private greylist-max-o mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

.field private greylist-max-o mCompatibilityBridge:Landroid/view/autofill/AutofillManager$CompatibilityBridge;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private blacklist mDeniedActivitySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mEnabled:Z

.field private blacklist mEnabledForAugmentedAutofillOnly:Z

.field private blacklist mEnteredForAugmentedAutofillIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mEnteredIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFillDialogEnabledHints:[Ljava/lang/String;

.field private blacklist mFillDialogTriggerIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mFillableIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mForAugmentedAutofillOnly:Z

.field private greylist-max-o mIdShownFillUi:Landroid/view/autofill/AutofillId;

.field private final blacklist mIsCredmanIntegrationEnabled:Z

.field private final blacklist mIsFillAndSaveDialogDisabledForCredentialManager:Z

.field private final blacklist mIsFillDialogEnabled:Z

.field private blacklist mIsFillRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist mIsPackageFullyAllowedForAutofill:Z

.field private blacklist mIsPackageFullyDeniedForAutofill:Z

.field private blacklist mIsPackagePartiallyAllowedForAutofill:Z

.field private blacklist mIsPackagePartiallyDeniedForAutofill:Z

.field private blacklist mIsTriggerFillRequestOnFilteredImportantViewsEnabled:Z

.field private blacklist mIsTriggerFillRequestOnUnimportantViewEnabled:Z

.field private greylist-max-o mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final greylist-max-o mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private blacklist mNonAutofillableImeActionIdSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mOnInvisibleCalled:Z

.field private final blacklist mOptions:Landroid/content/AutofillOptions;

.field private blacklist mRelayoutFix:Z

.field private greylist-max-o mSaveOnFinish:Z

.field private greylist-max-o mSaveTriggerId:Landroid/view/autofill/AutofillId;

.field private blacklist mScreenHasCredmanField:Z

.field private final greylist-max-o mService:Landroid/view/autofill/IAutoFillManager;

.field private greylist-max-o mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

.field private greylist-max-o mServiceClientCleaner:Lsun/misc/Cleaner;

.field private greylist-max-o mSessionId:I

.field private blacklist mShouldAlwaysIncludeWebviewInAssistStructure:Z

.field private blacklist mShouldEnableAutofillOnAllViewTypes:Z

.field private blacklist mShouldEnableMultilineFilter:Z

.field private blacklist mShouldIgnoreCredentialViews:Z

.field private blacklist mShouldIncludeAllChildrenViewInAssistStructure:Z

.field private blacklist mShouldIncludeAllViewsWithAutofillTypeNotNoneInAssistStructure:Z

.field private blacklist mShouldIncludeInvisibleViewInAssistStructure:Z

.field private blacklist mShowAutofillDialogCalled:Z

.field private greylist-max-o mState:I

.field private greylist-max-o mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;


# direct methods
.method public static synthetic blacklist $r8$lambda$6L-gkTsocqFiBrWEAPgS-oeVDx0(Landroid/view/autofill/AutofillManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->lambda$onVisibleForAutofill$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$LZn6gmGF-oMJDCxrIIzgsI8Un_A(Landroid/view/autofill/AutofillManager;Ljava/lang/ref/WeakReference;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->lambda$showAutofillDialog$3(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$RqegKQ0ttNAT6vJZMD9Tyxd2DXM(Landroid/view/autofill/AutofillManager;Ljava/lang/ref/WeakReference;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/autofill/AutofillManager;->lambda$showAutofillDialog$4(Ljava/lang/ref/WeakReference;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAllTrackedViews(Landroid/view/autofill/AutofillManager;)Landroid/util/ArraySet;
    .locals 0

    iget-object p0, p0, Landroid/view/autofill/AutofillManager;->mAllTrackedViews:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/view/autofill/AutofillManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsFillRequested(Landroid/view/autofill/AutofillManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Landroid/view/autofill/AutofillManager;->mIsFillRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/view/autofill/AutofillManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionId(Landroid/view/autofill/AutofillManager;)I
    .locals 0

    iget p0, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTrackedViews(Landroid/view/autofill/AutofillManager;)Landroid/view/autofill/AutofillManager$TrackedViews;
    .locals 0

    iget-object p0, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmShowAutofillDialogCalled(Landroid/view/autofill/AutofillManager;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/autofill/AutofillManager;->mShowAutofillDialogCalled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mauthenticate(Landroid/view/autofill/AutofillManager;IILandroid/content/IntentSender;Landroid/content/Intent;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/view/autofill/AutofillManager;->authenticate(IILandroid/content/IntentSender;Landroid/content/Intent;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mautofill(Landroid/view/autofill/AutofillManager;ILjava/util/List;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/autofill/AutofillManager;->autofill(ILjava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mautofillContent(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Landroid/content/ClipData;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->autofillContent(ILandroid/view/autofill/AutofillId;Landroid/content/ClipData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchUnhandledKey(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->dispatchUnhandledKey(ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfinishSessionLocked(Landroid/view/autofill/AutofillManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->finishSessionLocked(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetAugmentedAutofillClient(Landroid/view/autofill/AutofillManager;Lcom/android/internal/os/IResultReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->getAugmentedAutofillClient(Lcom/android/internal/os/IResultReceiver;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetClient(Landroid/view/autofill/AutofillManager;)Landroid/view/autofill/AutofillManager$AutofillClient;
    .locals 0

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misClientVisibleForAutofillLocked(Landroid/view/autofill/AutofillManager;)Z
    .locals 0

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isClientVisibleForAutofillLocked()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyCallback(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->notifyCallback(ILandroid/view/autofill/AutofillId;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyDisableAutofill(Landroid/view/autofill/AutofillManager;JLandroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->notifyDisableAutofill(JLandroid/content/ComponentName;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyNoFillUi(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->notifyNoFillUi(ILandroid/view/autofill/AutofillId;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monGetCredentialException(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/autofill/AutofillManager;->onGetCredentialException(ILandroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monGetCredentialResponse(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Landroid/credentials/GetCredentialResponse;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->onGetCredentialResponse(ILandroid/view/autofill/AutofillId;Landroid/credentials/GetCredentialResponse;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mpost(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrequestHideFillUi(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/autofill/AutofillManager;->requestHideFillUi(Landroid/view/autofill/AutofillId;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrequestShowFillUi(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/view/autofill/AutofillManager;->requestShowFillUi(ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrequestShowSoftInput(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->requestShowSoftInput(Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetFillDialogTriggerIds(Landroid/view/autofill/AutofillManager;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->setFillDialogTriggerIds(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetSaveUiState(Landroid/view/autofill/AutofillManager;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/autofill/AutofillManager;->setSaveUiState(IZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetSessionFinished(Landroid/view/autofill/AutofillManager;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/autofill/AutofillManager;->setSessionFinished(ILjava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetState(Landroid/view/autofill/AutofillManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->setState(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetTrackedViews(Landroid/view/autofill/AutofillManager;I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/view/autofill/AutofillManager;->setTrackedViews(I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput v0, Landroid/view/autofill/AutofillManager;->DEFAULT_LOGGING_LEVEL:I

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/view/autofill/IAutoFillManager;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Landroid/view/autofill/AutofillManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    const v0, 0x7fffffff

    iput v0, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mIsTriggerFillRequestOnUnimportantViewEnabled:Z

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mNonAutofillableImeActionIdSet:Ljava/util/Set;

    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mIsPackageFullyDeniedForAutofill:Z

    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mIsPackagePartiallyDeniedForAutofill:Z

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mDeniedActivitySet:Ljava/util/Set;

    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mIsPackageFullyAllowedForAutofill:Z

    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mIsPackagePartiallyAllowedForAutofill:Z

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mAllowedActivitySet:Ljava/util/Set;

    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mShowAutofillDialogCalled:Z

    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mShouldIgnoreCredentialViews:Z

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mAllTrackedViews:Landroid/util/ArraySet;

    const-string v1, "context cannot be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-virtual {p1}, Landroid/content/Context;->getAutofillOptions()Landroid/content/AutofillOptions;

    move-result-object v1

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mIsFillRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->isFillDialogEnabled()Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mIsFillDialogEnabled:Z

    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->getFillDialogEnabledHints()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mFillDialogEnabledHints:[Ljava/lang/String;

    nop

    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->isFillAndSaveDialogDisabledForCredentialManager()Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mIsFillAndSaveDialogDisabledForCredentialManager:Z

    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fill dialog is enabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/autofill/AutofillManager;->mIsFillDialogEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hints="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mFillDialogEnabledHints:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    iget v1, v1, Landroid/content/AutofillOptions;->loggingLevel:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    sput-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    iget v1, v1, Landroid/content/AutofillOptions;->loggingLevel:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    move v0, v2

    :cond_2
    sput-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    :cond_3
    nop

    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->isTriggerFillRequestOnUnimportantViewEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mIsTriggerFillRequestOnUnimportantViewEnabled:Z

    nop

    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->isTriggerFillRequestOnFilteredImportantViewsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mIsTriggerFillRequestOnFilteredImportantViewsEnabled:Z

    nop

    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->shouldEnableAutofillOnAllViewTypes()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mShouldEnableAutofillOnAllViewTypes:Z

    nop

    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->getNonAutofillableImeActionIdSetFromFlag()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/view/autofill/AutofillManager;->mNonAutofillableImeActionIdSet:Ljava/util/Set;

    nop

    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->shouldEnableMultilineFilter()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mShouldEnableMultilineFilter:Z

    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->getDenylistStringFromFlag()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->getAllowlistStringFromFlag()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    nop

    invoke-direct {p0, v0, v2}, Landroid/view/autofill/AutofillManager;->isPackageFullyAllowedOrDeniedForAutofill(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mIsPackageFullyDeniedForAutofill:Z

    nop

    invoke-direct {p0, v1, v2}, Landroid/view/autofill/AutofillManager;->isPackageFullyAllowedOrDeniedForAutofill(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mIsPackageFullyAllowedForAutofill:Z

    iget-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mIsPackageFullyDeniedForAutofill:Z

    if-nez v3, :cond_4

    nop

    invoke-direct {p0, v0, v2}, Landroid/view/autofill/AutofillManager;->isPackagePartiallyDeniedOrAllowedForAutofill(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mIsPackagePartiallyDeniedForAutofill:Z

    :cond_4
    iget-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mIsPackageFullyAllowedForAutofill:Z

    if-nez v3, :cond_5

    nop

    invoke-direct {p0, v1, v2}, Landroid/view/autofill/AutofillManager;->isPackagePartiallyDeniedOrAllowedForAutofill(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mIsPackagePartiallyAllowedForAutofill:Z

    :cond_5
    iget-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mIsPackagePartiallyDeniedForAutofill:Z

    if-eqz v3, :cond_6

    invoke-direct {p0, v0, v2}, Landroid/view/autofill/AutofillManager;->getDeniedOrAllowedActivitySetFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Landroid/view/autofill/AutofillManager;->mDeniedActivitySet:Ljava/util/Set;

    :cond_6
    iget-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mIsPackagePartiallyAllowedForAutofill:Z

    if-eqz v3, :cond_7

    invoke-direct {p0, v1, v2}, Landroid/view/autofill/AutofillManager;->getDeniedOrAllowedActivitySetFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Landroid/view/autofill/AutofillManager;->mAllowedActivitySet:Ljava/util/Set;

    :cond_7
    nop

    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->shouldIncludeAllViewsAutofillTypeNotNoneInAssistStructrue()Z

    move-result v3

    iput-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mShouldIncludeAllViewsWithAutofillTypeNotNoneInAssistStructure:Z

    nop

    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->shouldIncludeAllChildrenViewInAssistStructure()Z

    move-result v3

    iput-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mShouldIncludeAllChildrenViewInAssistStructure:Z

    nop

    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->shouldAlwaysIncludeWebviewInAssistStructure()Z

    move-result v3

    iput-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mShouldAlwaysIncludeWebviewInAssistStructure:Z

    nop

    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->shouldIncludeInvisibleViewInAssistStructure()Z

    move-result v3

    iput-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mShouldIncludeInvisibleViewInAssistStructure:Z

    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->shouldIgnoreRelayoutWhenAuthPending()Z

    move-result v3

    iput-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mRelayoutFix:Z

    invoke-static {}, Landroid/service/autofill/Flags;->autofillCredmanIntegration()Z

    move-result v3

    iput-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mIsCredmanIntegrationEnabled:Z

    return-void
.end method

.method private greylist-max-o addEnteredIdLocked(Landroid/view/autofill/AutofillId;)V
    .locals 2

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mEnteredIds:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Landroid/view/autofill/AutofillManager;->mEnteredIds:Landroid/util/ArraySet;

    :cond_0
    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->resetSessionId()V

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mEnteredIds:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private blacklist authenticate(IILandroid/content/IntentSender;Landroid/content/Intent;Z)V
    .locals 3

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-ne p1, v1, :cond_1

    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mRelayoutFix:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    iput v1, p0, Landroid/view/autofill/AutofillManager;->mState:I

    :cond_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/view/autofill/AutofillManager;->mOnInvisibleCalled:Z

    invoke-interface {v1, p2, p3, p4, p5}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientAuthenticate(ILandroid/content/IntentSender;Landroid/content/Intent;Z)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist autofill(ILjava/util/List;Ljava/util/List;Z)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillValue;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v2, v1, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v0, v1, Landroid/view/autofill/AutofillManager;->mSessionId:I

    move/from16 v3, p1

    if-eq v3, v0, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-exit v2

    return-void

    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    nop

    invoke-static/range {p2 .. p2}, Landroid/view/autofill/Helper;->toArray(Ljava/util/Collection;)[Landroid/view/autofill/AutofillId;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientFindViewsByAutofillIdTraversal([Landroid/view/autofill/AutofillId;)[Landroid/view/View;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, v1, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    if-nez v9, :cond_2

    new-instance v9, Landroid/view/autofill/ParcelableMap;

    invoke-direct {v9, v4}, Landroid/view/autofill/ParcelableMap;-><init>(I)V

    iput-object v9, v1, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :cond_2
    const/4 v9, 0x0

    :goto_0
    if-ge v9, v4, :cond_7

    move-object/from16 v10, p2

    :try_start_1
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/autofill/AutofillId;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v12, p3

    :try_start_2
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/autofill/AutofillValue;

    aget-object v14, v7, v9

    if-nez v14, :cond_3

    const-string v15, "AutofillManager"

    move-object/from16 v16, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autofill(): no View with id "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v3, p4

    goto :goto_1

    :cond_3
    move-object/from16 v16, v0

    iget-object v0, v1, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {v0, v11, v13}, Landroid/view/autofill/ParcelableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez v6, :cond_4

    new-instance v0, Landroid/util/ArrayMap;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v6, v0

    :cond_4
    invoke-virtual {v6, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_5

    new-instance v3, Landroid/util/SparseArray;

    const/4 v15, 0x5

    invoke-direct {v3, v15}, Landroid/util/SparseArray;-><init>(I)V

    move-object v0, v3

    invoke-virtual {v6, v14, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {v11}, Landroid/view/autofill/AutofillId;->getVirtualChildIntId()I

    move-result v3

    invoke-virtual {v0, v3, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move/from16 v3, p4

    goto :goto_1

    :cond_6
    invoke-virtual {v14, v13}, Landroid/view/View;->autofill(Landroid/view/autofill/AutofillValue;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v3, p4

    :try_start_3
    invoke-direct {v1, v14, v13, v3}, Landroid/view/autofill/AutofillManager;->setAutofilledIfValuesIs(Landroid/view/View;Landroid/view/autofill/AutofillValue;Z)V

    add-int/lit8 v5, v5, 0x1

    :goto_1
    add-int/lit8 v9, v9, 0x1

    move/from16 v3, p1

    move-object/from16 v0, v16

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_7
    move-object/from16 v10, p2

    move-object/from16 v12, p3

    move/from16 v3, p4

    move-object/from16 v16, v0

    invoke-direct {v1, v8}, Landroid/view/autofill/AutofillManager;->handleFailedIdsLocked(Ljava/util/ArrayList;)V

    if-eqz v6, :cond_8

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v0, v9, :cond_8

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseArray;

    invoke-virtual {v9, v11}, Landroid/view/View;->autofill(Landroid/util/SparseArray;)V

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v13

    add-int/2addr v5, v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    iget-object v0, v1, Landroid/view/autofill/AutofillManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v9, 0x391

    invoke-direct {v1, v9}, Landroid/view/autofill/AutofillManager;->newLog(I)Landroid/metrics/LogMaker;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v13, 0x392

    invoke-virtual {v9, v13, v11}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v13, 0x393

    invoke-virtual {v9, v13, v11}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    monitor-exit v2

    return-void

    :catchall_2
    move-exception v0

    move-object/from16 v10, p2

    :goto_3
    move-object/from16 v12, p3

    :goto_4
    move/from16 v3, p4

    :goto_5
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_5
.end method

.method private blacklist autofillContent(ILandroid/view/autofill/AutofillId;Landroid/content/ClipData;)V
    .locals 10

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-eq p1, v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v1

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    invoke-interface {v1, p2}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientFindViewByAutofillIdTraversal(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v3, "AutofillManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "autofillContent(): no view with id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Landroid/view/autofill/AutofillManager;->reportAutofillContentFailure(Landroid/view/autofill/AutofillId;)V

    monitor-exit v0

    return-void

    :cond_2
    new-instance v3, Landroid/view/ContentInfo$Builder;

    const/4 v4, 0x4

    invoke-direct {v3, p3, v4}, Landroid/view/ContentInfo$Builder;-><init>(Landroid/content/ClipData;I)V

    invoke-virtual {v3}, Landroid/view/ContentInfo$Builder;->build()Landroid/view/ContentInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->performReceiveContent(Landroid/view/ContentInfo;)Landroid/view/ContentInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v5, "AutofillManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "autofillContent(): receiver could not insert content: id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", view="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", clip="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Landroid/view/autofill/AutofillManager;->reportAutofillContentFailure(Landroid/view/autofill/AutofillId;)V

    monitor-exit v0

    return-void

    :cond_3
    iget-object v5, p0, Landroid/view/autofill/AutofillManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v6, 0x391

    invoke-direct {p0, v6}, Landroid/view/autofill/AutofillManager;->newLog(I)Landroid/metrics/LogMaker;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x392

    invoke-virtual {v6, v9, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x393

    invoke-virtual {v6, v8, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o cancelLocked()V
    .locals 1

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->cancelSessionLocked()V

    return-void
.end method

.method private greylist-max-o cancelSessionLocked()V
    .locals 3

    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelSessionLocked(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/autofill/IAutoFillManager;->cancelSession(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/autofill/AutofillManager;->resetSessionLocked(Z)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist commitLocked(I)V
    .locals 1

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->finishSessionLocked(I)V

    return-void
.end method

.method private greylist-max-o dispatchUnhandledKey(ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V
    .locals 3

    invoke-direct {p0, p2}, Landroid/view/autofill/AutofillManager;->findView(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-ne v2, p1, :cond_1

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2, v0, p3}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientDispatchUnhandledKey(Landroid/view/View;Landroid/view/KeyEvent;)V

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private greylist-max-o findView(Landroid/view/autofill/AutofillId;)Landroid/view/View;
    .locals 2

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientFindViewByAutofillIdTraversal(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist finishSessionLocked(I)V
    .locals 3

    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishSessionLocked(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Landroid/view/autofill/IAutoFillManager;->finishSession(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/autofill/AutofillManager;->resetSessionLocked(Z)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist getAugmentedAutofillClient(Lcom/android/internal/os/IResultReceiver;)V
    .locals 6

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mAugmentedAutofillServiceClient:Landroid/view/autofill/IAugmentedAutofillManagerClient;

    if-nez v1, :cond_0

    new-instance v1, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient;-><init>(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient-IA;)V

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mAugmentedAutofillServiceClient:Landroid/view/autofill/IAugmentedAutofillManagerClient;

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android.view.autofill.extra.AUGMENTED_AUTOFILL_CLIENT"

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mAugmentedAutofillServiceClient:Landroid/view/autofill/IAugmentedAutofillManagerClient;

    invoke-interface {v3}, Landroid/view/autofill/IAugmentedAutofillManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :try_start_1
    invoke-interface {p1, v2, v1}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "AutofillManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not send AugmentedAutofillClient back: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static greylist-max-o getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;
    .locals 2

    new-instance v0, Landroid/view/autofill/AutofillId;

    invoke-virtual {p0}, Landroid/view/View;->getAutofillViewId()I

    move-result v1

    invoke-direct {v0, v1, p1}, Landroid/view/autofill/AutofillId;-><init>(II)V

    return-object v0
.end method

.method private greylist-max-o getClient()Landroid/view/autofill/AutofillManager$AutofillClient;
    .locals 3

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAutofillClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    if-nez v0, :cond_0

    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No AutofillClient for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on context "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method public static greylist-max-o getDatasetIdFromAuthenticationId(I)I
    .locals 1

    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method private blacklist getDeniedOrAllowedActivitySetFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, ";"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v1, :cond_0

    const-string v3, "AutofillManager"

    const-string v4, "Failed to get denied activity names from list because it\'s wrongly formatted"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    return-object v3

    :cond_0
    nop

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/util/ArraySet;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v5
.end method

.method private blacklist getImeStateFlag(Landroid/view/View;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x80

    return v0

    :cond_1
    return v0
.end method

.method public static greylist-max-o getRequestIdFromAuthenticationId(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0x10

    return v0
.end method

.method public static blacklist getSmartSuggestionModeToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INVALID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "SYSTEM"

    return-object v0

    :pswitch_1
    const-string v0, "OFF"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static greylist-max-o getStateAsString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INVALID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "PENDING_AUTHENTICATION"

    return-object v0

    :pswitch_1
    const-string v0, "UNKNOWN_FAILED"

    return-object v0

    :pswitch_2
    const-string v0, "UNKNOWN_COMPAT_MODE"

    return-object v0

    :pswitch_3
    const-string v0, "DISABLED_BY_SERVICE"

    return-object v0

    :pswitch_4
    const-string v0, "SHOWING_SAVE_UI"

    return-object v0

    :pswitch_5
    const-string v0, "FINISHED"

    return-object v0

    :pswitch_6
    const-string v0, "ACTIVE"

    return-object v0

    :pswitch_7
    const-string v0, "UNKNOWN"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method private greylist-max-o getStateAsStringLocked()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    invoke-static {v0}, Landroid/view/autofill/AutofillManager;->getStateAsString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string/jumbo v0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private blacklist handleFailedIdsLocked(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autofill(): total failed views: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Landroid/view/autofill/IAutoFillManager;->setAutofillFailure(ILjava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist hasFillDialogUiFeature()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mIsFillDialogEnabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mFillDialogEnabledHints:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

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

.method private greylist-max-o isActiveLocked()Z
    .locals 2

    iget v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isPendingAuthenticationLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private greylist-max-o isClientDisablingEnterExitEvent()Z
    .locals 2

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->isDisablingEnterExitEventForAutofill()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private greylist-max-o isClientVisibleForAutofillLocked()Z
    .locals 2

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientIsVisibleForAutofill()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private blacklist isCredmanRequested(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getViewCredentialHandler()Landroid/view/ViewCredentialHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private greylist-max-o isDisabledByServiceLocked()Z
    .locals 2

    iget v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private greylist-max-o isFinishedLocked()Z
    .locals 2

    iget v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isPackageFullyAllowedOrDeniedForAutofill(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isPackagePartiallyDeniedOrAllowedForAutofill(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isPassingImeActionCheck(Landroid/widget/EditText;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/widget/EditText;->getImeOptions()I

    move-result v0

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mNonAutofillableImeActionIdSet:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AutofillManager"

    const-string/jumbo v2, "view not autofillable - not passing ime action check"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist isPassingMultilineCheck(Landroid/widget/EditText;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/widget/EditText;->getMinLines()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const-string v0, "AutofillManager"

    const-string/jumbo v1, "view not autofillable - has multiline input type"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method private blacklist isPendingAuthenticationLocked()Z
    .locals 2

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mRelayoutFix:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic blacklist lambda$onVisibleForAutofill$0()V
    .locals 2

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    invoke-virtual {v1}, Landroid/view/autofill/AutofillManager$TrackedViews;->onVisibleForAutofillChangedLocked()V

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

.method static synthetic blacklist lambda$requestShowSoftInput$2(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Landroid/view/autofill/AutofillManager;->requestShowSoftInputInViewThread(Landroid/view/View;)V

    return-void
.end method

.method private synthetic blacklist lambda$showAutofillDialog$3(Ljava/lang/ref/WeakReference;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$showAutofillDialog$4(Ljava/lang/ref/WeakReference;I)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p2, v1, v2}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;I)V

    :cond_0
    return-void
.end method

.method static synthetic blacklist lambda$tryAddServiceClientIfNeededLocked$1(Landroid/view/autofill/IAutoFillManager;Landroid/view/autofill/IAutoFillManagerClient;I)V
    .locals 1

    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/view/autofill/IAutoFillManager;->removeClient(Landroid/view/autofill/IAutoFillManagerClient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public static greylist-max-o makeAuthenticationId(II)I
    .locals 2

    shl-int/lit8 v0, p0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    return v0
.end method

.method private greylist-max-o newLog(I)Landroid/metrics/LogMaker;
    .locals 5

    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x5b0

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->isCompatibilityModeEnabledLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x586

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/content/ComponentName;

    invoke-interface {v1}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/metrics/LogMaker;->setComponentName(Landroid/content/ComponentName;)Landroid/metrics/LogMaker;

    :goto_0
    return-object v0
.end method

.method private blacklist notifyCallback(ILandroid/view/autofill/AutofillId;I)V
    .locals 4

    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "AutofillManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyCallback(): sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", autofillId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p2}, Landroid/view/autofill/AutofillManager;->findView(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v3, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-ne v3, p1, :cond_2

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    move-object v1, v3

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result v2

    if-eqz v2, :cond_3

    nop

    invoke-virtual {p2}, Landroid/view/autofill/AutofillId;->getVirtualChildIntId()I

    move-result v2

    invoke-virtual {v1, v0, v2, p3}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;II)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v0, p3}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;I)V

    :cond_4
    :goto_0
    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private blacklist notifyDisableAutofill(JLandroid/content/ComponentName;)V
    .locals 6

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long/2addr v1, p1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_1

    const-wide v1, 0x7fffffffffffffffL

    :cond_1
    if-eqz p3, :cond_3

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    iget-object v3, v3, Landroid/content/AutofillOptions;->disabledActivities:Landroid/util/ArrayMap;

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, v3, Landroid/content/AutofillOptions;->disabledActivities:Landroid/util/ArrayMap;

    :cond_2
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    iget-object v3, v3, Landroid/content/AutofillOptions;->disabledActivities:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    iput-wide v1, v3, Landroid/content/AutofillOptions;->appDisabledExpiration:J

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o notifyNoFillUi(ILandroid/view/autofill/AutofillId;I)V
    .locals 2

    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyNoFillUi(): sessionFinishedState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p2}, Landroid/view/autofill/AutofillManager;->findView(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x3

    invoke-direct {p0, p1, p2, v1}, Landroid/view/autofill/AutofillManager;->notifyCallback(ILandroid/view/autofill/AutofillId;I)V

    if-eqz p3, :cond_2

    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, Landroid/view/autofill/AutofillManager;->setSessionFinished(ILjava/util/List;)V

    :cond_2
    return-void
.end method

.method private greylist-max-o notifyViewClicked(Landroid/view/autofill/AutofillId;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_1

    const-string v0, "AutofillManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyViewClicked(): id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", trigger="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v1, :cond_5

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, p1}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_3

    const-string v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "triggering commit by click of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Landroid/view/autofill/AutofillManager;->commitLocked(I)V

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v2, 0x4cd

    invoke-direct {p0, v2}, Landroid/view/autofill/AutofillManager;->newLog(I)Landroid/metrics/LogMaker;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    :cond_4
    monitor-exit v0

    return-void

    :cond_5
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o notifyViewEntered(Landroid/view/View;I)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    nop

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v5

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Landroid/view/autofill/AutofillManager;->notifyViewEnteredLocked(Landroid/view/View;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;I)Landroid/view/autofill/AutofillManager$AutofillCallback;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v2}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;I)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private greylist-max-o notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;I)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    nop

    :try_start_0
    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;

    move-result-object v3

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/view/autofill/AutofillManager;->notifyViewEnteredLocked(Landroid/view/View;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;I)Landroid/view/autofill/AutofillManager$AutofillCallback;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    invoke-virtual {v1, p1, p2, v0}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;II)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private blacklist notifyViewEnteredLocked(Landroid/view/View;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;I)Landroid/view/autofill/AutofillManager$AutofillCallback;
    .locals 9

    invoke-direct {p0, p2, p5}, Landroid/view/autofill/AutofillManager;->shouldIgnoreViewEnteredLocked(Landroid/view/autofill/AutofillId;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->isCredmanRequested(Landroid/view/View;)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/autofill/AutofillManager;->tryAddServiceClientIfNeededLocked(Z)Z

    move-result v2

    const-string v3, "ignoring notifyViewEntered("

    const-string v4, "AutofillManager"

    if-nez v2, :cond_2

    sget-boolean v5, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "): no service client"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v1

    :cond_2
    iget-boolean v5, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-nez v5, :cond_4

    iget-boolean v5, p0, Landroid/view/autofill/AutofillManager;->mEnabledForAugmentedAutofillOnly:Z

    if-nez v5, :cond_4

    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "): disabled"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    return-object v1

    :cond_4
    iget-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mIsCredmanIntegrationEnabled:Z

    if-eqz v3, :cond_5

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->isCredmanRequested(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_5

    or-int/lit16 p5, p5, 0x800

    :cond_5
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mIsFillRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isClientDisablingEnterExitEvent()Z

    move-result v3

    if-nez v3, :cond_c

    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_6

    move-object v3, p1

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isAnyPasswordInputType()Z

    move-result v3

    if-eqz v3, :cond_6

    or-int/lit8 p5, p5, 0x4

    :cond_6
    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->isFillAndSaveDialogDisabledForCredentialManager()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mScreenHasCredmanField:Z

    if-eqz v3, :cond_7

    or-int/lit16 p5, p5, 0x400

    sget-boolean v3, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_7

    const-string/jumbo v3, "updating session with flag screen has credman view"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->getImeStateFlag(Landroid/view/View;)I

    move-result v3

    or-int/2addr p5, v3

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/view/autofill/AutofillManager;->startSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;I)V

    goto :goto_0

    :cond_8
    iget-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mForAugmentedAutofillOnly:Z

    if-eqz v3, :cond_a

    and-int/lit8 v3, p5, 0x1

    if-eqz v3, :cond_a

    sget-boolean v3, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyViewEntered("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "): resetting mForAugmentedAutofillOnly on manual request"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mForAugmentedAutofillOnly:Z

    :cond_a
    and-int/lit8 v3, p5, 0x40

    if-eqz v3, :cond_b

    or-int/lit16 p5, p5, 0x100

    :cond_b
    const/4 v7, 0x2

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v8, p5

    invoke-direct/range {v3 .. v8}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V

    :goto_0
    invoke-direct {p0, p2}, Landroid/view/autofill/AutofillManager;->addEnteredIdLocked(Landroid/view/autofill/AutofillId;)V

    :cond_c
    return-object v1
.end method

.method private greylist-max-o notifyViewExitedLocked(Landroid/view/View;I)V
    .locals 8

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->tryAddServiceClientIfNeededLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabledForAugmentedAutofillOnly:Z

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isClientDisablingEnterExitEvent()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;

    move-result-object v1

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V

    :cond_1
    return-void
.end method

.method private blacklist notifyViewReadyInner(Landroid/view/autofill/AutofillId;[Ljava/lang/String;Z)V
    .locals 10

    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "AutofillManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyViewReadyInner:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mAllTrackedViews:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mAllTrackedViews:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    invoke-virtual {v1, p1}, Landroid/view/autofill/AutofillManager$TrackedViews;->checkViewState(Landroid/view/autofill/AutofillId;)V

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mIsFillRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->isAutofillPccClassificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v1

    if-nez v1, :cond_6

    nop

    invoke-direct {p0, p3}, Landroid/view/autofill/AutofillManager;->tryAddServiceClientIfNeededLocked(Z)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v2, Landroid/view/autofill/AutofillId;->NO_AUTOFILL_ID:Landroid/view/autofill/AutofillId;

    const/16 v3, 0x200

    const/4 v4, 0x0

    invoke-direct {p0, v2, v4, v4, v3}, Landroid/view/autofill/AutofillManager;->startSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;I)V

    goto :goto_0

    :cond_5
    sget-boolean v2, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_6

    const-string v2, "AutofillManager"

    const-string/jumbo v3, "not starting session: no service client"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_7
    :goto_1
    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mIsFillDialogEnabled:Z

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    goto :goto_5

    :cond_8
    if-eqz p2, :cond_c

    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_c

    aget-object v4, p2, v3

    iget-object v5, p0, Landroid/view/autofill/AutofillManager;->mFillDialogEnabledHints:[Ljava/lang/String;

    array-length v6, v5

    move v7, v2

    :goto_3
    if-ge v7, v6, :cond_a

    aget-object v8, v5, v7

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v0, 0x1

    goto :goto_4

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_a
    :goto_4
    if-eqz v0, :cond_b

    goto :goto_5

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_c
    :goto_5
    if-eqz v0, :cond_10

    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_d

    const-string v1, "AutofillManager"

    const-string v2, "Triggering pre-emptive request for fill dialog."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const/16 v1, 0x40

    or-int/lit8 v1, v1, 0x10

    if-eqz p3, :cond_f

    sget-boolean v2, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_e

    const-string v2, "AutofillManager"

    const-string v3, "Pre fill request is triggered for credMan"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    or-int/lit16 v1, v1, 0x800

    :cond_f
    iget-object v8, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_2
    sget-object v4, Landroid/view/autofill/AutofillId;->NO_AUTOFILL_ID:Landroid/view/autofill/AutofillId;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v2, p0

    move v7, v1

    invoke-direct/range {v2 .. v7}, Landroid/view/autofill/AutofillManager;->notifyViewEnteredLocked(Landroid/view/View;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;I)Landroid/view/autofill/AutofillManager$AutofillCallback;

    monitor-exit v8

    goto :goto_6

    :catchall_1
    move-exception v2

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    :cond_10
    :goto_6
    return-void

    :catchall_2
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1
.end method

.method private greylist-max-o notifyViewVisibilityChangedInternal(Landroid/view/View;IZZ)V
    .locals 5

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mForAugmentedAutofillOnly:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "AutofillManager"

    const-string/jumbo v2, "notifyViewVisibilityChanged(): ignoring on augmented only mode"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mRelayoutFix:Z

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/view/autofill/AutofillManager;->mState:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_2

    const-string v1, "AutofillManager"

    const-string/jumbo v2, "notifyViewVisibilityChanged(): ignoring in auth pending mode"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    monitor-exit v0

    return-void

    :cond_3
    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v1, :cond_9

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz p4, :cond_4

    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v1

    :goto_0
    nop

    sget-boolean v2, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_5

    const-string v2, "AutofillManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "visibility changed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-nez p3, :cond_7

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-boolean v2, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_6

    const-string v2, "AutofillManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hidding UI when view "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " became invisible"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-direct {p0, v1, p1}, Landroid/view/autofill/AutofillManager;->requestHideFillUi(Landroid/view/autofill/AutofillId;Landroid/view/View;)V

    :cond_7
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    invoke-virtual {v2, v1, p3}, Landroid/view/autofill/AutofillManager$TrackedViews;->notifyViewVisibilityChangedLocked(Landroid/view/autofill/AutofillId;Z)V

    goto :goto_1

    :cond_8
    sget-boolean v2, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_a

    const-string v2, "AutofillManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring visibility change on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": no tracked views"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_9
    if-nez p4, :cond_a

    if-eqz p3, :cond_a

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->startAutofillIfNeededLocked(Landroid/view/View;)Z

    goto :goto_2

    :cond_a
    :goto_1
    nop

    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist onGetCredentialException(ILandroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-eq p1, v1, :cond_0

    const-string v1, "AutofillManager"

    const-string/jumbo v2, "onGetCredentialException afm sessionIds don\'t match"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "AutofillManager"

    const-string/jumbo v3, "onGetCredentialException afm client id null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Landroid/view/autofill/Helper;->toArray(Ljava/util/Collection;)[Landroid/view/autofill/AutofillId;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientFindViewsByAutofillIdTraversal([Landroid/view/autofill/AutofillId;)[Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5

    array-length v4, v3

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    aget-object v4, v3, v4

    if-nez v4, :cond_3

    const-string v5, "AutofillManager"

    const-string/jumbo v6, "onGetCredentialException View is null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "AutofillManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onGetCredentialException(): no View with id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p2}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "AutofillManager"

    const-string/jumbo v6, "onGetCredentialException afm client id is virtual"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v5, "AutofillManager"

    const-string/jumbo v6, "onGetCredentialException afm client id is NOT virtual"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, p3, p4}, Landroid/view/View;->onGetCredentialException(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, v2}, Landroid/view/autofill/AutofillManager;->handleFailedIdsLocked(Ljava/util/ArrayList;)V

    monitor-exit v0

    return-void

    :cond_5
    :goto_1
    const-string v4, "AutofillManager"

    const-string/jumbo v5, "onGetCredentialException afm client view not found"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist onGetCredentialResponse(ILandroid/view/autofill/AutofillId;Landroid/credentials/GetCredentialResponse;)V
    .locals 8

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-eq p1, v1, :cond_0

    const-string v1, "AutofillManager"

    const-string/jumbo v2, "onGetCredentialResponse afm sessionIds don\'t match"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "AutofillManager"

    const-string/jumbo v3, "onGetCredentialResponse afm client id null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Landroid/view/autofill/Helper;->toArray(Ljava/util/Collection;)[Landroid/view/autofill/AutofillId;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientFindViewsByAutofillIdTraversal([Landroid/view/autofill/AutofillId;)[Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5

    array-length v4, v3

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    aget-object v4, v3, v4

    if-nez v4, :cond_3

    const-string v5, "AutofillManager"

    const-string/jumbo v6, "onGetCredentialResponse View is null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "AutofillManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onGetCredentialResponse(): no View with id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p2}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "AutofillManager"

    const-string/jumbo v6, "onGetCredentialResponse afm client id is virtual"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v5, "AutofillManager"

    const-string/jumbo v6, "onGetCredentialResponse afm client id is NOT virtual"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, p3}, Landroid/view/View;->onGetCredentialResponse(Landroid/credentials/GetCredentialResponse;)V

    :goto_0
    invoke-direct {p0, v2}, Landroid/view/autofill/AutofillManager;->handleFailedIdsLocked(Ljava/util/ArrayList;)V

    monitor-exit v0

    return-void

    :cond_5
    :goto_1
    const-string v4, "AutofillManager"

    const-string/jumbo v5, "onGetCredentialResponse afm client view not found"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o post(Ljava/lang/Runnable;)V
    .locals 3

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    if-nez v0, :cond_1

    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "AutofillManager"

    const-string v2, "ignoring post() because client is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0, p1}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientRunOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist reportAutofillContentFailure(Landroid/view/autofill/AutofillId;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/view/autofill/IAutoFillManager;->setAutofillFailure(ILjava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private greylist-max-o requestHideFillUi(Landroid/view/autofill/AutofillId;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientRequestHideFillUi()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/view/autofill/AutofillManager;->mIdShownFillUi:Landroid/view/autofill/AutofillId;

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    move-object v0, v3

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->getVirtualChildIntId()I

    move-result v1

    invoke-virtual {v0, p2, v1, v2}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;II)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p2, v2}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;I)V

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private greylist-max-o requestHideFillUi(Landroid/view/autofill/AutofillId;Z)V
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->findView(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v0

    :goto_0
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestHideFillUi("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): anchor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientRequestHideFillUi()Z

    :cond_2
    return-void

    :cond_3
    invoke-direct {p0, p1, v0}, Landroid/view/autofill/AutofillManager;->requestHideFillUi(Landroid/view/autofill/AutofillId;Landroid/view/View;)V

    return-void
.end method

.method private greylist-max-o requestShowFillUi(ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    .locals 13

    move-object v1, p0

    move-object v2, p2

    invoke-direct {p0, p2}, Landroid/view/autofill/AutofillManager;->findView(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_0

    return-void

    :cond_0
    const/4 v10, 0x0

    iget-object v11, v1, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    iget v0, v1, Landroid/view/autofill/AutofillManager;->mSessionId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v12, p1

    if-ne v0, v12, :cond_1

    :try_start_1
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v3, v0

    move-object v4, v9

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-interface/range {v3 .. v8}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientRequestShowFillUi(Landroid/view/View;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v1, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    move-object v10, v3

    iput-object v2, v1, Landroid/view/autofill/AutofillManager;->mIdShownFillUi:Landroid/view/autofill/AutofillId;

    :cond_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v10, :cond_3

    invoke-virtual {p2}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/autofill/AutofillId;->getVirtualChildIntId()I

    move-result v0

    invoke-virtual {v10, v9, v0, v3}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;II)V

    goto :goto_0

    :cond_2
    invoke-virtual {v10, v9, v3}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;I)V

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    move v12, p1

    :goto_1
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private blacklist requestShowSoftInput(Landroid/view/autofill/AutofillId;)V
    .locals 6

    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    const-string v1, "AutofillManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestShowSoftInput("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0, p1}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientFindViewByAutofillIdTraversal(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_3

    sget-boolean v3, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_2

    const-string v3, "View is not found"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v3

    if-nez v3, :cond_5

    sget-boolean v4, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_4

    const-string v4, "Ignoring requestShowSoftInput due to no handler in view"

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    if-eq v4, v5, :cond_7

    sget-boolean v4, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_6

    const-string v4, "Scheduling showSoftInput() on the view UI thread"

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    new-instance v1, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, v2}, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_7
    invoke-static {v2}, Landroid/view/autofill/AutofillManager;->requestShowSoftInputInViewThread(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private static blacklist requestShowSoftInputInViewThread(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    const-string v1, "AutofillManager"

    if-nez v0, :cond_0

    const-string v0, "Ignoring requestShowSoftInput() due to non-focused view"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v2

    sget-boolean v3, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " InputMethodManager.showSoftInput returns "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private greylist-max-o resetSessionLocked(Z)V
    .locals 3

    const v0, 0x7fffffff

    iput v0, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mIdShownFillUi:Landroid/view/autofill/AutofillId;

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mIsFillRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mShowAutofillDialogCalled:Z

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mFillDialogTriggerIds:Ljava/util/List;

    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mScreenHasCredmanField:Z

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mAllTrackedViews:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    if-eqz p1, :cond_0

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mEnteredIds:Landroid/util/ArraySet;

    :cond_0
    return-void
.end method

.method private blacklist setAutofilledIfValuesIs(Landroid/view/View;Landroid/view/autofill/AutofillValue;Z)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    new-instance v2, Landroid/view/autofill/ParcelableMap;

    invoke-direct {v2, v3}, Landroid/view/autofill/ParcelableMap;-><init>(I)V

    iput-object v2, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    :cond_0
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v4

    invoke-virtual {v2, v4, p2}, Landroid/view/autofill/ParcelableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v3, p3}, Landroid/view/View;->setAutofilled(ZZ)V

    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " autofilled synchronously."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v2, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v3

    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Landroid/view/autofill/IAutoFillManager;->setViewAutofilled(ILandroid/view/autofill/AutofillId;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AutofillManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to log due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_2
    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_3

    const-string v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : didn\'t fill in synchronously. It may fill asynchronously."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method private blacklist setFillDialogTriggerIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/view/autofill/AutofillManager;->mFillDialogTriggerIds:Ljava/util/List;

    return-void
.end method

.method private greylist-max-o setNotifyOnClickLocked(Landroid/view/autofill/AutofillId;Z)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->findView(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNotifyOnClick(): invalid id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setNotifyAutofillManagerOnClick(Z)V

    return-void
.end method

.method private greylist-max-o setSaveUiState(IZ)V
    .locals 5

    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "AutofillManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSaveUiState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    const-string v1, "AutofillManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSaveUiState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") called on existing session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; cancelling it"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->cancelSessionLocked()V

    :cond_1
    if-eqz p2, :cond_2

    iput p1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const/4 v1, 0x3

    iput v1, p0, Landroid/view/autofill/AutofillManager;->mState:I

    goto :goto_0

    :cond_2
    iput v2, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/view/autofill/AutofillManager;->mState:I

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist setSessionFinished(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    invoke-virtual {v1}, Landroid/view/autofill/AutofillId;->resetSessionId()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_1

    const-string v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSessionFinished(): from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/view/autofill/AutofillManager;->getStateAsString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; autofillableIds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p2, :cond_2

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mEnteredIds:Landroid/util/ArraySet;

    :cond_2
    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eq p1, v1, :cond_4

    const/4 v1, 0x6

    if-ne p1, v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0, v2}, Landroid/view/autofill/AutofillManager;->resetSessionLocked(Z)V

    iput p1, p0, Landroid/view/autofill/AutofillManager;->mState:I

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/view/autofill/AutofillManager;->resetSessionLocked(Z)V

    iput v2, p0, Landroid/view/autofill/AutofillManager;->mState:I

    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o setState(I)V
    .locals 6

    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "AutofillManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/view/autofill/AutofillManager;

    const-string v3, "SET_STATE_FLAG_"

    int-to-long v4, p1

    invoke-static {v2, v3, v4, v5}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    and-int/lit8 v1, p1, 0x20

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    :try_start_0
    iput-boolean v2, p0, Landroid/view/autofill/AutofillManager;->mForAugmentedAutofillOnly:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_1
    and-int/lit8 v1, p1, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v1, :cond_3

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_4

    :cond_3
    invoke-direct {p0, v2}, Landroid/view/autofill/AutofillManager;->resetSessionLocked(Z)V

    :cond_4
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mAugmentedAutofillServiceClient:Landroid/view/autofill/IAugmentedAutofillManagerClient;

    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mServiceClientCleaner:Lsun/misc/Cleaner;

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mServiceClientCleaner:Lsun/misc/Cleaner;

    invoke-virtual {v4}, Lsun/misc/Cleaner;->clean()V

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mServiceClientCleaner:Lsun/misc/Cleaner;

    :cond_5
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->notifyReenableAutofill()V

    :cond_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_7

    move v0, v2

    goto :goto_1

    :cond_7
    move v0, v3

    :goto_1
    sput-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_8

    goto :goto_2

    :cond_8
    move v2, v3

    :goto_2
    sput-boolean v2, Landroid/view/autofill/Helper;->sVerbose:Z

    return-void

    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private greylist-max-o setTrackedViews(I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)V
    .locals 6

    if-eqz p6, :cond_0

    invoke-virtual {p6}, Landroid/view/autofill/AutofillId;->resetSessionId()V

    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_1

    const-string v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTrackedViews(): sessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", trackedIds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", saveOnAllViewsInvisible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", saveOnFinish="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fillableIds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", saveTrigerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mFillableIds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mSessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v1, :cond_c

    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-ne v1, p1, :cond_c

    iput-boolean p4, p0, Landroid/view/autofill/AutofillManager;->mSaveOnFinish:Z

    const/4 v1, 0x0

    if-eqz p5, :cond_4

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    if-nez v2, :cond_2

    new-instance v2, Landroid/util/ArraySet;

    array-length v3, p5

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    :cond_2
    array-length v2, p5

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, p5, v3

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/autofill/AutofillId;->resetSessionId()V

    iget-object v5, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v2, p6}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    invoke-direct {p0, v2, v1}, Landroid/view/autofill/AutofillManager;->setNotifyOnClickLocked(Landroid/view/autofill/AutofillId;Z)V

    :cond_5
    if-eqz p6, :cond_6

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p6, v2}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iput-object p6, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Landroid/view/autofill/AutofillManager;->setNotifyOnClickLocked(Landroid/view/autofill/AutofillId;Z)V

    :cond_6
    if-nez p3, :cond_7

    const/4 p2, 0x0

    :cond_7
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    if-eqz v3, :cond_8

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    :cond_8
    if-eqz p2, :cond_a

    array-length v3, p2

    :goto_1
    if-ge v1, v3, :cond_a

    aget-object v4, p2, v1

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroid/view/autofill/AutofillId;->resetSessionId()V

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    new-instance v1, Landroid/view/autofill/AutofillManager$TrackedViews;

    invoke-static {v2}, Landroid/view/autofill/Helper;->toArray(Ljava/util/Collection;)[Landroid/view/autofill/AutofillId;

    move-result-object v3

    invoke-direct {v1, p0, p2, v3}, Landroid/view/autofill/AutofillManager$TrackedViews;-><init>(Landroid/view/autofill/AutofillManager;[Landroid/view/autofill/AutofillId;[Landroid/view/autofill/AutofillId;)V

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    goto :goto_2

    :cond_b
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    :cond_c
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o shouldIgnoreViewEnteredLocked(Landroid/view/autofill/AutofillId;I)Z
    .locals 6

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isDisabledByServiceLocked()Z

    move-result v0

    const-string v1, ") on state "

    const-string v2, ", view="

    const-string v3, "ignoring notifyViewEntered(flags="

    const-string v4, "AutofillManager"

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " because disabled by svc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v5

    :cond_1
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isFinishedLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mEnteredIds:Landroid/util/ArraySet;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mEnteredIds:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " because view was already entered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mEnteredIds:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v5

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist shouldShowAutofillDialog(Landroid/view/View;Landroid/view/autofill/AutofillId;)Z
    .locals 5

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->hasFillDialogUiFeature()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mShowAutofillDialogCalled:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mFillDialogTriggerIds:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mScreenHasCredmanField:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->getImeStateFlag(Landroid/view/View;)I

    move-result v0

    const/16 v2, 0x80

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mFillDialogTriggerIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mFillDialogTriggerIds:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillId;

    invoke-virtual {v3, p2}, Landroid/view/autofill/AutofillId;->equalsIgnoreSession(Landroid/view/autofill/AutofillId;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v1
.end method

.method private blacklist shouldSuppressDialogsForCredman(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isCredential()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->isCredmanRequested(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private blacklist startAutofillIfNeededLocked(Landroid/view/View;)Z
    .locals 10

    iget v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_1

    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isImportantForAutofill()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->tryAddServiceClientIfNeededLocked()Z

    move-result v0

    sget-boolean v2, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startAutofillIfNeededLocked(): enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mServiceClient="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AutofillManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    iget-boolean v2, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isClientDisablingEnterExitEvent()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v9

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v3, v1}, Landroid/view/autofill/AutofillManager;->startSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;I)V

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    move-object v4, v2

    move-object v6, v9

    invoke-direct/range {v3 .. v8}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V

    invoke-direct {p0, v2}, Landroid/view/autofill/AutofillManager;->addEnteredIdLocked(Landroid/view/autofill/AutofillId;)V

    const/4 v1, 0x1

    return v1

    :cond_1
    return v1
.end method

.method private greylist-max-o startSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;I)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v14, p1

    iget-object v0, v1, Landroid/view/autofill/AutofillManager;->mEnteredForAugmentedAutofillIds:Ljava/util/Set;

    const-string v15, "AutofillManager"

    if-eqz v0, :cond_0

    iget-object v0, v1, Landroid/view/autofill/AutofillManager;->mEnteredForAugmentedAutofillIds:Ljava/util/Set;

    invoke-interface {v0, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, v1, Landroid/view/autofill/AutofillManager;->mEnabledForAugmentedAutofillOnly:Z

    if-eqz v0, :cond_3

    :cond_1
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting session for augmented autofill on "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    or-int/lit8 v0, p4, 0x8

    move v2, v0

    goto :goto_0

    :cond_3
    move/from16 v2, p4

    :goto_0
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSessionLocked(): id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", bounds="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v13, p2

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", value="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v12, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", flags="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", state="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", compatMode="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/autofill/AutofillManager;->isCompatibilityModeEnabledLocked()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", augmentedOnly="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, v1, Landroid/view/autofill/AutofillManager;->mForAugmentedAutofillOnly:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", enabledAugmentedOnly="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, v1, Landroid/view/autofill/AutofillManager;->mEnabledForAugmentedAutofillOnly:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", enteredIds="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Landroid/view/autofill/AutofillManager;->mEnteredIds:Landroid/util/ArraySet;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    move-object/from16 v13, p2

    move-object/from16 v12, p3

    :goto_1
    iget-boolean v0, v1, Landroid/view/autofill/AutofillManager;->mForAugmentedAutofillOnly:Z

    const/4 v11, 0x0

    if-eqz v0, :cond_6

    iget-boolean v0, v1, Landroid/view/autofill/AutofillManager;->mEnabledForAugmentedAutofillOnly:Z

    if-nez v0, :cond_6

    and-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_6

    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "resetting mForAugmentedAutofillOnly on manual autofill request"

    invoke-static {v15, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iput-boolean v11, v1, Landroid/view/autofill/AutofillManager;->mForAugmentedAutofillOnly:Z

    :cond_6
    iget v0, v1, Landroid/view/autofill/AutofillManager;->mState:I

    if-eqz v0, :cond_8

    invoke-direct/range {p0 .. p0}, Landroid/view/autofill/AutofillManager;->isFinishedLocked()Z

    move-result v0

    if-nez v0, :cond_8

    and-int/lit8 v0, v2, 0x1

    if-nez v0, :cond_8

    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not automatically starting session for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " on state "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " and flags "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    :cond_8
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    new-instance v3, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v4, 0x1388

    invoke-direct {v3, v4}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    move-object v10, v3

    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move-object v9, v3

    iget-boolean v3, v1, Landroid/view/autofill/AutofillManager;->mEnabledForAugmentedAutofillOnly:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    const-string/jumbo v8, "startSession("

    if-nez v3, :cond_c

    :try_start_1
    iget-object v3, v1, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    if-eqz v3, :cond_c

    iget-object v3, v1, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    invoke-virtual {v3, v9}, Landroid/content/AutofillOptions;->isAutofillDisabledLocked(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, v1, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    iget-object v4, v1, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/AutofillOptions;->isAugmentedAutofillEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a

    sget-boolean v3, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): disabled by service but allowlisted for augmented autofill"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v2, v2, 0x8

    move/from16 v16, v2

    goto :goto_2

    :cond_a
    sget-boolean v3, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): ignored because disabled by service and not allowlisted for augmented autofill"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/view/autofill/AutofillManager;->setSessionFinished(ILjava/util/List;)V

    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientResetableStateAvailable()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_1 .. :try_end_1} :catch_2

    return-void

    :cond_c
    move/from16 v16, v2

    :goto_2
    :try_start_2
    iget-object v2, v1, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetActivityToken()Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, v1, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v4}, Landroid/view/autofill/IAutoFillManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    iget-object v5, v1, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v17

    iget-object v5, v1, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    const/4 v7, 0x1

    if-eqz v5, :cond_d

    move/from16 v18, v7

    goto :goto_3

    :cond_d
    move/from16 v18, v11

    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/autofill/AutofillManager;->isCompatibilityModeEnabledLocked()Z

    move-result v19

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move v14, v7

    move-object/from16 v7, p3

    move-object/from16 v20, v8

    move/from16 v8, v17

    move-object/from16 p4, v9

    move/from16 v9, v18

    move-object/from16 v17, v10

    move/from16 v10, v16

    move-object/from16 v11, p4

    move/from16 v12, v19

    move-object/from16 v13, v17

    invoke-interface/range {v2 .. v13}, Landroid/view/autofill/IAutoFillManager;->startSession(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;IZILandroid/content/ComponentName;ZLcom/android/internal/os/IResultReceiver;)V

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/util/SyncResultReceiver;->getIntResult()I

    move-result v2

    iput v2, v1, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget v2, v1, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_e

    iput v14, v1, Landroid/view/autofill/AutofillManager;->mState:I

    :cond_e
    move-object/from16 v2, v17

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/util/SyncResultReceiver;->getOptionalExtraIntResult(I)I

    move-result v3

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_10

    sget-boolean v4, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v4, :cond_f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v5, p4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "): for augmented only"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_f
    move-object/from16 v5, p4

    :goto_4
    iput-boolean v14, v1, Landroid/view/autofill/AutofillManager;->mForAugmentedAutofillOnly:Z

    goto :goto_5

    :cond_10
    move-object/from16 v5, p4

    :goto_5
    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientResetableStateAvailable()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    move/from16 v2, v16

    goto :goto_6

    :catch_1
    move-exception v0

    move/from16 v2, v16

    goto :goto_8

    :catch_2
    move-exception v0

    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception getting result from SyncResultReceiver: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v16, v2

    :goto_7
    return-void

    :catch_3
    move-exception v0

    :goto_8
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method private blacklist tryAddServiceClientIfNeededLocked()Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/autofill/AutofillManager;->tryAddServiceClientIfNeededLocked(Z)Z

    move-result v0

    return v0
.end method

.method private blacklist tryAddServiceClientIfNeededLocked(Z)Z
    .locals 12

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    const-string v3, "AutofillManager"

    if-nez v2, :cond_1

    const-string v2, "Autofill service is null!"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    const/4 v4, 0x1

    if-nez v2, :cond_7

    new-instance v2, Landroid/view/autofill/AutofillManager$AutofillManagerClient;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Landroid/view/autofill/AutofillManager$AutofillManagerClient;-><init>(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillManager$AutofillManagerClient-IA;)V

    iput-object v2, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    :try_start_0
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    new-instance v10, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v6, 0x1388

    invoke-direct {v10, v6}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    iget-object v6, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget-object v7, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetComponentName()Landroid/content/ComponentName;

    move-result-object v8

    move v9, v2

    move v11, p1

    invoke-interface/range {v6 .. v11}, Landroid/view/autofill/IAutoFillManager;->addClient(Landroid/view/autofill/IAutoFillManagerClient;Landroid/content/ComponentName;ILcom/android/internal/os/IResultReceiver;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v10}, Lcom/android/internal/util/SyncResultReceiver;->getIntResult()I

    move-result v5
    :try_end_1
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    nop

    and-int/lit8 v6, v5, 0x1

    if-eqz v6, :cond_2

    move v6, v4

    goto :goto_0

    :cond_2
    move v6, v1

    :goto_0
    :try_start_2
    iput-boolean v6, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    and-int/lit8 v6, v5, 0x2

    if-eqz v6, :cond_3

    move v6, v4

    goto :goto_1

    :cond_3
    move v6, v1

    :goto_1
    sput-boolean v6, Landroid/view/autofill/Helper;->sDebug:Z

    and-int/lit8 v6, v5, 0x4

    if-eqz v6, :cond_4

    move v6, v4

    goto :goto_2

    :cond_4
    move v6, v1

    :goto_2
    sput-boolean v6, Landroid/view/autofill/Helper;->sVerbose:Z

    and-int/lit8 v6, v5, 0x8

    if-eqz v6, :cond_5

    move v1, v4

    :cond_5
    iput-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabledForAugmentedAutofillOnly:Z

    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "receiver results: flags="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " enabled="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v6, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", enabledForAugmentedOnly: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v6, p0, Landroid/view/autofill/AutofillManager;->mEnabledForAugmentedAutofillOnly:Z

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    new-instance v6, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda1;

    invoke-direct {v6, v1, v3, v2}, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda1;-><init>(Landroid/view/autofill/IAutoFillManager;Landroid/view/autofill/IAutoFillManagerClient;I)V

    invoke-static {p0, v6}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    move-result-object v6

    iput-object v6, p0, Landroid/view/autofill/AutofillManager;->mServiceClientCleaner:Lsun/misc/Cleaner;

    goto :goto_3

    :catch_0
    move-exception v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to initialize autofill: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget-object v7, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v3, v7, v2}, Landroid/view/autofill/IAutoFillManager;->removeClient(Landroid/view/autofill/IAutoFillManagerClient;I)V

    iput-object v5, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    return v1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_7
    :goto_3
    return v4
.end method

.method private greylist-max-o updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V
    .locals 10

    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSessionLocked(): id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v3, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v9

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-interface/range {v2 .. v9}, Landroid/view/autofill/IAutoFillManager;->updateSession(ILandroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public whitelist cancel()V
    .locals 2

    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "AutofillManager"

    const-string v1, "cancel() called by app or augmented autofill service"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->cancelLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist commit()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_1

    const-string v0, "AutofillManager"

    const-string v1, "commit() called by app"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    :try_start_0
    invoke-direct {p0, v1}, Landroid/view/autofill/AutofillManager;->commitLocked(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist disableAutofillServices()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/autofill/IAutoFillManager;->disableOwnedAutofillServices(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o disableOwnedAutofillServices()V
    .locals 0

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->disableAutofillServices()V

    return-void
.end method

.method public greylist-max-o dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 6

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "AutofillManager:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "sessionId: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "state: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "context: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service client: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "client: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v3, " ("

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v2}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v3, 0x29

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(C)V

    :cond_0
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "enabled: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "enabledAugmentedOnly: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mForAugmentedAutofillOnly:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "hasService: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "hasCallback: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "onInvisibleCalled "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mOnInvisibleCalled:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "last autofilled data: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "id of last fill UI shown: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mIdShownFillUi:Landroid/view/autofill/AutofillId;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "tracked views: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    if-nez v3, :cond_3

    const-string/jumbo v3, "null"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "visible:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    invoke-static {v4}, Landroid/view/autofill/AutofillManager$TrackedViews;->-$$Nest$fgetmVisibleTrackedIds(Landroid/view/autofill/AutofillManager$TrackedViews;)Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "invisible:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    invoke-static {v4}, Landroid/view/autofill/AutofillManager$TrackedViews;->-$$Nest$fgetmInvisibleTrackedIds(Landroid/view/autofill/AutofillManager$TrackedViews;)Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_2
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "fillable ids: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "entered ids: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mEnteredIds:Landroid/util/ArraySet;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mEnteredForAugmentedAutofillIds:Ljava/util/Set;

    if-eqz v3, :cond_4

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "entered ids for augmented autofill: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mEnteredForAugmentedAutofillIds:Ljava/util/Set;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_4
    iget-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mForAugmentedAutofillOnly:Z

    if-eqz v3, :cond_5

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "For Augmented Autofill Only"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "save trigger id: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "save on finish(): "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mSaveOnFinish:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    if-eqz v3, :cond_6

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "options: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    invoke-virtual {v3, p2}, Landroid/content/AutofillOptions;->dumpShort(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_6
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "fill dialog enabled: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mIsFillDialogEnabled:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "fill dialog enabled hints: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mFillDialogEnabledHints:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "compat mode enabled: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mCompatibilityBridge:Landroid/view/autofill/AutofillManager$CompatibilityBridge;

    if-eqz v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "true"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "windowId: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mCompatibilityBridge:Landroid/view/autofill/AutofillManager$CompatibilityBridge;

    invoke-static {v4}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->-$$Nest$fgetmFocusedWindowId(Landroid/view/autofill/AutofillManager$CompatibilityBridge;)I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "nodeId: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mCompatibilityBridge:Landroid/view/autofill/AutofillManager$CompatibilityBridge;

    invoke-static {v4}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->-$$Nest$fgetmFocusedNodeId(Landroid/view/autofill/AutofillManager$CompatibilityBridge;)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "virtualId: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mCompatibilityBridge:Landroid/view/autofill/AutofillManager$CompatibilityBridge;

    invoke-static {v4}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->-$$Nest$fgetmFocusedNodeId(Landroid/view/autofill/AutofillManager$CompatibilityBridge;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "focusedBounds: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mCompatibilityBridge:Landroid/view/autofill/AutofillManager$CompatibilityBridge;

    invoke-static {v4}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->-$$Nest$fgetmFocusedBounds(Landroid/view/autofill/AutofillManager$CompatibilityBridge;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    const-string v3, "false"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "debug: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v3, Landroid/view/autofill/Helper;->sDebug:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string v3, " verbose: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v3, Landroid/view/autofill/Helper;->sVerbose:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o enableCompatibilityMode()V
    .locals 4

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "creating CompatibilityBridge for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Landroid/view/autofill/AutofillManager$CompatibilityBridge;

    invoke-direct {v1, p0}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;-><init>(Landroid/view/autofill/AutofillManager;)V

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mCompatibilityBridge:Landroid/view/autofill/AutofillManager$CompatibilityBridge;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getAutofillServiceComponentName()Landroid/content/ComponentName;
    .locals 5

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    :try_start_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v1, v0}, Landroid/view/autofill/IAutoFillManager;->getAutofillServiceComponentName(Lcom/android/internal/os/IResultReceiver;)V

    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getParcelableResult()Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to get autofill services component name. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getAvailableFieldClassificationAlgorithms()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    :try_start_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v1, v0}, Landroid/view/autofill/IAutoFillManager;->getAvailableFieldClassificationAlgorithms(Lcom/android/internal/os/IResultReceiver;)V

    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getStringArrayResult()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to get available field classification algorithms. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getDefaultFieldClassificationAlgorithm()Ljava/lang/String;
    .locals 5

    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    :try_start_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v1, v0}, Landroid/view/autofill/IAutoFillManager;->getDefaultFieldClassificationAlgorithm(Lcom/android/internal/os/IResultReceiver;)V

    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getStringResult()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to get default field classification algorithm. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-o getFillEventHistory()Landroid/service/autofill/FillEventHistory;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v1, v0}, Landroid/view/autofill/IAutoFillManager;->getFillEventHistory(Lcom/android/internal/os/IResultReceiver;)V

    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getParcelableResult()Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/FillEventHistory;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to get fill event history: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getNextAutofillId()Landroid/view/autofill/AutofillId;
    .locals 4

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetNextAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v1

    if-nez v1, :cond_1

    sget-boolean v2, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNextAutofillId(): client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " returned null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AutofillManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v1
.end method

.method public whitelist getUserData()Landroid/service/autofill/UserData;
    .locals 4

    :try_start_0
    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v1, v0}, Landroid/view/autofill/IAutoFillManager;->getUserData(Lcom/android/internal/os/IResultReceiver;)V

    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getParcelableResult()Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/UserData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to get user data for field classification. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getUserDataId()Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v1, v0}, Landroid/view/autofill/IAutoFillManager;->getUserDataId(Lcom/android/internal/os/IResultReceiver;)V

    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getStringResult()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to get user data id for field classification. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o hasAutofillFeature()Z
    .locals 1

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist hasEnabledAutofillServices()Z
    .locals 5

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v2, 0x1388

    invoke-direct {v0, v2}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    :try_start_0
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Landroid/view/autofill/IAutoFillManager;->isServiceEnabled(ILjava/lang/String;Lcom/android/internal/os/IResultReceiver;)V

    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getIntResult()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move v1, v3

    :cond_1
    return v1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to get enabled autofill services status. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist isActivityAllowedForAutofill()Z
    .locals 6

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mIsPackageFullyAllowedForAutofill:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mIsPackagePartiallyAllowedForAutofill:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetComponentName()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mAllowedActivitySet:Ljava/util/Set;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public blacklist isActivityDeniedForAutofill()Z
    .locals 6

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mIsPackageFullyDeniedForAutofill:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mIsPackagePartiallyDeniedForAutofill:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetComponentName()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mDeniedActivitySet:Ljava/util/Set;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public whitelist isAutofillSupported()Z
    .locals 5

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v2, 0x1388

    invoke-direct {v0, v2}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    :try_start_0
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v2, v3, v0}, Landroid/view/autofill/IAutoFillManager;->isServiceSupported(ILcom/android/internal/os/IResultReceiver;)V

    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getIntResult()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move v1, v3

    :cond_1
    return v1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to get autofill supported status. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-o isAutofillUiShowing()Z
    .locals 2

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAutofillClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientIsFillUiShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist isAutofillable(Landroid/view/View;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getAutofillType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isImportantForAutofill()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->isActivityDeniedForAutofill()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->isActivityAllowedForAutofill()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    return v2

    :cond_2
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mShouldEnableMultilineFilter:Z

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    invoke-direct {p0, v0}, Landroid/view/autofill/AutofillManager;->isPassingMultilineCheck(Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    invoke-direct {p0, v0}, Landroid/view/autofill/AutofillManager;->isPassingImeActionCheck(Landroid/widget/EditText;)Z

    move-result v0

    return v0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->isImportantForAutofill()Z

    move-result v0

    if-nez v0, :cond_8

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mShouldEnableAutofillOnAllViewTypes:Z

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    instance-of v0, p1, Landroid/widget/CheckBox;

    if-nez v0, :cond_7

    instance-of v0, p1, Landroid/widget/Spinner;

    if-nez v0, :cond_7

    instance-of v0, p1, Landroid/widget/DatePicker;

    if-nez v0, :cond_7

    instance-of v0, p1, Landroid/widget/TimePicker;

    if-nez v0, :cond_7

    instance-of v0, p1, Landroid/widget/RadioGroup;

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    const-string v0, "AutofillManager"

    const-string/jumbo v2, "view is not autofillable - not important and filtered by view type check"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_7
    :goto_0
    return v2

    :cond_8
    :goto_1
    return v2
.end method

.method public greylist-max-o isCompatibilityModeEnabledLocked()Z
    .locals 1

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mCompatibilityBridge:Landroid/view/autofill/AutofillManager$CompatibilityBridge;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isEnabled()Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isDisabledByServiceLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v0

    return v1

    :cond_1
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->tryAddServiceClientIfNeededLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    :cond_2
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist isFieldClassificationEnabled()Z
    .locals 5

    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    :try_start_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v1, v0}, Landroid/view/autofill/IAutoFillManager;->isFieldClassificationEnabled(Lcom/android/internal/os/IResultReceiver;)V

    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getIntResult()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to get field classification enabled status. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist isTriggerFillRequestOnFilteredImportantViewsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mIsTriggerFillRequestOnFilteredImportantViewsEnabled:Z

    return v0
.end method

.method public blacklist isTriggerFillRequestOnUnimportantViewEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mIsTriggerFillRequestOnUnimportantViewEnabled:Z

    return v0
.end method

.method blacklist notifyReenableAutofill()V
    .locals 4

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroid/content/AutofillOptions;->appDisabledExpiration:J

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/content/AutofillOptions;->disabledActivities:Landroid/util/ArrayMap;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist notifyValueChanged(Landroid/view/View;)V
    .locals 11

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    invoke-virtual {p1, v5, v5}, Landroid/view/View;->setAutofilled(ZZ)V

    goto :goto_3

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v4

    move-object v0, v4

    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {v4, v0}, Landroid/view/autofill/ParcelableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v4

    move-object v2, v4

    const/4 v1, 0x1

    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {v4}, Landroid/view/autofill/ParcelableMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    move v4, v6

    goto :goto_0

    :cond_2
    move v4, v5

    :goto_0
    iget-object v7, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {v7, v0}, Landroid/view/autofill/ParcelableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p1, v6, v4}, Landroid/view/View;->setAutofilled(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v5, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v6, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v7, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v7

    invoke-interface {v5, v6, v0, v7}, Landroid/view/autofill/IAutoFillManager;->setViewAutofilled(ILandroid/view/autofill/AutofillId;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v5

    :goto_1
    goto :goto_2

    :cond_3
    :try_start_2
    invoke-virtual {p1, v5, v5}, Landroid/view/View;->setAutofilled(ZZ)V

    iget-object v5, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {v5, v0}, Landroid/view/autofill/ParcelableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    goto :goto_3

    :cond_4
    invoke-virtual {p1, v5, v5}, Landroid/view/View;->setAutofilled(ZZ)V

    :goto_3
    iget-boolean v4, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v4, :cond_8

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_4

    :cond_5
    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v4

    move-object v0, v4

    :cond_6
    if-nez v1, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v4

    move-object v2, v4

    :cond_7
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->getImeStateFlag(Landroid/view/View;)I

    move-result v10

    const/4 v7, 0x0

    const/4 v9, 0x4

    move-object v5, p0

    move-object v6, v0

    move-object v8, v2

    invoke-direct/range {v5 .. v10}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V

    monitor-exit v3

    return-void

    :cond_8
    :goto_4
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->startAutofillIfNeededLocked(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_9

    sget-boolean v4, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_9

    const-string v4, "AutofillManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifyValueChanged("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): ignoring on state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public whitelist notifyValueChanged(Landroid/view/View;ILandroid/view/autofill/AutofillValue;)V
    .locals 8

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    if-eqz v1, :cond_2

    new-instance v1, Landroid/view/autofill/AutofillId;

    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v2

    iget v3, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-direct {v1, v2, p2, v3}, Landroid/view/autofill/AutofillId;-><init>(Landroid/view/autofill/AutofillId;II)V

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {v2, v1}, Landroid/view/autofill/ParcelableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {v2, v1}, Landroid/view/autofill/ParcelableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean v2, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_1

    const-string v2, "AutofillManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyValueChanged() virtual view autofilled successfully:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v3, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-interface {v2, v3, v1, v4}, Landroid/view/autofill/IAutoFillManager;->setViewAutofilled(ILandroid/view/autofill/AutofillId;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "AutofillManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException caught but ignored "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v1, :cond_4

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;

    move-result-object v3

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->getImeStateFlag(Landroid/view/View;)I

    move-result v7

    const/4 v4, 0x0

    const/4 v6, 0x4

    move-object v2, p0

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V

    monitor-exit v0

    return-void

    :cond_4
    :goto_1
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_5

    const-string v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyValueChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): ignoring on state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist notifyViewClicked(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/autofill/AutofillManager;->notifyViewClicked(Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method public whitelist notifyViewClicked(Landroid/view/View;I)V
    .locals 1

    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/autofill/AutofillManager;->notifyViewClicked(Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method public whitelist notifyViewEntered(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;I)V

    return-void
.end method

.method public whitelist notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;I)V

    return-void
.end method

.method public blacklist notifyViewEnteredForAugmentedAutofill(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mEnteredForAugmentedAutofillIds:Ljava/util/Set;

    if-nez v2, :cond_0

    new-instance v2, Landroid/util/ArraySet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, p0, Landroid/view/autofill/AutofillManager;->mEnteredForAugmentedAutofillIds:Ljava/util/Set;

    :cond_0
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mEnteredForAugmentedAutofillIds:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public blacklist notifyViewEnteredForFillDialog(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->shouldSuppressDialogsForCredman(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mIsFillAndSaveDialogDisabledForCredentialManager:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mScreenHasCredmanField:Z

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->isCredmanRequested(Landroid/view/View;)Z

    move-result v1

    const-string v2, "AutofillManager"

    if-eqz v1, :cond_1

    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prefetching fill response for credMan: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/autofill/AutofillId;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring Fill Dialog request since important for credMan:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/autofill/AutofillId;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getAutofillHints()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Landroid/view/autofill/AutofillManager;->notifyViewReadyInner(Landroid/view/autofill/AutofillId;[Ljava/lang/String;Z)V

    return-void
.end method

.method public whitelist notifyViewExited(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillManager;->notifyViewExitedLocked(Landroid/view/View;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist notifyViewExited(Landroid/view/View;I)V
    .locals 3

    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "AutofillManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyViewExited("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/view/autofill/AutofillManager;->notifyViewExitedLocked(Landroid/view/View;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method greylist-max-o notifyViewExitedLocked(Landroid/view/View;)V
    .locals 8

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->tryAddServiceClientIfNeededLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabledForAugmentedAutofillOnly:Z

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isClientDisablingEnterExitEvent()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v1

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V

    :cond_1
    return-void
.end method

.method public whitelist notifyViewVisibilityChanged(Landroid/view/View;IZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/autofill/AutofillManager;->notifyViewVisibilityChangedInternal(Landroid/view/View;IZZ)V

    return-void
.end method

.method public whitelist notifyViewVisibilityChanged(Landroid/view/View;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, v0}, Landroid/view/autofill/AutofillManager;->notifyViewVisibilityChangedInternal(Landroid/view/View;IZZ)V

    return-void
.end method

.method public whitelist notifyVirtualViewsReady(Landroid/view/View;Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/SparseArray<",
            "Landroid/view/autofill/VirtualViewFillInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->shouldSuppressDialogsForCredman(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mIsFillAndSaveDialogDisabledForCredentialManager:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mScreenHasCredmanField:Z

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->isCredmanRequested(Landroid/view/View;)Z

    move-result v1

    const-string v2, "AutofillManager"

    if-eqz v1, :cond_1

    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prefetching fill response for credMan: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/autofill/AutofillId;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring Fill Dialog request since important for credMan:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/autofill/AutofillId;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/VirtualViewFillInfo;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {p1, v3}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;

    move-result-object v4

    if-nez v2, :cond_4

    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Landroid/view/autofill/VirtualViewFillInfo;->getAutofillHints()[Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-direct {p0, v4, v5, v0}, Landroid/view/autofill/AutofillManager;->notifyViewReadyInner(Landroid/view/autofill/AutofillId;[Ljava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No VirtualViewInfo found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o onActivityFinishing()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mSaveOnFinish:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "AutofillManager"

    const-string/jumbo v2, "onActivityFinishing(): calling commitLocked()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/view/autofill/AutofillManager;->commitLocked(I)V

    goto :goto_0

    :cond_2
    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_3

    const-string v1, "AutofillManager"

    const-string/jumbo v2, "onActivityFinishing(): calling cancelLocked()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->cancelLocked()V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o onAuthenticationResult(ILandroid/content/Intent;Landroid/view/View;)V
    .locals 8

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "AutofillManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAuthenticationResult(): id= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAuthenticationResult(): sessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not active"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_2
    const/4 v1, 0x1

    iput v1, p0, Landroid/view/autofill/AutofillManager;->mState:I

    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mOnInvisibleCalled:Z

    if-nez v1, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/view/View;->canNotifyAutofillEnterExitEvent()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p3}, Landroid/view/autofill/AutofillManager;->notifyViewExitedLocked(Landroid/view/View;)V

    invoke-virtual {p3}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v4

    invoke-virtual {p3}, Landroid/view/View;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v6

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p3

    invoke-direct/range {v2 .. v7}, Landroid/view/autofill/AutofillManager;->notifyViewEnteredLocked(Landroid/view/View;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;I)Landroid/view/autofill/AutofillManager$AutofillCallback;

    :cond_3
    if-nez p2, :cond_4

    const-string v1, "AutofillManager"

    const-string/jumbo v2, "onAuthenticationResult(): empty intent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_4
    const-string v1, "android.view.autofill.extra.AUTHENTICATION_RESULT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v1, "android.view.autofill.extra.AUTHENTICATION_RESULT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    goto :goto_0

    :cond_5
    const-string v1, "android.service.credentials.extra.GET_CREDENTIAL_RESPONSE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {}, Landroid/service/autofill/Flags;->autofillCredmanIntegration()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "android.service.credentials.extra.GET_CREDENTIAL_RESPONSE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "android.view.autofill.extra.AUTHENTICATION_RESULT"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v3, "android.service.credentials.extra.GET_CREDENTIAL_EXCEPTION"

    const-class v4, Landroid/credentials/GetCredentialException;

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-static {}, Landroid/service/autofill/Flags;->autofillCredmanIntegration()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "android.service.credentials.extra.GET_CREDENTIAL_EXCEPTION"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_7
    const-string v4, "android.view.autofill.extra.CLIENT_STATE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_8

    const-string v5, "android.view.autofill.extra.CLIENT_STATE"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_8
    const-string v5, "android.view.autofill.extra.AUTHENTICATION_RESULT_EPHEMERAL_DATASET"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "android.view.autofill.extra.AUTHENTICATION_RESULT_EPHEMERAL_DATASET"

    const-string v6, "android.view.autofill.extra.AUTHENTICATION_RESULT_EPHEMERAL_DATASET"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    :try_start_1
    iget-object v5, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v6, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v7, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v7

    invoke-interface {v5, v2, v6, p1, v7}, Landroid/view/autofill/IAutoFillManager;->setAuthenticationResult(Landroid/os/Bundle;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v5

    :try_start_2
    const-string v6, "AutofillManager"

    const-string v7, "Error delivering authentication result"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public greylist-max-o onCreate(Landroid/os/Bundle;)V
    .locals 11

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "android:lastAutoFilledData"

    const-class v2, Landroid/view/autofill/ParcelableMap;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/ParcelableMap;

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "AutofillManager"

    const-string v2, "New session was started before onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1
    const-string v1, "android:sessionId"

    const v2, 0x7fffffff

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const-string v1, "android:state"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/view/autofill/AutofillManager;->mState:I

    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-eq v1, v2, :cond_6

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->tryAddServiceClientIfNeededLocked()Z

    move-result v1

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v4

    if-eqz v4, :cond_6

    new-instance v5, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v6, 0x1388

    invoke-direct {v5, v6}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x0

    if-eqz v1, :cond_3

    :try_start_1
    iget-object v7, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v8, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-interface {v4}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetActivityToken()Landroid/os/IBinder;

    move-result-object v9

    iget-object v10, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v10}, Landroid/view/autofill/IAutoFillManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-interface {v7, v8, v9, v10, v5}, Landroid/view/autofill/IAutoFillManager;->restoreSession(ILandroid/os/IBinder;Landroid/os/IBinder;Lcom/android/internal/os/IResultReceiver;)V

    invoke-virtual {v5}, Lcom/android/internal/util/SyncResultReceiver;->getIntResult()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    goto :goto_0

    :cond_2
    move v8, v3

    :goto_0
    move v6, v8

    goto :goto_1

    :cond_3
    const-string v7, "AutofillManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No service client for session "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-nez v6, :cond_4

    const-string v7, "AutofillManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Session "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " could not be restored"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iput v3, p0, Landroid/view/autofill/AutofillManager;->mState:I

    goto :goto_2

    :cond_4
    sget-boolean v2, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_5

    const-string v2, "AutofillManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "session "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " was restored"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-interface {v4}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientResetableStateAvailable()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "AutofillManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fail to get session restore status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_1
    move-exception v2

    const-string v3, "AutofillManager"

    const-string v6, "Could not figure out if there was an autofill session"

    invoke-static {v3, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :cond_6
    :goto_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist onInvisibleForAutofill(Z)V
    .locals 8

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mOnInvisibleCalled:Z

    if-eqz p1, :cond_0

    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V

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

.method public greylist-max-o onPendingSaveUi(ILandroid/os/IBinder;)V
    .locals 4

    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "AutofillManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPendingSaveUi("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v1, p1, p2}, Landroid/view/autofill/IAutoFillManager;->onPendingSaveUi(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "AutofillManager"

    const-string v3, "Error in onPendingSaveUi: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public greylist-max-o onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    const-string v1, "android:sessionId"

    iget v2, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    iget v1, p0, Landroid/view/autofill/AutofillManager;->mState:I

    if-eqz v1, :cond_2

    const-string v1, "android:state"

    iget v2, p0, Landroid/view/autofill/AutofillManager;->mState:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    if-eqz v1, :cond_3

    const-string v1, "android:lastAutoFilledData"

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o onVisibleForAutofill()V
    .locals 4

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    new-instance v1, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda4;-><init>(Landroid/view/autofill/AutofillManager;)V

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public whitelist registerCallback(Landroid/view/autofill/AutofillManager$AutofillCallback;)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_1

    :try_start_0
    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput-object p1, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_3

    :try_start_1
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v4, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v5, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-interface {v3, v4, v5, v2}, Landroid/view/autofill/IAutoFillManager;->setHasCallback(IIZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist requestAutofill(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-nez v1, :cond_0

    or-int/lit8 v0, v0, 0x10

    :cond_0
    invoke-direct {p0, p1, v0}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;I)V

    return-void
.end method

.method public whitelist requestAutofill(Landroid/view/View;ILandroid/graphics/Rect;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-nez v1, :cond_0

    or-int/lit8 v0, v0, 0x10

    :cond_0
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;I)V

    return-void
.end method

.method blacklist requestAutofillFromNewSession(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->cancel()V

    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;)V

    return-void
.end method

.method public greylist-max-o requestHideFillUi()V
    .locals 2

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mIdShownFillUi:Landroid/view/autofill/AutofillId;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/autofill/AutofillManager;->requestHideFillUi(Landroid/view/autofill/AutofillId;Z)V

    return-void
.end method

.method public whitelist setAugmentedAutofillWhitelist(Ljava/util/Set;Ljava/util/Set;)V
    .locals 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    const-string v0, "AutofillManager"

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v2, 0x1388

    invoke-direct {v1, v2}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    :try_start_0
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-static {p1}, Landroid/view/autofill/Helper;->toList(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {p2}, Landroid/view/autofill/Helper;->toList(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Landroid/view/autofill/IAutoFillManager;->setAugmentedAutofillWhitelist(Ljava/util/List;Ljava/util/List;Lcom/android/internal/os/IResultReceiver;)V

    invoke-virtual {v1}, Lcom/android/internal/util/SyncResultReceiver;->getIntResult()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    packed-switch v2, :pswitch_data_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAugmentedAutofillWhitelist(): received invalid result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    return-void

    :pswitch_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v3, "caller is not user\'s Augmented Autofill Service"

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to get the result of set AugmentedAutofill whitelist. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist setUserData(Landroid/service/autofill/UserData;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v0, p1}, Landroid/view/autofill/IAutoFillManager;->setUserData(Landroid/service/autofill/UserData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist shouldAlwaysIncludeWebviewInAssistStructure()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mShouldAlwaysIncludeWebviewInAssistStructure:Z

    return v0
.end method

.method public blacklist shouldIgnoreCredentialViews()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mShouldIgnoreCredentialViews:Z

    return v0
.end method

.method public blacklist shouldIncludeAllChildrenViewInAssistStructure()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mShouldIncludeAllChildrenViewInAssistStructure:Z

    return v0
.end method

.method public blacklist shouldIncludeAllChildrenViewsWithAutofillTypeNotNoneInAssistStructure()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mShouldIncludeAllViewsWithAutofillTypeNotNoneInAssistStructure:Z

    return v0
.end method

.method public blacklist shouldIncludeInvisibleViewInAssistStructure()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mShouldIncludeInvisibleViewInAssistStructure:Z

    return v0
.end method

.method public whitelist showAutofillDialog(Landroid/view/View;)Z
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/view/autofill/AutofillManager;->shouldShowAutofillDialog(Landroid/view/View;Landroid/view/autofill/AutofillId;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mShowAutofillDialogCalled:Z

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v2, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v1}, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda2;-><init>(Landroid/view/autofill/AutofillManager;Ljava/lang/ref/WeakReference;)V

    invoke-direct {p0, v2}, Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist showAutofillDialog(Landroid/view/View;I)Z
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/view/autofill/AutofillManager;->shouldShowAutofillDialog(Landroid/view/View;Landroid/view/autofill/AutofillId;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mShowAutofillDialogCalled:Z

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v2, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v1, p2}, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda3;-><init>(Landroid/view/autofill/AutofillManager;Ljava/lang/ref/WeakReference;I)V

    invoke-direct {p0, v2}, Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist unregisterCallback(Landroid/view/autofill/AutofillManager$AutofillCallback;)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v2, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/view/autofill/IAutoFillManager;->setHasCallback(IIZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
