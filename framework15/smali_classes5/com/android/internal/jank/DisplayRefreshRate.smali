.class public Lcom/android/internal/jank/DisplayRefreshRate;
.super Ljava/lang/Object;
.source "DisplayRefreshRate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/jank/DisplayRefreshRate$RefreshRate;
    }
.end annotation


# static fields
.field public static final blacklist REFRESH_RATE_120_HZ:I = 0x5

.field public static final blacklist REFRESH_RATE_240_HZ:I = 0x6

.field public static final blacklist REFRESH_RATE_30_HZ:I = 0x2

.field public static final blacklist REFRESH_RATE_60_HZ:I = 0x3

.field public static final blacklist REFRESH_RATE_90_HZ:I = 0x4

.field public static final blacklist UNKNOWN_REFRESH_RATE:I = 0x0

.field public static final blacklist VARIABLE_REFRESH_RATE:I = 0x1


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getRefreshRate(J)I
    .locals 4

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    long-to-double v2, p0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    const-wide/16 v2, 0x32

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const/4 v2, 0x2

    return v2

    :cond_0
    const-wide/16 v2, 0x50

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    const/4 v2, 0x3

    return v2

    :cond_1
    const-wide/16 v2, 0x6e

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    const/4 v2, 0x4

    return v2

    :cond_2
    const-wide/16 v2, 0xb4

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    const/4 v2, 0x5

    return v2

    :cond_3
    const/4 v2, 0x6

    return v2
.end method
