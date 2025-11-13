.class public abstract Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController$Stub;
.super Landroid/os/Binder;
.source "ISemFingerprintAodController.java"

# interfaces
.implements Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_hideAodScreen:I = 0x5

.field static final blacklist TRANSACTION_turnOffDozeHlpmMode:I = 0x4

.field static final blacklist TRANSACTION_turnOffDozeMode:I = 0x2

.field static final blacklist TRANSACTION_turnOnDozeHlpmMode:I = 0x3

.field static final blacklist TRANSACTION_turnOnDozeMode:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "com.samsung.android.bio.fingerprint.ISemFingerprintAodController"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 48
    if-nez p0, :cond_0

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_0
    const-string v0, "com.samsung.android.bio.fingerprint.ISemFingerprintAodController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;

    if-eqz v1, :cond_1

    .line 53
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;

    return-object v1

    .line 55
    :cond_1
    new-instance v1, Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 64
    packed-switch p0, :pswitch_data_0

    .line 88
    const/4 v0, 0x0

    return-object v0

    .line 84
    :pswitch_0
    const-string v0, "hideAodScreen"

    return-object v0

    .line 80
    :pswitch_1
    const-string/jumbo v0, "turnOffDozeHlpmMode"

    return-object v0

    .line 76
    :pswitch_2
    const-string/jumbo v0, "turnOnDozeHlpmMode"

    return-object v0

    .line 72
    :pswitch_3
    const-string/jumbo v0, "turnOffDozeMode"

    return-object v0

    .line 68
    :pswitch_4
    const-string/jumbo v0, "turnOnDozeMode"

    return-object v0

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

    .line 59
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 224
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 95
    invoke-static {p1}, Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 99
    const-string v0, "com.samsung.android.bio.fingerprint.ISemFingerprintAodController"

    .line 100
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 101
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 111
    packed-switch p1, :pswitch_data_1

    .line 140
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 107
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    return v1

    .line 135
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController$Stub;->hideAodScreen()V

    .line 136
    goto :goto_0

    .line 130
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController$Stub;->turnOffDozeHlpmMode()V

    .line 131
    goto :goto_0

    .line 125
    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController$Stub;->turnOnDozeHlpmMode()V

    .line 126
    goto :goto_0

    .line 120
    :pswitch_4
    invoke-virtual {p0}, Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController$Stub;->turnOffDozeMode()V

    .line 121
    goto :goto_0

    .line 115
    :pswitch_5
    invoke-virtual {p0}, Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController$Stub;->turnOnDozeMode()V

    .line 116
    nop

    .line 143
    :goto_0
    return v1

    nop

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
