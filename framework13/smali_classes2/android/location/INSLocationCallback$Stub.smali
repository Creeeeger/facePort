.class public abstract Landroid/location/INSLocationCallback$Stub;
.super Landroid/os/Binder;
.source "INSLocationCallback.java"

# interfaces
.implements Landroid/location/INSLocationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/INSLocationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/INSLocationCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getActiveRequests:I = 0x2

.field static final blacklist TRANSACTION_getKernelWakeLockInfo:I = 0x3

.field static final blacklist TRANSACTION_getUidState:I = 0xb

.field static final blacklist TRANSACTION_isLocationEnabled:I = 0x4

.field static final blacklist TRANSACTION_isProviderEnabled:I = 0xd

.field static final blacklist TRANSACTION_noteGpsOp:I = 0x5

.field static final blacklist TRANSACTION_registerDeviceActivityDetector:I = 0x7

.field static final blacklist TRANSACTION_requestToUpdateDeviceActivityDetector:I = 0x9

.field static final blacklist TRANSACTION_sendLogToHqm:I = 0x6

.field static final blacklist TRANSACTION_setFeatureDeviceActivity:I = 0xa

.field static final blacklist TRANSACTION_setMotionPowerSaveMode:I = 0xc

.field static final blacklist TRANSACTION_unregisterDeviceActivityDetector:I = 0x8

.field static final blacklist TRANSACTION_updateBackgroundThrottlingAllowlist:I = 0x1

.field static final blacklist TRANSACTION_writeUtLog:I = 0xe


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 92
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 93
    const-string v0, "android.location.INSLocationCallback"

    invoke-virtual {p0, p0, v0}, Landroid/location/INSLocationCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/location/INSLocationCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 101
    if-nez p0, :cond_0

    .line 102
    const/4 v0, 0x0

    return-object v0

    .line 104
    :cond_0
    const-string v0, "android.location.INSLocationCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 105
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/location/INSLocationCallback;

    if-eqz v1, :cond_1

    .line 106
    move-object v1, v0

    check-cast v1, Landroid/location/INSLocationCallback;

    return-object v1

    .line 108
    :cond_1
    new-instance v1, Landroid/location/INSLocationCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/INSLocationCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 117
    packed-switch p0, :pswitch_data_0

    .line 177
    const/4 v0, 0x0

    return-object v0

    .line 173
    :pswitch_0
    const-string/jumbo v0, "writeUtLog"

    return-object v0

    .line 169
    :pswitch_1
    const-string v0, "isProviderEnabled"

    return-object v0

    .line 165
    :pswitch_2
    const-string/jumbo v0, "setMotionPowerSaveMode"

    return-object v0

    .line 161
    :pswitch_3
    const-string v0, "getUidState"

    return-object v0

    .line 157
    :pswitch_4
    const-string v0, "setFeatureDeviceActivity"

    return-object v0

    .line 153
    :pswitch_5
    const-string v0, "requestToUpdateDeviceActivityDetector"

    return-object v0

    .line 149
    :pswitch_6
    const-string/jumbo v0, "unregisterDeviceActivityDetector"

    return-object v0

    .line 145
    :pswitch_7
    const-string v0, "registerDeviceActivityDetector"

    return-object v0

    .line 141
    :pswitch_8
    const-string v0, "sendLogToHqm"

    return-object v0

    .line 137
    :pswitch_9
    const-string v0, "noteGpsOp"

    return-object v0

    .line 133
    :pswitch_a
    const-string v0, "isLocationEnabled"

    return-object v0

    .line 129
    :pswitch_b
    const-string v0, "getKernelWakeLockInfo"

    return-object v0

    .line 125
    :pswitch_c
    const-string v0, "getActiveRequests"

    return-object v0

    .line 121
    :pswitch_d
    const-string/jumbo v0, "updateBackgroundThrottlingAllowlist"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 112
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 640
    const/16 v0, 0xd

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 184
    invoke-static {p1}, Landroid/location/INSLocationCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 188
    const-string v0, "android.location.INSLocationCallback"

    .line 189
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 190
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 200
    packed-switch p1, :pswitch_data_1

    .line 348
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 196
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    return v1

    .line 336
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 338
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 340
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 341
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 342
    invoke-virtual {p0, v2, v3, v4}, Landroid/location/INSLocationCallback$Stub;->writeUtLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    goto/16 :goto_0

    .line 324
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 326
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 327
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 328
    invoke-virtual {p0, v2, v3}, Landroid/location/INSLocationCallback$Stub;->isProviderEnabled(Ljava/lang/String;I)Z

    move-result v4

    .line 329
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 331
    goto/16 :goto_0

    .line 315
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 316
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 317
    invoke-virtual {p0, v2}, Landroid/location/INSLocationCallback$Stub;->setMotionPowerSaveMode(Z)V

    .line 318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    goto/16 :goto_0

    .line 303
    .end local v2    # "_arg0":Z
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 305
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 306
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 307
    invoke-virtual {p0, v2, v3}, Landroid/location/INSLocationCallback$Stub;->getUidState(II)Landroid/os/Bundle;

    move-result-object v4

    .line 308
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 310
    goto/16 :goto_0

    .line 293
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 294
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 295
    invoke-virtual {p0, v2}, Landroid/location/INSLocationCallback$Stub;->setFeatureDeviceActivity(Z)Z

    move-result v3

    .line 296
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 298
    goto/16 :goto_0

    .line 286
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_6
    invoke-virtual {p0}, Landroid/location/INSLocationCallback$Stub;->requestToUpdateDeviceActivityDetector()V

    .line 287
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    goto/16 :goto_0

    .line 280
    :pswitch_7
    invoke-virtual {p0}, Landroid/location/INSLocationCallback$Stub;->unregisterDeviceActivityDetector()V

    .line 281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    goto/16 :goto_0

    .line 268
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 270
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 272
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 273
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 274
    invoke-virtual {p0, v2, v3, v4}, Landroid/location/INSLocationCallback$Stub;->registerDeviceActivityDetector(IIZ)V

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    goto :goto_0

    .line 255
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 260
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 261
    invoke-virtual {p0, v2, v3, v4}, Landroid/location/INSLocationCallback$Stub;->sendLogToHqm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    goto :goto_0

    .line 244
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 246
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 247
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {p0, v2, v3}, Landroid/location/INSLocationCallback$Stub;->noteGpsOp(II)V

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    goto :goto_0

    .line 234
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 235
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 236
    invoke-virtual {p0, v2}, Landroid/location/INSLocationCallback$Stub;->isLocationEnabled(I)Z

    move-result v3

    .line 237
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 239
    goto :goto_0

    .line 224
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 226
    invoke-virtual {p0, v2}, Landroid/location/INSLocationCallback$Stub;->getKernelWakeLockInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 227
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 229
    goto :goto_0

    .line 214
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/Bundle;
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 215
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 216
    invoke-virtual {p0, v2}, Landroid/location/INSLocationCallback$Stub;->getActiveRequests(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 217
    .restart local v3    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 219
    goto :goto_0

    .line 205
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/Bundle;
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 206
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {p0, v2}, Landroid/location/INSLocationCallback$Stub;->updateBackgroundThrottlingAllowlist(Ljava/util/List;)V

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    nop

    .line 351
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
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
    .end packed-switch
.end method
