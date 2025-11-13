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

    const/4 v0, 0x2

    sput v0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->DEVICE_PHYSICAL_CONTEXT_MONITOR_MODE:I

    const/4 v0, 0x1

    sput v0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->DEVICE_PHYSICAL_CONTEXT_MONITOR_DATA:I

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    sget v0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->DEVICE_PHYSICAL_CONTEXT_MONITOR_MODE:I

    iput v0, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->mMode:I

    sget v0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->DEVICE_PHYSICAL_CONTEXT_MONITOR_DATA:I

    iput v0, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->mData:I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->setAttribute()V

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    sget v0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->DEVICE_PHYSICAL_CONTEXT_MONITOR_MODE:I

    iput v0, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->mMode:I

    sget v0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->DEVICE_PHYSICAL_CONTEXT_MONITOR_DATA:I

    iput v0, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->mData:I

    iput p1, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->mMode:I

    iput p2, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->mData:I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->setAttribute()V

    return-void
.end method

.method private blacklist setAttribute()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "dpcm_mode"

    iget v2, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "dpcm_data"

    iget v2, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->mData:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x33

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 3

    iget v0, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->mMode:I

    const/4 v1, 0x0

    const-string v2, "SContextDevicePhysicalContextMonitorAttribute"

    if-gez v0, :cond_0

    const-string v0, "Mode value is wrong!!"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget v0, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;->mData:I

    if-gez v0, :cond_1

    const-string v0, "Data value is wrong!!"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
