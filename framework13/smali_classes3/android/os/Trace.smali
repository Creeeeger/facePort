.class public final Landroid/os/Trace;
.super Ljava/lang/Object;
.source "Trace.java"


# static fields
.field private static final greylist-max-o MAX_SECTION_NAME_LEN:I = 0x7f

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Trace"

.field public static final greylist-max-o TRACE_TAG_ACTIVITY_MANAGER:J = 0x40L

.field public static final greylist-max-o TRACE_TAG_ADB:J = 0x400000L

.field public static final greylist-max-o TRACE_TAG_AIDL:J = 0x1000000L

.field public static final greylist-max-o TRACE_TAG_ALWAYS:J = 0x1L

.field public static final greylist TRACE_TAG_APP:J = 0x1000L

.field public static final greylist-max-o TRACE_TAG_AUDIO:J = 0x100L

.field public static final greylist-max-o TRACE_TAG_BIONIC:J = 0x10000L

.field public static final greylist-max-o TRACE_TAG_CAMERA:J = 0x400L

.field public static final greylist-max-o TRACE_TAG_DALVIK:J = 0x4000L

.field public static final greylist-max-o TRACE_TAG_DATABASE:J = 0x100000L

.field public static final greylist-max-o TRACE_TAG_GRAPHICS:J = 0x2L

.field public static final greylist-max-o TRACE_TAG_HAL:J = 0x800L

.field public static final greylist-max-o TRACE_TAG_INPUT:J = 0x4L

.field public static final greylist-max-o TRACE_TAG_NETWORK:J = 0x200000L
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-o TRACE_TAG_NEVER:J = 0x0L

.field public static final blacklist TRACE_TAG_NNAPI:J = 0x2000000L

.field private static final greylist-max-o TRACE_TAG_NOT_READY:J = -0x8000000000000000L

.field public static final greylist-max-o TRACE_TAG_PACKAGE_MANAGER:J = 0x40000L

.field public static final greylist-max-o TRACE_TAG_POWER:J = 0x20000L

.field public static final greylist-max-o TRACE_TAG_RESOURCES:J = 0x2000L

.field public static final blacklist TRACE_TAG_RRO:J = 0x4000000L

.field public static final greylist-max-o TRACE_TAG_RS:J = 0x8000L

.field public static final greylist-max-o TRACE_TAG_SYNC_MANAGER:J = 0x80L

.field public static final greylist-max-o TRACE_TAG_SYSTEM_SERVER:J = 0x80000L

.field public static final blacklist TRACE_TAG_THERMAL:J = 0x8000000L

.field public static final greylist-max-o TRACE_TAG_VIBRATOR:J = 0x800000L

.field public static final greylist-max-o TRACE_TAG_VIDEO:J = 0x200L

.field public static final greylist-max-r TRACE_TAG_VIEW:J = 0x8L

.field public static final greylist-max-o TRACE_TAG_WEBVIEW:J = 0x10L

.field public static final greylist-max-o TRACE_TAG_WINDOW_MANAGER:J = 0x20L

.field private static volatile greylist sEnabledTags:J

.field private static greylist-max-o sZygoteDebugFlags:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 118
    const-wide/high16 v0, -0x8000000000000000L

    sput-wide v0, Landroid/os/Trace;->sEnabledTags:J

    .line 120
    const/4 v0, 0x0

    sput v0, Landroid/os/Trace;->sZygoteDebugFlags:I

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    return-void
.end method

.method public static greylist asyncTraceBegin(JLjava/lang/String;I)V
    .locals 1
    .param p0, "traceTag"    # J
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "cookie"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 256
    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-static {p0, p1, p2, p3}, Landroid/os/Trace;->nativeAsyncTraceBegin(JLjava/lang/String;I)V

    .line 259
    :cond_0
    return-void
.end method

.method public static greylist asyncTraceEnd(JLjava/lang/String;I)V
    .locals 1
    .param p0, "traceTag"    # J
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "cookie"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 275
    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-static {p0, p1, p2, p3}, Landroid/os/Trace;->nativeAsyncTraceEnd(JLjava/lang/String;I)V

    .line 278
    :cond_0
    return-void
.end method

.method public static blacklist asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p0, "traceTag"    # J
    .param p2, "trackName"    # Ljava/lang/String;
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "cookie"    # I

    .line 296
    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-static {p0, p1, p2, p3, p4}, Landroid/os/Trace;->nativeAsyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 299
    :cond_0
    return-void
.end method

