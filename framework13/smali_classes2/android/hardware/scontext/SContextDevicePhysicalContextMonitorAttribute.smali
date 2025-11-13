.class public Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextDevicePhysicalContextMonitorAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static blacklist DEVICE_PHYSICAL_CONTEXT_MONITOR_DATA:I = 0x0

.field private static blacklist DEVICE_PHYSICAL_CONTEXT_MONITOR_MODE:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "SContextDevicePhysicalContextMonitorAttribute"


# instance fields
.field private blacklist mData:I

.field private blacklist mMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 30
    const/4 v0, 0x2

    sput v0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->DEVICE_PHYSICAL_CONTEXT_MONITOR_MODE:I

    .line 33
    const/4 v0, 0x1

    sput v0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->DEVICE_PHYSICAL_CONTEXT_MONITOR_DATA:I

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 36
    sget v0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->DEVICE_PHYSICAL_CONTEXT_MONITOR_MODE:I

    iput v0, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->mMode:I

    .line 38
    sget v0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->DEVICE_PHYSICAL_CONTEXT_MONITOR_DATA:I

    iput v0, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->mData:I

    .line 44
    invoke-direct {p0}, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->setAttribute()V

    .line 45
    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "data"    # I

    .line 70
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 36
    sget v0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->DEVICE_PHYSICAL_CONTEXT_MONITOR_MODE:I

    iput v0, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->mMode:I

    .line 38
    sget v0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->DEVICE_PHYSICAL_CONTEXT_MONITOR_DATA:I

    iput v0, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->mData:I

    .line 71
    iput p1, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->mMode:I

    .line 72
    iput p2, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->mData:I

    .line 73
    invoke-direct {p0}, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->setAttribute()V

    .line 74
    return-void
.end method

.method private blacklist setAttribute()V
    .locals 3

    .line 91
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 92
    .local v0, "attribute":Landroid/os/Bundle;
    iget v1, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->mMode:I

    const-string v2, "dpcm_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    iget v1, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->mData:I

    const-string v2, "dpcm_data"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 94
    const/16 v1, 0x33

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 95
    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 3

    .line 79
    iget v0, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->mMode:I

    const/4 v1, 0x0

    const-string v2, "SContextDevicePhysicalContextMonitorAttribute"

    if-gez v0, :cond_0

    .line 80
    const-string v0, "Mode value is wrong!!"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return v1

    .line 83
    :cond_0
    iget v0, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->mData:I

    if-gez v0, :cond_1

    .line 84
    const-string v0, "Data value is wrong!!"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return v1

    .line 87
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
