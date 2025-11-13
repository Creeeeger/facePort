.class public Landroid/telecom/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static greylist-max-o DEBUG:Z = false

.field public static greylist-max-o ERROR:Z = false

.field private static final greylist-max-o EVENTS_TO_CACHE:I = 0xa

.field private static final greylist-max-o EVENTS_TO_CACHE_DEBUG:I = 0x14

.field private static final greylist-max-o EXTENDED_LOGGING_DURATION_MILLIS:J = 0x1b7740L

.field private static final greylist-max-o FORCE_LOGGING:Z = false

.field public static greylist-max-o INFO:Z

.field private static final blacklist NUM_DIALABLE_DIGITS_TO_LOG:I

.field public static greylist-max-o TAG:Ljava/lang/String;

.field private static final greylist-max-o USER_BUILD:Z

.field public static greylist-max-o VERBOSE:Z

.field public static greylist-max-o WARN:Z

.field private static greylist-max-o sEventManager:Landroid/telecom/Logging/EventManager;

.field private static blacklist sIsUnitTestingEnabled:Z

.field private static greylist-max-o sIsUserExtendedLoggingEnabled:Z

.field private static greylist-max-o sSessionManager:Landroid/telecom/Logging/SessionManager;

.field private static final greylist-max-o sSingletonSync:Ljava/lang/Object;

.field private static greylist-max-o sUserExtendedLoggingStopTime:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 54
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput v0, Landroid/telecom/Log;->NUM_DIALABLE_DIGITS_TO_LOG:I

    .line 58
    const-string v0, "TelecomFramework"

    sput-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    .line 59
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Log;->DEBUG:Z

    .line 60
    const/4 v0, 0x4

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Log;->INFO:Z

    .line 61
    invoke-static {v1}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Log;->VERBOSE:Z

    .line 62
    const/4 v0, 0x5

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Log;->WARN:Z

    .line 63
    const/4 v0, 0x6

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Log;->ERROR:Z

    .line 66
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    sput-boolean v0, Landroid/telecom/Log;->USER_BUILD:Z

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/telecom/Log;->sSingletonSync:Ljava/lang/Object;

    .line 76
    sput-boolean v2, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    .line 81
    sput-boolean v2, Landroid/telecom/Log;->sIsUnitTestingEnabled:Z

    .line 87
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/telecom/Log;->sUserExtendedLoggingStopTime:J

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method

