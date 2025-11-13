.class public final Lcom/samsung/android/util/SemLog;
.super Ljava/lang/Object;
.source "SemLog.java"


# static fields
.field public static final whitelist ASSERT:I = 0x7

.field public static final whitelist DEBUG:I = 0x3

.field private static final blacklist D_FLAG:I = -0xfffff10

.field private static final blacklist ENABLE_LOG:I = -0x10000000

.field public static final whitelist ERROR:I = 0x6

.field private static final blacklist E_FLAG:I = -0xff10000

.field public static final whitelist INFO:I = 0x4

.field private static final blacklist I_FLAG:I = -0xffff100

.field private static final blacklist SAVE_FILE:I = -0x1000000

.field public static final whitelist VERBOSE:I = 0x2

.field private static final blacklist V_FLAG:I = -0xffffff1

.field public static final whitelist WARN:I = 0x5

.field private static final blacklist WTF_FLAG:I = -0xf100000

.field private static final blacklist W_FLAG:I = -0xfff1000

.field private static blacklist mEnabledD:Z

.field private static blacklist mEnabledE:Z

.field private static blacklist mEnabledGlobal:Z

.field private static blacklist mEnabledI:Z

.field private static blacklist mEnabledV:Z

.field private static blacklist mEnabledW:Z

