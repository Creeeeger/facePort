.class public abstract Landroid/telephony/satellite/stub/ISatelliteGateway$Stub;
.super Landroid/os/Binder;
.source "ISatelliteGateway.java"

# interfaces
.implements Landroid/telephony/satellite/stub/ISatelliteGateway;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/satellite/stub/ISatelliteGateway;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/stub/ISatelliteGateway$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.telephony.satellite.stub.ISatelliteGateway"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/satellite/stub/ISatelliteGateway$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/stub/ISatelliteGateway;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.telephony.satellite.stub.ISatelliteGateway"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/telephony/satellite/stub/ISatelliteGateway;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/telephony/satellite/stub/ISatelliteGateway;

    return-object v1

    :cond_1
    new-instance v1, Landroid/telephony/satellite/stub/ISatelliteGateway$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/satellite/stub/ISatelliteGateway$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    nop

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/telephony/satellite/stub/ISatelliteGateway$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.telephony.satellite.stub.ISatelliteGateway"

    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    nop

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1
.end method
