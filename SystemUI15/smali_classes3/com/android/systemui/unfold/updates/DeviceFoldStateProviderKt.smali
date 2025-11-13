.class public abstract Lcom/android/systemui/unfold/updates/DeviceFoldStateProviderKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "DeviceFoldProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProviderKt;->DEBUG:Z

    return-void
.end method

.method public static synthetic getFULLY_OPEN_THRESHOLD_DEGREES$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getHINGE_ANGLE_CHANGE_THRESHOLD_DEGREES$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getSTART_CLOSING_ON_APPS_THRESHOLD_DEGREES$annotations()V
    .locals 0

    return-void
.end method

.method public static final name(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, "UNKNOWN"

    goto :goto_0

    :cond_0
    const-string p0, "FINISH_CLOSED"

    goto :goto_0

    :cond_1
    const-string p0, "FINISH_FULL_OPEN"

    goto :goto_0

    :cond_2
    const-string p0, "FINISH_HALF_OPEN"

    goto :goto_0

    :cond_3
    const-string p0, "START_CLOSING"

    goto :goto_0

    :cond_4
    const-string p0, "START_OPENING"

    :goto_0
    return-object p0
.end method