.method public static greylist-max-o addEvent(Landroid/telecom/Logging/EventManager$Loggable;Ljava/lang/String;)V
    .locals 2
    .param p0, "recordEntry"    # Landroid/telecom/Logging/EventManager$Loggable;
    .param p1, "event"    # Ljava/lang/String;

    .line 263
    invoke-static {}, Landroid/telecom/Log;->getEventManager()Landroid/telecom/Logging/EventManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/telecom/Logging/EventManager;->event(Landroid/telecom/Logging/EventManager$Loggable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 264
    return-void
.end method

.method public static greylist-max-o addEvent(Landroid/telecom/Logging/EventManager$Loggable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "recordEntry"    # Landroid/telecom/Logging/EventManager$Loggable;
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .line 267
    invoke-static {}, Landroid/telecom/Log;->getEventManager()Landroid/telecom/Logging/EventManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/telecom/Logging/EventManager;->event(Landroid/telecom/Logging/EventManager$Loggable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 268
    return-void
.end method

.method public static varargs blacklist addEvent(Landroid/telecom/Logging/EventManager$Loggable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "recordEntry"    # Landroid/telecom/Logging/EventManager$Loggable;
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 272
    invoke-static {}, Landroid/telecom/Log;->getEventManager()Landroid/telecom/Logging/EventManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/telecom/Logging/EventManager;->event(Landroid/telecom/Logging/EventManager$Loggable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    return-void
.end method

.method public static greylist-max-o addRequestResponsePair(Landroid/telecom/Logging/EventManager$TimedEventPair;)V
    .locals 1
    .param p0, "p"    # Landroid/telecom/Logging/EventManager$TimedEventPair;

    .line 280
    invoke-static {}, Landroid/telecom/Log;->getEventManager()Landroid/telecom/Logging/EventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telecom/Logging/EventManager;->addRequestResponsePair(Landroid/telecom/Logging/EventManager$TimedEventPair;)V

    .line 281
    return-void
.end method

.method private static varargs blacklist buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 9
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 509
    invoke-static {}, Landroid/telecom/Log;->getSessionId()Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, "sessionName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 514
    .local v1, "sessionPostfix":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_2

    :try_start_0
    array-length v5, p2

    if-nez v5, :cond_1

    goto :goto_1

    .line 515
    :cond_1
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v5, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 516
    :catch_0
    move-exception v5

    .line 517
    .local v5, "ife":Ljava/util/IllegalFormatException;
    sget-object v6, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    new-array v7, v2, [Ljava/lang/Object;

    aput-object p1, v7, v4

    array-length v8, p2

    .line 518
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    .line 517
    const-string v8, "Log: IllegalFormatException: formatString=\'%s\' numArgs=%d"

    invoke-static {v6, v5, v8, v7}, Landroid/telecom/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 519
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (An error occurred while formatting the message.)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "msg":Ljava/lang/String;
    goto :goto_3

    .line 514
    .end local v5    # "ife":Ljava/util/IllegalFormatException;
    .end local v6    # "msg":Ljava/lang/String;
    :cond_2
    :goto_1
    move-object v5, p1

    .line 515
    :goto_2
    move-object v6, v5

    .line 520
    .restart local v6    # "msg":Ljava/lang/String;
    nop

    .line 521
    :goto_3
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v4

    aput-object v6, v7, v3

    aput-object v1, v7, v2

    const-string v2, "%s: %s%s"

    invoke-static {v5, v2, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static greylist-max-o cancelSubsession(Landroid/telecom/Logging/Session;)V
    .locals 1
    .param p0, "subsession"    # Landroid/telecom/Logging/Session;

    .line 235
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telecom/Logging/SessionManager;->cancelSubsession(Landroid/telecom/Logging/Session;)V

    .line 236
    return-void
.end method

.method public static greylist-max-o continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V
    .locals 1
    .param p0, "subsession"    # Landroid/telecom/Logging/Session;
    .param p1, "shortMethodName"    # Ljava/lang/String;

    .line 239
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telecom/Logging/SessionManager;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public static greylist-max-o createSubsession()Landroid/telecom/Logging/Session;
    .locals 1

    .line 217
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Logging/SessionManager;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object v0

    return-object v0
.end method

.method public static varargs blacklist d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "objectPrefix"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 102
    sget-boolean v0, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 103
    invoke-static {}, Landroid/telecom/Log;->maybeDisableLogging()V

    .line 104
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    :cond_0
    sget-boolean v0, Landroid/telecom/Log;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 106
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs blacklist d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 93
    sget-boolean v0, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 94
    invoke-static {}, Landroid/telecom/Log;->maybeDisableLogging()V

    .line 95
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 96
    :cond_0
    sget-boolean v0, Landroid/telecom/Log;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 97
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_1
    :goto_0
    return-void
.end method

.method public static greylist-max-o dumpEvents(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p0, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 287
    const-string v0, "Telecom EventManager Logging Start"

    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 289
    sget-object v0, Landroid/telecom/Log;->sSingletonSync:Ljava/lang/Object;

    monitor-enter v0

    .line 290
    :try_start_0
    sget-object v1, Landroid/telecom/Log;->sEventManager:Landroid/telecom/Logging/EventManager;

    if-eqz v1, :cond_0

    .line 291
    invoke-static {}, Landroid/telecom/Log;->getEventManager()Landroid/telecom/Logging/EventManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/telecom/Logging/EventManager;->dumpEvents(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_0

    .line 293
    :cond_0
    const-string v1, "No Historical Events Logged."

    invoke-virtual {p0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 295
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    const-string v0, "Telecom EventManager Logging End"

    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 299
    return-void

    .line 295
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static greylist-max-o dumpEventsTimeline(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p0, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 309
    sget-object v0, Landroid/telecom/Log;->sSingletonSync:Ljava/lang/Object;

    monitor-enter v0

    .line 310
    :try_start_0
    sget-object v1, Landroid/telecom/Log;->sEventManager:Landroid/telecom/Logging/EventManager;

    if-eqz v1, :cond_0

    .line 311
    invoke-static {}, Landroid/telecom/Log;->getEventManager()Landroid/telecom/Logging/EventManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/telecom/Logging/EventManager;->dumpEventsTimeline(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_0

    .line 313
    :cond_0
    const-string v1, "No Historical Events Logged."

    invoke-virtual {p0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 315
    :goto_0
    monitor-exit v0

    .line 316
    return-void

    .line 315
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static varargs blacklist e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "objectPrefix"    # Ljava/lang/Object;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 161
    sget-boolean v0, Landroid/telecom/Log;->ERROR:Z

    if-eqz v0, :cond_0

    .line 162
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2, p3}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    :cond_0
    return-void
.end method

.method public static varargs blacklist e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 155
    sget-boolean v0, Landroid/telecom/Log;->ERROR:Z

    if-eqz v0, :cond_0

    .line 156
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0, p2, p3}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    :cond_0
    return-void
.end method

.method public static greylist-max-o endSession()V
    .locals 1

    .line 243
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Logging/SessionManager;->endSession()V

    .line 244
    return-void
.end method

.method private static blacklist getDialableCount(Ljava/lang/String;)I
    .locals 6
    .param p0, "toCount"    # Ljava/lang/String;

    .line 482
    const/4 v0, 0x0

    .line 483
    .local v0, "numDialable":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-char v4, v1, v3

    .line 484
    .local v4, "c":C
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 485
    add-int/lit8 v0, v0, 0x1

    .line 483
    .end local v4    # "c":C
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 488
    :cond_1
    return v0
.end method

.method private static greylist-max-o getEventManager()Landroid/telecom/Logging/EventManager;
    .locals 3

    .line 361
    sget-object v0, Landroid/telecom/Log;->sEventManager:Landroid/telecom/Logging/EventManager;

    if-nez v0, :cond_1

    .line 362
    sget-object v0, Landroid/telecom/Log;->sSingletonSync:Ljava/lang/Object;

    monitor-enter v0

    .line 363
    :try_start_0
    sget-object v1, Landroid/telecom/Log;->sEventManager:Landroid/telecom/Logging/EventManager;

    if-nez v1, :cond_0

    .line 364
    new-instance v1, Landroid/telecom/Logging/EventManager;

    new-instance v2, Landroid/telecom/Log$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/telecom/Log$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v1, v2}, Landroid/telecom/Logging/EventManager;-><init>(Landroid/telecom/Logging/SessionManager$ISessionIdQueryHandler;)V

    sput-object v1, Landroid/telecom/Log;->sEventManager:Landroid/telecom/Logging/EventManager;

    .line 365
    monitor-exit v0

    return-object v1

    .line 367
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 369
    :cond_1
    :goto_0
    sget-object v0, Landroid/telecom/Log;->sEventManager:Landroid/telecom/Logging/EventManager;

    return-object v0
.end method

.method public static greylist-max-o getExternalSession()Landroid/telecom/Logging/Session$Info;
    .locals 1

    .line 221
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Logging/SessionManager;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getExternalSession(Ljava/lang/String;)Landroid/telecom/Logging/Session$Info;
    .locals 1
    .param p0, "ownerInfo"    # Ljava/lang/String;

    .line 231
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telecom/Logging/SessionManager;->getExternalSession(Ljava/lang/String;)Landroid/telecom/Logging/Session$Info;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getPackageAbbreviation(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1
    .param p0, "componentName"    # Landroid/content/ComponentName;

    .line 532
    if-nez p0, :cond_0

    .line 533
    const-string v0, ""

    return-object v0

    .line 535
    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telecom/Log;->getPackageAbbreviation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getPackageAbbreviation(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .line 546
    const-string v0, ""

    if-nez p0, :cond_0

    .line 547
    return-object v0

    .line 549
    :cond_0
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/telecom/Log$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/telecom/Log$$ExternalSyntheticLambda1;-><init>()V

    .line 550
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 551
    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 549
    return-object v0
.end method

.method private static greylist-max-o getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .line 504
    if-nez p0, :cond_0

    const-string v0, "<null>"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static greylist-max-o getSessionId()Ljava/lang/String;
    .locals 2

    .line 253
    sget-object v0, Landroid/telecom/Log;->sSingletonSync:Ljava/lang/Object;

    monitor-enter v0

    .line 254
    :try_start_0
    sget-object v1, Landroid/telecom/Log;->sSessionManager:Landroid/telecom/Logging/SessionManager;

    if-eqz v1, :cond_0

    .line 255
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/Logging/SessionManager;->getSessionId()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 257
    :cond_0
    const-string v1, ""

    monitor-exit v0

    return-object v1

    .line 259
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static greylist-max-o getSessionManager()Landroid/telecom/Logging/SessionManager;
    .locals 2

    .line 376
    sget-object v0, Landroid/telecom/Log;->sSessionManager:Landroid/telecom/Logging/SessionManager;

    if-nez v0, :cond_1

    .line 377
    sget-object v0, Landroid/telecom/Log;->sSingletonSync:Ljava/lang/Object;

    monitor-enter v0

    .line 378
    :try_start_0
    sget-object v1, Landroid/telecom/Log;->sSessionManager:Landroid/telecom/Logging/SessionManager;

    if-nez v1, :cond_0

    .line 379
    new-instance v1, Landroid/telecom/Logging/SessionManager;

    invoke-direct {v1}, Landroid/telecom/Logging/SessionManager;-><init>()V

    sput-object v1, Landroid/telecom/Log;->sSessionManager:Landroid/telecom/Logging/SessionManager;

    .line 380
    monitor-exit v0

    return-object v1

    .line 382
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 384
    :cond_1
    :goto_0
    sget-object v0, Landroid/telecom/Log;->sSessionManager:Landroid/telecom/Logging/SessionManager;

    return-object v0
.end method

.method public static varargs blacklist i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "objectPrefix"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 118
    sget-boolean v0, Landroid/telecom/Log;->INFO:Z

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    return-void
.end method

.method public static varargs greylist-max-r i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 112
    sget-boolean v0, Landroid/telecom/Log;->INFO:Z

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    return-void
.end method

.method public static greylist-max-o isLoggable(I)Z
    .locals 1
    .param p0, "level"    # I

    .line 412
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static blacklist isUnitTestingEnabled()Z
    .locals 1

    .line 355
    sget-boolean v0, Landroid/telecom/Log;->sIsUnitTestingEnabled:Z

    return v0
.end method

.method static synthetic blacklist lambda$getPackageAbbreviation$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 550
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static greylist-max-o maybeDisableLogging()V
    .locals 4

    .line 401
    sget-boolean v0, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    if-nez v0, :cond_0

    .line 402
    return-void

    .line 405
    :cond_0
    sget-wide v0, Landroid/telecom/Log;->sUserExtendedLoggingStopTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 406
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/telecom/Log;->sUserExtendedLoggingStopTime:J

    .line 407
    const/4 v0, 0x0

    sput-boolean v0, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    .line 409
    :cond_1
    return-void
.end method

.method private static blacklist obfuscatePhoneNumber(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 5
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .line 464
    invoke-static {p1}, Landroid/telecom/Log;->getDialableCount(Ljava/lang/String;)I

    move-result v0

    sget v1, Landroid/telecom/Log;->NUM_DIALABLE_DIGITS_TO_LOG:I

    sub-int/2addr v0, v1

    .line 466
    .local v0, "numDigitsToObfuscate":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 467
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 468
    .local v2, "c":C
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v3

    .line 469
    .local v3, "isDialable":Z
    if-eqz v3, :cond_0

    .line 470
    add-int/lit8 v0, v0, -0x1

    .line 472
    :cond_0
    if-eqz v3, :cond_1

    if-ltz v0, :cond_1

    const-string v4, "*"

    goto :goto_1

    :cond_1
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    :goto_1
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 466
    .end local v2    # "c":C
    .end local v3    # "isDialable":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 474
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public static greylist-max-o pii(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "pii"    # Ljava/lang/Object;

    .line 497
    if-eqz p0, :cond_1

    sget-boolean v0, Landroid/telecom/Log;->VERBOSE:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 500
    :cond_0
    const-string v0, "***"

    return-object v0

    .line 498
    :cond_1
    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o piiHandle(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p0, "pii"    # Ljava/lang/Object;

    .line 422
    if-eqz p0, :cond_8

    sget-boolean v0, Landroid/telecom/Log;->VERBOSE:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 426
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 427
    .local v0, "sb":Ljava/lang/StringBuilder;
    instance-of v1, p0, Landroid/net/Uri;

    if-eqz v1, :cond_6

    .line 428
    move-object v1, p0

    check-cast v1, Landroid/net/Uri;

    .line 429
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 431
    .local v2, "scheme":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 432
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 436
    .local v3, "textToObfuscate":Ljava/lang/String;
    const-string/jumbo v4, "tel"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 437
    invoke-static {v0, v3}, Landroid/telecom/Log;->obfuscatePhoneNumber(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    .line 438
    :cond_2
    const-string/jumbo v4, "sip"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 439
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 440
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 441
    .local v5, "c":C
    const/16 v6, 0x40

    if-eq v5, v6, :cond_3

    const/16 v6, 0x2e

    if-eq v5, v6, :cond_3

    .line 442
    const/16 v5, 0x2a

    .line 444
    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 439
    .end local v5    # "c":C
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v4    # "i":I
    :cond_4
    goto :goto_1

    .line 447
    :cond_5
    invoke-static {p0}, Landroid/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 449
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "scheme":Ljava/lang/String;
    .end local v3    # "textToObfuscate":Ljava/lang/String;
    :cond_6
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 450
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 451
    .local v1, "number":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/telecom/Log;->obfuscatePhoneNumber(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_2

    .line 449
    .end local v1    # "number":Ljava/lang/String;
    :cond_7
    :goto_1
    nop

    .line 454
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 423
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_8
    :goto_3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o registerEventListener(Landroid/telecom/Logging/EventManager$EventListener;)V
    .locals 1
    .param p0, "e"    # Landroid/telecom/Logging/EventManager$EventListener;

    .line 276
    invoke-static {}, Landroid/telecom/Log;->getEventManager()Landroid/telecom/Logging/EventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telecom/Logging/EventManager;->registerEventListener(Landroid/telecom/Logging/EventManager$EventListener;)V

    .line 277
    return-void
.end method

.method public static greylist-max-o registerSessionListener(Landroid/telecom/Logging/SessionManager$ISessionListener;)V
    .locals 1
    .param p0, "l"    # Landroid/telecom/Logging/SessionManager$ISessionListener;

    .line 247
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telecom/Logging/SessionManager;->registerSessionListener(Landroid/telecom/Logging/SessionManager$ISessionListener;)V

    .line 248
    return-void
.end method

.method public static greylist-max-o setIsExtendedLoggingEnabled(Z)V
    .locals 4
    .param p0, "isExtendedLoggingEnabled"    # Z

    .line 326
    sget-boolean v0, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    if-ne v0, p0, :cond_0

    .line 327
    return-void

    .line 330
    :cond_0
    sget-object v0, Landroid/telecom/Log;->sEventManager:Landroid/telecom/Logging/EventManager;

    if-eqz v0, :cond_2

    .line 331
    if-eqz p0, :cond_1

    .line 332
    const/16 v1, 0x14

    goto :goto_0

    :cond_1
    const/16 v1, 0xa

    .line 331
    :goto_0
    invoke-virtual {v0, v1}, Landroid/telecom/Logging/EventManager;->changeEventCacheSize(I)V

    .line 335
    :cond_2
    sput-boolean p0, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    .line 336
    if-eqz p0, :cond_3

    .line 337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x1b7740

    add-long/2addr v0, v2

    sput-wide v0, Landroid/telecom/Log;->sUserExtendedLoggingStopTime:J

    goto :goto_1

    .line 340
    :cond_3
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/telecom/Log;->sUserExtendedLoggingStopTime:J

    .line 342
    :goto_1
    return-void
.end method

.method public static greylist-max-o setSessionContext(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 196
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telecom/Logging/SessionManager;->setContext(Landroid/content/Context;)V

    .line 197
    return-void
.end method

.method public static greylist-max-o setTag(Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    .line 388
    sput-object p0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    .line 389
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Log;->DEBUG:Z

    .line 390
    const/4 v0, 0x4

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Log;->INFO:Z

    .line 391
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Log;->VERBOSE:Z

    .line 392
    const/4 v0, 0x5

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Log;->WARN:Z

    .line 393
    const/4 v0, 0x6

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Log;->ERROR:Z

    .line 394
    return-void
.end method

.method public static blacklist setUnitTestingEnabled(Z)V
    .locals 0
    .param p0, "isEnabled"    # Z

    .line 351
    sput-boolean p0, Landroid/telecom/Log;->sIsUnitTestingEnabled:Z

    .line 352
    return-void
.end method

.method public static greylist-max-o startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V
    .locals 2
    .param p0, "info"    # Landroid/telecom/Logging/Session$Info;
    .param p1, "shortMethodName"    # Ljava/lang/String;

    .line 204
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/telecom/Logging/SessionManager;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public static greylist-max-o startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "info"    # Landroid/telecom/Logging/Session$Info;
    .param p1, "shortMethodName"    # Ljava/lang/String;
    .param p2, "callerIdentification"    # Ljava/lang/String;

    .line 213
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/telecom/Logging/SessionManager;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public static greylist-max-o startSession(Ljava/lang/String;)V
    .locals 2
    .param p0, "shortMethodName"    # Ljava/lang/String;

    .line 200
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/telecom/Logging/SessionManager;->startSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public static greylist-max-o startSession(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "shortMethodName"    # Ljava/lang/String;
    .param p1, "callerIdentification"    # Ljava/lang/String;

    .line 208
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telecom/Logging/SessionManager;->startSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public static varargs blacklist v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "objectPrefix"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 133
    sget-boolean v0, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 134
    invoke-static {}, Landroid/telecom/Log;->maybeDisableLogging()V

    .line 135
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 136
    :cond_0
    sget-boolean v0, Landroid/telecom/Log;->VERBOSE:Z

    if-eqz v0, :cond_1

    .line 137
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs blacklist v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 124
    sget-boolean v0, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 125
    invoke-static {}, Landroid/telecom/Log;->maybeDisableLogging()V

    .line 126
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 127
    :cond_0
    sget-boolean v0, Landroid/telecom/Log;->VERBOSE:Z

    if-eqz v0, :cond_1

    .line 128
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs blacklist w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "objectPrefix"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 149
    sget-boolean v0, Landroid/telecom/Log;->WARN:Z

    if-eqz v0, :cond_0

    .line 150
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    return-void
.end method

.method public static varargs greylist-max-r w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 143
    sget-boolean v0, Landroid/telecom/Log;->WARN:Z

    if-eqz v0, :cond_0

    .line 144
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    return-void
.end method

.method public static varargs blacklist wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "objectPrefix"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 182
    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    return-void
.end method

.method public static varargs blacklist wtf(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "objectPrefix"    # Ljava/lang/Object;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 172
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2, p3}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    return-void
.end method

.method public static varargs blacklist wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 177
    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    return-void
.end method

.method public static varargs blacklist wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 168
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0, p2, p3}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    return-void
.end method
