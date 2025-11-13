.class final Lcom/samsung/android/jdsms/CallerVerifier;
.super Ljava/lang/Object;
.source "CallerVerifier.java"


# static fields
.field private static final blacklist BASE_CLASS:Ljava/lang/String; = "com.samsung.android.jdsms.Sender"

.field private static final blacklist BASE_METHOD:Ljava/lang/String; = "send"

.field private static final blacklist CALLER_DEBUG:Z

.field private static final blacklist SUBTAG:Ljava/lang/String; = "[CallPolicy] "

.field private static final blacklist mAllowList:Lcom/samsung/android/jdsms/CallerAllowList;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/samsung/android/jdsms/CallerAllowList;

    invoke-direct {v0}, Lcom/samsung/android/jdsms/CallerAllowList;-><init>()V

    sput-object v0, Lcom/samsung/android/jdsms/CallerVerifier;->mAllowList:Lcom/samsung/android/jdsms/CallerAllowList;

    .line 25
    invoke-static {}, Lcom/samsung/android/jdsms/DsmsLog;->isDebuggable()Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/jdsms/CallerVerifier;->CALLER_DEBUG:Z

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist extractCaller()Ljava/lang/StackTraceElement;
    .locals 7

    .line 44
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 45
    .local v0, "frames":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 46
    const-string v2, "[CallPolicy] Null stack trace"

    invoke-static {v2}, Lcom/samsung/android/jdsms/DsmsLog;->e(Ljava/lang/String;)V

    .line 47
    return-object v1

    .line 50
    :cond_0
    sget-boolean v2, Lcom/samsung/android/jdsms/CallerVerifier;->CALLER_DEBUG:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CallPolicy] "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    array-length v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "Frames length: %d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/jdsms/DsmsLog;->d(Ljava/lang/String;)V

    .line 53
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/jdsms/CallerVerifier;->findBaseIndex([Ljava/lang/StackTraceElement;)Ljava/lang/Integer;

    move-result-object v2

    .line 54
    .local v2, "baseIndex":Ljava/lang/Integer;
    if-eqz v2, :cond_3

    .line 55
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v3

    array-length v5, v0

    if-lt v4, v5, :cond_2

    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v3

    aget-object v1, v0, v1

    return-object v1

    .line 56
    :cond_3
    :goto_0
    const-string v3, "[CallPolicy] Impossible to reach caller"

    invoke-static {v3}, Lcom/samsung/android/jdsms/DsmsLog;->e(Ljava/lang/String;)V

    .line 57
    return-object v1
.end method

.method private static blacklist findBaseIndex([Ljava/lang/StackTraceElement;)Ljava/lang/Integer;
    .locals 9
    .param p0, "frames"    # [Ljava/lang/StackTraceElement;

    .line 64
    sget-boolean v0, Lcom/samsung/android/jdsms/CallerVerifier;->CALLER_DEBUG:Z

    const/4 v1, 0x0

    const-string v2, "[CallPolicy] "

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    array-length v5, p0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "Frames length Inside: %d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/jdsms/DsmsLog;->d(Ljava/lang/String;)V

    .line 67
    :cond_0
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_3

    .line 68
    aget-object v4, p0, v0

    .line 69
    .local v4, "frame":Ljava/lang/StackTraceElement;
    sget-boolean v5, Lcom/samsung/android/jdsms/CallerVerifier;->CALLER_DEBUG:Z

    if-eqz v5, :cond_1

    .line 70
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    array-length v7, p0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v7, 0x2

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const-string v7, "Frame#%d/%d: %s %s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/jdsms/DsmsLog;->d(Ljava/lang/String;)V

    .line 72
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.samsung.android.jdsms.Sender"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 73
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "send"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 74
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 67
    .end local v4    # "frame":Ljava/lang/StackTraceElement;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    .end local v0    # "index":I
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist mountFrameCannonName(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 2
    .param p0, "frame"    # Ljava/lang/StackTraceElement;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final blacklist wasCallerValid()Z
    .locals 6

    .line 28
    invoke-static {}, Lcom/samsung/android/jdsms/CallerVerifier;->extractCaller()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 29
    .local v0, "callFrame":Ljava/lang/StackTraceElement;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 30
    const-string v2, "[CallPolicy] DENY (caller frame not found)"

    invoke-static {v2}, Lcom/samsung/android/jdsms/DsmsLog;->e(Ljava/lang/String;)V

    .line 31
    return v1

    .line 34
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/jdsms/CallerVerifier;->mountFrameCannonName(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, "cannonCallerName":Ljava/lang/String;
    sget-object v3, Lcom/samsung/android/jdsms/CallerVerifier;->mAllowList:Lcom/samsung/android/jdsms/CallerAllowList;

    invoke-virtual {v3, v2}, Lcom/samsung/android/jdsms/CallerAllowList;->contains(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "]"

    if-nez v3, :cond_1

    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CallPolicy] DENY callerName ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/jdsms/DsmsLog;->e(Ljava/lang/String;)V

    .line 37
    return v1

    .line 39
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CallPolicy] ALLOW callerName ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/jdsms/DsmsLog;->d(Ljava/lang/String;)V

    .line 40
    const/4 v1, 0x1

    return v1
.end method
