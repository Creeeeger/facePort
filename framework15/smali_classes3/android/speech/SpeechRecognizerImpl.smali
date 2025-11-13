.class Landroid/speech/SpeechRecognizerImpl;
.super Landroid/speech/SpeechRecognizer;
.source "SpeechRecognizerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;,
        Landroid/speech/SpeechRecognizerImpl$CheckRecognitionSupportArgs;,
        Landroid/speech/SpeechRecognizerImpl$ModelDownloadListenerArgs;,
        Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback;,
        Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;
    }
.end annotation


# static fields
.field private static final blacklist DBG:Z = false

.field private static final blacklist MSG_CANCEL:I = 0x3

.field private static final blacklist MSG_CHANGE_LISTENER:I = 0x4

.field private static final blacklist MSG_CHECK_RECOGNITION_SUPPORT:I = 0x6

.field private static final blacklist MSG_DESTROY:I = 0x8

.field private static final blacklist MSG_SET_TEMPORARY_ON_DEVICE_COMPONENT:I = 0x5

.field private static final blacklist MSG_START:I = 0x1

.field private static final blacklist MSG_STOP:I = 0x2

.field private static final blacklist MSG_TRIGGER_MODEL_DOWNLOAD:I = 0x7

.field private static final blacklist TAG:Ljava/lang/String; = "SpeechRecognizer"


# instance fields
.field private final blacklist mClientToken:Landroid/os/IBinder;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mListener:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

.field private blacklist mManagerService:Landroid/speech/IRecognitionServiceManager;

.field private final blacklist mOnDevice:Z

.field private final blacklist mPendingTasks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mService:Landroid/speech/IRecognitionService;

