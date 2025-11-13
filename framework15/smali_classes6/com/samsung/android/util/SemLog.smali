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

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/util/SemLog;->mEnabledGlobal:Z

    sput-boolean v0, Lcom/samsung/android/util/SemLog;->mEnabledV:Z

    sput-boolean v0, Lcom/samsung/android/util/SemLog;->mEnabledD:Z

    sput-boolean v0, Lcom/samsung/android/util/SemLog;->mEnabledI:Z

    sput-boolean v0, Lcom/samsung/android/util/SemLog;->mEnabledW:Z

    sput-boolean v0, Lcom/samsung/android/util/SemLog;->mEnabledE:Z

    sput-boolean v0, Lcom/samsung/android/util/SemLog;->mEnabledWtf:Z

    const-string v1, "persist.log.seclevel"

    invoke-static {v1, v0}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v3, "persist.log.level"

    const-wide/16 v4, -0x1

    invoke-static {v3, v4, v5}, Landroid/os/SemSystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    long-to-int v3, v3

    sput-boolean v1, Lcom/samsung/android/util/SemLog;->mEnabledGlobal:Z

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

    const/high16 v4, -0xf100000

    and-int v5, v3, v4

    if-ne v5, v4, :cond_6

    if-eqz v1, :cond_6

    move v0, v2

    :cond_6
    sput-boolean v0, Lcom/samsung/android/util/SemLog;->mEnabledWtf:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Lcom/samsung/android/util/SemLog;->mEnabledD:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    sget-boolean v0, Lcom/samsung/android/util/SemLog;->mEnabledD:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Lcom/samsung/android/util/SemLog;->mEnabledE:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    sget-boolean v0, Lcom/samsung/android/util/SemLog;->mEnabledE:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Lcom/samsung/android/util/SemLog;->mEnabledI:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    sget-boolean v0, Lcom/samsung/android/util/SemLog;->mEnabledI:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isLoggable(Ljava/lang/String;I)Z
    .locals 1

    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static whitelist println(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Lcom/samsung/android/util/SemLog;->mEnabledGlobal:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist secD(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static whitelist secD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static whitelist secE(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static whitelist secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static whitelist secI(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static whitelist secI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static whitelist secV(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static whitelist secV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/samsung/android/util/SemLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static whitelist secW(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static whitelist secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static whitelist v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Lcom/samsung/android/util/SemLog;->mEnabledV:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    sget-boolean v0, Lcom/samsung/android/util/SemLog;->mEnabledV:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Lcom/samsung/android/util/SemLog;->mEnabledW:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    sget-boolean v0, Lcom/samsung/android/util/SemLog;->mEnabledW:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    sget-boolean v0, Lcom/samsung/android/util/SemLog;->mEnabledW:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist wtf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Lcom/samsung/android/util/SemLog;->mEnabledWtf:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    sget-boolean v0, Lcom/samsung/android/util/SemLog;->mEnabledWtf:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
