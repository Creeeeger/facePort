.class Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;
.super Ljava/lang/Object;
.source "IsrbHooks.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/isrb/IsrbHooks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ISRBExceptionHandler"
.end annotation


# instance fields
.field private final blacklist mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final blacklist mLoggingHandler:Lcom/samsung/isrb/IsrbHooks$LoggingHandler;


# direct methods
.method private constructor blacklist <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/samsung/isrb/IsrbHooks$LoggingHandler;)V
    .locals 1
    .param p1, "handler"    # Ljava/lang/Thread$UncaughtExceptionHandler;
    .param p2, "loggingHandler"    # Lcom/samsung/isrb/IsrbHooks$LoggingHandler;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;->mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 159
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/isrb/IsrbHooks$LoggingHandler;

    iput-object v0, p0, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;->mLoggingHandler:Lcom/samsung/isrb/IsrbHooks$LoggingHandler;

    .line 160
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/samsung/isrb/IsrbHooks$LoggingHandler;Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/samsung/isrb/IsrbHooks$LoggingHandler;)V

    return-void
.end method

.method private blacklist ensureLogging(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 163
    iget-object v0, p0, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;->mLoggingHandler:Lcom/samsung/isrb/IsrbHooks$LoggingHandler;

    iget-boolean v0, v0, Lcom/samsung/isrb/IsrbHooks$LoggingHandler;->mTriggered:Z

    if-nez v0, :cond_0

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;->mLoggingHandler:Lcom/samsung/isrb/IsrbHooks$LoggingHandler;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/isrb/IsrbHooks$LoggingHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    .line 168
    .local v0, "loggingThrowable":Ljava/lang/Throwable;
    const-string v1, "IsrbHooks"

    const-string v2, "Ignored !!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .end local v0    # "loggingThrowable":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method private blacklist handleException(Ljava/lang/Throwable;)Z
    .locals 4
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 358
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 359
    return v0

    .line 362
    :cond_0
    invoke-static {}, Lcom/samsung/isrb/IsrbHooks;->-$$Nest$sfgetmApplicationObject()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "IsrbHooks"

    if-nez v1, :cond_1

    const/16 v1, 0x3e8

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 363
    invoke-direct {p0, p1}, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;->isBooting(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 364
    const-string v1, "is booting cause crash!"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    return v0

    .line 368
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;->isChoreographerException(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 369
    const-string v1, "is viewroot cause crash!"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return v0

    .line 373
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist isBooting(Ljava/lang/Throwable;)Z
    .locals 7
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 337
    invoke-static {}, Lcom/samsung/isrb/IsrbHooks;->-$$Nest$smcheckServiceState()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 338
    return v1

    .line 339
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 340
    return v0

    .line 342
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 344
    .local v2, "elements":[Ljava/lang/StackTraceElement;
    array-length v3, v2

    sub-int/2addr v3, v1

    .local v3, "i":I
    :goto_0
    const/4 v4, -0x1

    if-le v3, v4, :cond_5

    .line 345
    array-length v4, v2

    sub-int/2addr v4, v3

    const/16 v5, 0x1e

    if-le v4, v5, :cond_2

    .line 346
    const-string v1, "IsrbHooks"

    const-string v4, "isBooting---stack to long"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return v0

    .line 349
    :cond_2
    aget-object v4, v2, v3

    .line 351
    .local v4, "element":Ljava/lang/StackTraceElement;
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "startOtherServices"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "startCoreServices"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    .line 344
    .end local v4    # "element":Ljava/lang/StackTraceElement;
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 352
    .restart local v4    # "element":Ljava/lang/StackTraceElement;
    :cond_4
    :goto_1
    return v1

    .line 354
    .end local v3    # "i":I
    .end local v4    # "element":Ljava/lang/StackTraceElement;
    :cond_5
    return v0
.end method

.method private blacklist isChoreographerException(Ljava/lang/Throwable;)Z
    .locals 7
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 287
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 288
    return v0

    .line 290
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 291
    .local v1, "elements":[Ljava/lang/StackTraceElement;
    if-nez v1, :cond_1

    .line 292
    return v0

    .line 295
    :cond_1
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    const/4 v4, -0x1

    if-le v2, v4, :cond_6

    .line 296
    array-length v4, v1

    sub-int/2addr v4, v2

    const/16 v5, 0x1e

    if-le v4, v5, :cond_2

    .line 297
    const-string v3, "IsrbHooks"

    const-string v4, "isChoreographerException---stack to long"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return v0

    .line 300
    :cond_2
    aget-object v4, v1, v2

    .line 302
    .local v4, "element":Ljava/lang/StackTraceElement;
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.view.Choreographer"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 303
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Choreographer.java"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 304
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "doFrame"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 305
    return v3

    .line 307
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "onCreate"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "onStart"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "onResume"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 308
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "onPause"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "onStop"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "onDestroy"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    .line 295
    .end local v4    # "element":Ljava/lang/StackTraceElement;
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 309
    .restart local v4    # "element":Ljava/lang/StackTraceElement;
    :cond_5
    :goto_1
    return v3

    .line 311
    .end local v2    # "i":I
    .end local v4    # "element":Ljava/lang/StackTraceElement;
    :cond_6
    return v0
.end method

.method private blacklist isInHandleMessage(Ljava/lang/Throwable;)Z
    .locals 7
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 315
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 316
    return v0

    .line 318
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 319
    .local v1, "elements":[Ljava/lang/StackTraceElement;
    if-nez v1, :cond_1

    .line 320
    return v0

    .line 323
    :cond_1
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    const/4 v4, -0x1

    if-le v2, v4, :cond_4

    .line 324
    array-length v4, v1

    sub-int/2addr v4, v2

    const/16 v5, 0x1e

    if-le v4, v5, :cond_2

    .line 325
    const-string v3, "IsrbHooks"

    const-string v4, "isInHandleMessage---stack to long"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return v0

    .line 328
    :cond_2
    aget-object v4, v1, v2

    .line 330
    .local v4, "element":Ljava/lang/StackTraceElement;
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "handleMessage"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 331
    return v3

    .line 323
    .end local v4    # "element":Ljava/lang/StackTraceElement;
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 333
    .end local v2    # "i":I
    :cond_4
    return v0
.end method


# virtual methods
.method public whitelist test-api uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "mCrashMainCount":I
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->getApplicationObject()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/isrb/IsrbHooks;->-$$Nest$sfputmApplicationObject(Landroid/os/IBinder;)V

    .line 179
    invoke-static {}, Lcom/samsung/isrb/IsrbHooks;->-$$Nest$sfgetmApplicationObject()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x3e8

    const-string v4, "IsrbHooks"

    if-nez v1, :cond_1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v3, v1, :cond_1

    invoke-static {}, Lcom/samsung/isrb/IsrbHooks;->-$$Nest$smcheckServiceState()Z

    move-result v1

    if-nez v1, :cond_1

    .line 180
    const-string v1, "checkServiceState is NULL"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-static {v2}, Lcom/samsung/isrb/IsrbHooks;->-$$Nest$sfputmState(I)V

    .line 182
    iget-object v1, p0, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;->mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_0

    .line 183
    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 184
    :cond_0
    return-void

    .line 188
    :cond_1
    invoke-static {}, Lcom/samsung/isrb/IsrbHooks;->-$$Nest$sfgetmState()I

    move-result v1

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/samsung/isrb/IsrbHooks;->-$$Nest$sfgetmState()I

    move-result v1

    if-ne v1, v6, :cond_2

    goto :goto_0

    .line 190
    :cond_2
    invoke-static {}, Lcom/samsung/isrb/IsrbHooks;->-$$Nest$sfgetmState()I

    move-result v1

    if-ne v1, v5, :cond_5

    .line 192
    const-string v1, "back to RESCUEPARTY,begin to default handler!"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-static {}, Lcom/samsung/isrb/IsrbHooks;->useDefaultSetting()V

    .line 194
    iget-object v1, p0, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;->mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_3

    .line 195
    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 196
    :cond_3
    return-void

    .line 189
    :cond_4
    :goto_0
    invoke-static {v6}, Lcom/samsung/isrb/IsrbHooks;->-$$Nest$sfputmState(I)V

    .line 199
    :cond_5
    invoke-direct {p0, p2}, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;->handleException(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;->mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_6

    .line 200
    const-string v1, "Use DefaultHanlder!"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-static {v2}, Lcom/samsung/isrb/IsrbHooks;->-$$Nest$sfputmState(I)V

    .line 202
    iget-object v1, p0, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;->mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 203
    return-void

    .line 208
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.bg"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 209
    const-string/jumbo v1, "set NULL to instance"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->isrbresetInstance()V

    .line 213
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiHandlerThread"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 214
    const-string/jumbo v1, "set SystemProperties for wifi"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sys.isrb.wificrash"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Wifi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Network"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Connectivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_a

    .line 220
    :cond_9
    const-string/jumbo v1, "set SystemProperties for networkcrash"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sys.isrb.networkcrash"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.fg"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.ui"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 227
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 228
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.anim"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.display"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 229
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ObserverHandler"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.io"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .end local v0    # "mCrashMainCount":I
    .end local p0    # "this":Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;
    .end local p1    # "thread":Ljava/lang/Thread;
    .end local p2    # "ex":Ljava/lang/Throwable;
    goto :goto_3

    .line 241
    .restart local v0    # "mCrashMainCount":I
    .restart local p0    # "this":Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;
    .restart local p1    # "thread":Ljava/lang/Thread;
    .restart local p2    # "ex":Ljava/lang/Throwable;
    :cond_b
    invoke-static {}, Lcom/samsung/isrb/IsrbHooks;->-$$Nest$sfgetmApplicationObject()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_c

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v3, v1, :cond_c

    .line 242
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 243
    .local v1, "checkhandler":Landroid/os/Handler;
    new-instance v2, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler$1;

    invoke-direct {v2, p0}, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler$1;-><init>(Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;)V

    const-wide/32 v6, 0x15f90

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 258
    .end local v1    # "checkhandler":Landroid/os/Handler;
    :cond_c
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne p1, v1, :cond_10

    .line 259
    .end local p0    # "this":Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;
    .end local p1    # "thread":Ljava/lang/Thread;
    .end local p2    # "ex":Ljava/lang/Throwable;
    const/4 p2, 0x0

    .line 262
    .end local v0    # "mCrashMainCount":I
    .local p2, "mCrashMainCount":I
    :goto_1
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    :cond_d
    :goto_2
    goto :goto_1

    .line 263
    :catchall_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/Throwable;
    invoke-direct {p0, p1, v0}, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;->ensureLogging(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 266
    invoke-direct {p0, v0}, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;->isInHandleMessage(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 267
    const-string v1, "count ++ !"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    add-int/lit8 p2, p2, 0x1

    .line 270
    :cond_e
    invoke-static {}, Lcom/samsung/isrb/IsrbHooks;->-$$Nest$sfgetmState()I

    move-result v1

    if-eq v1, v5, :cond_f

    const/4 v1, 0x5

    if-lt p2, v1, :cond_d

    .line 272
    :cond_f
    const-string v1, "back to RESCUEPARTY,call default handler!"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-static {}, Lcom/samsung/isrb/IsrbHooks;->useDefaultSetting()V

    .line 274
    iget-object v1, p0, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;->mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_d

    .line 275
    invoke-interface {v1, p1, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 280
    .local v0, "mCrashMainCount":I
    .local p2, "ex":Ljava/lang/Throwable;
    :cond_10
    return-void

    .line 230
    .end local v0    # "mCrashMainCount":I
    .end local p2    # "ex":Ljava/lang/Throwable;
    :cond_11
    :goto_3
    const-string p1, "android thread loop"

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :goto_4
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 237
    :goto_5
    goto :goto_4

    .line 235
    :catchall_1
    move-exception p1

    .line 236
    .local p1, "e":Ljava/lang/Throwable;
    const-string p2, "Catch Exception in thread again!"

    invoke-static {v4, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local p1    # "e":Ljava/lang/Throwable;
    goto :goto_5
.end method
