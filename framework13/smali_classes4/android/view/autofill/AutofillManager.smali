.class public final Landroid/view/autofill/AutofillManager;
.super Ljava/lang/Object;
.source "AutofillManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient;,
        Landroid/view/autofill/AutofillManager$AutofillManagerClient;,
        Landroid/view/autofill/AutofillManager$AutofillCallback;,
        Landroid/view/autofill/AutofillManager$TrackedViews;,
        Landroid/view/autofill/AutofillManager$CompatibilityBridge;,
        Landroid/view/autofill/AutofillManager$AutofillClient;,
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

.field private static final greylist-max-o AUTHENTICATION_ID_DATASET_ID_MASK:I = 0xffff

.field private static final greylist-max-o AUTHENTICATION_ID_DATASET_ID_SHIFT:I = 0x10

.field public static final greylist-max-o AUTHENTICATION_ID_DATASET_ID_UNDEFINED:I = 0xffff

.field public static final blacklist COMMIT_REASON_ACTIVITY_FINISHED:I = 0x1

.field public static final blacklist COMMIT_REASON_UNKNOWN:I = 0x0

.field public static final blacklist COMMIT_REASON_VIEW_CHANGED:I = 0x4

.field public static final blacklist COMMIT_REASON_VIEW_CLICKED:I = 0x3

.field public static final blacklist COMMIT_REASON_VIEW_COMMITTED:I = 0x2

.field public static final blacklist DEFAULT_LOGGING_LEVEL:I

.field public static final blacklist DEFAULT_MAX_PARTITIONS_SIZE:I = 0xa

.field public static final blacklist DEVICE_CONFIG_AUGMENTED_SERVICE_IDLE_UNBIND_TIMEOUT:Ljava/lang/String; = "augmented_service_idle_unbind_timeout"

.field public static final blacklist DEVICE_CONFIG_AUGMENTED_SERVICE_REQUEST_TIMEOUT:Ljava/lang/String; = "augmented_service_request_timeout"

.field public static final blacklist DEVICE_CONFIG_AUTOFILL_COMPAT_MODE_ALLOWED_PACKAGES:Ljava/lang/String; = "compat_mode_allowed_packages"

.field public static final blacklist DEVICE_CONFIG_AUTOFILL_DIALOG_ENABLED:Ljava/lang/String; = "autofill_dialog_enabled"

.field public static final blacklist DEVICE_CONFIG_AUTOFILL_DIALOG_HINTS:Ljava/lang/String; = "autofill_dialog_hints"

.field public static final blacklist DEVICE_CONFIG_AUTOFILL_SMART_SUGGESTION_SUPPORTED_MODES:Ljava/lang/String; = "smart_suggestion_supported_modes"

.field public static final blacklist DEVICE_CONFIG_AUTOFILL_TOOLTIP_SHOW_UP_DELAY:Ljava/lang/String; = "autofill_inline_tooltip_first_show_delay"

.field private static final blacklist DIALOG_HINTS_DELIMITER:Ljava/lang/String; = ":"

.field public static final whitelist EXTRA_ASSIST_STRUCTURE:Ljava/lang/String; = "android.view.autofill.extra.ASSIST_STRUCTURE"

.field public static final blacklist EXTRA_AUGMENTED_AUTOFILL_CLIENT:Ljava/lang/String; = "android.view.autofill.extra.AUGMENTED_AUTOFILL_CLIENT"

.field public static final whitelist EXTRA_AUTHENTICATION_RESULT:Ljava/lang/String; = "android.view.autofill.extra.AUTHENTICATION_RESULT"

.field public static final whitelist EXTRA_AUTHENTICATION_RESULT_EPHEMERAL_DATASET:Ljava/lang/String; = "android.view.autofill.extra.AUTHENTICATION_RESULT_EPHEMERAL_DATASET"

.field public static final whitelist EXTRA_CLIENT_STATE:Ljava/lang/String; = "android.view.autofill.extra.CLIENT_STATE"

.field public static final whitelist EXTRA_INLINE_SUGGESTIONS_REQUEST:Ljava/lang/String; = "android.view.autofill.extra.INLINE_SUGGESTIONS_REQUEST"

.field public static final blacklist EXTRA_RESTORE_CROSS_ACTIVITY:Ljava/lang/String; = "android.view.autofill.extra.RESTORE_CROSS_ACTIVITY"

.field public static final greylist-max-o EXTRA_RESTORE_SESSION_TOKEN:Ljava/lang/String; = "android.view.autofill.extra.RESTORE_SESSION_TOKEN"

.field public static final greylist-max-o FC_SERVICE_TIMEOUT:I = 0x1388

.field private static final blacklist FILL_DIALOG_ENABLED_DEFAULT_HINTS:Ljava/lang/String; = ""

.field public static final greylist-max-o FLAG_ADD_CLIENT_DEBUG:I = 0x2

.field public static final greylist-max-o FLAG_ADD_CLIENT_ENABLED:I = 0x1

.field public static final blacklist FLAG_ADD_CLIENT_ENABLED_FOR_AUGMENTED_AUTOFILL_ONLY:I = 0x8

.field public static final greylist-max-o FLAG_ADD_CLIENT_VERBOSE:I = 0x4

.field public static final blacklist FLAG_SMART_SUGGESTION_OFF:I = 0x0

.field public static final blacklist FLAG_SMART_SUGGESTION_SYSTEM:I = 0x1

.field private static final blacklist HAS_FILL_DIALOG_UI_FEATURE_DEFAULT:Z = false

.field private static final greylist-max-o LAST_AUTOFILLED_DATA_TAG:Ljava/lang/String; = "android:lastAutoFilledData"

.field public static final blacklist MAX_TEMP_AUGMENTED_SERVICE_DURATION_MS:I = 0x1d4c0

.field public static final blacklist NO_LOGGING:I = 0x0

.field public static final greylist-max-o NO_SESSION:I = 0x7fffffff

.field public static final greylist-max-o PENDING_UI_OPERATION_CANCEL:I = 0x1

.field public static final greylist-max-o PENDING_UI_OPERATION_RESTORE:I = 0x2

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

.field public static final greylist-max-o STATE_SHOWING_SAVE_UI:I = 0x3

.field private static final greylist-max-o STATE_TAG:Ljava/lang/String; = "android:state"

.field public static final greylist-max-o STATE_UNKNOWN:I = 0x0

.field public static final greylist-max-o STATE_UNKNOWN_COMPAT_MODE:I = 0x5

.field public static final blacklist STATE_UNKNOWN_FAILED:I = 0x6

.field private static final blacklist SYNC_CALLS_TIMEOUT_MS:I = 0x1388

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AutofillManager"


# instance fields
.field private blacklist mAugmentedAutofillServiceClient:Landroid/view/autofill/IAugmentedAutofillManagerClient;

.field private greylist-max-o mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

.field private greylist-max-o mCompatibilityBridge:Landroid/view/autofill/AutofillManager$CompatibilityBridge;

.field private final greylist-max-o mContext:Landroid/content/Context;

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

.field private final blacklist mIsFillDialogEnabled:Z

.field private blacklist mIsFillRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private greylist-max-o mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final greylist-max-o mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private greylist-max-o mOnInvisibleCalled:Z

.field private final blacklist mOptions:Landroid/content/AutofillOptions;

.field private greylist-max-o mSaveOnFinish:Z

.field private greylist-max-o mSaveTriggerId:Landroid/view/autofill/AutofillId;

.field private final greylist-max-o mService:Landroid/view/autofill/IAutoFillManager;

.field private greylist-max-o mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

.field private greylist-max-o mServiceClientCleaner:Lsun/misc/Cleaner;

.field private greylist-max-o mSessionId:I

.field private blacklist mShowAutofillDialogCalled:Z

.field private greylist-max-o mState:I

