.class public abstract Lcom/samsung/android/knox/zt/service/IKnoxZtService$Stub;
.super Landroid/os/Binder;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/knox/zt/service/IKnoxZtService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/zt/service/IKnoxZtService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/zt/service/IKnoxZtService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_ackSignal:I = 0x14

.field public static final TRANSACTION_getAppIdStatus:I = 0x1

.field public static final TRANSACTION_getChallenge:I = 0x2

.field public static final TRANSACTION_getDeviceId:I = 0x3

.field public static final TRANSACTION_getDeviceIdStatus:I = 0x4

.field public static final TRANSACTION_getIntegrityStatus:I = 0x5

.field public static final TRANSACTION_getMonitoringSnapshot:I = 0x12

.field public static final TRANSACTION_getOrigin:I = 0x6

.field public static final TRANSACTION_getRootOfTrustStatus:I = 0x7

.field public static final TRANSACTION_getSecurityLevel:I = 0x8

.field public static final TRANSACTION_getVersion:I = 0x13

.field public static final TRANSACTION_provisionCert:I = 0x9

.field public static final TRANSACTION_queryAllSignals:I = 0x10

.field public static final TRANSACTION_querySignals:I = 0x11

.field public static final TRANSACTION_startMonitoringDomains:I = 0xc

.field public static final TRANSACTION_startMonitoringFiles:I = 0xa

.field public static final TRANSACTION_startTracing:I = 0xe

.field public static final TRANSACTION_stopMonitoringDomains:I = 0xd

.field public static final TRANSACTION_stopMonitoringFiles:I = 0xb

.field public static final TRANSACTION_stopTracing:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.knox.zt.service.IKnoxZtService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/zt/service/IKnoxZtService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.knox.zt.service.IKnoxZtService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/knox/zt/service/IKnoxZtService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/knox/zt/service/IKnoxZtService;

    return-object v0

    :cond_1
    new-instance v0, Lcom/samsung/android/knox/zt/service/IKnoxZtService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/zt/service/IKnoxZtService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.samsung.android.knox.zt.service.IKnoxZtService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->ackSignal([J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-interface {p0}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->getVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->getMonitoringSnapshot(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/knox/zt/service/IChunkedAidlInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/zt/service/IChunkedAidlInterface;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->querySignals(Ljava/lang/String;Lcom/samsung/android/knox/zt/service/IChunkedAidlInterface;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/zt/service/IChunkedAidlInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/zt/service/IChunkedAidlInterface;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->queryAllSignals(Lcom/samsung/android/knox/zt/service/IChunkedAidlInterface;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->stopTracing(ILcom/samsung/android/knox/zt/service/IServiceMonitoringListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/samsung/android/knox/zt/service/IKnoxZtService$_Parcel;->readTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->startTracing(ILandroid/os/Bundle;Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_7
    invoke-interface {p0}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->stopMonitoringDomains()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->startMonitoringDomains(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_9
    invoke-interface {p0}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->stopMonitoringFiles()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->startMonitoringFiles(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_b
    sget-object p1, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService$_Parcel;->readTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/zt/service/ParcelableProfile;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/knox/zt/service/IServiceCertProvisionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/zt/service/IServiceCertProvisionListener;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->provisionCert(Lcom/samsung/android/knox/zt/service/ParcelableProfile;Lcom/samsung/android/knox/zt/service/IServiceCertProvisionListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_c
    sget-object p1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService$_Parcel;->readTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->getSecurityLevel(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_d
    sget-object p1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService$_Parcel;->readTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->getRootOfTrustStatus(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_e
    sget-object p1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService$_Parcel;->readTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->getOrigin(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_f
    sget-object p1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService$_Parcel;->readTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->getIntegrityStatus(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_10
    sget-object p1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService$_Parcel;->readTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->getDeviceIdStatus(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_11
    sget-object p1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService$_Parcel;->readTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->getDeviceId(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_12
    sget-object p1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService$_Parcel;->readTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->getChallenge(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)[B

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    :pswitch_13
    sget-object p1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService$_Parcel;->readTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->getAppIdStatus(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;[Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
