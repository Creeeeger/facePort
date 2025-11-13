.class public abstract Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;
.super Landroid/os/Binder;
.source "ISemPhoneSubInfo.java"

# interfaces
.implements Lcom/android/internal/telephony/ISemPhoneSubInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ISemPhoneSubInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_changeDRX:I = 0x2

.field static final blacklist TRANSACTION_changeDRXForKodiak:I = 0xc

.field static final blacklist TRANSACTION_getCurrentCycle:I = 0x5

.field static final blacklist TRANSACTION_getCurrentModeForKodiak:I = 0xf

.field static final blacklist TRANSACTION_getDataServiceState:I = 0x8

.field static final blacklist TRANSACTION_getDataServiceStateUsingSubId:I = 0x9

.field static final blacklist TRANSACTION_getDefaultCycle:I = 0x4

.field static final blacklist TRANSACTION_getDefaultCycleForKodiak:I = 0xe

.field static final blacklist TRANSACTION_getDrxMode:I = 0x7

.field static final blacklist TRANSACTION_getSupportedCycles:I = 0x3

.field static final blacklist TRANSACTION_getSupportedModesForKodiak:I = 0xd

.field static final blacklist TRANSACTION_getUwbTimers:I = 0xb

.field static final blacklist TRANSACTION_hasCall:I = 0x1

.field static final blacklist TRANSACTION_setDrxMode:I = 0x6

.field static final blacklist TRANSACTION_setUwbTimers:I = 0xa


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 144
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 145
    const-string v0, "com.android.internal.telephony.ISemPhoneSubInfo"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISemPhoneSubInfo;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 153
    if-nez p0, :cond_0

    .line 154
    const/4 v0, 0x0

    return-object v0

    .line 156
    :cond_0
    const-string v0, "com.android.internal.telephony.ISemPhoneSubInfo"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 157
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ISemPhoneSubInfo;

    if-eqz v1, :cond_1

    .line 158
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/ISemPhoneSubInfo;

    return-object v1

    .line 160
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 169
    packed-switch p0, :pswitch_data_0

    .line 233
    const/4 v0, 0x0

    return-object v0

    .line 229
    :pswitch_0
    const-string v0, "getCurrentModeForKodiak"

    return-object v0

    .line 225
    :pswitch_1
    const-string v0, "getDefaultCycleForKodiak"

    return-object v0

    .line 221
    :pswitch_2
    const-string/jumbo v0, "getSupportedModesForKodiak"

    return-object v0

    .line 217
    :pswitch_3
    const-string v0, "changeDRXForKodiak"

    return-object v0

    .line 213
    :pswitch_4
    const-string/jumbo v0, "getUwbTimers"

    return-object v0

    .line 209
    :pswitch_5
    const-string/jumbo v0, "setUwbTimers"

    return-object v0

    .line 205
    :pswitch_6
    const-string v0, "getDataServiceStateUsingSubId"

    return-object v0

    .line 201
    :pswitch_7
    const-string v0, "getDataServiceState"

    return-object v0

    .line 197
    :pswitch_8
    const-string v0, "getDrxMode"

    return-object v0

    .line 193
    :pswitch_9
    const-string/jumbo v0, "setDrxMode"

    return-object v0

    .line 189
    :pswitch_a
    const-string v0, "getCurrentCycle"

    return-object v0

    .line 185
    :pswitch_b
    const-string v0, "getDefaultCycle"

    return-object v0

    .line 181
    :pswitch_c
    const-string/jumbo v0, "getSupportedCycles"

    return-object v0

    .line 177
    :pswitch_d
    const-string v0, "changeDRX"

    return-object v0

    .line 173
    :pswitch_e
    const-string/jumbo v0, "hasCall"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 164
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 763
    const/16 v0, 0xe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 240
    invoke-static {p1}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 244
    const-string v0, "com.android.internal.telephony.ISemPhoneSubInfo"

    .line 245
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 246
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 256
    packed-switch p1, :pswitch_data_1

    .line 398
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 252
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    return v1

    .line 391
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;->getCurrentModeForKodiak()I

    move-result v2

    .line 392
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    goto/16 :goto_0

    .line 384
    .end local v2    # "_result":I
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;->getDefaultCycleForKodiak()I

    move-result v2

    .line 385
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 387
    goto/16 :goto_0

    .line 377
    .end local v2    # "_result":I
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;->getSupportedModesForKodiak()[I

    move-result-object v2

    .line 378
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 380
    goto/16 :goto_0

    .line 366
    .end local v2    # "_result":[I
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 368
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 369
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 370
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;->changeDRXForKodiak(II)Z

    move-result v4

    .line 371
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 373
    goto/16 :goto_0

    .line 358
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;->getUwbTimers()[I

    move-result-object v2

    .line 359
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 361
    goto/16 :goto_0

    .line 349
    .end local v2    # "_result":[I
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 350
    .local v2, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 351
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;->setUwbTimers([I)Z

    move-result v3

    .line 352
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 354
    goto/16 :goto_0

    .line 339
    .end local v2    # "_arg0":[I
    .end local v3    # "_result":Z
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 340
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 341
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;->getDataServiceStateUsingSubId(I)I

    move-result v3

    .line 342
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    goto/16 :goto_0

    .line 331
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;->getDataServiceState()I

    move-result v2

    .line 332
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    goto/16 :goto_0

    .line 324
    .end local v2    # "_result":I
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;->getDrxMode()I

    move-result v2

    .line 325
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    goto/16 :goto_0

    .line 315
    .end local v2    # "_result":I
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 316
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 317
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;->setDrxMode(I)Z

    move-result v3

    .line 318
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 320
    goto :goto_0

    .line 305
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 306
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 307
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;->getCurrentCycle(I)I

    move-result v3

    .line 308
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    goto :goto_0

    .line 295
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 296
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 297
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;->getDefaultCycle(I)I

    move-result v3

    .line 298
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    goto :goto_0

    .line 285
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 286
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 287
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;->getSupportedCycles(I)[I

    move-result-object v3

    .line 288
    .local v3, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 290
    goto :goto_0

    .line 271
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[I
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 273
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 275
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 276
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 277
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;->changeDRX(III)Z

    move-result v5

    .line 278
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 280
    goto :goto_0

    .line 261
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 263
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;->hasCall(Ljava/lang/String;)Z

    move-result v3

    .line 264
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 266
    nop

    .line 401
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
    .end packed-switch
.end method
