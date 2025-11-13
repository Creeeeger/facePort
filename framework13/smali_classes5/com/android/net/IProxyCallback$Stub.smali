.class public abstract Lcom/android/net/IProxyCallback$Stub;
.super Landroid/os/Binder;
.source "IProxyCallback.java"

# interfaces
.implements Lcom/android/net/IProxyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/net/IProxyCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/net/IProxyCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_clearProxyServerCache:I = 0x2

.field static final blacklist TRANSACTION_getProxyPort:I = 0x1

.field static final blacklist TRANSACTION_onCredentialsReceived:I = 0x3

.field static final blacklist TRANSACTION_setEnterpriseProxy:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 36
    const-string v0, "com.android.net.IProxyCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/net/IProxyCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/net/IProxyCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 44
    if-nez p0, :cond_0

    .line 45
    const/4 v0, 0x0

    return-object v0

    .line 47
    :cond_0
    const-string v0, "com.android.net.IProxyCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 48
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/net/IProxyCallback;

    if-eqz v1, :cond_1

    .line 49
    move-object v1, v0

    check-cast v1, Lcom/android/net/IProxyCallback;

    return-object v1

    .line 51
    :cond_1
    new-instance v1, Lcom/android/net/IProxyCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/net/IProxyCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 60
    packed-switch p0, :pswitch_data_0

    .line 80
    const/4 v0, 0x0

    return-object v0

    .line 76
    :pswitch_0
    const-string/jumbo v0, "setEnterpriseProxy"

    return-object v0

    .line 72
    :pswitch_1
    const-string v0, "onCredentialsReceived"

    return-object v0

    .line 68
    :pswitch_2
    const-string v0, "clearProxyServerCache"

    return-object v0

    .line 64
    :pswitch_3
    const-string v0, "getProxyPort"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
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

    .line 219
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 87
    invoke-static {p1}, Lcom/android/net/IProxyCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    const-string v0, "com.android.net.IProxyCallback"

    .line 92
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 93
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 103
    packed-switch p1, :pswitch_data_1

    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 99
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    return v1

    .line 132
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 133
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 134
    invoke-virtual {p0, v2}, Lcom/android/net/IProxyCallback$Stub;->setEnterpriseProxy(Z)V

    .line 135
    goto :goto_0

    .line 121
    .end local v2    # "_arg0":Z
    :pswitch_2
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 123
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/sec/enterprise/proxy/IProxyCredentialsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;

    move-result-object v3

    .line 124
    .local v3, "_arg1":Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 125
    invoke-virtual {p0, v2, v3}, Lcom/android/net/IProxyCallback$Stub;->onCredentialsReceived(Landroid/os/Bundle;Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    goto :goto_0

    .line 115
    .end local v2    # "_arg0":Landroid/os/Bundle;
    .end local v3    # "_arg1":Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/net/IProxyCallback$Stub;->clearProxyServerCache()V

    .line 116
    goto :goto_0

    .line 108
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 109
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 110
    invoke-virtual {p0, v2}, Lcom/android/net/IProxyCallback$Stub;->getProxyPort(Landroid/os/IBinder;)V

    .line 111
    nop

    .line 142
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