.field private final blacklist mServiceComponent:Landroid/content/ComponentName;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/speech/SpeechRecognizerImpl;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/speech/SpeechRecognizerImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/speech/SpeechRecognizerImpl;)Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;
    .locals 0

    iget-object p0, p0, Landroid/speech/SpeechRecognizerImpl;->mListener:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingTasks(Landroid/speech/SpeechRecognizerImpl;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Landroid/speech/SpeechRecognizerImpl;->mPendingTasks:Ljava/util/Queue;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmService(Landroid/speech/SpeechRecognizerImpl;Landroid/speech/IRecognitionService;)V
    .locals 0

    iput-object p1, p0, Landroid/speech/SpeechRecognizerImpl;->mService:Landroid/speech/IRecognitionService;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleCancelMessage(Landroid/speech/SpeechRecognizerImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/speech/SpeechRecognizerImpl;->handleCancelMessage()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleChangeListener(Landroid/speech/SpeechRecognizerImpl;Landroid/speech/RecognitionListener;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/speech/SpeechRecognizerImpl;->handleChangeListener(Landroid/speech/RecognitionListener;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleCheckRecognitionSupport(Landroid/speech/SpeechRecognizerImpl;Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/RecognitionSupportCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/speech/SpeechRecognizerImpl;->handleCheckRecognitionSupport(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/RecognitionSupportCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDestroy(Landroid/speech/SpeechRecognizerImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/speech/SpeechRecognizerImpl;->handleDestroy()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleSetTemporaryComponent(Landroid/speech/SpeechRecognizerImpl;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/speech/SpeechRecognizerImpl;->handleSetTemporaryComponent(Landroid/content/ComponentName;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleStartListening(Landroid/speech/SpeechRecognizerImpl;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/speech/SpeechRecognizerImpl;->handleStartListening(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleStopMessage(Landroid/speech/SpeechRecognizerImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/speech/SpeechRecognizerImpl;->handleStopMessage()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleTriggerModelDownload(Landroid/speech/SpeechRecognizerImpl;Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/ModelDownloadListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/speech/SpeechRecognizerImpl;->handleTriggerModelDownload(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/ModelDownloadListener;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/speech/SpeechRecognizerImpl;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Landroid/content/ComponentName;Z)V
    .locals 2

    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;-><init>()V

    new-instance v0, Landroid/speech/SpeechRecognizerImpl$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/speech/SpeechRecognizerImpl$1;-><init>(Landroid/speech/SpeechRecognizerImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mPendingTasks:Ljava/util/Queue;

    new-instance v0, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;-><init>(Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener-IA;)V

    iput-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mListener:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mClientToken:Landroid/os/IBinder;

    iput-object p1, p0, Landroid/speech/SpeechRecognizerImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/speech/SpeechRecognizerImpl;->mServiceComponent:Landroid/content/ComponentName;

    iput-boolean p3, p0, Landroid/speech/SpeechRecognizerImpl;->mOnDevice:Z

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/speech/SpeechRecognizerImpl;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    return-void
.end method

.method static blacklist checkIsCalledFromMainThread()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SpeechRecognizer should be used only from the application\'s main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkOpenConnection()Z
    .locals 2

    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mService:Landroid/speech/IRecognitionService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mService:Landroid/speech/IRecognitionService;

    invoke-interface {v0}, Landroid/speech/IRecognitionService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mListener:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->onError(I)V

    const-string v0, "SpeechRecognizer"

    const-string/jumbo v1, "not connected to the recognition service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private blacklist connectToSystemService()V
    .locals 5

    invoke-direct {p0}, Landroid/speech/SpeechRecognizerImpl;->maybeInitializeManagerService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/speech/SpeechRecognizerImpl;->getSpeechRecognizerComponentName()Landroid/content/ComponentName;

    move-result-object v0

    iget-boolean v1, p0, Landroid/speech/SpeechRecognizerImpl;->mOnDevice:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/speech/SpeechRecognizerImpl;->mListener:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->onError(I)V

    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/speech/SpeechRecognizerImpl;->mManagerService:Landroid/speech/IRecognitionServiceManager;

    iget-object v2, p0, Landroid/speech/SpeechRecognizerImpl;->mClientToken:Landroid/os/IBinder;

    iget-boolean v3, p0, Landroid/speech/SpeechRecognizerImpl;->mOnDevice:Z

    new-instance v4, Landroid/speech/SpeechRecognizerImpl$2;

    invoke-direct {v4, p0}, Landroid/speech/SpeechRecognizerImpl$2;-><init>(Landroid/speech/SpeechRecognizerImpl;)V

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/speech/IRecognitionServiceManager;->createSession(Landroid/content/ComponentName;Landroid/os/IBinder;ZLandroid/speech/IRecognitionServiceManagerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method private blacklist getSpeechRecognizerComponentName()Landroid/content/ComponentName;
    .locals 4

    iget-boolean v0, p0, Landroid/speech/SpeechRecognizerImpl;->mOnDevice:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mServiceComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mServiceComponent:Landroid/content/ComponentName;

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "voice_recognition_service"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "SpeechRecognizer"

    const-string/jumbo v3, "no selected voice recognition service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/speech/SpeechRecognizerImpl;->mListener:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->onError(I)V

    return-object v1

    :cond_2
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method

.method private blacklist handleCancelMessage()V
    .locals 3

    invoke-direct {p0}, Landroid/speech/SpeechRecognizerImpl;->checkOpenConnection()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mService:Landroid/speech/IRecognitionService;

    iget-object v1, p0, Landroid/speech/SpeechRecognizerImpl;->mListener:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/speech/IRecognitionService;->cancel(Landroid/speech/IRecognitionListener;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SpeechRecognizer"

    const-string v2, "cancel() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Landroid/speech/SpeechRecognizerImpl;->mListener:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->onError(I)V

    :goto_0
    return-void
.end method

.method private blacklist handleChangeListener(Landroid/speech/RecognitionListener;)V
    .locals 1

    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mListener:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    invoke-static {v0, p1}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->-$$Nest$fputmInternalListener(Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;Landroid/speech/RecognitionListener;)V

    return-void
.end method

.method private blacklist handleCheckRecognitionSupport(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/RecognitionSupportCallback;)V
    .locals 4

    invoke-direct {p0}, Landroid/speech/SpeechRecognizerImpl;->maybeInitializeManagerService()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/speech/SpeechRecognizerImpl;->checkOpenConnection()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mService:Landroid/speech/IRecognitionService;

    iget-object v1, p0, Landroid/speech/SpeechRecognizerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    new-instance v2, Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p2, p3, v3}, Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback;-><init>(Ljava/util/concurrent/Executor;Landroid/speech/RecognitionSupportCallback;Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback-IA;)V

    invoke-interface {v0, p1, v1, v2}, Landroid/speech/IRecognitionService;->checkRecognitionSupport(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IRecognitionSupportCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SpeechRecognizer"

    const-string v2, "checkRecognitionSupport() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/speech/SpeechRecognizerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p3}, Landroid/speech/SpeechRecognizerImpl$$ExternalSyntheticLambda0;-><init>(Landroid/speech/RecognitionSupportCallback;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_1
    :goto_1
    return-void
.end method

.method private blacklist handleDestroy()V
    .locals 3

    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mService:Landroid/speech/IRecognitionService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mService:Landroid/speech/IRecognitionService;

    iget-object v1, p0, Landroid/speech/SpeechRecognizerImpl;->mListener:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/speech/IRecognitionService;->cancel(Landroid/speech/IRecognitionListener;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mService:Landroid/speech/IRecognitionService;

    iget-object v1, p0, Landroid/speech/SpeechRecognizerImpl;->mPendingTasks:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    iget-object v1, p0, Landroid/speech/SpeechRecognizerImpl;->mListener:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    invoke-static {v1, v0}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->-$$Nest$fputmInternalListener(Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;Landroid/speech/RecognitionListener;)V

    return-void
.end method

.method private blacklist handleSetTemporaryComponent(Landroid/content/ComponentName;)V
    .locals 1

    invoke-direct {p0}, Landroid/speech/SpeechRecognizerImpl;->maybeInitializeManagerService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mManagerService:Landroid/speech/IRecognitionServiceManager;

    invoke-interface {v0, p1}, Landroid/speech/IRecognitionServiceManager;->setTemporaryComponent(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method private blacklist handleStartListening(Landroid/content/Intent;)V
    .locals 3

    invoke-direct {p0}, Landroid/speech/SpeechRecognizerImpl;->checkOpenConnection()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mService:Landroid/speech/IRecognitionService;

    iget-object v1, p0, Landroid/speech/SpeechRecognizerImpl;->mListener:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    iget-object v2, p0, Landroid/speech/SpeechRecognizerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Landroid/speech/IRecognitionService;->startListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;Landroid/content/AttributionSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SpeechRecognizer"

    const-string/jumbo v2, "startListening() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Landroid/speech/SpeechRecognizerImpl;->mListener:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->onError(I)V

    :goto_0
    return-void
.end method

.method private blacklist handleStopMessage()V
    .locals 3

    invoke-direct {p0}, Landroid/speech/SpeechRecognizerImpl;->checkOpenConnection()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mService:Landroid/speech/IRecognitionService;

    iget-object v1, p0, Landroid/speech/SpeechRecognizerImpl;->mListener:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    invoke-interface {v0, v1}, Landroid/speech/IRecognitionService;->stopListening(Landroid/speech/IRecognitionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SpeechRecognizer"

    const-string/jumbo v2, "stopListening() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Landroid/speech/SpeechRecognizerImpl;->mListener:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->onError(I)V

    :goto_0
    return-void
.end method

.method private blacklist handleTriggerModelDownload(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/ModelDownloadListener;)V
    .locals 5

    invoke-direct {p0}, Landroid/speech/SpeechRecognizerImpl;->maybeInitializeManagerService()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/speech/SpeechRecognizerImpl;->checkOpenConnection()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    const-string v1, "SpeechRecognizer"

    if-nez p3, :cond_1

    :try_start_0
    iget-object v2, p0, Landroid/speech/SpeechRecognizerImpl;->mService:Landroid/speech/IRecognitionService;

    iget-object v3, p0, Landroid/speech/SpeechRecognizerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    invoke-interface {v2, p1, v3, v0}, Landroid/speech/IRecognitionService;->triggerModelDownload(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IModelDownloadListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "triggerModelDownload() without a listener failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Landroid/speech/SpeechRecognizerImpl;->mListener:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->onError(I)V

    :goto_0
    goto :goto_1

    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/speech/SpeechRecognizerImpl;->mService:Landroid/speech/IRecognitionService;

    iget-object v3, p0, Landroid/speech/SpeechRecognizerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    new-instance v4, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;

    invoke-direct {v4, p2, p3, v0}, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;-><init>(Ljava/util/concurrent/Executor;Landroid/speech/ModelDownloadListener;Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener-IA;)V

    invoke-interface {v2, p1, v3, v4}, Landroid/speech/IRecognitionService;->triggerModelDownload(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IModelDownloadListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v2, "triggerModelDownload() with a listener failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/speech/SpeechRecognizerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p3}, Landroid/speech/SpeechRecognizerImpl$$ExternalSyntheticLambda1;-><init>(Landroid/speech/ModelDownloadListener;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :cond_2
    :goto_2
    return-void
.end method

.method static synthetic blacklist lambda$handleCheckRecognitionSupport$0(Landroid/speech/RecognitionSupportCallback;)V
    .locals 1

    const/4 v0, 0x5

    invoke-interface {p0, v0}, Landroid/speech/RecognitionSupportCallback;->onError(I)V

    return-void
.end method

.method static synthetic blacklist lambda$handleTriggerModelDownload$1(Landroid/speech/ModelDownloadListener;)V
    .locals 1

    const/4 v0, 0x5

    invoke-interface {p0, v0}, Landroid/speech/ModelDownloadListener;->onError(I)V

    return-void
.end method

.method static blacklist lenientlyCreateOnDeviceSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizerImpl;
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/speech/SpeechRecognizerImpl;->checkIsCalledFromMainThread()V

    new-instance v0, Landroid/speech/SpeechRecognizerImpl;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/speech/SpeechRecognizerImpl;-><init>(Landroid/content/Context;Z)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized blacklist maybeInitializeManagerService()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mManagerService:Landroid/speech/IRecognitionServiceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    const-string/jumbo v0, "speech_recognition"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    iget-boolean v2, p0, Landroid/speech/SpeechRecognizerImpl;->mOnDevice:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/speech/SpeechRecognizerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "speech_recognition"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    move-object v0, v2

    :cond_1
    invoke-static {v0}, Landroid/speech/IRecognitionServiceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/speech/IRecognitionServiceManager;

    move-result-object v2

    iput-object v2, p0, Landroid/speech/SpeechRecognizerImpl;->mManagerService:Landroid/speech/IRecognitionServiceManager;

    iget-object v2, p0, Landroid/speech/SpeechRecognizerImpl;->mManagerService:Landroid/speech/IRecognitionServiceManager;

    if-nez v2, :cond_3

    iget-object v1, p0, Landroid/speech/SpeechRecognizerImpl;->mListener:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/speech/SpeechRecognizerImpl;->mListener:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->onError(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    const/4 v1, 0x0

    return v1

    :cond_3
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private blacklist putMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mService:Landroid/speech/IRecognitionService;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mPendingTasks:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist cancel()V
    .locals 2

    invoke-static {}, Landroid/speech/SpeechRecognizerImpl;->checkIsCalledFromMainThread()V

    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/SpeechRecognizerImpl;->putMessage(Landroid/os/Message;)V

    return-void
.end method

.method public whitelist checkRecognitionSupport(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/RecognitionSupportCallback;)V
    .locals 3

    const-string/jumbo v0, "intent must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "listener must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mService:Landroid/speech/IRecognitionService;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/speech/SpeechRecognizerImpl;->connectToSystemService()V

    :cond_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/speech/SpeechRecognizerImpl$CheckRecognitionSupportArgs;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Landroid/speech/SpeechRecognizerImpl$CheckRecognitionSupportArgs;-><init>(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/RecognitionSupportCallback;Landroid/speech/SpeechRecognizerImpl$CheckRecognitionSupportArgs-IA;)V

    const/4 v2, 0x6

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/SpeechRecognizerImpl;->putMessage(Landroid/os/Message;)V

    return-void
.end method

.method public whitelist destroy()V
    .locals 2

    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/SpeechRecognizerImpl;->putMessage(Landroid/os/Message;)V

    return-void
.end method

.method public whitelist setRecognitionListener(Landroid/speech/RecognitionListener;)V
    .locals 2

    invoke-static {}, Landroid/speech/SpeechRecognizerImpl;->checkIsCalledFromMainThread()V

    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mListener:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/speech/SpeechRecognizerImpl;->handleChangeListener(Landroid/speech/RecognitionListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/SpeechRecognizerImpl;->putMessage(Landroid/os/Message;)V

    :goto_0
    return-void
.end method

.method public blacklist setTemporaryOnDeviceRecognizer(Landroid/content/ComponentName;)V
    .locals 3

    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/speech/SpeechRecognizerImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public whitelist startListening(Landroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/speech/SpeechRecognizerImpl;->checkIsCalledFromMainThread()V

    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mService:Landroid/speech/IRecognitionService;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/speech/SpeechRecognizerImpl;->connectToSystemService()V

    :cond_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/SpeechRecognizerImpl;->putMessage(Landroid/os/Message;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "intent must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist stopListening()V
    .locals 2

    invoke-static {}, Landroid/speech/SpeechRecognizerImpl;->checkIsCalledFromMainThread()V

    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/SpeechRecognizerImpl;->putMessage(Landroid/os/Message;)V

    return-void
.end method

.method public whitelist triggerModelDownload(Landroid/content/Intent;)V
    .locals 3

    const-string/jumbo v0, "intent must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mService:Landroid/speech/IRecognitionService;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/speech/SpeechRecognizerImpl;->connectToSystemService()V

    :cond_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/speech/SpeechRecognizerImpl$ModelDownloadListenerArgs;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v2, v2}, Landroid/speech/SpeechRecognizerImpl$ModelDownloadListenerArgs;-><init>(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/ModelDownloadListener;Landroid/speech/SpeechRecognizerImpl$ModelDownloadListenerArgs-IA;)V

    const/4 v2, 0x7

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/SpeechRecognizerImpl;->putMessage(Landroid/os/Message;)V

    return-void
.end method

.method public whitelist triggerModelDownload(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/ModelDownloadListener;)V
    .locals 3

    const-string/jumbo v0, "intent must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mService:Landroid/speech/IRecognitionService;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/speech/SpeechRecognizerImpl;->connectToSystemService()V

    :cond_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/speech/SpeechRecognizerImpl$ModelDownloadListenerArgs;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Landroid/speech/SpeechRecognizerImpl$ModelDownloadListenerArgs;-><init>(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/ModelDownloadListener;Landroid/speech/SpeechRecognizerImpl$ModelDownloadListenerArgs-IA;)V

    const/4 v2, 0x7

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/SpeechRecognizerImpl;->putMessage(Landroid/os/Message;)V

    return-void
.end method
