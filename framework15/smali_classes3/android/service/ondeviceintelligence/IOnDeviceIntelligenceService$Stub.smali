.class public abstract Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService$Stub;
.super Landroid/os/Binder;
.source "IOnDeviceIntelligenceService.java"

# interfaces
.implements Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getFeature:I = 0x2

.field static final blacklist TRANSACTION_getFeatureDetails:I = 0x4

.field static final blacklist TRANSACTION_getReadOnlyFeatureFileDescriptorMap:I = 0x6

.field static final blacklist TRANSACTION_getReadOnlyFileDescriptor:I = 0x5

.field static final blacklist TRANSACTION_getVersion:I = 0x1

.field static final blacklist TRANSACTION_listFeatures:I = 0x3

.field static final blacklist TRANSACTION_notifyInferenceServiceConnected:I = 0x9

.field static final blacklist TRANSACTION_notifyInferenceServiceDisconnected:I = 0xa

.field static final blacklist TRANSACTION_ready:I = 0xb

.field static final blacklist TRANSACTION_registerRemoteServices:I = 0x8

.field static final blacklist TRANSACTION_requestFeatureDownload:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.service.ondeviceintelligence.IOnDeviceIntelligenceService"

    invoke-virtual {p0, p0, v0}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.service.ondeviceintelligence.IOnDeviceIntelligenceService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;

    return-object v1

    :cond_1
    new-instance v1, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "ready"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "notifyInferenceServiceDisconnected"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "notifyInferenceServiceConnected"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "registerRemoteServices"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "requestFeatureDownload"

    return-object v0

    :pswitch_5
    const-string v0, "getReadOnlyFeatureFileDescriptorMap"

    return-object v0

    :pswitch_6
    const-string v0, "getReadOnlyFileDescriptor"

    return-object v0

    :pswitch_7
    const-string v0, "getFeatureDetails"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "listFeatures"

    return-object v0

    :pswitch_9
    const-string v0, "getFeature"

    return-object v0

    :pswitch_a
    const-string v0, "getVersion"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.service.ondeviceintelligence.IOnDeviceIntelligenceService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p0}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService$Stub;->ready()V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService$Stub;->notifyInferenceServiceDisconnected()V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService$Stub;->notifyInferenceServiceConnected()V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/ondeviceintelligence/IRemoteProcessingService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/ondeviceintelligence/IRemoteProcessingService;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService$Stub;->registerRemoteServices(Landroid/service/ondeviceintelligence/IRemoteProcessingService;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/app/ondeviceintelligence/Feature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ondeviceintelligence/Feature;

    sget-object v4, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/ondeviceintelligence/IDownloadCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ondeviceintelligence/IDownloadCallback;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService$Stub;->requestFeatureDownload(ILandroid/app/ondeviceintelligence/Feature;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IDownloadCallback;)V

    goto/16 :goto_0

    :pswitch_5
    sget-object v2, Landroid/app/ondeviceintelligence/Feature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ondeviceintelligence/Feature;

    sget-object v3, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallback;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService$Stub;->getReadOnlyFeatureFileDescriptorMap(Landroid/app/ondeviceintelligence/Feature;Landroid/os/RemoteCallback;)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService$Stub;->getReadOnlyFileDescriptor(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/app/ondeviceintelligence/Feature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ondeviceintelligence/Feature;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/ondeviceintelligence/IFeatureDetailsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService$Stub;->getFeatureDetails(ILandroid/app/ondeviceintelligence/Feature;Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/ondeviceintelligence/IListFeaturesCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ondeviceintelligence/IListFeaturesCallback;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService$Stub;->listFeatures(ILandroid/app/ondeviceintelligence/IListFeaturesCallback;)V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/ondeviceintelligence/IFeatureCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ondeviceintelligence/IFeatureCallback;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService$Stub;->getFeature(IILandroid/app/ondeviceintelligence/IFeatureCallback;)V

    goto :goto_0

    :pswitch_a
    sget-object v2, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallback;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService$Stub;->getVersion(Landroid/os/RemoteCallback;)V

    nop

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
