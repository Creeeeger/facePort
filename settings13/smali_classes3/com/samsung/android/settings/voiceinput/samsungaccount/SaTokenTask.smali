.class public Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;
.super Ljava/lang/Object;
.source "SaTokenTask.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$LazyHolder;
    }
.end annotation


# static fields
.field private static final TIMEOUT:J


# instance fields
.field private mCallbackResult:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCountDownTimer:Landroid/os/CountDownTimer;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/voiceinput/samsungaccount/listener/SaTokenResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSaCallback:Lcom/msc/sa/aidl/ISACallback$Stub;

.field private mSaService:Lcom/msc/sa/aidl/ISAService;


# direct methods
.method public static synthetic $r8$lambda$2K4hG5NgKz4I1n8P1sm_3HxUX10(Lcom/samsung/android/settings/voiceinput/samsungaccount/listener/SaTokenResultListener;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->lambda$sendOkResult$1(Lcom/samsung/android/settings/voiceinput/samsungaccount/listener/SaTokenResultListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2zyBbhJYv8n2xbKczI1ljkNOqIk(Ljava/util/List;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->lambda$sendErrorResult$4(Ljava/util/List;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$QrBNr1NyvICHP866KlUc3p7Gu0A(Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->lambda$requestToken$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$VaSLxEWb7f-i7X0KAbAKvAcmghk(ILcom/samsung/android/settings/voiceinput/samsungaccount/listener/SaTokenResultListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->lambda$sendErrorResult$3(ILcom/samsung/android/settings/voiceinput/samsungaccount/listener/SaTokenResultListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eGeHhA7R-LvG5RoLeSevDOk0qBk(Landroid/os/Bundle;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->lambda$sendOkResult$2(Landroid/os/Bundle;Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCountDownTimer(Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;)Landroid/os/CountDownTimer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mCountDownTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSaService(Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;)Lcom/msc/sa/aidl/ISAService;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mSaService:Lcom/msc/sa/aidl/ISAService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mrequestToken(Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->requestToken()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendResult(Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->sendResult(ILandroid/os/Bundle;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 35
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->TIMEOUT:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$1;-><init>(Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;)V

    iput-object v0, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mSaCallback:Lcom/msc/sa/aidl/ISACallback$Stub;

    return-void
.end method

.method private getErrorType(Landroid/os/Bundle;)I
    .locals 4

    const/16 p0, -0x3f8

    if-nez p1, :cond_0

    return p0

    :cond_0
    const-string v0, "network_detailed_state"

    .line 294
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    const-string v2, "SaTokenTask"

    if-ne v0, v1, :cond_1

    const-string v0, "Network blocked"

    .line 296
    invoke-static {v2, v0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v0, "error_code"

    .line 299
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error code, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return p0

    :cond_2
    const-string v1, "error_message"

    .line 305
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error message, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    new-instance p1, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaError;

    invoke-direct {p1, v0, p0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaError;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaError;->getType()I

    move-result p0

    return p0
.end method

.method public static getInstance()Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;
    .locals 1

    .line 118
    invoke-static {}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$LazyHolder;->-$$Nest$sfgetINSTANCE()Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$requestToken$0()V
    .locals 7

    .line 219
    new-instance v6, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$2;

    sget-wide v4, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->TIMEOUT:J

    move-object v0, v6

    move-object v1, p0

    move-wide v2, v4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$2;-><init>(Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;JJ)V

    .line 230
    invoke-virtual {v6}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mCountDownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private static synthetic lambda$sendErrorResult$3(ILcom/samsung/android/settings/voiceinput/samsungaccount/listener/SaTokenResultListener;)V
    .locals 1

    .line 280
    :try_start_0
    invoke-interface {p1, p0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/listener/SaTokenResultListener;->onError(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 282
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception happens, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SaTokenTask"

    invoke-static {p1, p0}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static synthetic lambda$sendErrorResult$4(Ljava/util/List;I)V
    .locals 2

    const-string v0, "SaTokenTask"

    const-string v1, "request_token RESULT_FAIL Failure"

    .line 277
    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    new-instance v0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$sendOkResult$1(Lcom/samsung/android/settings/voiceinput/samsungaccount/listener/SaTokenResultListener;)V
    .locals 2

    .line 264
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/listener/SaTokenResultListener;->onResult()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception happens, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SaTokenTask"

    invoke-static {v0, p0}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static synthetic lambda$sendOkResult$2(Landroid/os/Bundle;Ljava/util/List;)V
    .locals 1

    .line 260
    invoke-static {p0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper;->setSaInfo(Landroid/os/Bundle;)V

    const-string p0, "SaTokenTask"

    const-string v0, "request_token RESULT_OK Success"

    .line 261
    invoke-static {p0, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$$ExternalSyntheticLambda3;

    invoke-direct {p0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {p1, p0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private requestToken()V
    .locals 4

    const-string v0, "SaTokenTask"

    const-string v1, "requestToken"

    .line 202
    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mSaService:Lcom/msc/sa/aidl/ISAService;

    if-nez v0, :cond_0

    const-string p0, "SaTokenTask"

    const-string v0, "SAService is null"

    .line 204
    invoke-static {p0, v0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 208
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "additional"

    const-string v2, "cc"

    .line 209
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 214
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mSaService:Lcom/msc/sa/aidl/ISAService;

    const/16 v2, 0x12

    iget-object v3, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mCallbackResult:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/msc/sa/aidl/ISAService;->requestAccessToken(ILjava/lang/String;Landroid/os/Bundle;)Z

    .line 217
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    :try_start_2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 217
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "SaTokenTask"

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to register callback, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x3e8

    const/4 v1, 0x0

    .line 233
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->sendResult(ILandroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method private sendErrorResult(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/voiceinput/samsungaccount/listener/SaTokenResultListener;",
            ">;I)V"
        }
    .end annotation

    .line 276
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;I)V

    invoke-virtual {p0, v0}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private sendOkResult(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/voiceinput/samsungaccount/listener/SaTokenResultListener;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 259
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, p1}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$$ExternalSyntheticLambda1;-><init>(Landroid/os/Bundle;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private declared-synchronized sendResult(ILandroid/os/Bundle;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "SaTokenTask"

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendResult, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {p0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->unbind()V

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 242
    iget-object v1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mListeners:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 243
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    if-eqz p2, :cond_1

    .line 247
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->sendOkResult(Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_0

    .line 249
    :cond_1
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->getErrorType(Landroid/os/Bundle;)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->sendErrorResult(Ljava/util/List;I)V

    :goto_0
    const/4 p1, 0x0

    .line 252
    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mListeners:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized execute(Landroid/content/Context;Lcom/samsung/android/settings/voiceinput/samsungaccount/listener/SaTokenResultListener;)V
    .locals 2

    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "SaTokenTask"

    const-string v0, "Token is already requested"

    .line 123
    invoke-static {p1, v0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object p1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mListeners:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mListeners:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v0, "SaTokenTask"

    const-string v1, "bindService"

    .line 130
    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mContext:Landroid/content/Context;

    .line 132
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mListeners:Ljava/util/List;

    .line 133
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.msc.action.samsungaccount.REQUEST_SERVICE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.osp.app.signin"

    const-string v0, "com.msc.sa.service.RequestService"

    .line 136
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    iget-object p2, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, p0, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string p1, "SaTokenTask"

    const-string v0, "onServiceConnected"

    .line 165
    invoke-static {p1, v0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    monitor-enter p0

    .line 168
    :try_start_0
    invoke-static {p2}, Lcom/msc/sa/aidl/ISAService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/msc/sa/aidl/ISAService;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mSaService:Lcom/msc/sa/aidl/ISAService;

    const/16 p2, -0x3e8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "SaTokenTask"

    const-string v1, "SAService is null"

    .line 170
    invoke-static {p1, v1}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->sendResult(ILandroid/os/Bundle;)V

    .line 172
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    :try_start_1
    const-string v1, "bmne5004w6"

    .line 176
    iget-object v2, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mContext:Landroid/content/Context;

    .line 177
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mSaCallback:Lcom/msc/sa/aidl/ISACallback$Stub;

    .line 176
    invoke-interface {p1, v1, v0, v2, v3}, Lcom/msc/sa/aidl/ISAService;->registerCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/msc/sa/aidl/ISACallback;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mCallbackResult:Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "SaTokenTask"

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to register callback, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mCallbackResult:Ljava/lang/String;

    if-nez p1, :cond_1

    const-string p1, "SaTokenTask"

    const-string v1, "CallbackResult is null"

    .line 183
    invoke-static {p1, v1}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->sendResult(ILandroid/os/Bundle;)V

    goto :goto_1

    .line 186
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper;->isSamsungAccountSigned()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 187
    invoke-direct {p0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->requestToken()V

    goto :goto_1

    .line 189
    :cond_2
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->sendResult(ILandroid/os/Bundle;)V

    .line 193
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized unbind()V
    .locals 4

    monitor-enter p0

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    const-string v0, "SaTokenTask"

    const-string v1, "unregisterCallback"

    .line 145
    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mSaService:Lcom/msc/sa/aidl/ISAService;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mCallbackResult:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 148
    :try_start_1
    invoke-interface {v0, v1}, Lcom/msc/sa/aidl/ISAService;->unregisterCallback(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "SaTokenTask"

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to unregister callback, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mSaService:Lcom/msc/sa/aidl/ISAService;

    .line 154
    iput-object v0, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mCallbackResult:Ljava/lang/String;

    const-string v1, "SaTokenTask"

    const-string v2, "unbindService"

    .line 156
    invoke-static {v1, v2}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 158
    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 160
    :cond_2
    iput-object v0, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mContext:Landroid/content/Context;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
