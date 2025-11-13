.class public final Landroid/util/secutil/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/secutil/Log$ImmediateLogWriter;,
        Landroid/util/secutil/Log$NoPreloadHolder;,
        Landroid/util/secutil/Log$TerribleFailureHandler;,
        Landroid/util/secutil/Log$TerribleFailure;
    }
.end annotation


# static fields
.field public static final blacklist ASSERT:I = 0x7

.field public static final blacklist DEBUG:I = 0x3

.field public static final blacklist ERROR:I = 0x6

.field public static final blacklist INFO:I = 0x4

.field public static final blacklist LOG_ID_CRASH:I = 0x4

.field public static final blacklist LOG_ID_EVENTS:I = 0x2

.field public static final blacklist LOG_ID_MAIN:I = 0x0

.field public static final blacklist LOG_ID_RADIO:I = 0x1

.field public static final blacklist LOG_ID_SYSTEM:I = 0x3

.field public static final blacklist VERBOSE:I = 0x2

.field public static final blacklist WARN:I = 0x5

.field private static blacklist sWtfHandler:Landroid/util/secutil/Log$TerribleFailureHandler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smlogger_entry_max_payload_native()I
    .locals 1

    invoke-static {}, Landroid/util/secutil/Log;->logger_entry_max_payload_native()I

    move-result v0

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 115
    new-instance v0, Landroid/util/secutil/Log$1;

    invoke-direct {v0}, Landroid/util/secutil/Log$1;-><init>()V

    sput-object v0, Landroid/util/secutil/Log;->sWtfHandler:Landroid/util/secutil/Log$TerribleFailureHandler;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    return-void
.end method

.method public static blacklist d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 172
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 173
    const/4 v0, 0x3

    invoke-static {v1, v0, p0, p1}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 175
    :cond_0
    return v1
.end method

.method public static blacklist d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 193
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 194
    const/4 v0, 0x3

    invoke-static {v1, v0, p0, p1, p2}, Landroid/util/secutil/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 196
    :cond_0
    return v1
.end method

.method public static blacklist e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 337
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 338
    const/4 v0, 0x6

    invoke-static {v1, v0, p0, p1}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 340
    :cond_0
    return v1
.end method

.method public static blacklist e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 358
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 359
    const/4 v0, 0x6

    invoke-static {v1, v0, p0, p1, p2}, Landroid/util/secutil/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 361
    :cond_0
    return v1
.end method

.method public static blacklist getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5
    .param p0, "tr"    # Ljava/lang/Throwable;

    .line 491
    const-string v0, ""

    if-nez p0, :cond_0

    .line 492
    return-object v0

    .line 497
    :cond_0
    move-object v1, p0

    .line 498
    .local v1, "t":Ljava/lang/Throwable;
    :goto_0
    if-eqz v1, :cond_2

    .line 499
    instance-of v2, v1, Ljava/net/UnknownHostException;

    if-eqz v2, :cond_1

    .line 500
    return-object v0

    .line 502
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    .line 505
    :cond_2
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 506
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    const/4 v3, 0x0

    const/16 v4, 0x100

    invoke-direct {v2, v0, v3, v4}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 507
    .local v2, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 508
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 509
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static blacklist i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 213
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 214
    const/4 v0, 0x4

    invoke-static {v1, v0, p0, p1}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 216
    :cond_0
    return v1
.end method

.method public static blacklist i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 234
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 235
    const/4 v0, 0x4

    invoke-static {v1, v0, p0, p1, p2}, Landroid/util/secutil/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 237
    :cond_0
    return v1
.end method

.method public static native blacklist isLoggable(Ljava/lang/String;I)Z
.end method

.method private static native blacklist logger_entry_max_payload_native()I
.end method

