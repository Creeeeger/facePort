.class public final Landroid/companion/virtual/sensor/VirtualSensor;
.super Ljava/lang/Object;
.source "VirtualSensor.java"

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
            "Landroid/companion/virtual/sensor/VirtualSensor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mHandle:I

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mToken:Landroid/os/IBinder;

.field private final blacklist mType:I

.field private final blacklist mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/companion/virtual/sensor/VirtualSensor$1;

    invoke-direct {v0}, Landroid/companion/virtual/sensor/VirtualSensor$1;-><init>()V

    sput-object v0, Landroid/companion/virtual/sensor/VirtualSensor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IILjava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/companion/virtual/sensor/VirtualSensor;-><init>(IILjava/lang/String;Landroid/companion/virtual/IVirtualDevice;Landroid/os/IBinder;)V

    return-void
.end method

.method public constructor blacklist <init>(IILjava/lang/String;Landroid/companion/virtual/IVirtualDevice;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mHandle:I

    iput p2, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mType:I

    iput-object p3, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mName:Ljava/lang/String;

    iput-object p4, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    iput-object p5, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mToken:Landroid/os/IBinder;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mHandle:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/companion/virtual/IVirtualDevice$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/IVirtualDevice;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mToken:Landroid/os/IBinder;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/companion/virtual/sensor/VirtualSensor-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/companion/virtual/sensor/VirtualSensor;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDeviceId()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0}, Landroid/companion/virtual/IVirtualDevice;->getDeviceId()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getHandle()I
    .locals 1

    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mHandle:I

    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getType()I
    .locals 1

    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mType:I

    return v0
.end method

.method public whitelist sendEvent(Landroid/companion/virtual/sensor/VirtualSensorEvent;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    iget-object v1, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1}, Landroid/companion/virtual/IVirtualDevice;->sendSensorEvent(Landroid/os/IBinder;Landroid/companion/virtual/sensor/VirtualSensorEvent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VirtualSensor{ mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mHandle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0}, Landroid/companion/virtual/IVirtualDevice;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
