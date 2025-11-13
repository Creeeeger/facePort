.class public abstract Lcom/samsung/android/cover/ICoverStateListenerCallback$Stub;
.super Landroid/os/Binder;
.source "ICoverStateListenerCallback.java"

# interfaces
.implements Lcom/samsung/android/cover/ICoverStateListenerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cover/ICoverStateListenerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cover/ICoverStateListenerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final greylist TRANSACTION_getListenerInfo:I = 0x3

.field static final greylist TRANSACTION_onCoverAttachStateChanged:I = 0x2

.field static final greylist TRANSACTION_onCoverSwitchStateChanged:I = 0x1


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 32
    const-string v0, "com.samsung.android.cover.ICoverStateListenerCallback"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/cover/ICoverStateListenerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverStateListenerCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 40
    if-nez p0, :cond_0

    .line 41
    const/4 v0, 0x0

    return-object v0

    .line 43
    :cond_0
    const-string v0, "com.samsung.android.cover.ICoverStateListenerCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 44
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/cover/ICoverStateListenerCallback;

    if-eqz v1, :cond_1

    .line 45
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/cover/ICoverStateListenerCallback;

    return-object v1

    .line 47
    :cond_1
    new-instance v1, Lcom/samsung/android/cover/ICoverStateListenerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/cover/ICoverStateListenerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static greylist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 56
    packed-switch p0, :pswitch_data_0

    .line 72
    const/4 v0, 0x0

    return-object v0

    .line 68
    :pswitch_0
    const-string v0, "getListenerInfo"

    return-object v0

    .line 64
    :pswitch_1
    const-string v0, "onCoverAttachStateChanged"

    return-object v0

    .line 60
    :pswitch_2
    const-string v0, "onCoverSwitchStateChanged"

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

    .line 51
    return-object p0
.end method

.method public greylist getMaxTransactionId()I
    .locals 1

    .line 190
    const/4 v0, 0x2

    return v0
.end method

.method public greylist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 79
    invoke-static {p1}, Lcom/samsung/android/cover/ICoverStateListenerCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    const-string v0, "com.samsung.android.cover.ICoverStateListenerCallback"

    .line 84
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 85
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 95
    packed-switch p1, :pswitch_data_1

    .line 122
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 91
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    return v1

    .line 115
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/cover/ICoverStateListenerCallback$Stub;->getListenerInfo()Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    goto :goto_0

    .line 108
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 109
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 110
    invoke-virtual {p0, v2}, Lcom/samsung/android/cover/ICoverStateListenerCallback$Stub;->onCoverAttachStateChanged(Z)V

    .line 111
    goto :goto_0

    .line 100
    .end local v2    # "_arg0":Z
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 101
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 102
    invoke-virtual {p0, v2}, Lcom/samsung/android/cover/ICoverStateListenerCallback$Stub;->onCoverSwitchStateChanged(Z)V

    .line 103
    nop

    .line 125
    .end local v2    # "_arg0":Z
    :goto_0
    return v1

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
