.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# static fields
.field public static blacklist RC_COLOR:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/16 v0, 0x3e

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ColorUtils;->RC_COLOR:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getDefaultColor(J)I
    .locals 6

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ColorUtils;->isRCColor(J)Z

    move-result v0

    const/16 v1, 0x20

    if-eqz v0, :cond_0

    shr-long v0, p1, v1

    long-to-int v0, v0

    return v0

    :cond_0
    const-wide/16 v2, 0xff

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    shr-long v0, p1, v1

    long-to-int v0, v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method blacklist getID(J)I
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ColorUtils;->isRCColor(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x100

    and-long/2addr v0, p1

    const/16 v2, 0x8

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method blacklist isRCColor(J)Z
    .locals 4

    const-wide/16 v0, 0x3f

    and-long/2addr v0, p1

    const-wide/16 v2, 0x3e

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method blacklist packRCColor(II)J
    .locals 6

    int-to-long v0, p1

    const/16 v2, 0x20

    shl-long v2, v0, v2

    shl-int/lit8 v4, p2, 0x8

    int-to-long v4, v4

    or-long/2addr v2, v4

    sget v4, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ColorUtils;->RC_COLOR:I

    int-to-long v4, v4

    or-long/2addr v2, v4

    return-wide v2
.end method
