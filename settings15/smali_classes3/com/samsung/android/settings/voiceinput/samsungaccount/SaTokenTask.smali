.class public Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$LazyHolder;
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I = 0x0

.field private static final BACKGROUND_NETWORK_BLOCKED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SaTokenTask"

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
.method public static synthetic $r8$lambda$r9KO_dVQnuooyqB30BYIJXWQAtw(Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;)V
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$2;

    sget-wide v4, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->TIMEOUT:J

    move-object v0, v6

    move-object v1, p0

    move-wide v2, v4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$2;-><init>(Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;JJ)V

    invoke-virtual {v6}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mCountDownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCountDownTimer(Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;)Landroid/os/CountDownTimer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mCountDownTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSaService(Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;)Lcom/msc/sa/aidl/ISAService;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mSaService:Lcom/msc/sa/aidl/ISAService;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->TIMEOUT:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$1;-><init>(Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;)V

    iput-object v0, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mSaCallback:Lcom/msc/sa/aidl/ISACallback$Stub;

    return-void
.end method

.method public static getErrorType(Landroid/os/Bundle;)I
    .locals 5

    const/16 v0, -0x3f8

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "network_detailed_state"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    const-string v3, "SaTokenTask"

    if-ne v1, v2, :cond_1

    const-string v1, "Network blocked"

    invoke-static {v3, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v1, "error_code"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Error code, "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_2
    const-string v0, "error_message"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Error message, "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaError;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaError;->getType()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final declared-synchronized execute(Landroid/content/Context;Lcom/samsung/android/settings/voiceinput/samsungaccount/listener/SaTokenResultListener;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "SaTokenTask"

    const-string v0, "Token is already requested"

    invoke-static {p1, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mListeners:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mListeners:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v0, "SaTokenTask"

    const-string v1, "bindService"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mListeners:Ljava/util/List;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.msc.action.samsungaccount.REQUEST_SERVICE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.osp.app.signin"

    const-string v0, "com.msc.sa.service.RequestService"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, p0, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    const-string p1, "Failed to register callback, "

    const-string v0, "SaTokenTask"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    sget v0, Lcom/msc/sa/aidl/ISAService$Stub;->$r8$clinit:I

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v1, "com.msc.sa.aidl.ISAService"

    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/msc/sa/aidl/ISAService;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/msc/sa/aidl/ISAService;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/msc/sa/aidl/ISAService$Stub$Proxy;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p2, v1, Lcom/msc/sa/aidl/ISAService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    :goto_0
    iput-object v1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mSaService:Lcom/msc/sa/aidl/ISAService;

    const/16 p2, -0x3e8

    if-nez v1, :cond_2

    const-string p1, "SaTokenTask"

    const-string v1, "SAService is null"

    invoke-static {p1, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->sendResult(ILandroid/os/Bundle;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    :try_start_1
    const-string v2, "bmne5004w6"

    iget-object v3, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mSaCallback:Lcom/msc/sa/aidl/ISACallback$Stub;

    check-cast v1, Lcom/msc/sa/aidl/ISAService$Stub$Proxy;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/msc/sa/aidl/ISAService$Stub$Proxy;->registerCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/msc/sa/aidl/ISACallback;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mCallbackResult:Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "SaTokenTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mCallbackResult:Ljava/lang/String;

    if-nez p1, :cond_3

    const-string p1, "SaTokenTask"

    const-string v1, "CallbackResult is null"

    invoke-static {p1, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->sendResult(ILandroid/os/Bundle;)V

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper;->isSamsungAccountSigned()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->requestToken()V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->sendResult(ILandroid/os/Bundle;)V

    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public final requestToken()V
    .locals 4

    const-string v0, "SaTokenTask"

    const-string/jumbo v1, "requestToken"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mSaService:Lcom/msc/sa/aidl/ISAService;

    if-nez v0, :cond_0

    const-string p0, "SaTokenTask"

    const-string v0, "SAService is null"

    invoke-static {p0, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "additional"

    const-string v2, "cc"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mSaService:Lcom/msc/sa/aidl/ISAService;

    iget-object v2, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mCallbackResult:Ljava/lang/String;

    check-cast v1, Lcom/msc/sa/aidl/ISAService$Stub$Proxy;

    const/16 v3, 0x12

    invoke-virtual {v1, v3, v2, v0}, Lcom/msc/sa/aidl/ISAService$Stub$Proxy;->requestAccessToken(ILjava/lang/String;Landroid/os/Bundle;)Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_0
    const-string v1, "SaTokenTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to register callback, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x3e8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->sendResult(ILandroid/os/Bundle;)V

    :goto_1
    return-void
.end method

.method public final declared-synchronized sendResult(ILandroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v0, "sendResult, "

    monitor-enter p0

    :try_start_0
    const-string v1, "SaTokenTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->unbind()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mListeners:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    if-eqz p2, :cond_1

    sget-object p1, Lio/reactivex/schedulers/Schedulers;->IO:Lio/reactivex/Scheduler;

    new-instance v1, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$$ExternalSyntheticLambda2;-><init>(Landroid/os/Bundle;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->getErrorType(Landroid/os/Bundle;)I

    move-result p1

    sget-object p2, Lio/reactivex/schedulers/Schedulers;->IO:Lio/reactivex/Scheduler;

    new-instance v1, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, v0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$$ExternalSyntheticLambda0;-><init>(ILjava/util/List;)V

    invoke-virtual {p2, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :goto_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mListeners:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized unbind()V
    .locals 4

    const-string v0, "Failed to unregister callback, "

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    const-string v1, "SaTokenTask"

    const-string/jumbo v2, "unregisterCallback"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mSaService:Lcom/msc/sa/aidl/ISAService;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mCallbackResult:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    :try_start_1
    check-cast v1, Lcom/msc/sa/aidl/ISAService$Stub$Proxy;

    invoke-virtual {v1, v2}, Lcom/msc/sa/aidl/ISAService$Stub$Proxy;->unregisterCallback(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "SaTokenTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mSaService:Lcom/msc/sa/aidl/ISAService;

    iput-object v0, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mCallbackResult:Ljava/lang/String;

    const-string v1, "SaTokenTask"

    const-string/jumbo v2, "unbindService"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_2
    iput-object v0, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->mContext:Landroid/content/Context;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw v0
.end method