.field private static blacklist mEnabledWtf:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 6

    .line 68
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/util/SemLog;->mEnabledGlobal:Z

    .line 69
    sput-boolean v0, Lcom/samsung/android/util/SemLog;->mEnabledV:Z

    .line 70
    sput-boolean v0, Lcom/samsung/android/util/SemLog;->mEnabledD:Z

    .line 71
    sput-boolean v0, Lcom/samsung/android/util/SemLog;->mEnabledI:Z

    .line 72
    sput-boolean v0, Lcom/samsung/android/util/SemLog;->mEnabledW:Z

    .line 73
    sput-boolean v0, Lcom/samsung/android/util/SemLog;->mEnabledE:Z

    .line 74
    sput-boolean v0, Lcom/samsung/android/util/SemLog;->mEnabledWtf:Z

    .line 85
    const-string/jumbo v1, "persist.log.seclevel"

    invoke-static {v1, v0}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    .line 86
    .local v1, "secLevel":Z
    :goto_0
    const-wide/16 v3, -0x1

    const-string/jumbo v5, "persist.log.level"

    invoke-static {v5, v3, v4}, Landroid/os/SemSystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    long-to-int v3, v3

    .line 88
    .local v3, "semLevel":I
    sput-boolean v1, Lcom/samsung/android/util/SemLog;->mEnabledGlobal:Z

    .line 89
    const v4, -0xffffff1

    and-int v5, v3, v4

    if-ne v5, v4, :cond_1

    if-eqz v1, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    sput-boolean v4, Lcom/samsung/android/util/SemLog;->mEnabledV:Z

    .line 90
    const v4, -0xfffff10

    and-int v5, v3, v4

    if-ne v5, v4, :cond_2

    if-eqz v1, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v0

    :goto_2
    sput-boolean v4, Lcom/samsung/android/util/SemLog;->mEnabledD:Z

    .line 91
    const v4, -0xffff100

    and-int v5, v3, v4

    if-ne v5, v4, :cond_3

    if-eqz v1, :cond_3

    move v4, v2

    goto :goto_3

    :cond_3
    move v4, v0

    :goto_3
    sput-boolean v4, Lcom/samsung/android/util/SemLog;->mEnabledI:Z

    .line 92
    const v4, -0xfff1000

    and-int v5, v3, v4

    if-ne v5, v4, :cond_4

    if-eqz v1, :cond_4

    move v4, v2

    goto :goto_4

    :cond_4
    move v4, v0

    :goto_4
    sput-boolean v4, Lcom/samsung/android/util/SemLog;->mEnabledW:Z

    .line 93
    const/high16 v4, -0xff10000

    and-int v5, v3, v4

    if-ne v5, v4, :cond_5

    if-eqz v1, :cond_5

    move v4, v2

    goto :goto_5

    :cond_5
    move v4, v0

    :goto_5
    sput-boolean v4, Lcom/samsung/android/util/SemLog;->mEnabledE:Z

    .line 94
    const/high16 v4, -0xf100000

    and-int v5, v3, v4

    if-ne v5, v4, :cond_6

    if-eqz v1, :cond_6

    move v0, v2

    :cond_6
    sput-boolean v0, Lcom/samsung/android/util/SemLog;->mEnabledWtf:Z

    .line 97
    .end local v1    # "secLevel":Z
    .end local v3    # "semLevel":I
    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public static whitelist d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 145
    sget-boolean v0, Lcom/samsung/android/util/SemLog;->mEnabledD:Z

    if-eqz v0, :cond_0

    .line 146
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 148
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 160
    sget-boolean v0, Lcom/samsung/android/util/SemLog;->mEnabledD:Z

    if-eqz v0, :cond_0

    .line 161
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 163
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 246
    sget-boolean v0, Lcom/samsung/android/util/SemLog;->mEnabledE:Z

    if-eqz v0, :cond_0

    .line 247
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 249
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 261
    sget-boolean v0, Lcom/samsung/android/util/SemLog;->mEnabledE:Z

    if-eqz v0, :cond_0

    .line 262
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 264
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .param p0, "tr"    # Ljava/lang/Throwable;

    .line 343
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 174
    sget-boolean v0, Lcom/samsung/android/util/SemLog;->mEnabledI:Z

    if-eqz v0, :cond_0

    .line 175
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 177
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 189
    sget-boolean v0, Lcom/samsung/android/util/SemLog;->mEnabledI:Z

    if-eqz v0, :cond_0

    .line 190
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 192
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isLoggable(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "level"    # I

    .line 333
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static whitelist println(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 356
    sget-boolean v0, Lcom/samsung/android/util/SemLog;->mEnabledGlobal:Z

    if-eqz v0, :cond_0

    .line 357
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 359
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist secD(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 394
    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static whitelist secD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 401
    invoke-static {p0, p1, p2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static whitelist secE(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 443
    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static whitelist secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 450
    invoke-static {p0, p1, p2}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static whitelist secI(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 408
    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static whitelist secI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 415
    invoke-static {p0, p1, p2}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static whitelist secV(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 380
    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static whitelist secV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 387
    invoke-static {p0, p1, p2}, Lcom/samsung/android/util/SemLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static whitelist secW(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 422
    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static whitelist secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 429
    invoke-static {p0, p1, p2}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static whitelist secW(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 436
    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static whitelist secWtf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 457
    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static whitelist secWtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 478
    invoke-static {p0, p1, p2}, Lcom/samsung/android/util/SemLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static whitelist secWtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 471
    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static whitelist secWtfStack(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 464
    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static whitelist v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 116
    sget-boolean v0, Lcom/samsung/android/util/SemLog;->mEnabledV:Z

    if-eqz v0, :cond_0

    .line 117
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 119
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 131
    sget-boolean v0, Lcom/samsung/android/util/SemLog;->mEnabledV:Z

    if-eqz v0, :cond_0

    .line 132
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 134
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 203
    sget-boolean v0, Lcom/samsung/android/util/SemLog;->mEnabledW:Z

    if-eqz v0, :cond_0

    .line 204
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 206
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 232
    sget-boolean v0, Lcom/samsung/android/util/SemLog;->mEnabledW:Z

    if-eqz v0, :cond_0

    .line 233
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 235
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 217
    sget-boolean v0, Lcom/samsung/android/util/SemLog;->mEnabledW:Z

    if-eqz v0, :cond_0

    .line 218
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 220
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist wtf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 278
    sget-boolean v0, Lcom/samsung/android/util/SemLog;->mEnabledWtf:Z

    if-eqz v0, :cond_0

    .line 279
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 281
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 307
    sget-boolean v0, Lcom/samsung/android/util/SemLog;->mEnabledWtf:Z

    if-eqz v0, :cond_0

    .line 308
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 310
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 292
    sget-boolean v0, Lcom/samsung/android/util/SemLog;->mEnabledWtf:Z

    if-eqz v0, :cond_0

    .line 293
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 295
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist wtfStack(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 370
    sget-boolean v0, Lcom/samsung/android/util/SemLog;->mEnabledWtf:Z

    if-eqz v0, :cond_0

    .line 371
    invoke-static {p0, p1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 373
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
