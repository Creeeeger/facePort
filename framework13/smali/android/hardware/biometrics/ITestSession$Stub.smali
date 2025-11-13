.class public abstract Landroid/hardware/biometrics/ITestSession$Stub;
.super Landroid/os/Binder;
.source "ITestSession.java"

# interfaces
.implements Landroid/hardware/biometrics/ITestSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/ITestSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/ITestSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acceptAuthentication:I = 0x4

.field static final blacklist TRANSACTION_cleanupInternalState:I = 0x8

.field static final blacklist TRANSACTION_finishEnroll:I = 0x3

.field static final blacklist TRANSACTION_notifyAcquired:I = 0x6

.field static final blacklist TRANSACTION_notifyError:I = 0x7

.field static final blacklist TRANSACTION_notifyVendorAcquired:I = 0x9

.field static final blacklist TRANSACTION_notifyVendorError:I = 0xa

.field static final blacklist TRANSACTION_rejectAuthentication:I = 0x5

.field static final blacklist TRANSACTION_setTestHalEnabled:I = 0x1

.field static final blacklist TRANSACTION_startEnroll:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 72
    const-string v0, "android.hardware.biometrics.ITestSession"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/biometrics/ITestSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/ITestSession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 80
    if-nez p0, :cond_0

    .line 81
    const/4 v0, 0x0

    return-object v0

    .line 83
    :cond_0
    const-string v0, "android.hardware.biometrics.ITestSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 84
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/biometrics/ITestSession;

    if-eqz v1, :cond_1

    .line 85
    move-object v1, v0

    check-cast v1, Landroid/hardware/biometrics/ITestSession;

    return-object v1

    .line 87
    :cond_1
    new-instance v1, Landroid/hardware/biometrics/ITestSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/biometrics/ITestSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 96
    packed-switch p0, :pswitch_data_0

    .line 140
    const/4 v0, 0x0

    return-object v0

    .line 136
    :pswitch_0
    const-string/jumbo v0, "notifyVendorError"

    return-object v0

    .line 132
    :pswitch_1
    const-string/jumbo v0, "notifyVendorAcquired"

    return-object v0

    .line 128
    :pswitch_2
    const-string v0, "cleanupInternalState"

    return-object v0

    .line 124
    :pswitch_3
    const-string/jumbo v0, "notifyError"

    return-object v0

    .line 120
    :pswitch_4
    const-string/jumbo v0, "notifyAcquired"

    return-object v0

    .line 116
    :pswitch_5
    const-string/jumbo v0, "rejectAuthentication"

    return-object v0

    .line 112
    :pswitch_6
    const-string v0, "acceptAuthentication"

    return-object v0

    .line 108
    :pswitch_7
    const-string v0, "finishEnroll"

    return-object v0

    .line 104
    :pswitch_8
    const-string/jumbo v0, "startEnroll"

    return-object v0

    .line 100
    :pswitch_9
    const-string/jumbo v0, "setTestHalEnabled"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 91
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 470
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 147
    invoke-static {p1}, Landroid/hardware/biometrics/ITestSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 151
    const-string v0, "android.hardware.biometrics.ITestSession"

    .line 152
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 153
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 163
    packed-switch p1, :pswitch_data_1

    .line 265
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 159
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    return v1

    .line 255
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 257
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 258
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    invoke-virtual {p0, v2, v3}, Landroid/hardware/biometrics/ITestSession$Stub;->notifyVendorError(II)V

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    goto/16 :goto_0

    .line 244
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 246
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 247
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {p0, v2, v3}, Landroid/hardware/biometrics/ITestSession$Stub;->notifyVendorAcquired(II)V

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    goto/16 :goto_0

    .line 235
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 236
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 237
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/ITestSession$Stub;->cleanupInternalState(I)V

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    goto :goto_0

    .line 224
    .end local v2    # "_arg0":I
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 226
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 227
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 228
    invoke-virtual {p0, v2, v3}, Landroid/hardware/biometrics/ITestSession$Stub;->notifyError(II)V

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    goto :goto_0

    .line 213
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 215
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 216
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {p0, v2, v3}, Landroid/hardware/biometrics/ITestSession$Stub;->notifyAcquired(II)V

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    goto :goto_0

    .line 204
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 205
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 206
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/ITestSession$Stub;->rejectAuthentication(I)V

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    goto :goto_0

    .line 195
    .end local v2    # "_arg0":I
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 196
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/ITestSession$Stub;->acceptAuthentication(I)V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    goto :goto_0

    .line 186
    .end local v2    # "_arg0":I
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 187
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 188
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/ITestSession$Stub;->finishEnroll(I)V

    .line 189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    goto :goto_0

    .line 177
    .end local v2    # "_arg0":I
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 178
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/ITestSession$Stub;->startEnroll(I)V

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    goto :goto_0

    .line 168
    .end local v2    # "_arg0":I
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 169
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 170
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/ITestSession$Stub;->setTestHalEnabled(Z)V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    nop

    .line 268
    .end local v2    # "_arg0":Z
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
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
    .end packed-switch
.end method