.method public static blacklist asyncTraceForTrackEnd(JLjava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p0, "traceTag"    # J
    .param p2, "trackName"    # Ljava/lang/String;
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "cookie"    # I

    .line 316
    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    invoke-static {p0, p1, p2, p3, p4}, Landroid/os/Trace;->nativeAsyncTraceForTrackEnd(JLjava/lang/String;Ljava/lang/String;I)V

    .line 319
    :cond_0
    return-void
.end method

.method public static whitelist beginAsyncSection(Ljava/lang/String;I)V
    .locals 2
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "cookie"    # I

    .line 414
    const-wide/16 v0, 0x1000

    invoke-static {v0, v1, p0, p1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 415
    return-void
.end method

.method public static whitelist beginSection(Ljava/lang/String;)V
    .locals 4
    .param p0, "sectionName"    # Ljava/lang/String;

    .line 382
    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 383
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x7f

    if-gt v2, v3, :cond_0

    .line 386
    invoke-static {v0, v1, p0}, Landroid/os/Trace;->nativeTraceBegin(JLjava/lang/String;)V

    goto :goto_0

    .line 384
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sectionName is too long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :cond_1
    :goto_0
    return-void
.end method

.method public static whitelist endAsyncSection(Ljava/lang/String;I)V
    .locals 2
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "cookie"    # I

    .line 426
    const-wide/16 v0, 0x1000

    invoke-static {v0, v1, p0, p1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 427
    return-void
.end method

.method public static whitelist endSection()V
    .locals 3

    .line 398
    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 399
    invoke-static {v0, v1}, Landroid/os/Trace;->nativeTraceEnd(J)V

    .line 401
    :cond_0
    return-void
.end method

.method public static blacklist instant(JLjava/lang/String;)V
    .locals 2
    .param p0, "traceTag"    # J
    .param p2, "methodName"    # Ljava/lang/String;

    .line 329
    if-eqz p2, :cond_1

    .line 332
    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    invoke-static {p0, p1, p2}, Landroid/os/Trace;->nativeInstant(JLjava/lang/String;)V

    .line 335
    :cond_0
    return-void

    .line 330
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "methodName cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist instantForTrack(JLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "traceTag"    # J
    .param p2, "trackName"    # Ljava/lang/String;
    .param p3, "methodName"    # Ljava/lang/String;

    .line 346
    if-eqz p2, :cond_2

    .line 349
    if-eqz p3, :cond_1

    .line 352
    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    invoke-static {p0, p1, p2, p3}, Landroid/os/Trace;->nativeInstantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 355
    :cond_0
    return-void

    .line 350
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "methodName cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "trackName cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist isEnabled()Z
    .locals 2

    .line 367
    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static greylist isTagEnabled(J)Z
    .locals 6
    .param p0, "traceTag"    # J
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 163
    invoke-static {}, Landroid/os/Trace;->nativeGetEnabledTags()J

    move-result-wide v0

    .line 164
    .local v0, "tags":J
    and-long v2, v0, p0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private static native greylist-max-o nativeAsyncTraceBegin(JLjava/lang/String;I)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeAsyncTraceEnd(JLjava/lang/String;I)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeAsyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeAsyncTraceForTrackEnd(JLjava/lang/String;Ljava/lang/String;I)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist nativeGetEnabledTags()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeInstant(JLjava/lang/String;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeInstantForTrack(JLjava/lang/String;Ljava/lang/String;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeSetAppTracingAllowed(Z)V
.end method

.method private static native greylist-max-o nativeSetTracingEnabled(Z)V
.end method

.method private static native greylist-max-o nativeTraceBegin(JLjava/lang/String;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeTraceCounter(JLjava/lang/String;J)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeTraceEnd(J)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static greylist setAppTracingAllowed(Z)V
    .locals 0
    .param p0, "allowed"    # Z

    .line 194
    invoke-static {p0}, Landroid/os/Trace;->nativeSetAppTracingAllowed(Z)V

    .line 195
    return-void
.end method

.method public static whitelist setCounter(Ljava/lang/String;J)V
    .locals 3
    .param p0, "counterName"    # Ljava/lang/String;
    .param p1, "counterValue"    # J

    .line 436
    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 437
    invoke-static {v0, v1, p0, p1, p2}, Landroid/os/Trace;->nativeTraceCounter(JLjava/lang/String;J)V

    .line 439
    :cond_0
    return-void
.end method

.method public static greylist-max-o setTracingEnabled(ZI)V
    .locals 0
    .param p0, "enabled"    # Z
    .param p1, "debugFlags"    # I

    .line 202
    invoke-static {p0}, Landroid/os/Trace;->nativeSetTracingEnabled(Z)V

    .line 203
    sput p1, Landroid/os/Trace;->sZygoteDebugFlags:I

    .line 204
    return-void
.end method

.method public static greylist traceBegin(JLjava/lang/String;)V
    .locals 1
    .param p0, "traceTag"    # J
    .param p2, "methodName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 219
    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-static {p0, p1, p2}, Landroid/os/Trace;->nativeTraceBegin(JLjava/lang/String;)V

    .line 222
    :cond_0
    return-void
.end method

.method public static greylist traceCounter(JLjava/lang/String;I)V
    .locals 2
    .param p0, "traceTag"    # J
    .param p2, "counterName"    # Ljava/lang/String;
    .param p3, "counterValue"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 179
    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    int-to-long v0, p3

    invoke-static {p0, p1, p2, v0, v1}, Landroid/os/Trace;->nativeTraceCounter(JLjava/lang/String;J)V

    .line 182
    :cond_0
    return-void
.end method

.method public static greylist traceEnd(J)V
    .locals 1
    .param p0, "traceTag"    # J
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 235
    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-static {p0, p1}, Landroid/os/Trace;->nativeTraceEnd(J)V

    .line 238
    :cond_0
    return-void
.end method
