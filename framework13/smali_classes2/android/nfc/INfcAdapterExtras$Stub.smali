.class public abstract Landroid/nfc/INfcAdapterExtras$Stub;
.super Landroid/os/Binder;
.source "INfcAdapterExtras.java"

# interfaces
.implements Landroid/nfc/INfcAdapterExtras;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcAdapterExtras;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcAdapterExtras$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcAdapterExtras"

.field static final greylist-max-o TRANSACTION_authenticate:I = 0x6

.field static final greylist-max-o TRANSACTION_close:I = 0x2

.field static final blacklist TRANSACTION_closeWithPackageName:I = 0xa

.field static final blacklist TRANSACTION_getAtr:I = 0x8

.field static final blacklist TRANSACTION_getAtrWithPackageName:I = 0xc

.field static final greylist-max-o TRANSACTION_getCardEmulationRoute:I = 0x4

.field static final greylist-max-o TRANSACTION_getDriverName:I = 0x7

.field static final greylist-max-o TRANSACTION_open:I = 0x1

.field static final blacklist TRANSACTION_openWithPackageName:I = 0x9

.field static final greylist-max-o TRANSACTION_setCardEmulationRoute:I = 0x5

.field static final greylist-max-o TRANSACTION_transceive:I = 0x3

.field static final blacklist TRANSACTION_transceiveWithPackageName:I = 0xb


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 68
    const-string v0, "android.nfc.INfcAdapterExtras"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcAdapterExtras$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapterExtras;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 76
    if-nez p0, :cond_0

    .line 77
    const/4 v0, 0x0

    return-object v0

    .line 79
    :cond_0
    const-string v0, "android.nfc.INfcAdapterExtras"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 80
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/nfc/INfcAdapterExtras;

    if-eqz v1, :cond_1

    .line 81
    move-object v1, v0

    check-cast v1, Landroid/nfc/INfcAdapterExtras;

    return-object v1

    .line 83
    :cond_1
    new-instance v1, Landroid/nfc/INfcAdapterExtras$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/nfc/INfcAdapterExtras$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 92
    packed-switch p0, :pswitch_data_0

    .line 144
    const/4 v0, 0x0

    return-object v0

    .line 140
    :pswitch_0
    const-string v0, "getAtrWithPackageName"

    return-object v0

    .line 136
    :pswitch_1
    const-string/jumbo v0, "transceiveWithPackageName"

    return-object v0

    .line 132
    :pswitch_2
    const-string v0, "closeWithPackageName"

    return-object v0

    .line 128
    :pswitch_3
    const-string v0, "openWithPackageName"

    return-object v0

    .line 124
    :pswitch_4
    const-string v0, "getAtr"

    return-object v0

    .line 120
    :pswitch_5
    const-string v0, "getDriverName"

    return-object v0

    .line 116
    :pswitch_6
    const-string v0, "authenticate"

    return-object v0

    .line 112
    :pswitch_7
    const-string v0, "setCardEmulationRoute"

    return-object v0

    .line 108
    :pswitch_8
    const-string v0, "getCardEmulationRoute"

    return-object v0

    .line 104
    :pswitch_9
    const-string/jumbo v0, "transceive"

    return-object v0

    .line 100
    :pswitch_a
    const-string v0, "close"

    return-object v0

    .line 96
    :pswitch_b
    const-string v0, "open"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 87
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 572
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 151
    invoke-static {p1}, Landroid/nfc/INfcAdapterExtras$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 155
    const-string v0, "android.nfc.INfcAdapterExtras"

    .line 156
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 157
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 167
    packed-switch p1, :pswitch_data_1

    .line 313
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 163
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    return v1

    .line 302
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 304
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 305
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 306
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcAdapterExtras$Stub;->getAtrWithPackageName(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 307
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 309
    goto/16 :goto_0

    .line 288
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 290
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 292
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 293
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    invoke-virtual {p0, v2, v3, v4}, Landroid/nfc/INfcAdapterExtras$Stub;->transceiveWithPackageName(Ljava/lang/String;[BLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 295
    .local v5, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 297
    goto/16 :goto_0

    .line 274
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[B
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Landroid/os/Bundle;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 276
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 278
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 279
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    invoke-virtual {p0, v2, v3, v4}, Landroid/nfc/INfcAdapterExtras$Stub;->closeWithPackageName(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 281
    .restart local v5    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 283
    goto/16 :goto_0

    .line 260
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Landroid/os/Bundle;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 262
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 264
    .restart local v3    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 265
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 266
    invoke-virtual {p0, v2, v3, v4}, Landroid/nfc/INfcAdapterExtras$Stub;->openWithPackageName(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 267
    .restart local v5    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 269
    goto/16 :goto_0

    .line 250
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Landroid/os/Bundle;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 251
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 252
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapterExtras$Stub;->getAtr(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 253
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 255
    goto/16 :goto_0

    .line 240
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/Bundle;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 241
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 242
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapterExtras$Stub;->getDriverName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 243
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    goto/16 :goto_0

    .line 229
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 231
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 232
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 233
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcAdapterExtras$Stub;->authenticate(Ljava/lang/String;[B)V

    .line 234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    goto :goto_0

    .line 218
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[B
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 220
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 221
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcAdapterExtras$Stub;->setCardEmulationRoute(Ljava/lang/String;I)V

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    goto :goto_0

    .line 208
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 209
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    invoke-virtual {p0, v2}, Landroid/nfc/INfcAdapterExtras$Stub;->getCardEmulationRoute(Ljava/lang/String;)I

    move-result v3

    .line 211
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    goto :goto_0

    .line 196
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 198
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 199
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 200
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcAdapterExtras$Stub;->transceive(Ljava/lang/String;[B)Landroid/os/Bundle;

    move-result-object v4

    .line 201
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 203
    goto :goto_0

    .line 184
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[B
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 186
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 187
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 188
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcAdapterExtras$Stub;->close(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v4

    .line 189
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 191
    goto :goto_0

    .line 172
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 174
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 175
    .restart local v3    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcAdapterExtras$Stub;->open(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v4

    .line 177
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 179
    nop

    .line 316
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v4    # "_result":Landroid/os/Bundle;
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
    .end packed-switch
.end method
