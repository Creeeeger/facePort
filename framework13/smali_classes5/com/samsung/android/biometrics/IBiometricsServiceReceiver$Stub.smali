.class public abstract Lcom/samsung/android/biometrics/IBiometricsServiceReceiver$Stub;
.super Landroid/os/Binder;
.source "IBiometricsServiceReceiver.java"

# interfaces
.implements Lcom/samsung/android/biometrics/IBiometricsServiceReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/IBiometricsServiceReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/biometrics/IBiometricsServiceReceiver$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAcquired:I = 0x1

.field static final blacklist TRANSACTION_onAuthenticationFailed:I = 0x3

.field static final blacklist TRANSACTION_onAuthenticationSucceeded:I = 0x2

.field static final blacklist TRANSACTION_onError:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "com.samsung.android.biometrics.IBiometricsServiceReceiver"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/biometrics/IBiometricsServiceReceiver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/biometrics/IBiometricsServiceReceiver;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 45
    if-nez p0, :cond_0

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_0
    const-string v0, "com.samsung.android.biometrics.IBiometricsServiceReceiver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 49
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/biometrics/IBiometricsServiceReceiver;

    if-eqz v1, :cond_1

    .line 50
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/biometrics/IBiometricsServiceReceiver;

    return-object v1

    .line 52
    :cond_1
    new-instance v1, Lcom/samsung/android/biometrics/IBiometricsServiceReceiver$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/IBiometricsServiceReceiver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultImpl()Lcom/samsung/android/biometrics/IBiometricsServiceReceiver;
    .locals 1

    .line 274
    sget-object v0, Lcom/samsung/android/biometrics/IBiometricsServiceReceiver$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/biometrics/IBiometricsServiceReceiver;

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 61
    packed-switch p0, :pswitch_data_0

    .line 81
    const/4 v0, 0x0

    return-object v0

    .line 77
    :pswitch_0
    const-string v0, "onError"

    return-object v0

    .line 73
    :pswitch_1
    const-string v0, "onAuthenticationFailed"

    return-object v0

    .line 69
    :pswitch_2
    const-string v0, "onAuthenticationSucceeded"

    return-object v0

    .line 65
    :pswitch_3
    const-string v0, "onAcquired"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist setDefaultImpl(Lcom/samsung/android/biometrics/IBiometricsServiceReceiver;)Z
    .locals 2
    .param p0, "impl"    # Lcom/samsung/android/biometrics/IBiometricsServiceReceiver;

    .line 264
    sget-object v0, Lcom/samsung/android/biometrics/IBiometricsServiceReceiver$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/biometrics/IBiometricsServiceReceiver;

    if-nez v0, :cond_1

    .line 267
    if-eqz p0, :cond_0

    .line 268
    sput-object p0, Lcom/samsung/android/biometrics/IBiometricsServiceReceiver$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/biometrics/IBiometricsServiceReceiver;

    .line 269
    const/4 v0, 0x1

    return v0

    .line 271
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 265
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 56
    return-object p0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 88
    invoke-static {p1}, Lcom/samsung/android/biometrics/IBiometricsServiceReceiver$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    const-string v0, "com.samsung.android.biometrics.IBiometricsServiceReceiver"

    .line 93
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 101
    packed-switch p1, :pswitch_data_1

    .line 152
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 97
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    return v1

    .line 140
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 144
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 146
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 147
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/biometrics/IBiometricsServiceReceiver$Stub;->onError(JILjava/lang/String;)V

    .line 148
    return v1

    .line 132
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 135
    .restart local v2    # "_arg0":J
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/biometrics/IBiometricsServiceReceiver$Stub;->onAuthenticationFailed(J)V

    .line 136
    return v1

    .line 117
    .end local v2    # "_arg0":J
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 121
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 122
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .local v4, "_arg1":Landroid/os/Bundle;
    goto :goto_0

    .line 125
    .end local v4    # "_arg1":Landroid/os/Bundle;
    :cond_0
    const/4 v4, 0x0

    .line 127
    .restart local v4    # "_arg1":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/biometrics/IBiometricsServiceReceiver$Stub;->onAuthenticationSucceeded(JLandroid/os/Bundle;)V

    .line 128
    return v1

    .line 105
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Landroid/os/Bundle;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 109
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 111
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 112
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/biometrics/IBiometricsServiceReceiver$Stub;->onAcquired(JILjava/lang/String;)V

    .line 113
    return v1

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
