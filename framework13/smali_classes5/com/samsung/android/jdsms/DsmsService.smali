.class public Lcom/samsung/android/jdsms/DsmsService;
.super Lcom/samsung/android/dsms/aidl/IDsmsService$Stub;
.source "DsmsService.java"


# static fields
.field private static final blacklist APK_TIMEOUT:J

.field public static final blacklist DSMS_SERVICE:Ljava/lang/String; = "dsms"

.field private static final blacklist SUBTAG:Ljava/lang/String; = "[Service] "


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mTimerApkTimeout:Ljava/util/Timer;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    .line 36
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/jdsms/DsmsService;->APK_TIMEOUT:J

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Lcom/samsung/android/dsms/aidl/IDsmsService$Stub;-><init>()V

    .line 37
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/jdsms/DsmsService;->mTimerApkTimeout:Ljava/util/Timer;

    .line 40
    iput-object p1, p0, Lcom/samsung/android/jdsms/DsmsService;->mContext:Landroid/content/Context;

    .line 41
    invoke-static {}, Lcom/samsung/android/jdsms/DsmsLog;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Service] Created for context: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/jdsms/DsmsLog;->d(Ljava/lang/String;)V

    .line 43
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 44
    .local v0, "uid":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Service] Binder.callingUid=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/jdsms/DsmsLog;->d(Ljava/lang/String;)V

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Service] Binder.callingPid=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/jdsms/DsmsLog;->d(Ljava/lang/String;)V

    .line 46
    if-eqz p1, :cond_0

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Service] context.packageName=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/jdsms/DsmsLog;->d(Ljava/lang/String;)V

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Service] context.packageManager.nameForUid=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/jdsms/DsmsLog;->d(Ljava/lang/String;)V

    .line 51
    .end local v0    # "uid":I
    :cond_0
    invoke-static {}, Lcom/samsung/android/jdsms/DsmsInfoCache;->getInstance()Lcom/samsung/android/jdsms/DsmsInfoCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/jdsms/DsmsInfoCache;->setContext(Landroid/content/Context;)V

    .line 52
    iget-object v0, p0, Lcom/samsung/android/jdsms/DsmsService;->mTimerApkTimeout:Ljava/util/Timer;

    new-instance v1, Lcom/samsung/android/jdsms/DsmsService$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/jdsms/DsmsService$1;-><init>(Lcom/samsung/android/jdsms/DsmsService;)V

    sget-wide v2, Lcom/samsung/android/jdsms/DsmsService;->APK_TIMEOUT:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 59
    return-void
.end method


# virtual methods
.method public blacklist sendMessage(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p1, "featureCode"    # Ljava/lang/String;
    .param p2, "detail"    # Ljava/lang/String;
    .param p3, "value"    # J

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Service] Sending message featureCode=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] detail=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] value=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/jdsms/DsmsLog;->d(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/samsung/android/jdsms/DsmsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/jdsms/PolicyEnforcer;->isAValidUser(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    const-string v0, "[Service] Unauthorized call"

    invoke-static {v0}, Lcom/samsung/android/jdsms/DsmsLog;->e(Ljava/lang/String;)V

    .line 69
    return-void

    .line 73
    :cond_0
    :try_start_0
    new-instance v0, Lcom/samsung/android/jdsms/Sender;

    iget-object v1, p0, Lcom/samsung/android/jdsms/DsmsService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/jdsms/Sender;-><init>(Landroid/content/Context;)V

    .line 74
    .local v0, "sender":Lcom/samsung/android/jdsms/Sender;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/jdsms/Sender;->send(Ljava/lang/String;Ljava/lang/String;J)I

    move-result v1

    if-gez v1, :cond_1

    .line 75
    const-string v1, "[Service] Failed to send message"

    invoke-static {v1}, Lcom/samsung/android/jdsms/DsmsLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v0    # "sender":Lcom/samsung/android/jdsms/Sender;
    :cond_1
    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "exception":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Service] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/jdsms/DsmsLog;->e(Ljava/lang/String;)V

    .line 80
    .end local v0    # "exception":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void
.end method