.field private greylist-max-o mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/view/autofill/AutofillManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

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

    .line 304
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 305
    const/4 v0, 0x2

    goto :goto_0

    .line 306
    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput v0, Landroid/view/autofill/AutofillManager;->DEFAULT_LOGGING_LEVEL:I

    .line 304
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/view/autofill/IAutoFillManager;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/view/autofill/IAutoFillManager;

    .line 864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 614
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Landroid/view/autofill/AutofillManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 627
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    .line 643
    const v0, 0x7fffffff

    iput v0, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    .line 646
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    .line 727
    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mShowAutofillDialogCalled:Z

    .line 865
    const-string v1, "context cannot be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    .line 866
    iput-object p2, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    .line 867
    invoke-virtual {p1}, Landroid/content/Context;->getAutofillOptions()Landroid/content/AutofillOptions;

    move-result-object v1

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    .line 868
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Landroid/view/autofill/AutofillManager;->mIsFillRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 870
    const-string v2, "autofill"

    const-string v3, "autofill_dialog_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/view/autofill/AutofillManager;->mIsFillDialogEnabled:Z

    .line 874
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getFillDialogEnabledHints()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/view/autofill/AutofillManager;->mFillDialogEnabledHints:[Ljava/lang/String;

    .line 875
    sget-boolean v4, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v4, :cond_0

    .line 876
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fill dialog is enabled:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", hints="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 877
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 876
    const-string v3, "AutofillManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    :cond_0
    if-eqz v1, :cond_3

    .line 881
    iget v2, v1, Landroid/content/AutofillOptions;->loggingLevel:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    sput-boolean v2, Landroid/view/autofill/Helper;->sDebug:Z

    .line 882
    iget v1, v1, Landroid/content/AutofillOptions;->loggingLevel:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    move v0, v3

    :cond_2
    sput-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    .line 884
    :cond_3
    return-void
.end method

.method private greylist-max-o addEnteredIdLocked(Landroid/view/autofill/AutofillId;)V
    .locals 2
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 1490
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mEnteredIds:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    .line 1491
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Landroid/view/autofill/AutofillManager;->mEnteredIds:Landroid/util/ArraySet;

    .line 1493
    :cond_0
    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->resetSessionId()V

    .line 1494
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mEnteredIds:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1495
    return-void
.end method

.method private blacklist authenticate(IILandroid/content/IntentSender;Landroid/content/Intent;Z)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "authenticationId"    # I
    .param p3, "intent"    # Landroid/content/IntentSender;
    .param p4, "fillInIntent"    # Landroid/content/Intent;
    .param p5, "authenticateInline"    # Z

    .line 2426
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2427
    :try_start_0
    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-ne p1, v1, :cond_0

    .line 2428
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v1

    .line 2429
    .local v1, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-eqz v1, :cond_0

    .line 2432
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/view/autofill/AutofillManager;->mOnInvisibleCalled:Z

    .line 2433
    invoke-interface {v1, p2, p3, p4, p5}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientAuthenticate(ILandroid/content/IntentSender;Landroid/content/Intent;Z)V

    .line 2437
    .end local v1    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    :cond_0
    monitor-exit v0

    .line 2438
    return-void

    .line 2437
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist autofill(ILjava/util/List;Ljava/util/List;Z)V
    .locals 18
    .param p1, "sessionId"    # I
    .param p4, "hideHighlight"    # Z
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

    .line 2523
    .local p2, "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .local p3, "values":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    move-object/from16 v1, p0

    iget-object v2, v1, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2524
    :try_start_0
    iget v0, v1, Landroid/view/autofill/AutofillManager;->mSessionId:I

    move/from16 v3, p1

    if-eq v3, v0, :cond_0

    .line 2525
    monitor-exit v2

    return-void

    .line 2528
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    move-object v4, v0

    .line 2529
    .local v4, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-nez v4, :cond_1

    .line 2530
    monitor-exit v2

    return-void

    .line 2533
    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    move v5, v0

    .line 2534
    .local v5, "itemCount":I
    const/4 v0, 0x0

    .line 2535
    .local v0, "numApplied":I
    const/4 v6, 0x0

    .line 2536
    .local v6, "virtualValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/util/SparseArray<Landroid/view/autofill/AutofillValue;>;>;"
    nop

    .line 2537
    invoke-static/range {p2 .. p2}, Landroid/view/autofill/Helper;->toArray(Ljava/util/Collection;)[Landroid/view/autofill/AutofillId;

    move-result-object v7

    .line 2536
    invoke-interface {v4, v7}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientFindViewsByAutofillIdTraversal([Landroid/view/autofill/AutofillId;)[Landroid/view/View;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2539
    .local v7, "views":[Landroid/view/View;
    const/4 v8, 0x0

    .line 2541
    .local v8, "failedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    const/4 v9, 0x0

    move-object/from16 v17, v6

    move v6, v0

    move v0, v9

    move-object v9, v8

    move-object/from16 v8, v17

    .local v0, "i":I
    .local v6, "numApplied":I
    .local v8, "virtualValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/util/SparseArray<Landroid/view/autofill/AutofillValue;>;>;"
    .local v9, "failedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    :goto_0
    if-ge v0, v5, :cond_8

    .line 2542
    move-object/from16 v10, p2

    :try_start_1
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/autofill/AutofillId;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2543
    .local v11, "id":Landroid/view/autofill/AutofillId;
    move-object/from16 v12, p3

    :try_start_2
    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/autofill/AutofillValue;

    .line 2544
    .local v13, "value":Landroid/view/autofill/AutofillValue;
    aget-object v14, v7, v0

    .line 2545
    .local v14, "view":Landroid/view/View;
    if-nez v14, :cond_3

    .line 2549
    const-string v15, "AutofillManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v4

    .end local v4    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    .local v16, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    const-string v4, "autofill(): no View with id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2550
    if-nez v9, :cond_2

    .line 2551
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v3

    .line 2553
    :cond_2
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2554
    move/from16 v3, p4

    goto :goto_1

    .line 2556
    .end local v16    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    .restart local v4    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    :cond_3
    move-object/from16 v16, v4

    .end local v4    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    .restart local v16    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    invoke-virtual {v11}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2557
    if-nez v8, :cond_4

    .line 2559
    new-instance v3, Landroid/util/ArrayMap;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v8, v3

    .line 2561
    :cond_4
    invoke-virtual {v8, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 2562
    .local v3, "valuesByParent":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/autofill/AutofillValue;>;"
    if-nez v3, :cond_5

    .line 2564
    new-instance v4, Landroid/util/SparseArray;

    const/4 v15, 0x5

    invoke-direct {v4, v15}, Landroid/util/SparseArray;-><init>(I)V

    move-object v3, v4

    .line 2565
    invoke-virtual {v8, v14, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2567
    :cond_5
    invoke-virtual {v11}, Landroid/view/autofill/AutofillId;->getVirtualChildIntId()I

    move-result v4

    invoke-virtual {v3, v4, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2568
    .end local v3    # "valuesByParent":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/autofill/AutofillValue;>;"
    move/from16 v3, p4

    goto :goto_1

    .line 2570
    :cond_6
    iget-object v3, v1, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    if-nez v3, :cond_7

    .line 2571
    new-instance v3, Landroid/view/autofill/ParcelableMap;

    sub-int v4, v5, v0

    invoke-direct {v3, v4}, Landroid/view/autofill/ParcelableMap;-><init>(I)V

    iput-object v3, v1, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    .line 2573
    :cond_7
    iget-object v3, v1, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {v3, v11, v13}, Landroid/view/autofill/ParcelableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2575
    invoke-virtual {v14, v13}, Landroid/view/View;->autofill(Landroid/view/autofill/AutofillValue;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2581
    move/from16 v3, p4

    :try_start_3
    invoke-direct {v1, v14, v13, v3}, Landroid/view/autofill/AutofillManager;->setAutofilledIfValuesIs(Landroid/view/View;Landroid/view/autofill/AutofillValue;Z)V

    .line 2583
    add-int/lit8 v6, v6, 0x1

    .line 2541
    .end local v11    # "id":Landroid/view/autofill/AutofillId;
    .end local v13    # "value":Landroid/view/autofill/AutofillValue;
    .end local v14    # "view":Landroid/view/View;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move/from16 v3, p1

    move-object/from16 v4, v16

    goto/16 :goto_0

    .line 2615
    .end local v0    # "i":I
    .end local v5    # "itemCount":I
    .end local v6    # "numApplied":I
    .end local v7    # "views":[Landroid/view/View;
    .end local v8    # "virtualValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/util/SparseArray<Landroid/view/autofill/AutofillValue;>;>;"
    .end local v9    # "failedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v16    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    goto/16 :goto_4

    .line 2541
    .restart local v0    # "i":I
    .restart local v4    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    .restart local v5    # "itemCount":I
    .restart local v6    # "numApplied":I
    .restart local v7    # "views":[Landroid/view/View;
    .restart local v8    # "virtualValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/util/SparseArray<Landroid/view/autofill/AutofillValue;>;>;"
    .restart local v9    # "failedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    :cond_8
    move-object/from16 v10, p2

    move-object/from16 v12, p3

    move/from16 v3, p4

    move-object/from16 v16, v4

    .line 2587
    .end local v0    # "i":I
    .end local v4    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    .restart local v16    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-eqz v9, :cond_a

    .line 2588
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_9

    .line 2589
    const-string v0, "AutofillManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "autofill(): total failed views: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 2592
    :cond_9
    :try_start_4
    iget-object v0, v1, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v4, v1, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v11, v1, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getUserId()I

    move-result v11

    invoke-interface {v0, v4, v9, v11}, Landroid/view/autofill/IAutoFillManager;->setAutofillFailure(ILjava/util/List;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 2598
    goto :goto_2

    .line 2593
    :catch_0
    move-exception v0

    .line 2597
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local p0    # "this":Landroid/view/autofill/AutofillManager;
    .end local p1    # "sessionId":I
    .end local p2    # "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .end local p3    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    .end local p4    # "hideHighlight":Z
    throw v4

    .line 2601
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/view/autofill/AutofillManager;
    .restart local p1    # "sessionId":I
    .restart local p2    # "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .restart local p3    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    .restart local p4    # "hideHighlight":Z
    :cond_a
    :goto_2
    if-eqz v8, :cond_b

    .line 2602
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v0, v4, :cond_b

    .line 2603
    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 2604
    .local v4, "parent":Landroid/view/View;
    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseArray;

    .line 2605
    .local v11, "childrenValues":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/autofill/AutofillValue;>;"
    invoke-virtual {v4, v11}, Landroid/view/View;->autofill(Landroid/util/SparseArray;)V

    .line 2606
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v13

    add-int/2addr v6, v13

    .line 2602
    .end local v4    # "parent":Landroid/view/View;
    .end local v11    # "childrenValues":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/autofill/AutofillValue;>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2612
    .end local v0    # "i":I
    :cond_b
    iget-object v0, v1, Landroid/view/autofill/AutofillManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v4, 0x391

    invoke-direct {v1, v4}, Landroid/view/autofill/AutofillManager;->newLog(I)Landroid/metrics/LogMaker;

    move-result-object v4

    const/16 v11, 0x392

    .line 2613
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v11, v13}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v4

    const/16 v11, 0x393

    .line 2614
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v11, v13}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v4

    .line 2612
    invoke-virtual {v0, v4}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 2615
    .end local v5    # "itemCount":I
    .end local v6    # "numApplied":I
    .end local v7    # "views":[Landroid/view/View;
    .end local v8    # "virtualValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/util/SparseArray<Landroid/view/autofill/AutofillValue;>;>;"
    .end local v9    # "failedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v16    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    monitor-exit v2

    .line 2616
    return-void

    .line 2615
    :catchall_2
    move-exception v0

    move-object/from16 v10, p2

    :goto_4
    move-object/from16 v12, p3

    :goto_5
    move/from16 v3, p4

    :goto_6
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_6
.end method

.method private blacklist autofillContent(ILandroid/view/autofill/AutofillId;Landroid/content/ClipData;)V
    .locals 10
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "clip"    # Landroid/content/ClipData;

    .line 2619
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2620
    :try_start_0
    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-eq p1, v1, :cond_0

    .line 2621
    monitor-exit v0

    return-void

    .line 2623
    :cond_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v1

    .line 2624
    .local v1, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-nez v1, :cond_1

    .line 2625
    monitor-exit v0

    return-void

    .line 2627
    :cond_1
    invoke-interface {v1, p2}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientFindViewByAutofillIdTraversal(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v2

    .line 2628
    .local v2, "view":Landroid/view/View;
    if-nez v2, :cond_2

    .line 2632
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

    .line 2633
    invoke-direct {p0, p2}, Landroid/view/autofill/AutofillManager;->reportAutofillContentFailure(Landroid/view/autofill/AutofillId;)V

    .line 2634
    monitor-exit v0

    return-void

    .line 2636
    :cond_2
    new-instance v3, Landroid/view/ContentInfo$Builder;

    const/4 v4, 0x4

    invoke-direct {v3, p3, v4}, Landroid/view/ContentInfo$Builder;-><init>(Landroid/content/ClipData;I)V

    invoke-virtual {v3}, Landroid/view/ContentInfo$Builder;->build()Landroid/view/ContentInfo;

    move-result-object v3

    .line 2637
    .local v3, "payload":Landroid/view/ContentInfo;
    invoke-virtual {v2, v3}, Landroid/view/View;->performReceiveContent(Landroid/view/ContentInfo;)Landroid/view/ContentInfo;

    move-result-object v4

    .line 2638
    .local v4, "result":Landroid/view/ContentInfo;
    if-eqz v4, :cond_3

    .line 2639
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

    .line 2641
    invoke-direct {p0, p2}, Landroid/view/autofill/AutofillManager;->reportAutofillContentFailure(Landroid/view/autofill/AutofillId;)V

    .line 2642
    monitor-exit v0

    return-void

    .line 2644
    :cond_3
    iget-object v5, p0, Landroid/view/autofill/AutofillManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v6, 0x391

    invoke-direct {p0, v6}, Landroid/view/autofill/AutofillManager;->newLog(I)Landroid/metrics/LogMaker;

    move-result-object v6

    const/16 v7, 0x392

    .line 2645
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v6

    const/16 v7, 0x393

    .line 2646
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v6

    .line 2644
    invoke-virtual {v5, v6}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 2647
    .end local v1    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "payload":Landroid/view/ContentInfo;
    .end local v4    # "result":Landroid/view/ContentInfo;
    monitor-exit v0

    .line 2648
    return-void

    .line 2647
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o cancelLocked()V
    .locals 1

    .line 1721
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1722
    return-void

    .line 1724
    :cond_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->cancelSessionLocked()V

    .line 1725
    return-void
.end method

.method private greylist-max-o cancelSessionLocked()V
    .locals 3

    .line 2144
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

    .line 2146
    :cond_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2149
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

    .line 2152
    nop

    .line 2154
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/autofill/AutofillManager;->resetSessionLocked(Z)V

    .line 2155
    return-void

    .line 2150
    :catch_0
    move-exception v0

    .line 2151
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist commitLocked(I)V
    .locals 1
    .param p1, "commitReason"    # I

    .line 1692
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1693
    return-void

    .line 1695
    :cond_0
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->finishSessionLocked(I)V

    .line 1696
    return-void
.end method

.method private greylist-max-o dispatchUnhandledKey(ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .line 2441
    invoke-direct {p0, p2}, Landroid/view/autofill/AutofillManager;->findView(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v0

    .line 2442
    .local v0, "anchor":Landroid/view/View;
    if-nez v0, :cond_0

    .line 2443
    return-void

    .line 2446
    :cond_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2447
    :try_start_0
    iget v2, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-ne v2, p1, :cond_1

    .line 2448
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v2

    .line 2450
    .local v2, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-eqz v2, :cond_1

    .line 2451
    invoke-interface {v2, v0, p3}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientDispatchUnhandledKey(Landroid/view/View;Landroid/view/KeyEvent;)V

    .line 2454
    .end local v2    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    :cond_1
    monitor-exit v1

    .line 2455
    return-void

    .line 2454
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private greylist-max-o findView(Landroid/view/autofill/AutofillId;)Landroid/view/View;
    .locals 2
    .param p1, "autofillId"    # Landroid/view/autofill/AutofillId;

    .line 2998
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 2999
    .local v0, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-eqz v0, :cond_0

    .line 3000
    invoke-interface {v0, p1}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientFindViewByAutofillIdTraversal(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 3002
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist finishSessionLocked(I)V
    .locals 3
    .param p1, "commitReason"    # I

    .line 2129
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

    .line 2131
    :cond_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2134
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

    .line 2137
    nop

    .line 2139
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/autofill/AutofillManager;->resetSessionLocked(Z)V

    .line 2140
    return-void

    .line 2135
    :catch_0
    move-exception v0

    .line 2136
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist getAugmentedAutofillClient(Lcom/android/internal/os/IResultReceiver;)V
    .locals 6
    .param p1, "result"    # Lcom/android/internal/os/IResultReceiver;

    .line 2811
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2812
    :try_start_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mAugmentedAutofillServiceClient:Landroid/view/autofill/IAugmentedAutofillManagerClient;

    if-nez v1, :cond_0

    .line 2813
    new-instance v1, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient;-><init>(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient-IA;)V

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mAugmentedAutofillServiceClient:Landroid/view/autofill/IAugmentedAutofillManagerClient;

    .line 2815
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2816
    .local v1, "resultData":Landroid/os/Bundle;
    const-string v2, "android.view.autofill.extra.AUGMENTED_AUTOFILL_CLIENT"

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mAugmentedAutofillServiceClient:Landroid/view/autofill/IAugmentedAutofillManagerClient;

    .line 2817
    invoke-interface {v3}, Landroid/view/autofill/IAugmentedAutofillManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 2816
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2820
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {p1, v2, v1}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2823
    goto :goto_0

    .line 2821
    :catch_0
    move-exception v2

    .line 2822
    .local v2, "e":Landroid/os/RemoteException;
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

    .line 2824
    .end local v1    # "resultData":Landroid/os/Bundle;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 2825
    return-void

    .line 2824
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static greylist-max-o getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;
    .locals 2
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "virtualId"    # I

    .line 2042
    new-instance v0, Landroid/view/autofill/AutofillId;

    invoke-virtual {p0}, Landroid/view/View;->getAutofillViewId()I

    move-result v1

    invoke-direct {v0, v1, p1}, Landroid/view/autofill/AutofillId;-><init>(II)V

    return-object v0
.end method

.method private greylist-max-o getClient()Landroid/view/autofill/AutofillManager$AutofillClient;
    .locals 3

    .line 1947
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAutofillClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 1948
    .local v0, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-nez v0, :cond_0

    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_0

    .line 1949
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

    .line 1952
    :cond_0
    return-object v0
.end method

.method public static greylist-max-o getDatasetIdFromAuthenticationId(I)I
    .locals 1
    .param p0, "authRequestId"    # I

    .line 611
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method private blacklist getFillDialogEnabledHints()[Ljava/lang/String;
    .locals 4

    .line 887
    const-string v0, "autofill"

    const-string v1, "autofill_dialog_hints"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 891
    .local v0, "dialogHints":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 892
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    return-object v1

    .line 895
    :cond_0
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda3;-><init>()V

    new-instance v3, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/ArrayUtils;->filter([Ljava/lang/Object;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private blacklist getImeStateFlag(Landroid/view/View;)I
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 1202
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 1203
    .local v0, "rootWindowInsets":Landroid/view/WindowInsets;
    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1204
    const/16 v1, 0x80

    return v1

    .line 1206
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static greylist-max-o getRequestIdFromAuthenticationId(I)I
    .locals 1
    .param p0, "authRequestId"    # I

    .line 600
    shr-int/lit8 v0, p0, 0x10

    return v0
.end method

.method public static blacklist getSmartSuggestionModeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "flags"    # I

    .line 3120
    packed-switch p0, :pswitch_data_0

    .line 3126
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

    .line 3124
    :pswitch_0
    const-string v0, "SYSTEM"

    return-object v0

    .line 3122
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
    .param p0, "state"    # I

    .line 3098
    packed-switch p0, :pswitch_data_0

    .line 3114
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

    .line 3112
    :pswitch_0
    const-string v0, "UNKNOWN_FAILED"

    return-object v0

    .line 3110
    :pswitch_1
    const-string v0, "UNKNOWN_COMPAT_MODE"

    return-object v0

    .line 3108
    :pswitch_2
    const-string v0, "DISABLED_BY_SERVICE"

    return-object v0

    .line 3106
    :pswitch_3
    const-string v0, "SHOWING_SAVE_UI"

    return-object v0

    .line 3104
    :pswitch_4
    const-string v0, "FINISHED"

    return-object v0

    .line 3102
    :pswitch_5
    const-string v0, "ACTIVE"

    return-object v0

    .line 3100
    :pswitch_6
    const-string v0, "UNKNOWN"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 3093
    iget v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    invoke-static {v0}, Landroid/view/autofill/AutofillManager;->getStateAsString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist hasFillDialogUiFeature()Z
    .locals 1

    .line 1198
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

    .line 3132
    iget v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private greylist-max-o isClientDisablingEnterExitEvent()Z
    .locals 2

    .line 1239
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 1240
    .local v0, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
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

    .line 1234
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 1235
    .local v0, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
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

.method private greylist-max-o isDisabledByServiceLocked()Z
    .locals 2

    .line 3137
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

    .line 3142
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

.method static synthetic blacklist lambda$getFillDialogEnabledHints$0(I)[Ljava/lang/String;
    .locals 1
    .param p0, "x$0"    # I

    .line 895
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist lambda$getFillDialogEnabledHints$1(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 896
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic blacklist lambda$requestShowSoftInput$4(Landroid/view/View;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;

    .line 2847
    invoke-static {p0}, Landroid/view/autofill/AutofillManager;->requestShowSoftInputInViewThread(Landroid/view/View;)V

    return-void
.end method

.method static synthetic blacklist lambda$tryAddServiceClientIfNeededLocked$3(Landroid/view/autofill/IAutoFillManager;Landroid/view/autofill/IAutoFillManagerClient;I)V
    .locals 1
    .param p0, "service"    # Landroid/view/autofill/IAutoFillManager;
    .param p1, "serviceClient"    # Landroid/view/autofill/IAutoFillManagerClient;
    .param p2, "userId"    # I

    .line 2235
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/view/autofill/IAutoFillManager;->removeClient(Landroid/view/autofill/IAutoFillManagerClient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2237
    goto :goto_0

    .line 2236
    :catch_0
    move-exception v0

    .line 2238
    :goto_0
    return-void
.end method

.method public static greylist-max-o makeAuthenticationId(II)I
    .locals 2
    .param p0, "requestId"    # I
    .param p1, "datasetId"    # I

    .line 588
    shl-int/lit8 v0, p0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    return v0
.end method

.method private greylist-max-o newLog(I)Landroid/metrics/LogMaker;
    .locals 5
    .param p1, "category"    # I

    .line 2660
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    .line 2661
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x5b0

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 2663
    .local v0, "log":Landroid/metrics/LogMaker;
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->isCompatibilityModeEnabledLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2664
    const/16 v1, 0x586

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 2666
    :cond_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v1

    .line 2667
    .local v1, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-nez v1, :cond_1

    .line 2669
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    goto :goto_0

    .line 2672
    :cond_1
    new-instance v2, Landroid/content/ComponentName;

    .line 2673
    invoke-interface {v1}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2674
    .local v2, "sanitizedComponentName":Landroid/content/ComponentName;
    invoke-virtual {v0, v2}, Landroid/metrics/LogMaker;->setComponentName(Landroid/content/ComponentName;)Landroid/metrics/LogMaker;

    .line 2676
    .end local v2    # "sanitizedComponentName":Landroid/content/ComponentName;
    :goto_0
    return-object v0
.end method

.method private blacklist notifyCallback(ILandroid/view/autofill/AutofillId;I)V
    .locals 4
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "event"    # I

    .line 2964
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    .line 2965
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

    .line 2968
    :cond_0
    invoke-direct {p0, p2}, Landroid/view/autofill/AutofillManager;->findView(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v0

    .line 2969
    .local v0, "anchor":Landroid/view/View;
    if-nez v0, :cond_1

    .line 2970
    return-void

    .line 2973
    :cond_1
    const/4 v1, 0x0

    .line 2974
    .local v1, "callback":Landroid/view/autofill/AutofillManager$AutofillCallback;
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2975
    :try_start_0
    iget v3, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-ne v3, p1, :cond_2

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2976
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    move-object v1, v3

    .line 2978
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2980
    if-eqz v1, :cond_4

    .line 2981
    invoke-virtual {p2}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2982
    nop

    .line 2983
    invoke-virtual {p2}, Landroid/view/autofill/AutofillId;->getVirtualChildIntId()I

    move-result v2

    .line 2982
    invoke-virtual {v1, v0, v2, p3}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;II)V

    goto :goto_0

    .line 2985
    :cond_3
    invoke-virtual {v1, v0, p3}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;I)V

    .line 2988
    :cond_4
    :goto_0
    return-void

    .line 2978
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
    .param p1, "disableDuration"    # J
    .param p3, "componentName"    # Landroid/content/ComponentName;

    .line 2915
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2916
    :try_start_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    if-nez v1, :cond_0

    .line 2917
    monitor-exit v0

    return-void

    .line 2919
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long/2addr v1, p1

    .line 2921
    .local v1, "expiration":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_1

    .line 2922
    const-wide v1, 0x7fffffffffffffffL

    .line 2924
    :cond_1
    if-eqz p3, :cond_3

    .line 2925
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    iget-object v3, v3, Landroid/content/AutofillOptions;->disabledActivities:Landroid/util/ArrayMap;

    if-nez v3, :cond_2

    .line 2926
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, v3, Landroid/content/AutofillOptions;->disabledActivities:Landroid/util/ArrayMap;

    .line 2928
    :cond_2
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    iget-object v3, v3, Landroid/content/AutofillOptions;->disabledActivities:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2930
    :cond_3
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    iput-wide v1, v3, Landroid/content/AutofillOptions;->appDisabledExpiration:J

    .line 2932
    .end local v1    # "expiration":J
    :goto_0
    monitor-exit v0

    .line 2933
    return-void

    .line 2932
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o notifyNoFillUi(ILandroid/view/autofill/AutofillId;I)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "sessionFinishedState"    # I

    .line 2946
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    .line 2947
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

    .line 2949
    :cond_0
    invoke-direct {p0, p2}, Landroid/view/autofill/AutofillManager;->findView(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v0

    .line 2950
    .local v0, "anchor":Landroid/view/View;
    if-nez v0, :cond_1

    .line 2951
    return-void

    .line 2954
    :cond_1
    const/4 v1, 0x3

    invoke-direct {p0, p1, p2, v1}, Landroid/view/autofill/AutofillManager;->notifyCallback(ILandroid/view/autofill/AutofillId;I)V

    .line 2956
    if-eqz p3, :cond_2

    .line 2958
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, Landroid/view/autofill/AutofillManager;->setSessionFinished(ILjava/util/List;)V

    .line 2960
    :cond_2
    return-void
.end method

.method private greylist-max-o notifyViewClicked(Landroid/view/autofill/AutofillId;)V
    .locals 4
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 1632
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1633
    return-void

    .line 1635
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

    .line 1637
    :cond_1
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1638
    :try_start_0
    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v1, :cond_5

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 1641
    :cond_2
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    if-eqz v1, :cond_4

    invoke-virtual {v1, p1}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1642
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

    .line 1643
    :cond_3
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Landroid/view/autofill/AutofillManager;->commitLocked(I)V

    .line 1644
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v2, 0x4cd

    invoke-direct {p0, v2}, Landroid/view/autofill/AutofillManager;->newLog(I)Landroid/metrics/LogMaker;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1646
    :cond_4
    monitor-exit v0

    .line 1647
    return-void

    .line 1639
    :cond_5
    :goto_0
    monitor-exit v0

    return-void

    .line 1646
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o notifyViewEntered(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flags"    # I

    .line 1244
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1245
    return-void

    .line 1248
    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1249
    :try_start_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mIsFillRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1250
    invoke-direct {p0, p1, p2}, Landroid/view/autofill/AutofillManager;->notifyViewEnteredLocked(Landroid/view/View;I)Landroid/view/autofill/AutofillManager$AutofillCallback;

    move-result-object v1

    .line 1251
    .local v1, "callback":Landroid/view/autofill/AutofillManager$AutofillCallback;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1253
    if-eqz v1, :cond_1

    .line 1254
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v2}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;I)V

    .line 1256
    :cond_1
    return-void

    .line 1251
    .end local v1    # "callback":Landroid/view/autofill/AutofillManager$AutofillCallback;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private greylist-max-o notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "virtualId"    # I
    .param p3, "bounds"    # Landroid/graphics/Rect;
    .param p4, "flags"    # I

    .line 1423
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1424
    return-void

    .line 1427
    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1428
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/autofill/AutofillManager;->notifyViewEnteredLocked(Landroid/view/View;ILandroid/graphics/Rect;I)Landroid/view/autofill/AutofillManager$AutofillCallback;

    move-result-object v1

    .line 1429
    .local v1, "callback":Landroid/view/autofill/AutofillManager$AutofillCallback;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1431
    if-eqz v1, :cond_1

    .line 1432
    const/4 v0, 0x3

    invoke-virtual {v1, p1, p2, v0}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;II)V

    .line 1435
    :cond_1
    return-void

    .line 1429
    .end local v1    # "callback":Landroid/view/autofill/AutofillManager$AutofillCallback;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private greylist-max-o notifyViewEnteredLocked(Landroid/view/View;I)Landroid/view/autofill/AutofillManager$AutofillCallback;
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flags"    # I

    .line 1261
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v6

    .line 1262
    .local v6, "id":Landroid/view/autofill/AutofillId;
    invoke-direct {p0, v6, p2}, Landroid/view/autofill/AutofillManager;->shouldIgnoreViewEnteredLocked(Landroid/view/autofill/AutofillId;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1264
    :cond_0
    const/4 v7, 0x0

    .line 1266
    .local v7, "callback":Landroid/view/autofill/AutofillManager$AutofillCallback;
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->tryAddServiceClientIfNeededLocked()Z

    move-result v8

    .line 1268
    .local v8, "clientAdded":Z
    const-string v0, "ignoring notifyViewEntered("

    const-string v2, "AutofillManager"

    if-nez v8, :cond_2

    .line 1269
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): no service client"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    :cond_1
    return-object v7

    .line 1273
    :cond_2
    iget-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mEnabledForAugmentedAutofillOnly:Z

    if-nez v3, :cond_4

    .line 1274
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): disabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    :cond_3
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    if-eqz v0, :cond_9

    .line 1277
    iget-object v7, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    goto :goto_1

    .line 1281
    :cond_4
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isClientDisablingEnterExitEvent()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1282
    invoke-virtual {p1}, Landroid/view/View;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v9

    .line 1284
    .local v9, "value":Landroid/view/autofill/AutofillValue;
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isAnyPasswordInputType()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1285
    or-int/lit8 p2, p2, 0x4

    .line 1288
    :cond_5
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->getImeStateFlag(Landroid/view/View;)I

    move-result v0

    or-int/2addr p2, v0

    .line 1290
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1292
    invoke-direct {p0, v6, v1, v9, p2}, Landroid/view/autofill/AutofillManager;->startSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;I)V

    goto :goto_0

    .line 1295
    :cond_6
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mForAugmentedAutofillOnly:Z

    if-eqz v0, :cond_8

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_8

    .line 1296
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_7

    .line 1297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyViewEntered("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): resetting mForAugmentedAutofillOnly on manual request"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mForAugmentedAutofillOnly:Z

    .line 1302
    :cond_8
    const/4 v2, 0x0

    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, v6

    move-object v3, v9

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V

    .line 1304
    :goto_0
    invoke-direct {p0, v6}, Landroid/view/autofill/AutofillManager;->addEnteredIdLocked(Landroid/view/autofill/AutofillId;)V

    .line 1307
    .end local v9    # "value":Landroid/view/autofill/AutofillValue;
    :cond_9
    :goto_1
    return-object v7
.end method

.method private greylist-max-o notifyViewEnteredLocked(Landroid/view/View;ILandroid/graphics/Rect;I)Landroid/view/autofill/AutofillManager$AutofillCallback;
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "virtualId"    # I
    .param p3, "bounds"    # Landroid/graphics/Rect;
    .param p4, "flags"    # I

    .line 1441
    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;

    move-result-object v6

    .line 1442
    .local v6, "id":Landroid/view/autofill/AutofillId;
    const/4 v7, 0x0

    .line 1443
    .local v7, "callback":Landroid/view/autofill/AutofillManager$AutofillCallback;
    invoke-direct {p0, v6, p4}, Landroid/view/autofill/AutofillManager;->shouldIgnoreViewEnteredLocked(Landroid/view/autofill/AutofillId;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v7

    .line 1445
    :cond_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->tryAddServiceClientIfNeededLocked()Z

    move-result v8

    .line 1447
    .local v8, "clientAdded":Z
    const-string v0, "ignoring notifyViewEntered("

    const-string v1, "AutofillManager"

    if-nez v8, :cond_2

    .line 1448
    sget-boolean v2, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "): no service client"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    :cond_1
    return-object v7

    .line 1452
    :cond_2
    iget-boolean v2, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Landroid/view/autofill/AutofillManager;->mEnabledForAugmentedAutofillOnly:Z

    if-nez v2, :cond_4

    .line 1453
    sget-boolean v2, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_3

    .line 1454
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "): disabled"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    :cond_3
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    if-eqz v0, :cond_9

    .line 1457
    iget-object v7, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    goto :goto_1

    .line 1461
    :cond_4
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isClientDisablingEnterExitEvent()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1462
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isAnyPasswordInputType()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1463
    or-int/lit8 p4, p4, 0x4

    .line 1466
    :cond_5
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->getImeStateFlag(Landroid/view/View;)I

    move-result v0

    or-int/2addr p4, v0

    .line 1468
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1470
    const/4 v0, 0x0

    invoke-direct {p0, v6, p3, v0, p4}, Landroid/view/autofill/AutofillManager;->startSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;I)V

    goto :goto_0

    .line 1473
    :cond_6
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mForAugmentedAutofillOnly:Z

    if-eqz v0, :cond_8

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8

    .line 1474
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_7

    .line 1475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyViewEntered("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "): resetting mForAugmentedAutofillOnly on manual request"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mForAugmentedAutofillOnly:Z

    .line 1480
    :cond_8
    const/4 v3, 0x0

    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, v6

    move-object v2, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V

    .line 1482
    :goto_0
    invoke-direct {p0, v6}, Landroid/view/autofill/AutofillManager;->addEnteredIdLocked(Landroid/view/autofill/AutofillId;)V

    .line 1485
    :cond_9
    :goto_1
    return-object v7
.end method

.method private greylist-max-o notifyViewExitedLocked(Landroid/view/View;I)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "virtualId"    # I

    .line 1515
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->tryAddServiceClientIfNeededLocked()Z

    move-result v0

    .line 1517
    .local v0, "clientAdded":Z
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabledForAugmentedAutofillOnly:Z

    if-eqz v1, :cond_1

    .line 1518
    :cond_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1520
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isClientDisablingEnterExitEvent()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1521
    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;

    move-result-object v1

    .line 1524
    .local v1, "id":Landroid/view/autofill/AutofillId;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V

    .line 1527
    .end local v1    # "id":Landroid/view/autofill/AutofillId;
    :cond_1
    return-void
.end method

.method private greylist-max-o notifyViewVisibilityChangedInternal(Landroid/view/View;IZZ)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "virtualId"    # I
    .param p3, "isVisible"    # Z
    .param p4, "virtual"    # Z

    .line 1371
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1372
    :try_start_0
    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mForAugmentedAutofillOnly:Z

    if-eqz v1, :cond_1

    .line 1373
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_0

    .line 1374
    const-string v1, "AutofillManager"

    const-string/jumbo v2, "notifyViewVisibilityChanged(): ignoring on augmented only mode"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    :cond_0
    monitor-exit v0

    return-void

    .line 1378
    :cond_1
    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v1, :cond_7

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1379
    if-eqz p4, :cond_2

    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;

    move-result-object v1

    goto :goto_0

    .line 1380
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v1

    :goto_0
    nop

    .line 1381
    .local v1, "id":Landroid/view/autofill/AutofillId;
    sget-boolean v2, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_3

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

    .line 1382
    :cond_3
    if-nez p3, :cond_5

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    if-eqz v2, :cond_5

    .line 1383
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1384
    sget-boolean v2, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_4

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

    .line 1385
    :cond_4
    invoke-direct {p0, v1, p1}, Landroid/view/autofill/AutofillManager;->requestHideFillUi(Landroid/view/autofill/AutofillId;Landroid/view/View;)V

    .line 1388
    :cond_5
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    if-eqz v2, :cond_6

    .line 1389
    invoke-virtual {v2, v1, p3}, Landroid/view/autofill/AutofillManager$TrackedViews;->notifyViewVisibilityChangedLocked(Landroid/view/autofill/AutofillId;Z)V

    goto :goto_1

    .line 1390
    :cond_6
    sget-boolean v2, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_8

    .line 1391
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

    .line 1393
    .end local v1    # "id":Landroid/view/autofill/AutofillId;
    :cond_7
    if-nez p4, :cond_8

    if-eqz p3, :cond_8

    .line 1394
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->startAutofillIfNeededLocked(Landroid/view/View;)Z

    goto :goto_2

    .line 1393
    :cond_8
    :goto_1
    nop

    .line 1396
    :goto_2
    monitor-exit v0

    .line 1397
    return-void

    .line 1396
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o post(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 3146
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 3147
    .local v0, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-nez v0, :cond_1

    .line 3148
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "AutofillManager"

    const-string v2, "ignoring post() because client is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3149
    :cond_0
    return-void

    .line 3151
    :cond_1
    invoke-interface {v0, p1}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientRunOnUiThread(Ljava/lang/Runnable;)V

    .line 3152
    return-void
.end method

.method private blacklist reportAutofillContentFailure(Landroid/view/autofill/AutofillId;)V
    .locals 4
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 2652
    :try_start_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    .line 2653
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 2652
    invoke-interface {v0, v1, v2, v3}, Landroid/view/autofill/IAutoFillManager;->setAutofillFailure(ILjava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2656
    nop

    .line 2657
    return-void

    .line 2654
    :catch_0
    move-exception v0

    .line 2655
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private greylist-max-o requestHideFillUi(Landroid/view/autofill/AutofillId;Landroid/view/View;)V
    .locals 4
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "anchor"    # Landroid/view/View;

    .line 2889
    const/4 v0, 0x0

    .line 2890
    .local v0, "callback":Landroid/view/autofill/AutofillManager$AutofillCallback;
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2895
    :try_start_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v2

    .line 2896
    .local v2, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-eqz v2, :cond_0

    .line 2897
    invoke-interface {v2}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientRequestHideFillUi()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2898
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/view/autofill/AutofillManager;->mIdShownFillUi:Landroid/view/autofill/AutofillId;

    .line 2899
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    move-object v0, v3

    .line 2902
    .end local v2    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2904
    if-eqz v0, :cond_2

    .line 2905
    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    .line 2906
    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->getVirtualChildIntId()I

    move-result v1

    invoke-virtual {v0, p2, v1, v2}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;II)V

    goto :goto_0

    .line 2909
    :cond_1
    invoke-virtual {v0, p2, v2}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;I)V

    .line 2912
    :cond_2
    :goto_0
    return-void

    .line 2902
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
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "force"    # Z

    .line 2871
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->findView(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v0

    .line 2872
    .local v0, "anchor":Landroid/view/View;
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

    .line 2873
    :cond_1
    if-nez v0, :cond_3

    .line 2874
    if-eqz p2, :cond_2

    .line 2877
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v1

    .line 2878
    .local v1, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-eqz v1, :cond_2

    .line 2879
    invoke-interface {v1}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientRequestHideFillUi()Z

    .line 2882
    .end local v1    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    :cond_2
    return-void

    .line 2884
    :cond_3
    invoke-direct {p0, p1, v0}, Landroid/view/autofill/AutofillManager;->requestHideFillUi(Landroid/view/autofill/AutofillId;Landroid/view/View;)V

    .line 2885
    return-void
.end method

.method private greylist-max-o requestShowFillUi(ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    .locals 13
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "anchorBounds"    # Landroid/graphics/Rect;
    .param p6, "presenter"    # Landroid/view/autofill/IAutofillWindowPresenter;

    .line 2394
    move-object v1, p0

    move-object v2, p2

    invoke-direct {p0, p2}, Landroid/view/autofill/AutofillManager;->findView(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v9

    .line 2395
    .local v9, "anchor":Landroid/view/View;
    if-nez v9, :cond_0

    .line 2396
    return-void

    .line 2399
    :cond_0
    const/4 v10, 0x0

    .line 2400
    .local v10, "callback":Landroid/view/autofill/AutofillManager$AutofillCallback;
    iget-object v11, v1, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 2401
    :try_start_0
    iget v0, v1, Landroid/view/autofill/AutofillManager;->mSessionId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v12, p1

    if-ne v0, v12, :cond_1

    .line 2402
    :try_start_1
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 2404
    .local v0, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-eqz v0, :cond_1

    .line 2405
    move-object v3, v0

    move-object v4, v9

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-interface/range {v3 .. v8}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientRequestShowFillUi(Landroid/view/View;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2407
    iget-object v3, v1, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    move-object v10, v3

    .line 2408
    iput-object v2, v1, Landroid/view/autofill/AutofillManager;->mIdShownFillUi:Landroid/view/autofill/AutofillId;

    .line 2412
    .end local v0    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    :cond_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2414
    if-eqz v10, :cond_3

    .line 2415
    invoke-virtual {p2}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 2416
    invoke-virtual {p2}, Landroid/view/autofill/AutofillId;->getVirtualChildIntId()I

    move-result v0

    invoke-virtual {v10, v9, v0, v3}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;II)V

    goto :goto_0

    .line 2419
    :cond_2
    invoke-virtual {v10, v9, v3}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;I)V

    .line 2422
    :cond_3
    :goto_0
    return-void

    .line 2412
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
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 2828
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

    .line 2829
    :cond_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 2830
    .local v0, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-nez v0, :cond_1

    .line 2831
    return-void

    .line 2833
    :cond_1
    invoke-interface {v0, p1}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientFindViewByAutofillIdTraversal(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v2

    .line 2834
    .local v2, "view":Landroid/view/View;
    if-nez v2, :cond_3

    .line 2835
    sget-boolean v3, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_2

    const-string v3, "View is not found"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2836
    :cond_2
    return-void

    .line 2838
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 2839
    .local v3, "handler":Landroid/os/Handler;
    if-nez v3, :cond_5

    .line 2840
    sget-boolean v4, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_4

    const-string v4, "Ignoring requestShowSoftInput due to no handler in view"

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    :cond_4
    return-void

    .line 2843
    :cond_5
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    if-eq v4, v5, :cond_7

    .line 2846
    sget-boolean v4, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_6

    const-string v4, "Scheduling showSoftInput() on the view UI thread"

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2847
    :cond_6
    new-instance v1, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, v2}, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2849
    :cond_7
    invoke-static {v2}, Landroid/view/autofill/AutofillManager;->requestShowSoftInputInViewThread(Landroid/view/View;)V

    .line 2851
    :goto_0
    return-void
.end method

.method private static blacklist requestShowSoftInputInViewThread(Landroid/view/View;)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .line 2855
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    const-string v1, "AutofillManager"

    if-nez v0, :cond_0

    .line 2856
    const-string v0, "Ignoring requestShowSoftInput() due to non-focused view"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2857
    return-void

    .line 2859
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2861
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v2

    .line 2862
    .local v2, "ret":Z
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

    .line 2863
    :cond_1
    return-void
.end method

.method private greylist-max-o resetSessionLocked(Z)V
    .locals 3
    .param p1, "resetEnteredIds"    # Z

    .line 2159
    const v0, 0x7fffffff

    iput v0, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    .line 2160
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    .line 2161
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    .line 2162
    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    .line 2163
    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    .line 2164
    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mIdShownFillUi:Landroid/view/autofill/AutofillId;

    .line 2165
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mIsFillRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2166
    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mShowAutofillDialogCalled:Z

    .line 2167
    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mFillDialogTriggerIds:Ljava/util/List;

    .line 2168
    if-eqz p1, :cond_0

    .line 2169
    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mEnteredIds:Landroid/util/ArraySet;

    .line 2171
    :cond_0
    return-void
.end method

.method private blacklist setAutofilledIfValuesIs(Landroid/view/View;Landroid/view/autofill/AutofillValue;Z)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "targetValue"    # Landroid/view/autofill/AutofillValue;
    .param p3, "hideHighlight"    # Z

    .line 2509
    invoke-virtual {p1}, Landroid/view/View;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v0

    .line 2510
    .local v0, "currentValue":Landroid/view/autofill/AutofillValue;
    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2511
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2512
    :try_start_0
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 2513
    new-instance v2, Landroid/view/autofill/ParcelableMap;

    invoke-direct {v2, v3}, Landroid/view/autofill/ParcelableMap;-><init>(I)V

    iput-object v2, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    .line 2515
    :cond_0
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v4

    invoke-virtual {v2, v4, p2}, Landroid/view/autofill/ParcelableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2516
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2517
    invoke-virtual {p1, v3, p3}, Landroid/view/View;->setAutofilled(ZZ)V

    goto :goto_0

    .line 2516
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2519
    :cond_1
    :goto_0
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

    .line 3155
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    iput-object p1, p0, Landroid/view/autofill/AutofillManager;->mFillDialogTriggerIds:Ljava/util/List;

    .line 3156
    return-void
.end method

.method private greylist-max-o setNotifyOnClickLocked(Landroid/view/autofill/AutofillId;Z)V
    .locals 3
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "notify"    # Z

    .line 2739
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->findView(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v0

    .line 2740
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 2741
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

    .line 2742
    return-void

    .line 2744
    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setNotifyAutofillManagerOnClick(Z)V

    .line 2745
    return-void
.end method

.method private greylist-max-o setSaveUiState(IZ)V
    .locals 5
    .param p1, "sessionId"    # I
    .param p2, "shown"    # Z

    .line 2748
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

    .line 2749
    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2750
    :try_start_0
    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 2754
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

    .line 2756
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->cancelSessionLocked()V

    .line 2758
    :cond_1
    if-eqz p2, :cond_2

    .line 2759
    iput p1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    .line 2760
    const/4 v1, 0x3

    iput v1, p0, Landroid/view/autofill/AutofillManager;->mState:I

    goto :goto_0

    .line 2762
    :cond_2
    iput v2, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    .line 2763
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/autofill/AutofillManager;->mState:I

    .line 2765
    :goto_0
    monitor-exit v0

    .line 2766
    return-void

    .line 2765
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist setSessionFinished(ILjava/util/List;)V
    .locals 4
    .param p1, "newState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    .line 2781
    .local p2, "autofillableIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    if-eqz p2, :cond_0

    .line 2782
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2783
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    invoke-virtual {v1}, Landroid/view/autofill/AutofillId;->resetSessionId()V

    .line 2782
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2786
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2787
    :try_start_0
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_1

    .line 2788
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

    .line 2789
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

    .line 2788
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2791
    :cond_1
    if-eqz p2, :cond_2

    .line 2792
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mEnteredIds:Landroid/util/ArraySet;

    .line 2794
    :cond_2
    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eq p1, v1, :cond_4

    const/4 v1, 0x6

    if-ne p1, v1, :cond_3

    goto :goto_1

    .line 2798
    :cond_3
    invoke-direct {p0, v2}, Landroid/view/autofill/AutofillManager;->resetSessionLocked(Z)V

    .line 2799
    iput p1, p0, Landroid/view/autofill/AutofillManager;->mState:I

    goto :goto_2

    .line 2795
    :cond_4
    :goto_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/view/autofill/AutofillManager;->resetSessionLocked(Z)V

    .line 2796
    iput v2, p0, Landroid/view/autofill/AutofillManager;->mState:I

    .line 2801
    :goto_2
    monitor-exit v0

    .line 2802
    return-void

    .line 2801
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o setState(I)V
    .locals 6
    .param p1, "flags"    # I

    .line 2471
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    .line 2472
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

    .line 2475
    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2476
    and-int/lit8 v1, p1, 0x20

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2477
    :try_start_0
    iput-boolean v2, p0, Landroid/view/autofill/AutofillManager;->mForAugmentedAutofillOnly:Z

    .line 2479
    monitor-exit v0

    return-void

    .line 2496
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 2481
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

    .line 2482
    if-eqz v1, :cond_3

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_4

    .line 2484
    :cond_3
    invoke-direct {p0, v2}, Landroid/view/autofill/AutofillManager;->resetSessionLocked(Z)V

    .line 2486
    :cond_4
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_6

    .line 2488
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 2489
    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mAugmentedAutofillServiceClient:Landroid/view/autofill/IAugmentedAutofillManagerClient;

    .line 2490
    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mServiceClientCleaner:Lsun/misc/Cleaner;

    if-eqz v4, :cond_5

    .line 2491
    invoke-virtual {v4}, Lsun/misc/Cleaner;->clean()V

    .line 2492
    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mServiceClientCleaner:Lsun/misc/Cleaner;

    .line 2494
    :cond_5
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->notifyReenableAutofill()V

    .line 2496
    :cond_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2497
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_7

    move v0, v2

    goto :goto_1

    :cond_7
    move v0, v3

    :goto_1
    sput-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    .line 2498
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_8

    goto :goto_2

    :cond_8
    move v2, v3

    :goto_2
    sput-boolean v2, Landroid/view/autofill/Helper;->sVerbose:Z

    .line 2499
    return-void

    .line 2496
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private greylist-max-o setTrackedViews(I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)V
    .locals 6
    .param p1, "sessionId"    # I
    .param p2, "trackedIds"    # [Landroid/view/autofill/AutofillId;
    .param p3, "saveOnAllViewsInvisible"    # Z
    .param p4, "saveOnFinish"    # Z
    .param p5, "fillableIds"    # [Landroid/view/autofill/AutofillId;
    .param p6, "saveTriggerId"    # Landroid/view/autofill/AutofillId;

    .line 2691
    if-eqz p6, :cond_0

    .line 2692
    invoke-virtual {p6}, Landroid/view/autofill/AutofillId;->resetSessionId()V

    .line 2694
    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2695
    :try_start_0
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_1

    .line 2696
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

    .line 2697
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

    .line 2700
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

    .line 2696
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2707
    :cond_1
    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v1, :cond_6

    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-ne v1, p1, :cond_6

    .line 2708
    if-eqz p3, :cond_2

    .line 2709
    new-instance v1, Landroid/view/autofill/AutofillManager$TrackedViews;

    invoke-direct {v1, p0, p2}, Landroid/view/autofill/AutofillManager$TrackedViews;-><init>(Landroid/view/autofill/AutofillManager;[Landroid/view/autofill/AutofillId;)V

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    goto :goto_0

    .line 2711
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    .line 2713
    :goto_0
    iput-boolean p4, p0, Landroid/view/autofill/AutofillManager;->mSaveOnFinish:Z

    .line 2714
    const/4 v1, 0x0

    if-eqz p5, :cond_4

    .line 2715
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    if-nez v2, :cond_3

    .line 2716
    new-instance v2, Landroid/util/ArraySet;

    array-length v3, p5

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    .line 2718
    :cond_3
    array-length v2, p5

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v4, p5, v3

    .line 2719
    .local v4, "id":Landroid/view/autofill/AutofillId;
    invoke-virtual {v4}, Landroid/view/autofill/AutofillId;->resetSessionId()V

    .line 2720
    iget-object v5, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2718
    nop

    .end local v4    # "id":Landroid/view/autofill/AutofillId;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2724
    :cond_4
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    if-eqz v2, :cond_5

    invoke-virtual {v2, p6}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2726
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    invoke-direct {p0, v2, v1}, Landroid/view/autofill/AutofillManager;->setNotifyOnClickLocked(Landroid/view/autofill/AutofillId;Z)V

    .line 2729
    :cond_5
    if-eqz p6, :cond_6

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p6, v1}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2731
    iput-object p6, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    .line 2732
    const/4 v1, 0x1

    invoke-direct {p0, p6, v1}, Landroid/view/autofill/AutofillManager;->setNotifyOnClickLocked(Landroid/view/autofill/AutofillId;Z)V

    .line 2735
    :cond_6
    monitor-exit v0

    .line 2736
    return-void

    .line 2735
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o shouldIgnoreViewEnteredLocked(Landroid/view/autofill/AutofillId;I)Z
    .locals 6
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "flags"    # I

    .line 1211
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isDisabledByServiceLocked()Z

    move-result v0

    const-string v1, ") on state "

    const-string v2, ", view="

    const-string v3, "ignoring notifyViewEntered(flags="

    const-string v4, "AutofillManager"

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    .line 1212
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    .line 1213
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

    .line 1214
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " because disabled by svc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1213
    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    :cond_0
    return v5

    .line 1218
    :cond_1
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isFinishedLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1220
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mEnteredIds:Landroid/util/ArraySet;

    if-eqz v0, :cond_3

    .line 1221
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1222
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_2

    .line 1223
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

    .line 1224
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

    .line 1223
    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    :cond_2
    return v5

    .line 1230
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist shouldShowAutofillDialog(Landroid/view/View;Landroid/view/autofill/AutofillId;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "id"    # Landroid/view/autofill/AutofillId;

    .line 3236
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->hasFillDialogUiFeature()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mShowAutofillDialogCalled:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mFillDialogTriggerIds:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_1

    .line 3242
    :cond_0
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->getImeStateFlag(Landroid/view/View;)I

    move-result v0

    const/16 v2, 0x80

    if-ne v0, v2, :cond_1

    .line 3244
    return v1

    .line 3247
    :cond_1
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mFillDialogTriggerIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3248
    .local v0, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 3249
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mFillDialogTriggerIds:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillId;

    .line 3250
    .local v3, "fillId":Landroid/view/autofill/AutofillId;
    invoke-virtual {v3, p2}, Landroid/view/autofill/AutofillId;->equalsIgnoreSession(Landroid/view/autofill/AutofillId;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3251
    const/4 v1, 0x1

    return v1

    .line 3248
    .end local v3    # "fillId":Landroid/view/autofill/AutofillId;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3254
    .end local v2    # "i":I
    :cond_3
    return v1

    .line 3239
    .end local v0    # "size":I
    :cond_4
    :goto_1
    return v1
.end method

.method private blacklist startAutofillIfNeededLocked(Landroid/view/View;)Z
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .line 2248
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

    .line 2251
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2252
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2253
    invoke-virtual {p1}, Landroid/view/View;->isImportantForAutofill()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2254
    invoke-virtual {p1}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2255
    invoke-virtual {p1}, Landroid/view/View;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2257
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->tryAddServiceClientIfNeededLocked()Z

    move-result v0

    .line 2259
    .local v0, "clientAdded":Z
    sget-boolean v2, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_0

    .line 2260
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

    .line 2263
    :cond_0
    if-eqz v0, :cond_1

    iget-boolean v2, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isClientDisablingEnterExitEvent()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2264
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v2

    .line 2265
    .local v2, "id":Landroid/view/autofill/AutofillId;
    invoke-virtual {p1}, Landroid/view/View;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v9

    .line 2267
    .local v9, "value":Landroid/view/autofill/AutofillValue;
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v3, v1}, Landroid/view/autofill/AutofillManager;->startSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;I)V

    .line 2269
    const/4 v5, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v2

    move-object v6, v9

    invoke-direct/range {v3 .. v8}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V

    .line 2271
    invoke-direct {p0, v2}, Landroid/view/autofill/AutofillManager;->addEnteredIdLocked(Landroid/view/autofill/AutofillId;)V

    .line 2272
    const/4 v1, 0x1

    return v1

    .line 2275
    .end local v0    # "clientAdded":Z
    .end local v2    # "id":Landroid/view/autofill/AutofillId;
    .end local v9    # "value":Landroid/view/autofill/AutofillValue;
    :cond_1
    return v1
.end method

.method private greylist-max-o startSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;I)V
    .locals 21
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "value"    # Landroid/view/autofill/AutofillValue;
    .param p4, "flags"    # I

    .line 2048
    move-object/from16 v1, p0

    move-object/from16 v14, p1

    iget-object v0, v1, Landroid/view/autofill/AutofillManager;->mEnteredForAugmentedAutofillIds:Ljava/util/Set;

    const-string v15, "AutofillManager"

    if-eqz v0, :cond_0

    .line 2049
    invoke-interface {v0, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, v1, Landroid/view/autofill/AutofillManager;->mEnabledForAugmentedAutofillOnly:Z

    if-eqz v0, :cond_3

    .line 2051
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

    .line 2052
    :cond_2
    or-int/lit8 v0, p4, 0x8

    move v2, v0

    .end local p4    # "flags":I
    .local v0, "flags":I
    goto :goto_0

    .line 2049
    .end local v0    # "flags":I
    .restart local p4    # "flags":I
    :cond_3
    move/from16 v2, p4

    .line 2054
    .end local p4    # "flags":I
    .local v2, "flags":I
    :goto_0
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_4

    .line 2055
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

    .line 2056
    invoke-direct/range {p0 .. p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", compatMode="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2057
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

    .line 2055
    invoke-static {v15, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2054
    :cond_4
    move-object/from16 v13, p2

    move-object/from16 v12, p3

    .line 2065
    :goto_1
    iget-boolean v0, v1, Landroid/view/autofill/AutofillManager;->mForAugmentedAutofillOnly:Z

    const/4 v11, 0x0

    if-eqz v0, :cond_6

    iget-boolean v0, v1, Landroid/view/autofill/AutofillManager;->mEnabledForAugmentedAutofillOnly:Z

    if-nez v0, :cond_6

    and-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_6

    .line 2067
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_5

    .line 2068
    const-string/jumbo v0, "resetting mForAugmentedAutofillOnly on manual autofill request"

    invoke-static {v15, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    :cond_5
    iput-boolean v11, v1, Landroid/view/autofill/AutofillManager;->mForAugmentedAutofillOnly:Z

    .line 2072
    :cond_6
    iget v0, v1, Landroid/view/autofill/AutofillManager;->mState:I

    if-eqz v0, :cond_8

    invoke-direct/range {p0 .. p0}, Landroid/view/autofill/AutofillManager;->isFinishedLocked()Z

    move-result v0

    if-nez v0, :cond_8

    and-int/lit8 v0, v2, 0x1

    if-nez v0, :cond_8

    .line 2073
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_7

    .line 2074
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

    .line 2075
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

    .line 2074
    invoke-static {v15, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    :cond_7
    return-void

    .line 2080
    :cond_8
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 2081
    .local v0, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-nez v0, :cond_9

    return-void

    .line 2083
    :cond_9
    new-instance v3, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v4, 0x1388

    invoke-direct {v3, v4}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    move-object v10, v3

    .line 2084
    .local v10, "receiver":Lcom/android/internal/util/SyncResultReceiver;
    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move-object v9, v3

    .line 2086
    .local v9, "clientActivity":Landroid/content/ComponentName;
    iget-boolean v3, v1, Landroid/view/autofill/AutofillManager;->mEnabledForAugmentedAutofillOnly:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    const-string/jumbo v8, "startSession("

    if-nez v3, :cond_c

    :try_start_1
    iget-object v3, v1, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    if-eqz v3, :cond_c

    .line 2087
    invoke-virtual {v3, v9}, Landroid/content/AutofillOptions;->isAutofillDisabledLocked(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2088
    iget-object v3, v1, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    iget-object v4, v1, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/AutofillOptions;->isAugmentedAutofillEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2089
    sget-boolean v3, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_c

    .line 2090
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

    .line 2092
    or-int/lit8 v2, v2, 0x8

    move/from16 v16, v2

    goto :goto_2

    .line 2095
    :cond_a
    sget-boolean v3, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_b

    .line 2096
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

    .line 2099
    :cond_b
    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/view/autofill/AutofillManager;->setSessionFinished(ILjava/util/List;)V

    .line 2100
    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientResetableStateAvailable()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2101
    return-void

    .line 2105
    :cond_c
    move/from16 v16, v2

    .end local v2    # "flags":I
    .local v16, "flags":I
    :goto_2
    :try_start_2
    iget-object v2, v1, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetActivityToken()Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, v1, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 2106
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

    .line 2108
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/autofill/AutofillManager;->isCompatibilityModeEnabledLocked()Z

    move-result v19

    .line 2105
    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move v14, v7

    move-object/from16 v7, p3

    move-object/from16 v20, v8

    move/from16 v8, v17

    move-object/from16 p4, v9

    .end local v9    # "clientActivity":Landroid/content/ComponentName;
    .local p4, "clientActivity":Landroid/content/ComponentName;
    move/from16 v9, v18

    move-object/from16 v17, v10

    .end local v10    # "receiver":Lcom/android/internal/util/SyncResultReceiver;
    .local v17, "receiver":Lcom/android/internal/util/SyncResultReceiver;
    move/from16 v10, v16

    move-object/from16 v11, p4

    move/from16 v12, v19

    move-object/from16 v13, v17

    invoke-interface/range {v2 .. v13}, Landroid/view/autofill/IAutoFillManager;->startSession(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;IZILandroid/content/ComponentName;ZLcom/android/internal/os/IResultReceiver;)V

    .line 2109
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/util/SyncResultReceiver;->getIntResult()I

    move-result v2

    iput v2, v1, Landroid/view/autofill/AutofillManager;->mSessionId:I

    .line 2110
    const v3, 0x7fffffff

    if-eq v2, v3, :cond_e

    .line 2111
    iput v14, v1, Landroid/view/autofill/AutofillManager;->mState:I

    .line 2113
    :cond_e
    move-object/from16 v2, v17

    const/4 v3, 0x0

    .end local v17    # "receiver":Lcom/android/internal/util/SyncResultReceiver;
    .local v2, "receiver":Lcom/android/internal/util/SyncResultReceiver;
    invoke-virtual {v2, v3}, Lcom/android/internal/util/SyncResultReceiver;->getOptionalExtraIntResult(I)I

    move-result v3

    .line 2114
    .local v3, "extraFlags":I
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_10

    .line 2115
    sget-boolean v4, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v4, :cond_f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v5, p4

    .end local p4    # "clientActivity":Landroid/content/ComponentName;
    .local v5, "clientActivity":Landroid/content/ComponentName;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "): for augmented only"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .end local v5    # "clientActivity":Landroid/content/ComponentName;
    .restart local p4    # "clientActivity":Landroid/content/ComponentName;
    :cond_f
    move-object/from16 v5, p4

    .line 2116
    .end local p4    # "clientActivity":Landroid/content/ComponentName;
    .restart local v5    # "clientActivity":Landroid/content/ComponentName;
    :goto_4
    iput-boolean v14, v1, Landroid/view/autofill/AutofillManager;->mForAugmentedAutofillOnly:Z

    goto :goto_5

    .line 2114
    .end local v5    # "clientActivity":Landroid/content/ComponentName;
    .restart local p4    # "clientActivity":Landroid/content/ComponentName;
    :cond_10
    move-object/from16 v5, p4

    .line 2118
    .end local p4    # "clientActivity":Landroid/content/ComponentName;
    .restart local v5    # "clientActivity":Landroid/content/ComponentName;
    :goto_5
    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientResetableStateAvailable()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2124
    .end local v0    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    .end local v2    # "receiver":Lcom/android/internal/util/SyncResultReceiver;
    .end local v3    # "extraFlags":I
    .end local v5    # "clientActivity":Landroid/content/ComponentName;
    goto :goto_7

    .line 2121
    :catch_0
    move-exception v0

    move/from16 v2, v16

    goto :goto_6

    .line 2119
    :catch_1
    move-exception v0

    move/from16 v2, v16

    goto :goto_8

    .line 2121
    .end local v16    # "flags":I
    .local v2, "flags":I
    :catch_2
    move-exception v0

    .line 2123
    .local v0, "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
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

    .line 2125
    .end local v0    # "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    .end local v2    # "flags":I
    .restart local v16    # "flags":I
    :goto_7
    return-void

    .line 2119
    .end local v16    # "flags":I
    .restart local v2    # "flags":I
    :catch_3
    move-exception v0

    .line 2120
    .local v0, "e":Landroid/os/RemoteException;
    :goto_8
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method private blacklist tryAddServiceClientIfNeededLocked()Z
    .locals 10

    .line 2195
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 2196
    .local v0, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2197
    return v1

    .line 2199
    :cond_0
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    const-string v3, "AutofillManager"

    if-nez v2, :cond_1

    .line 2200
    const-string v2, "Autofill service is null!"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    return v1

    .line 2203
    :cond_1
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    const/4 v4, 0x1

    if-nez v2, :cond_7

    .line 2204
    new-instance v2, Landroid/view/autofill/AutofillManager$AutofillManagerClient;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Landroid/view/autofill/AutofillManager$AutofillManagerClient;-><init>(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillManager$AutofillManagerClient-IA;)V

    iput-object v2, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 2206
    :try_start_0
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 2207
    .local v2, "userId":I
    new-instance v6, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v7, 0x1388

    invoke-direct {v6, v7}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 2208
    .local v6, "receiver":Lcom/android/internal/util/SyncResultReceiver;
    iget-object v7, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget-object v8, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-interface {v7, v8, v9, v2, v6}, Landroid/view/autofill/IAutoFillManager;->addClient(Landroid/view/autofill/IAutoFillManagerClient;Landroid/content/ComponentName;ILcom/android/internal/os/IResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2210
    const/4 v7, 0x0

    .line 2212
    .local v7, "flags":I
    :try_start_1
    invoke-virtual {v6}, Lcom/android/internal/util/SyncResultReceiver;->getIntResult()I

    move-result v5
    :try_end_1
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2219
    .end local v7    # "flags":I
    .local v5, "flags":I
    nop

    .line 2220
    and-int/lit8 v7, v5, 0x1

    if-eqz v7, :cond_2

    move v7, v4

    goto :goto_0

    :cond_2
    move v7, v1

    :goto_0
    :try_start_2
    iput-boolean v7, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    .line 2221
    and-int/lit8 v7, v5, 0x2

    if-eqz v7, :cond_3

    move v7, v4

    goto :goto_1

    :cond_3
    move v7, v1

    :goto_1
    sput-boolean v7, Landroid/view/autofill/Helper;->sDebug:Z

    .line 2222
    and-int/lit8 v7, v5, 0x4

    if-eqz v7, :cond_4

    move v7, v4

    goto :goto_2

    :cond_4
    move v7, v1

    :goto_2
    sput-boolean v7, Landroid/view/autofill/Helper;->sVerbose:Z

    .line 2223
    and-int/lit8 v7, v5, 0x8

    if-eqz v7, :cond_5

    move v1, v4

    :cond_5
    iput-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabledForAugmentedAutofillOnly:Z

    .line 2225
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_6

    .line 2226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "receiver results: flags="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " enabled="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v7, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ", enabledForAugmentedOnly: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v7, p0, Landroid/view/autofill/AutofillManager;->mEnabledForAugmentedAutofillOnly:Z

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2229
    :cond_6
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    .line 2230
    .local v1, "service":Landroid/view/autofill/IAutoFillManager;
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 2231
    .local v3, "serviceClient":Landroid/view/autofill/IAutoFillManagerClient;
    new-instance v7, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda0;

    invoke-direct {v7, v1, v3, v2}, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda0;-><init>(Landroid/view/autofill/IAutoFillManager;Landroid/view/autofill/IAutoFillManagerClient;I)V

    invoke-static {p0, v7}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    move-result-object v7

    iput-object v7, p0, Landroid/view/autofill/AutofillManager;->mServiceClientCleaner:Lsun/misc/Cleaner;

    .line 2241
    .end local v1    # "service":Landroid/view/autofill/IAutoFillManager;
    .end local v2    # "userId":I
    .end local v3    # "serviceClient":Landroid/view/autofill/IAutoFillManagerClient;
    .end local v5    # "flags":I
    .end local v6    # "receiver":Lcom/android/internal/util/SyncResultReceiver;
    goto :goto_3

    .line 2213
    .restart local v2    # "userId":I
    .restart local v6    # "receiver":Lcom/android/internal/util/SyncResultReceiver;
    .restart local v7    # "flags":I
    :catch_0
    move-exception v4

    .line 2214
    .local v4, "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to initialize autofill: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget-object v8, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v3, v8, v2}, Landroid/view/autofill/IAutoFillManager;->removeClient(Landroid/view/autofill/IAutoFillManagerClient;I)V

    .line 2217
    iput-object v5, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2218
    return v1

    .line 2239
    .end local v2    # "userId":I
    .end local v4    # "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    .end local v6    # "receiver":Lcom/android/internal/util/SyncResultReceiver;
    .end local v7    # "flags":I
    :catch_1
    move-exception v1

    .line 2240
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 2243
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_7
    :goto_3
    return v4
.end method

.method private greylist-max-o updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V
    .locals 10
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "value"    # Landroid/view/autofill/AutofillValue;
    .param p4, "action"    # I
    .param p5, "flags"    # I

    .line 2176
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    .line 2177
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

    .line 2181
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v3, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    .line 2182
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v9

    .line 2181
    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-interface/range {v2 .. v9}, Landroid/view/autofill/IAutoFillManager;->updateSession(ILandroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2185
    nop

    .line 2186
    return-void

    .line 2183
    :catch_0
    move-exception v0

    .line 2184
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public whitelist cancel()V
    .locals 2

    .line 1710
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "AutofillManager"

    const-string v1, "cancel() called by app or augmented autofill service"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    :cond_0
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1712
    return-void

    .line 1714
    :cond_1
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1715
    :try_start_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->cancelLocked()V

    .line 1716
    monitor-exit v0

    .line 1717
    return-void

    .line 1716
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist commit()V
    .locals 2

    .line 1681
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1682
    return-void

    .line 1684
    :cond_0
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_1

    const-string v0, "AutofillManager"

    const-string v1, "commit() called by app"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    :cond_1
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1686
    const/4 v1, 0x2

    :try_start_0
    invoke-direct {p0, v1}, Landroid/view/autofill/AutofillManager;->commitLocked(I)V

    .line 1687
    monitor-exit v0

    .line 1688
    return-void

    .line 1687
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist disableAutofillServices()V
    .locals 2

    .line 1737
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1738
    return-void

    .line 1741
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/autofill/IAutoFillManager;->disableOwnedAutofillServices(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1744
    nop

    .line 1745
    return-void

    .line 1742
    :catch_0
    move-exception v0

    .line 1743
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o disableOwnedAutofillServices()V
    .locals 0

    .line 1729
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->disableAutofillServices()V

    .line 1730
    return-void
.end method

.method public greylist-max-o dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "outerPrefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 3025
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "AutofillManager:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3026
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3027
    .local v0, "pfx":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "sessionId: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3028
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "state: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3029
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "context: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3030
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "service client: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3031
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v1

    .line 3032
    .local v1, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-eqz v1, :cond_0

    .line 3033
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "client: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3034
    const-string v2, " ("

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetActivityToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v2, 0x29

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(C)V

    .line 3036
    :cond_0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "enabled: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 3037
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "enabledAugmentedOnly: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/view/autofill/AutofillManager;->mForAugmentedAutofillOnly:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 3038
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "hasService: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 3039
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "hasCallback: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 3040
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "onInvisibleCalled "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/view/autofill/AutofillManager;->mOnInvisibleCalled:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 3041
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "last autofilled data: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3042
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "id of last fill UI shown: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mIdShownFillUi:Landroid/view/autofill/AutofillId;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3043
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "tracked views: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3044
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    if-nez v2, :cond_3

    .line 3045
    const-string/jumbo v2, "null"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 3047
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3048
    .local v2, "pfx2":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3049
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "visible:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    invoke-static {v3}, Landroid/view/autofill/AutofillManager$TrackedViews;->-$$Nest$fgetmVisibleTrackedIds(Landroid/view/autofill/AutofillManager$TrackedViews;)Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3050
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "invisible:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    invoke-static {v3}, Landroid/view/autofill/AutofillManager$TrackedViews;->-$$Nest$fgetmInvisibleTrackedIds(Landroid/view/autofill/AutofillManager$TrackedViews;)Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3052
    .end local v2    # "pfx2":Ljava/lang/String;
    :goto_2
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "fillable ids: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3053
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "entered ids: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mEnteredIds:Landroid/util/ArraySet;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3054
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mEnteredForAugmentedAutofillIds:Ljava/util/Set;

    if-eqz v2, :cond_4

    .line 3055
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "entered ids for augmented autofill: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3056
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mEnteredForAugmentedAutofillIds:Ljava/util/Set;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3058
    :cond_4
    iget-boolean v2, p0, Landroid/view/autofill/AutofillManager;->mForAugmentedAutofillOnly:Z

    if-eqz v2, :cond_5

    .line 3059
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "For Augmented Autofill Only"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3061
    :cond_5
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "save trigger id: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3062
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "save on finish(): "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/view/autofill/AutofillManager;->mSaveOnFinish:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 3063
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    if-eqz v2, :cond_6

    .line 3064
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "options: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    invoke-virtual {v2, p2}, Landroid/content/AutofillOptions;->dumpShort(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3066
    :cond_6
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "compat mode enabled: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3067
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3068
    :try_start_0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "fill dialog enabled: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mIsFillDialogEnabled:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 3069
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "fill dialog enabled hints: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3070
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mFillDialogEnabledHints:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3071
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mCompatibilityBridge:Landroid/view/autofill/AutofillManager$CompatibilityBridge;

    if-eqz v3, :cond_7

    .line 3072
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3073
    .local v3, "pfx2":Ljava/lang/String;
    const-string/jumbo v4, "true"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3074
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "windowId: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3075
    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mCompatibilityBridge:Landroid/view/autofill/AutofillManager$CompatibilityBridge;

    invoke-static {v4}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->-$$Nest$fgetmFocusedWindowId(Landroid/view/autofill/AutofillManager$CompatibilityBridge;)I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 3076
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "nodeId: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3077
    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mCompatibilityBridge:Landroid/view/autofill/AutofillManager$CompatibilityBridge;

    invoke-static {v4}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->-$$Nest$fgetmFocusedNodeId(Landroid/view/autofill/AutofillManager$CompatibilityBridge;)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 3078
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "virtualId: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3079
    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mCompatibilityBridge:Landroid/view/autofill/AutofillManager$CompatibilityBridge;

    invoke-static {v4}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->-$$Nest$fgetmFocusedNodeId(Landroid/view/autofill/AutofillManager$CompatibilityBridge;)J

    move-result-wide v4

    .line 3080
    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v4

    .line 3079
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 3081
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "focusedBounds: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3082
    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mCompatibilityBridge:Landroid/view/autofill/AutofillManager$CompatibilityBridge;

    invoke-static {v4}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->-$$Nest$fgetmFocusedBounds(Landroid/view/autofill/AutofillManager$CompatibilityBridge;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3083
    .end local v3    # "pfx2":Ljava/lang/String;
    goto :goto_3

    .line 3084
    :cond_7
    const-string v3, "false"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3086
    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3087
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "debug: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v2, Landroid/view/autofill/Helper;->sDebug:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 3088
    const-string v2, " verbose: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v2, Landroid/view/autofill/Helper;->sVerbose:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 3089
    return-void

    .line 3086
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public greylist-max-o enableCompatibilityMode()V
    .locals 4

    .line 903
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 908
    :try_start_0
    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_0

    .line 909
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

    .line 911
    :cond_0
    new-instance v1, Landroid/view/autofill/AutofillManager$CompatibilityBridge;

    invoke-direct {v1, p0}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;-><init>(Landroid/view/autofill/AutofillManager;)V

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mCompatibilityBridge:Landroid/view/autofill/AutofillManager$CompatibilityBridge;

    .line 912
    monitor-exit v0

    .line 913
    return-void

    .line 912
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getAutofillServiceComponentName()Landroid/content/ComponentName;
    .locals 4

    .line 1772
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1774
    :cond_0
    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 1776
    .local v0, "receiver":Lcom/android/internal/util/SyncResultReceiver;
    :try_start_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v1, v0}, Landroid/view/autofill/IAutoFillManager;->getAutofillServiceComponentName(Lcom/android/internal/os/IResultReceiver;)V

    .line 1777
    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getParcelableResult()Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1780
    :catch_0
    move-exception v1

    .line 1781
    .local v1, "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Fail to get autofill services component name."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1778
    .end local v1    # "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    :catch_1
    move-exception v1

    .line 1779
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getAvailableFieldClassificationAlgorithms()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1909
    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 1911
    .local v0, "receiver":Lcom/android/internal/util/SyncResultReceiver;
    :try_start_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v1, v0}, Landroid/view/autofill/IAutoFillManager;->getAvailableFieldClassificationAlgorithms(Lcom/android/internal/os/IResultReceiver;)V

    .line 1912
    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getStringArrayResult()[Ljava/lang/String;

    move-result-object v1

    .line 1913
    .local v1, "algorithms":[Ljava/lang/String;
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

    .line 1916
    .end local v1    # "algorithms":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1917
    .local v1, "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Fail to get available field classification algorithms."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1914
    .end local v1    # "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    :catch_1
    move-exception v1

    .line 1915
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getDefaultFieldClassificationAlgorithm()Ljava/lang/String;
    .locals 4

    .line 1888
    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 1890
    .local v0, "receiver":Lcom/android/internal/util/SyncResultReceiver;
    :try_start_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v1, v0}, Landroid/view/autofill/IAutoFillManager;->getDefaultFieldClassificationAlgorithm(Lcom/android/internal/os/IResultReceiver;)V

    .line 1891
    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getStringResult()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1894
    :catch_0
    move-exception v1

    .line 1895
    .local v1, "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Fail to get default field classification algorithm."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1892
    .end local v1    # "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    :catch_1
    move-exception v1

    .line 1893
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-o getFillEventHistory()Landroid/service/autofill/FillEventHistory;
    .locals 3

    .line 1079
    :try_start_0
    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 1080
    .local v0, "receiver":Lcom/android/internal/util/SyncResultReceiver;
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v1, v0}, Landroid/view/autofill/IAutoFillManager;->getFillEventHistory(Lcom/android/internal/os/IResultReceiver;)V

    .line 1081
    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getParcelableResult()Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/FillEventHistory;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1084
    .end local v0    # "receiver":Lcom/android/internal/util/SyncResultReceiver;
    :catch_0
    move-exception v0

    .line 1085
    .local v0, "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
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

    .line 1086
    const/4 v1, 0x0

    return-object v1

    .line 1082
    .end local v0    # "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    :catch_1
    move-exception v0

    .line 1083
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getNextAutofillId()Landroid/view/autofill/AutofillId;
    .locals 4

    .line 2029
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 2030
    .local v0, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 2032
    :cond_0
    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetNextAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v1

    .line 2034
    .local v1, "id":Landroid/view/autofill/AutofillId;
    if-nez v1, :cond_1

    sget-boolean v2, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_1

    .line 2035
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

    .line 2038
    :cond_1
    return-object v1
.end method

.method public whitelist getUserData()Landroid/service/autofill/UserData;
    .locals 3

    .line 1825
    :try_start_0
    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 1826
    .local v0, "receiver":Lcom/android/internal/util/SyncResultReceiver;
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v1, v0}, Landroid/view/autofill/IAutoFillManager;->getUserData(Lcom/android/internal/os/IResultReceiver;)V

    .line 1827
    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getParcelableResult()Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/UserData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1830
    .end local v0    # "receiver":Lcom/android/internal/util/SyncResultReceiver;
    :catch_0
    move-exception v0

    .line 1831
    .local v0, "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Fail to get user data for field classification."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1828
    .end local v0    # "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    :catch_1
    move-exception v0

    .line 1829
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getUserDataId()Ljava/lang/String;
    .locals 3

    .line 1802
    :try_start_0
    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 1803
    .local v0, "receiver":Lcom/android/internal/util/SyncResultReceiver;
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v1, v0}, Landroid/view/autofill/IAutoFillManager;->getUserDataId(Lcom/android/internal/os/IResultReceiver;)V

    .line 1804
    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getStringResult()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1807
    .end local v0    # "receiver":Lcom/android/internal/util/SyncResultReceiver;
    :catch_0
    move-exception v0

    .line 1808
    .local v0, "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Fail to get user data id for field classification."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1805
    .end local v0    # "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    :catch_1
    move-exception v0

    .line 1806
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o hasAutofillFeature()Z
    .locals 1

    .line 3007
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

    .line 1752
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1754
    :cond_0
    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v2, 0x1388

    invoke-direct {v0, v2}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 1756
    .local v0, "receiver":Lcom/android/internal/util/SyncResultReceiver;
    :try_start_0
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Landroid/view/autofill/IAutoFillManager;->isServiceEnabled(ILjava/lang/String;Lcom/android/internal/os/IResultReceiver;)V

    .line 1758
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

    .line 1761
    :catch_0
    move-exception v1

    .line 1762
    .local v1, "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Fail to get enabled autofill services status."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1759
    .end local v1    # "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    :catch_1
    move-exception v1

    .line 1760
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist isAutofillSupported()Z
    .locals 4

    .line 1932
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1934
    :cond_0
    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v2, 0x1388

    invoke-direct {v0, v2}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 1936
    .local v0, "receiver":Lcom/android/internal/util/SyncResultReceiver;
    :try_start_0
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v2, v3, v0}, Landroid/view/autofill/IAutoFillManager;->isServiceSupported(ILcom/android/internal/os/IResultReceiver;)V

    .line 1937
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

    .line 1940
    :catch_0
    move-exception v1

    .line 1941
    .local v1, "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Fail to get autofill supported status."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1938
    .end local v1    # "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    :catch_1
    move-exception v1

    .line 1939
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-o isAutofillUiShowing()Z
    .locals 2

    .line 1960
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAutofillClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 1961
    .local v0, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
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

.method public greylist-max-o isCompatibilityModeEnabledLocked()Z
    .locals 1

    .line 1048
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

    .line 1060
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1061
    return v1

    .line 1063
    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1064
    :try_start_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isDisabledByServiceLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1065
    monitor-exit v0

    return v1

    .line 1067
    :cond_1
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->tryAddServiceClientIfNeededLocked()Z

    move-result v2

    .line 1068
    .local v2, "clientAdded":Z
    if-eqz v2, :cond_2

    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    :cond_2
    monitor-exit v0

    return v1

    .line 1069
    .end local v2    # "clientAdded":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist isFieldClassificationEnabled()Z
    .locals 4

    .line 1864
    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 1866
    .local v0, "receiver":Lcom/android/internal/util/SyncResultReceiver;
    :try_start_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v1, v0}, Landroid/view/autofill/IAutoFillManager;->isFieldClassificationEnabled(Lcom/android/internal/os/IResultReceiver;)V

    .line 1867
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

    .line 1870
    :catch_0
    move-exception v1

    .line 1871
    .local v1, "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Fail to get field classification enabled status."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1868
    .end local v1    # "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    :catch_1
    move-exception v1

    .line 1869
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method synthetic blacklist lambda$onVisibleForAutofill$2$android-view-autofill-AutofillManager()V
    .locals 2

    .line 990
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 991
    :try_start_0
    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    if-eqz v1, :cond_0

    .line 992
    invoke-virtual {v1}, Landroid/view/autofill/AutofillManager$TrackedViews;->onVisibleForAutofillChangedLocked()V

    .line 994
    :cond_0
    monitor-exit v0

    .line 995
    return-void

    .line 994
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic blacklist lambda$showAutofillDialog$5$android-view-autofill-AutofillManager(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .param p1, "wrView"    # Ljava/lang/ref/WeakReference;

    .line 3187
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3188
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 3189
    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;)V

    .line 3191
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$showAutofillDialog$6$android-view-autofill-AutofillManager(Ljava/lang/ref/WeakReference;I)V
    .locals 3
    .param p1, "wrView"    # Ljava/lang/ref/WeakReference;
    .param p2, "virtualId"    # I

    .line 3225
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3226
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 3227
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p2, v1, v2}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;I)V

    .line 3229
    :cond_0
    return-void
.end method

.method blacklist notifyReenableAutofill()V
    .locals 4

    .line 2936
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2937
    :try_start_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    if-nez v1, :cond_0

    .line 2938
    monitor-exit v0

    return-void

    .line 2940
    :cond_0
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroid/content/AutofillOptions;->appDisabledExpiration:J

    .line 2941
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/content/AutofillOptions;->disabledActivities:Landroid/util/ArrayMap;

    .line 2942
    monitor-exit v0

    .line 2943
    return-void

    .line 2942
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist notifyValueChanged(Landroid/view/View;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    .line 1535
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1536
    return-void

    .line 1538
    :cond_0
    const/4 v0, 0x0

    .line 1539
    .local v0, "id":Landroid/view/autofill/AutofillId;
    const/4 v1, 0x0

    .line 1540
    .local v1, "valueWasRead":Z
    const/4 v2, 0x0

    .line 1542
    .local v2, "value":Landroid/view/autofill/AutofillValue;
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1545
    :try_start_0
    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 1546
    invoke-virtual {p1, v5, v5}, Landroid/view/View;->setAutofilled(ZZ)V

    goto :goto_2

    .line 1548
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v4

    move-object v0, v4

    .line 1549
    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {v4, v0}, Landroid/view/autofill/ParcelableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1550
    invoke-virtual {p1}, Landroid/view/View;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v4

    move-object v2, v4

    .line 1551
    const/4 v1, 0x1

    .line 1552
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

    .line 1554
    .local v4, "hideHighlight":Z
    :goto_0
    iget-object v7, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {v7, v0}, Landroid/view/autofill/ParcelableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1555
    invoke-virtual {p1, v6, v4}, Landroid/view/View;->setAutofilled(ZZ)V

    goto :goto_1

    .line 1557
    :cond_3
    invoke-virtual {p1, v5, v5}, Landroid/view/View;->setAutofilled(ZZ)V

    .line 1558
    iget-object v5, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {v5, v0}, Landroid/view/autofill/ParcelableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1560
    .end local v4    # "hideHighlight":Z
    :goto_1
    goto :goto_2

    .line 1561
    :cond_4
    invoke-virtual {p1, v5, v5}, Landroid/view/View;->setAutofilled(ZZ)V

    .line 1565
    :goto_2
    iget-boolean v4, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v4, :cond_8

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_3

    .line 1575
    :cond_5
    if-nez v0, :cond_6

    .line 1576
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v4

    move-object v0, v4

    .line 1579
    :cond_6
    if-nez v1, :cond_7

    .line 1580
    invoke-virtual {p1}, Landroid/view/View;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v4

    move-object v2, v4

    .line 1583
    :cond_7
    const/4 v7, 0x0

    const/4 v9, 0x4

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->getImeStateFlag(Landroid/view/View;)I

    move-result v10

    move-object v5, p0

    move-object v6, v0

    move-object v8, v2

    invoke-direct/range {v5 .. v10}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V

    .line 1584
    monitor-exit v3

    .line 1585
    return-void

    .line 1566
    :cond_8
    :goto_3
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->startAutofillIfNeededLocked(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1567
    sget-boolean v4, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_9

    .line 1568
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

    .line 1569
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1568
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    :cond_9
    monitor-exit v3

    return-void

    .line 1584
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public whitelist notifyValueChanged(Landroid/view/View;ILandroid/view/autofill/AutofillValue;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "virtualId"    # I
    .param p3, "value"    # Landroid/view/autofill/AutofillValue;

    .line 1595
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1596
    return-void

    .line 1598
    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1599
    :try_start_0
    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1607
    :cond_1
    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;

    move-result-object v3

    .line 1608
    .local v3, "id":Landroid/view/autofill/AutofillId;
    const/4 v4, 0x0

    const/4 v6, 0x4

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->getImeStateFlag(Landroid/view/View;)I

    move-result v7

    move-object v2, p0

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V

    .line 1609
    .end local v3    # "id":Landroid/view/autofill/AutofillId;
    monitor-exit v0

    .line 1610
    return-void

    .line 1600
    :cond_2
    :goto_0
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_3

    .line 1601
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

    .line 1602
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1601
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    :cond_3
    monitor-exit v0

    return-void

    .line 1609
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist notifyViewClicked(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 1618
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/autofill/AutofillManager;->notifyViewClicked(Landroid/view/autofill/AutofillId;)V

    .line 1619
    return-void
.end method

.method public whitelist notifyViewClicked(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "virtualId"    # I

    .line 1628
    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/autofill/AutofillManager;->notifyViewClicked(Landroid/view/autofill/AutofillId;)V

    .line 1629
    return-void
.end method

.method public whitelist notifyViewEntered(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 1165
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;I)V

    .line 1166
    return-void
.end method

.method public whitelist notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "virtualId"    # I
    .param p3, "absBounds"    # Landroid/graphics/Rect;

    .line 1419
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;I)V

    .line 1420
    return-void
.end method

.method public blacklist notifyViewEnteredForAugmentedAutofill(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 2383
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    .line 2384
    .local v0, "id":Landroid/view/autofill/AutofillId;
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2385
    :try_start_0
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mEnteredForAugmentedAutofillIds:Ljava/util/Set;

    if-nez v2, :cond_0

    .line 2386
    new-instance v2, Landroid/util/ArraySet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, p0, Landroid/view/autofill/AutofillManager;->mEnteredForAugmentedAutofillIds:Ljava/util/Set;

    .line 2388
    :cond_0
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mEnteredForAugmentedAutofillIds:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2389
    monitor-exit v1

    .line 2390
    return-void

    .line 2389
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public blacklist notifyViewEnteredForFillDialog(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 1177
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mIsFillRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1178
    return-void

    .line 1181
    :cond_0
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mIsFillDialogEnabled:Z

    if-nez v0, :cond_1

    .line 1182
    invoke-virtual {p1}, Landroid/view/View;->getAutofillHints()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mFillDialogEnabledHints:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->containsAny([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1183
    :cond_1
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_2

    .line 1184
    const-string v0, "AutofillManager"

    const-string v1, "Trigger fill request at view entered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    :cond_2
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mIsFillRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1190
    const/16 v0, 0x40

    .line 1191
    .local v0, "flags":I
    or-int/lit8 v0, v0, 0x10

    .line 1193
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;I)V

    .line 1195
    .end local v0    # "flags":I
    :cond_3
    return-void
.end method

.method public whitelist notifyViewExited(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 1316
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1317
    return-void

    .line 1319
    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1320
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillManager;->notifyViewExitedLocked(Landroid/view/View;)V

    .line 1321
    monitor-exit v0

    .line 1322
    return-void

    .line 1321
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist notifyViewExited(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "virtualId"    # I

    .line 1504
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

    .line 1505
    :cond_0
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1506
    return-void

    .line 1508
    :cond_1
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1509
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/view/autofill/AutofillManager;->notifyViewExitedLocked(Landroid/view/View;I)V

    .line 1510
    monitor-exit v0

    .line 1511
    return-void

    .line 1510
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method greylist-max-o notifyViewExitedLocked(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .line 1326
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->tryAddServiceClientIfNeededLocked()Z

    move-result v0

    .line 1328
    .local v0, "clientAdded":Z
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabledForAugmentedAutofillOnly:Z

    if-eqz v1, :cond_1

    .line 1329
    :cond_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1331
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isClientDisablingEnterExitEvent()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1332
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v1

    .line 1335
    .local v1, "id":Landroid/view/autofill/AutofillId;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V

    .line 1338
    .end local v1    # "id":Landroid/view/autofill/AutofillId;
    :cond_1
    return-void
.end method

.method public whitelist notifyViewVisibilityChanged(Landroid/view/View;IZ)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "virtualId"    # I
    .param p3, "isVisible"    # Z

    .line 1358
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/autofill/AutofillManager;->notifyViewVisibilityChangedInternal(Landroid/view/View;IZZ)V

    .line 1359
    return-void
.end method

.method public whitelist notifyViewVisibilityChanged(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isVisible"    # Z

    .line 1347
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, v0}, Landroid/view/autofill/AutofillManager;->notifyViewVisibilityChangedInternal(Landroid/view/View;IZZ)V

    .line 1348
    return-void
.end method

.method public greylist-max-o onActivityFinishing()V
    .locals 3

    .line 1655
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1656
    return-void

    .line 1658
    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1659
    :try_start_0
    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mSaveOnFinish:Z

    if-eqz v1, :cond_2

    .line 1660
    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "AutofillManager"

    const-string/jumbo v2, "onActivityFinishing(): calling commitLocked()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/view/autofill/AutofillManager;->commitLocked(I)V

    goto :goto_0

    .line 1663
    :cond_2
    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_3

    const-string v1, "AutofillManager"

    const-string/jumbo v2, "onActivityFinishing(): calling cancelLocked()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    :cond_3
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->cancelLocked()V

    .line 1666
    :goto_0
    monitor-exit v0

    .line 1667
    return-void

    .line 1666
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o onAuthenticationResult(ILandroid/content/Intent;Landroid/view/View;)V
    .locals 7
    .param p1, "authenticationId"    # I
    .param p2, "data"    # Landroid/content/Intent;
    .param p3, "focusView"    # Landroid/view/View;

    .line 1966
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1967
    return-void

    .line 1974
    :cond_0
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_1

    .line 1975
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

    .line 1978
    :cond_1
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1979
    :try_start_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1980
    monitor-exit v0

    return-void

    .line 1987
    :cond_2
    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mOnInvisibleCalled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_3

    if-eqz p3, :cond_3

    .line 1988
    invoke-virtual {p3}, Landroid/view/View;->canNotifyAutofillEnterExitEvent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1989
    invoke-virtual {p0, p3}, Landroid/view/autofill/AutofillManager;->notifyViewExitedLocked(Landroid/view/View;)V

    .line 1990
    invoke-direct {p0, p3, v2}, Landroid/view/autofill/AutofillManager;->notifyViewEnteredLocked(Landroid/view/View;I)Landroid/view/autofill/AutofillManager$AutofillCallback;

    .line 1992
    :cond_3
    if-nez p2, :cond_4

    .line 1994
    monitor-exit v0

    return-void

    .line 1997
    :cond_4
    const-string v1, "android.view.autofill.extra.AUTHENTICATION_RESULT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 1998
    .local v1, "result":Landroid/os/Parcelable;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1999
    .local v3, "responseData":Landroid/os/Bundle;
    const-string v4, "android.view.autofill.extra.AUTHENTICATION_RESULT"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2000
    const-string v4, "android.view.autofill.extra.CLIENT_STATE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 2001
    .local v4, "newClientState":Landroid/os/Bundle;
    if-eqz v4, :cond_5

    .line 2002
    const-string v5, "android.view.autofill.extra.CLIENT_STATE"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2004
    :cond_5
    const-string v5, "android.view.autofill.extra.AUTHENTICATION_RESULT_EPHEMERAL_DATASET"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2005
    const-string v5, "android.view.autofill.extra.AUTHENTICATION_RESULT_EPHEMERAL_DATASET"

    const-string v6, "android.view.autofill.extra.AUTHENTICATION_RESULT_EPHEMERAL_DATASET"

    .line 2006
    invoke-virtual {p2, v6, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 2005
    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2010
    :cond_6
    :try_start_1
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v5, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v6, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    .line 2011
    invoke-virtual {v6}, Landroid/content/Context;->getUserId()I

    move-result v6

    .line 2010
    invoke-interface {v2, v3, v5, p1, v6}, Landroid/view/autofill/IAutoFillManager;->setAuthenticationResult(Landroid/os/Bundle;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2014
    goto :goto_0

    .line 2012
    :catch_0
    move-exception v2

    .line 2013
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "AutofillManager"

    const-string v6, "Error delivering authentication result"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2015
    .end local v1    # "result":Landroid/os/Parcelable;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "responseData":Landroid/os/Bundle;
    .end local v4    # "newClientState":Landroid/os/Bundle;
    :goto_0
    monitor-exit v0

    .line 2016
    return-void

    .line 2015
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public greylist-max-o onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 923
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 924
    return-void

    .line 926
    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 927
    :try_start_0
    const-string v1, "android:lastAutoFilledData"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/ParcelableMap;

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    .line 929
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 930
    const-string v1, "AutofillManager"

    const-string v2, "New session was started before onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    monitor-exit v0

    return-void

    .line 934
    :cond_1
    const-string v1, "android:sessionId"

    const v2, 0x7fffffff

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    .line 935
    const-string v1, "android:state"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/view/autofill/AutofillManager;->mState:I

    .line 937
    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-eq v1, v2, :cond_6

    .line 938
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->tryAddServiceClientIfNeededLocked()Z

    move-result v1

    .line 940
    .local v1, "clientAdded":Z
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v4

    .line 941
    .local v4, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-eqz v4, :cond_6

    .line 942
    new-instance v5, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v6, 0x1388

    invoke-direct {v5, v6}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 945
    .local v5, "receiver":Lcom/android/internal/util/SyncResultReceiver;
    const/4 v6, 0x0

    .line 946
    .local v6, "sessionWasRestored":Z
    if-eqz v1, :cond_3

    .line 947
    :try_start_1
    iget-object v7, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v8, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    .line 948
    invoke-interface {v4}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetActivityToken()Landroid/os/IBinder;

    move-result-object v9

    iget-object v10, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 949
    invoke-interface {v10}, Landroid/view/autofill/IAutoFillManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 947
    invoke-interface {v7, v8, v9, v10, v5}, Landroid/view/autofill/IAutoFillManager;->restoreSession(ILandroid/os/IBinder;Landroid/os/IBinder;Lcom/android/internal/os/IResultReceiver;)V

    .line 950
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

    .line 952
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

    .line 955
    :goto_1
    if-nez v6, :cond_4

    .line 956
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

    .line 957
    iput v2, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    .line 958
    iput v3, p0, Landroid/view/autofill/AutofillManager;->mState:I

    goto :goto_2

    .line 960
    :cond_4
    sget-boolean v2, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_5

    .line 961
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

    .line 964
    :cond_5
    invoke-interface {v4}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientResetableStateAvailable()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 970
    .end local v6    # "sessionWasRestored":Z
    :goto_2
    goto :goto_3

    .line 968
    :catch_0
    move-exception v2

    .line 969
    .local v2, "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
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

    .line 966
    .end local v2    # "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    :catch_1
    move-exception v2

    .line 967
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "AutofillManager"

    const-string v6, "Could not figure out if there was an autofill session"

    invoke-static {v3, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 970
    nop

    .line 973
    .end local v1    # "clientAdded":Z
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v4    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    .end local v5    # "receiver":Lcom/android/internal/util/SyncResultReceiver;
    :cond_6
    :goto_3
    monitor-exit v0

    .line 974
    return-void

    .line 973
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist onInvisibleForAutofill(Z)V
    .locals 8
    .param p1, "isExpiredResponse"    # Z

    .line 1008
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1009
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mOnInvisibleCalled:Z

    .line 1011
    if-eqz p1, :cond_0

    .line 1013
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V

    .line 1016
    :cond_0
    monitor-exit v0

    .line 1017
    return-void

    .line 1016
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o onPendingSaveUi(ILandroid/os/IBinder;)V
    .locals 4
    .param p1, "operation"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .line 3012
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

    .line 3014
    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3016
    :try_start_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v1, p1, p2}, Landroid/view/autofill/IAutoFillManager;->onPendingSaveUi(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3019
    goto :goto_0

    .line 3020
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 3017
    :catch_0
    move-exception v1

    .line 3018
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "AutofillManager"

    const-string v3, "Error in onPendingSaveUi: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3020
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 3021
    return-void

    .line 3020
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public greylist-max-o onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 1027
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1028
    return-void

    .line 1030
    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1031
    :try_start_0
    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 1032
    const-string v2, "android:sessionId"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1034
    :cond_1
    iget v1, p0, Landroid/view/autofill/AutofillManager;->mState:I

    if-eqz v1, :cond_2

    .line 1035
    const-string v2, "android:state"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1037
    :cond_2
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    if-eqz v1, :cond_3

    .line 1038
    const-string v2, "android:lastAutoFilledData"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1040
    :cond_3
    monitor-exit v0

    .line 1041
    return-void

    .line 1040
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o onVisibleForAutofill()V
    .locals 4

    .line 989
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    new-instance v1, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda2;-><init>(Landroid/view/autofill/AutofillManager;)V

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 996
    return-void
.end method

.method public whitelist registerCallback(Landroid/view/autofill/AutofillManager$AutofillCallback;)V
    .locals 6
    .param p1, "callback"    # Landroid/view/autofill/AutofillManager$AutofillCallback;

    .line 2284
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2285
    return-void

    .line 2287
    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2288
    if-nez p1, :cond_1

    :try_start_0
    monitor-exit v0

    return-void

    .line 2290
    :cond_1
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 2291
    .local v1, "hadCallback":Z
    :goto_0
    iput-object p1, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2293
    if-nez v1, :cond_3

    .line 2295
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

    .line 2298
    goto :goto_1

    .line 2296
    :catch_0
    move-exception v2

    .line 2297
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/view/autofill/AutofillManager;
    .end local p1    # "callback":Landroid/view/autofill/AutofillManager$AutofillCallback;
    throw v3

    .line 2300
    .end local v1    # "hadCallback":Z
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/view/autofill/AutofillManager;
    .restart local p1    # "callback":Landroid/view/autofill/AutofillManager$AutofillCallback;
    :cond_3
    :goto_1
    monitor-exit v0

    .line 2301
    return-void

    .line 2300
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist requestAutofill(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 1101
    const/4 v0, 0x1

    .line 1102
    .local v0, "flags":I
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1103
    or-int/lit8 v0, v0, 0x10

    .line 1105
    :cond_0
    invoke-direct {p0, p1, v0}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;I)V

    .line 1106
    return-void
.end method

.method public whitelist requestAutofill(Landroid/view/View;ILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "virtualId"    # I
    .param p3, "absBounds"    # Landroid/graphics/Rect;

    .line 1152
    const/4 v0, 0x1

    .line 1153
    .local v0, "flags":I
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1154
    or-int/lit8 v0, v0, 0x10

    .line 1156
    :cond_0
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;I)V

    .line 1157
    return-void
.end method

.method blacklist requestAutofillFromNewSession(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 1123
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->cancel()V

    .line 1124
    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;)V

    .line 1125
    return-void
.end method

.method public greylist-max-o requestHideFillUi()V
    .locals 2

    .line 2867
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mIdShownFillUi:Landroid/view/autofill/AutofillId;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/autofill/AutofillManager;->requestHideFillUi(Landroid/view/autofill/AutofillId;Z)V

    .line 2868
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

    .line 2346
    .local p1, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, "activities":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    const-string v0, "AutofillManager"

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2347
    return-void

    .line 2350
    :cond_0
    new-instance v1, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v2, 0x1388

    invoke-direct {v1, v2}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 2353
    .local v1, "resultReceiver":Lcom/android/internal/util/SyncResultReceiver;
    :try_start_0
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-static {p1}, Landroid/view/autofill/Helper;->toList(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {p2}, Landroid/view/autofill/Helper;->toList(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Landroid/view/autofill/IAutoFillManager;->setAugmentedAutofillWhitelist(Ljava/util/List;Ljava/util/List;Lcom/android/internal/os/IResultReceiver;)V

    .line 2355
    invoke-virtual {v1}, Lcom/android/internal/util/SyncResultReceiver;->getIntResult()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2361
    .local v2, "resultCode":I
    nop

    .line 2362
    packed-switch v2, :pswitch_data_0

    .line 2368
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

    .line 2371
    return-void

    .line 2364
    :pswitch_0
    return-void

    .line 2366
    :pswitch_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v3, "caller is not user\'s Augmented Autofill Service"

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2358
    .end local v2    # "resultCode":I
    :catch_0
    move-exception v2

    .line 2359
    .local v2, "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
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

    .line 2360
    return-void

    .line 2356
    .end local v2    # "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    :catch_1
    move-exception v0

    .line 2357
    .local v0, "e":Landroid/os/RemoteException;
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
    .param p1, "userData"    # Landroid/service/autofill/UserData;

    .line 1845
    :try_start_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v0, p1}, Landroid/view/autofill/IAutoFillManager;->setUserData(Landroid/service/autofill/UserData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1848
    nop

    .line 1849
    return-void

    .line 1846
    :catch_0
    move-exception v0

    .line 1847
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist showAutofillDialog(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 3181
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3182
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/view/autofill/AutofillManager;->shouldShowAutofillDialog(Landroid/view/View;Landroid/view/autofill/AutofillId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3183
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mShowAutofillDialogCalled:Z

    .line 3184
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 3186
    .local v1, "wrView":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    new-instance v2, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v1}, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda5;-><init>(Landroid/view/autofill/AutofillManager;Ljava/lang/ref/WeakReference;)V

    invoke-direct {p0, v2}, Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V

    .line 3192
    return v0

    .line 3194
    .end local v1    # "wrView":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist showAutofillDialog(Landroid/view/View;I)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "virtualId"    # I

    .line 3219
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3220
    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/view/autofill/AutofillManager;->shouldShowAutofillDialog(Landroid/view/View;Landroid/view/autofill/AutofillId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3221
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mShowAutofillDialogCalled:Z

    .line 3222
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 3224
    .local v1, "wrView":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    new-instance v2, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v1, p2}, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda6;-><init>(Landroid/view/autofill/AutofillManager;Ljava/lang/ref/WeakReference;I)V

    invoke-direct {p0, v2}, Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V

    .line 3230
    return v0

    .line 3232
    .end local v1    # "wrView":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist unregisterCallback(Landroid/view/autofill/AutofillManager$AutofillCallback;)V
    .locals 5
    .param p1, "callback"    # Landroid/view/autofill/AutofillManager$AutofillCallback;

    .line 2309
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2310
    return-void

    .line 2312
    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2313
    if-eqz p1, :cond_2

    :try_start_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    if-eqz v1, :cond_2

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 2315
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2318
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

    .line 2321
    nop

    .line 2322
    :try_start_2
    monitor-exit v0

    .line 2323
    return-void

    .line 2319
    :catch_0
    move-exception v1

    .line 2320
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/view/autofill/AutofillManager;
    .end local p1    # "callback":Landroid/view/autofill/AutofillManager$AutofillCallback;
    throw v2

    .line 2313
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/view/autofill/AutofillManager;
    .restart local p1    # "callback":Landroid/view/autofill/AutofillManager$AutofillCallback;
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    .line 2322
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