.method public static blacklist println(ILjava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 521
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 522
    invoke-static {v1, p0, p1, p2}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 524
    :cond_0
    return v1
.end method

.method public static native blacklist println_native(IILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static blacklist printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 5
    .param p0, "bufID"    # I
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "tr"    # Ljava/lang/Throwable;

    .line 550
    new-instance v0, Landroid/util/secutil/Log$ImmediateLogWriter;

    invoke-direct {v0, p0, p1, p2}, Landroid/util/secutil/Log$ImmediateLogWriter;-><init>(IILjava/lang/String;)V

    .line 555
    .local v0, "logWriter":Landroid/util/secutil/Log$ImmediateLogWriter;
    sget v1, Landroid/util/secutil/Log$NoPreloadHolder;->LOGGER_ENTRY_MAX_PAYLOAD:I

    add-int/lit8 v1, v1, -0x2

    .line 557
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x20

    .line 560
    .local v1, "bufferSize":I
    const/16 v2, 0x64

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 562
    new-instance v2, Lcom/android/internal/util/LineBreakBufferedWriter;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/util/LineBreakBufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 564
    .local v2, "lbbw":Lcom/android/internal/util/LineBreakBufferedWriter;
    invoke-virtual {v2, p3}, Lcom/android/internal/util/LineBreakBufferedWriter;->println(Ljava/lang/String;)V

    .line 566
    if-eqz p4, :cond_4

    .line 569
    move-object v3, p4

    .line 570
    .local v3, "t":Ljava/lang/Throwable;
    :goto_1
    if-eqz v3, :cond_3

    .line 571
    instance-of v4, v3, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_1

    .line 572
    goto :goto_2

    .line 574
    :cond_1
    instance-of v4, v3, Landroid/os/DeadSystemException;

    if-eqz v4, :cond_2

    .line 575
    const-string v4, "DeadSystemException: The system died; earlier logs will point to the root cause"

    invoke-virtual {v2, v4}, Lcom/android/internal/util/LineBreakBufferedWriter;->println(Ljava/lang/String;)V

    .line 577
    goto :goto_2

    .line 579
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    goto :goto_1

    .line 581
    :cond_3
    :goto_2
    if-nez v3, :cond_4

    .line 582
    invoke-virtual {p4, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 586
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {v2}, Lcom/android/internal/util/LineBreakBufferedWriter;->flush()V

    .line 588
    invoke-virtual {v0}, Landroid/util/secutil/Log$ImmediateLogWriter;->getWritten()I

    move-result v3

    return v3
.end method

.method public static blacklist secD(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 179
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecDLog:Z

    if-eqz v0, :cond_0

    .line 180
    invoke-static {p0, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 182
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist secD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 200
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecDLog:Z

    if-eqz v0, :cond_0

    .line 201
    invoke-static {p0, p1, p2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 203
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist secE(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 344
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecELog:Z

    if-eqz v0, :cond_0

    .line 345
    invoke-static {p0, p1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 347
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 365
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecELog:Z

    if-eqz v0, :cond_0

    .line 366
    invoke-static {p0, p1, p2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 368
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist secI(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 220
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecILog:Z

    if-eqz v0, :cond_0

    .line 221
    invoke-static {p0, p1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 223
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist secI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 241
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecILog:Z

    if-eqz v0, :cond_0

    .line 242
    invoke-static {p0, p1, p2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 244
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist secV(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 138
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecVLog:Z

    if-eqz v0, :cond_0

    .line 139
    invoke-static {p0, p1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 141
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist secV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 159
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecVLog:Z

    if-eqz v0, :cond_0

    .line 160
    invoke-static {p0, p1, p2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 162
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist secW(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 261
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWLog:Z

    if-eqz v0, :cond_0

    .line 262
    invoke-static {p0, p1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 264
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 282
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWLog:Z

    if-eqz v0, :cond_0

    .line 283
    invoke-static {p0, p1, p2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 285
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist secW(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 324
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWLog:Z

    if-eqz v0, :cond_0

    .line 325
    invoke-static {p0, p1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 327
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist secWtf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 388
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWtfLog:Z

    if-eqz v0, :cond_0

    .line 389
    invoke-static {p0, p1}, Landroid/util/secutil/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 391
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist secWtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 448
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWtfLog:Z

    if-eqz v0, :cond_0

    .line 449
    invoke-static {p0, p1, p2}, Landroid/util/secutil/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 451
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist secWtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 427
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWtfLog:Z

    if-eqz v0, :cond_0

    .line 428
    invoke-static {p0, p1}, Landroid/util/secutil/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 430
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist secWtfStack(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 407
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWtfLog:Z

    if-eqz v0, :cond_0

    .line 408
    invoke-static {p0, p1}, Landroid/util/secutil/Log;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 410
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist setWtfHandler(Landroid/util/secutil/Log$TerribleFailureHandler;)Landroid/util/secutil/Log$TerribleFailureHandler;
    .locals 2
    .param p0, "handler"    # Landroid/util/secutil/Log$TerribleFailureHandler;

    .line 478
    if-eqz p0, :cond_0

    .line 481
    sget-object v0, Landroid/util/secutil/Log;->sWtfHandler:Landroid/util/secutil/Log$TerribleFailureHandler;

    .line 482
    .local v0, "oldHandler":Landroid/util/secutil/Log$TerribleFailureHandler;
    sput-object p0, Landroid/util/secutil/Log;->sWtfHandler:Landroid/util/secutil/Log$TerribleFailureHandler;

    .line 483
    return-object v0

    .line 479
    .end local v0    # "oldHandler":Landroid/util/secutil/Log$TerribleFailureHandler;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "handler == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 131
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 132
    const/4 v0, 0x2

    invoke-static {v1, v0, p0, p1}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 134
    :cond_0
    return v1
.end method

.method public static blacklist v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 152
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 153
    const/4 v0, 0x2

    invoke-static {v1, v0, p0, p1, p2}, Landroid/util/secutil/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 155
    :cond_0
    return v1
.end method

.method public static blacklist w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 254
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 255
    const/4 v0, 0x5

    invoke-static {v1, v0, p0, p1}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 257
    :cond_0
    return v1
.end method

.method public static blacklist w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 275
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 276
    const/4 v0, 0x5

    invoke-static {v1, v0, p0, p1, p2}, Landroid/util/secutil/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 278
    :cond_0
    return v1
.end method

.method public static blacklist w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 317
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 318
    const/4 v0, 0x5

    const-string v2, ""

    invoke-static {v1, v0, p0, v2, p1}, Landroid/util/secutil/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 320
    :cond_0
    return v1
.end method

.method static blacklist wtf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZ)I
    .locals 3
    .param p0, "logId"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;
    .param p4, "localStack"    # Z
    .param p5, "system"    # Z

    .line 456
    new-instance v0, Landroid/util/secutil/Log$TerribleFailure;

    invoke-direct {v0, p2, p3}, Landroid/util/secutil/Log$TerribleFailure;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 460
    .local v0, "what":Landroid/util/secutil/Log$TerribleFailure;
    if-eqz p4, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p3

    :goto_0
    const/4 v2, 0x6

    invoke-static {p0, v2, p1, p2, v1}, Landroid/util/secutil/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    .line 461
    .local v1, "bytes":I
    sget-object v2, Landroid/util/secutil/Log;->sWtfHandler:Landroid/util/secutil/Log$TerribleFailureHandler;

    invoke-interface {v2, p1, v0, p5}, Landroid/util/secutil/Log$TerribleFailureHandler;->onTerribleFailure(Ljava/lang/String;Landroid/util/secutil/Log$TerribleFailure;Z)V

    .line 462
    return v1
.end method

.method public static blacklist wtf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 381
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWtfLog:Z

    if-eqz v0, :cond_0

    .line 382
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Landroid/util/secutil/Log;->wtf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZ)I

    move-result v0

    return v0

    .line 384
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 441
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWtfLog:Z

    if-eqz v0, :cond_0

    .line 442
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Landroid/util/secutil/Log;->wtf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZ)I

    move-result v0

    return v0

    .line 444
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 420
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWtfLog:Z

    if-eqz v0, :cond_0

    .line 421
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Landroid/util/secutil/Log;->wtf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZ)I

    move-result v0

    return v0

    .line 423
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static blacklist wtfQuiet(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "logId"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "system"    # Z

    .line 466
    new-instance v0, Landroid/util/secutil/Log$TerribleFailure;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Landroid/util/secutil/Log$TerribleFailure;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 467
    .local v0, "what":Landroid/util/secutil/Log$TerribleFailure;
    sget-object v1, Landroid/util/secutil/Log;->sWtfHandler:Landroid/util/secutil/Log$TerribleFailureHandler;

    invoke-interface {v1, p1, v0, p3}, Landroid/util/secutil/Log$TerribleFailureHandler;->onTerribleFailure(Ljava/lang/String;Landroid/util/secutil/Log$TerribleFailure;Z)V

    .line 468
    return-void
.end method

.method public static blacklist wtfStack(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 400
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWtfLog:Z

    if-eqz v0, :cond_0

    .line 401
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Landroid/util/secutil/Log;->wtf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZ)I

    move-result v0

    return v0

    .line 403
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
