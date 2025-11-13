.class public abstract Lcom/samsung/android/media/IResourceManagerObserver$Stub;
.super Landroid/os/Binder;
.source "IResourceManagerObserver.java"

# interfaces
.implements Lcom/samsung/android/media/IResourceManagerObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/IResourceManagerObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/IResourceManagerObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_disconnect:I = 0x5

.field static final blacklist TRANSACTION_enableObserver:I = 0x1

.field static final blacklist TRANSACTION_getCodecCapacity:I = 0x3

.field static final blacklist TRANSACTION_getResourceInfo:I = 0x2

.field static final blacklist TRANSACTION_setResourcePriority:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "com.samsung.android.media.IResourceManagerObserver"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/media/IResourceManagerObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/media/IResourceManagerObserver;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 54
    if-nez p0, :cond_0

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_0
    const-string v0, "com.samsung.android.media.IResourceManagerObserver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/media/IResourceManagerObserver;

    if-eqz v1, :cond_1

    .line 59
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/media/IResourceManagerObserver;

    return-object v1

    .line 61
    :cond_1
    new-instance v1, Lcom/samsung/android/media/IResourceManagerObserver$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/media/IResourceManagerObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 70
    packed-switch p0, :pswitch_data_0

    .line 94
    const/4 v0, 0x0

    return-object v0

    .line 90
    :pswitch_0
    const-string v0, "disconnect"

    return-object v0

    .line 86
    :pswitch_1
    const-string/jumbo v0, "setResourcePriority"

    return-object v0

    .line 82
    :pswitch_2
    const-string v0, "getCodecCapacity"

    return-object v0

    .line 78
    :pswitch_3
    const-string v0, "getResourceInfo"

    return-object v0

    .line 74
    :pswitch_4
    const-string v0, "enableObserver"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 65
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 290
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 101
    invoke-static {p1}, Lcom/samsung/android/media/IResourceManagerObserver$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 105
    const-string v0, "com.samsung.android.media.IResourceManagerObserver"

    .line 106
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 107
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 117
    packed-switch p1, :pswitch_data_1

    .line 169
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 113
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    return v1

    .line 163
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/media/IResourceManagerObserver$Stub;->disconnect()V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    goto :goto_0

    .line 154
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 155
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 156
    invoke-virtual {p0, v2}, Lcom/samsung/android/media/IResourceManagerObserver$Stub;->setResourcePriority(I)I

    move-result v3

    .line 157
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    goto :goto_0

    .line 144
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 145
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 146
    invoke-virtual {p0, v2}, Lcom/samsung/android/media/IResourceManagerObserver$Stub;->getCodecCapacity(I)Lcom/samsung/android/media/GetCodecCapacityReturn;

    move-result-object v3

    .line 147
    .local v3, "_result":Lcom/samsung/android/media/GetCodecCapacityReturn;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 149
    goto :goto_0

    .line 134
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Lcom/samsung/android/media/GetCodecCapacityReturn;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 135
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    invoke-virtual {p0, v2}, Lcom/samsung/android/media/IResourceManagerObserver$Stub;->getResourceInfo(I)Lcom/samsung/android/media/GetResourceInfoReturn;

    move-result-object v3

    .line 137
    .local v3, "_result":Lcom/samsung/android/media/GetResourceInfoReturn;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 139
    goto :goto_0

    .line 122
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Lcom/samsung/android/media/GetResourceInfoReturn;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 124
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 125
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 126
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/media/IResourceManagerObserver$Stub;->enableObserver(II)I

    move-result v4

    .line 127
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    nop

    .line 172
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
