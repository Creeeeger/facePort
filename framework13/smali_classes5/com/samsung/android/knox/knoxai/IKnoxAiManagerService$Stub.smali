.class public abstract Lcom/samsung/android/knox/knoxai/IKnoxAiManagerService$Stub;
.super Landroid/os/Binder;
.source "IKnoxAiManagerService.java"

# interfaces
.implements Lcom/samsung/android/knox/knoxai/IKnoxAiManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/knoxai/IKnoxAiManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/knoxai/IKnoxAiManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_initializeTaSession:I = 0x1

.field static final blacklist TRANSACTION_processTaCommand:I = 0x3

.field static final blacklist TRANSACTION_terminateTaSession:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 36
    const-string v0, "com.samsung.android.knox.knoxai.IKnoxAiManagerService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/knox/knoxai/IKnoxAiManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/knoxai/IKnoxAiManagerService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 44
    if-nez p0, :cond_0

    .line 45
    const/4 v0, 0x0

    return-object v0

    .line 47
    :cond_0
    const-string v0, "com.samsung.android.knox.knoxai.IKnoxAiManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 48
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/knox/knoxai/IKnoxAiManagerService;

    if-eqz v1, :cond_1

    .line 49
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/knoxai/IKnoxAiManagerService;

    return-object v1

    .line 51
    :cond_1
    new-instance v1, Lcom/samsung/android/knox/knoxai/IKnoxAiManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/knoxai/IKnoxAiManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 60
    packed-switch p0, :pswitch_data_0

    .line 76
    const/4 v0, 0x0

    return-object v0

    .line 72
    :pswitch_0
    const-string/jumbo v0, "processTaCommand"

    return-object v0

    .line 68
    :pswitch_1
    const-string/jumbo v0, "terminateTaSession"

    return-object v0

    .line 64
    :pswitch_2
    const-string v0, "initializeTaSession"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 55
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 214
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 83
    invoke-static {p1}, Lcom/samsung/android/knox/knoxai/IKnoxAiManagerService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    const-string v0, "com.samsung.android.knox.knoxai.IKnoxAiManagerService"

    .line 88
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 89
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 99
    packed-switch p1, :pswitch_data_1

    .line 134
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 95
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    return v1

    .line 121
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 123
    .local v2, "_arg0":I
    sget-object v3, Lcom/samsung/android/knox/knoxai/TaProcessBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/samsung/android/knox/knoxai/TaProcessBuffer;

    .line 125
    .local v3, "_arg1":[Lcom/samsung/android/knox/knoxai/TaProcessBuffer;
    sget-object v4, Lcom/samsung/android/knox/knoxai/TaProcessBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/samsung/android/knox/knoxai/TaProcessBuffer;

    .line 126
    .local v4, "_arg2":[Lcom/samsung/android/knox/knoxai/TaProcessBuffer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 127
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/knox/knoxai/IKnoxAiManagerService$Stub;->processTaCommand(I[Lcom/samsung/android/knox/knoxai/TaProcessBuffer;[Lcom/samsung/android/knox/knoxai/TaProcessBuffer;)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 130
    goto :goto_0

    .line 113
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[Lcom/samsung/android/knox/knoxai/TaProcessBuffer;
    .end local v4    # "_arg2":[Lcom/samsung/android/knox/knoxai/TaProcessBuffer;
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/knox/knoxai/IKnoxAiManagerService$Stub;->terminateTaSession()I

    move-result v2

    .line 114
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    goto :goto_0

    .line 104
    .end local v2    # "_result":I
    :pswitch_3
    sget-object v2, Lcom/samsung/android/knox/knoxai/TaLoaderOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/knoxai/TaLoaderOptions;

    .line 105
    .local v2, "_arg0":Lcom/samsung/android/knox/knoxai/TaLoaderOptions;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 106
    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/knoxai/IKnoxAiManagerService$Stub;->initializeTaSession(Lcom/samsung/android/knox/knoxai/TaLoaderOptions;)I

    move-result v3

    .line 107
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    nop

    .line 137
    .end local v2    # "_arg0":Lcom/samsung/android/knox/knoxai/TaLoaderOptions;
    .end local v3    # "_result":I
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
