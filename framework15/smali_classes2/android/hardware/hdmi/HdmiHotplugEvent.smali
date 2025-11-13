.class public final Landroid/hardware/hdmi/HdmiHotplugEvent;
.super Ljava/lang/Object;
.source "HdmiHotplugEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/hdmi/HdmiHotplugEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mConnected:Z

.field private final greylist-max-o mPort:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/hdmi/HdmiHotplugEvent$1;

    invoke-direct {v0}, Landroid/hardware/hdmi/HdmiHotplugEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/hdmi/HdmiHotplugEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/hdmi/HdmiHotplugEvent;->mPort:I

    iput-boolean p2, p0, Landroid/hardware/hdmi/HdmiHotplugEvent;->mConnected:Z

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPort()I
    .locals 1

    iget v0, p0, Landroid/hardware/hdmi/HdmiHotplugEvent;->mPort:I

    return v0
.end method

.method public whitelist isConnected()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiHotplugEvent;->mConnected:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/hardware/hdmi/HdmiHotplugEvent;->mPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiHotplugEvent;->mConnected:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
