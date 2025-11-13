.class public final Lcom/android/systemui/uithreadmonitor/BinderCallMonitorConstants;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final MAX_BUF_COUNT:I

.field public static final MAX_DURATION:J

.field public static final STRICT_MODE_ENABLED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "persist.sysui.ipc_monitor.enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-nez v0, :cond_0

    const-string v0, "persist.sysui.strictmode"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorConstants;->STRICT_MODE_ENABLED:Z

    const-string v0, "debug.sysui.ipc_monitor.dur"

    const/16 v2, 0x1e

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v2, v0

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    sput-wide v2, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorConstants;->MAX_DURATION:J

    const-string v0, "debug.sysui.ipc_monitor.max"

    const/16 v2, 0x32

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_2

    const/16 v2, 0x3e8

    if-ge v0, v2, :cond_2

    move v1, v0

    :cond_2
    sput v1, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorConstants;->MAX_BUF_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
