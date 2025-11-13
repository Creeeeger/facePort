.class public Landroid/hardware/scontext/SContextDevicePhysicalContextMonitor;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextDevicePhysicalContextMonitor.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/scontext/SContextDevicePhysicalContextMonitor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mContext:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 176
    new-instance v0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitor$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitor$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 94
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitor;->mContext:Landroid/os/Bundle;

    .line 95
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .line 99
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 100
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitor;->readFromParcel(Landroid/os/Parcel;)V

    .line 101
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitor;->mContext:Landroid/os/Bundle;

    .line 169
    return-void
.end method


# virtual methods
.method public blacklist getAODReason()I
    .locals 2

    .line 134
    iget-object v0, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitor;->mContext:Landroid/os/Bundle;

    const-string v1, "AODReason"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getAODStatus()I
    .locals 2

    .line 113
    iget-object v0, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitor;->mContext:Landroid/os/Bundle;

    const-string v1, "AODStatus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .line 144
    iput-object p1, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitor;->mContext:Landroid/os/Bundle;

    .line 145
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 158
    iget-object v0, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitor;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 159
    return-void
.end method
