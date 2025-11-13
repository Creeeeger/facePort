.class public abstract Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;
.super Landroid/os/Binder;
.source "IExynosDisplaySolutionManager.java"

# interfaces
.implements Landroid/hardware/display/IExynosDisplaySolutionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/IExynosDisplaySolutionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/IExynosDisplaySolutionManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getColorEnhancementMode:I = 0x2

.field static final blacklist TRANSACTION_getRgbGain:I = 0x11

.field static final blacklist TRANSACTION_setColorEnhancementSettingValue:I = 0x3

.field static final blacklist TRANSACTION_setColorTempSettingOn:I = 0x5

.field static final blacklist TRANSACTION_setColorTempSettingValue:I = 0x4

.field static final blacklist TRANSACTION_setDisplayFeature:I = 0x1

.field static final blacklist TRANSACTION_setEdgeSharpnessSettingOn:I = 0x10

.field static final blacklist TRANSACTION_setEdgeSharpnessSettingValue:I = 0xf

.field static final blacklist TRANSACTION_setEyeTempSettingOn:I = 0x7

.field static final blacklist TRANSACTION_setEyeTempSettingValue:I = 0x6

.field static final blacklist TRANSACTION_setHsvGainSettingOn:I = 0xc

.field static final blacklist TRANSACTION_setHsvGainSettingValue:I = 0xb

.field static final blacklist TRANSACTION_setRgbGain:I = 0xe

.field static final blacklist TRANSACTION_setRgbGainSettingOn:I = 0x9

.field static final blacklist TRANSACTION_setRgbGainSettingValue:I = 0x8

.field static final blacklist TRANSACTION_setSkinColorSettingOn:I = 0xa

.field static final blacklist TRANSACTION_setWhitePointColorSettingOn:I = 0xd


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 75
    const-string v0, "android.hardware.display.IExynosDisplaySolutionManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IExynosDisplaySolutionManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 83
    if-nez p0, :cond_0

    .line 84
    const/4 v0, 0x0

    return-object v0

    .line 86
    :cond_0
    const-string v0, "android.hardware.display.IExynosDisplaySolutionManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 87
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/display/IExynosDisplaySolutionManager;

    if-eqz v1, :cond_1

    .line 88
    move-object v1, v0

    check-cast v1, Landroid/hardware/display/IExynosDisplaySolutionManager;

    return-object v1

    .line 90
    :cond_1
    new-instance v1, Landroid/hardware/display/IExynosDisplaySolutionManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/display/IExynosDisplaySolutionManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 99
    packed-switch p0, :pswitch_data_0

    .line 171
    const/4 v0, 0x0

    return-object v0

    .line 167
    :pswitch_0
    const-string v0, "getRgbGain"

    return-object v0

    .line 163
    :pswitch_1
    const-string/jumbo v0, "setEdgeSharpnessSettingOn"

    return-object v0

    .line 159
    :pswitch_2
    const-string/jumbo v0, "setEdgeSharpnessSettingValue"

    return-object v0

    .line 155
    :pswitch_3
    const-string/jumbo v0, "setRgbGain"

    return-object v0

    .line 151
    :pswitch_4
    const-string/jumbo v0, "setWhitePointColorSettingOn"

    return-object v0

    .line 147
    :pswitch_5
    const-string/jumbo v0, "setHsvGainSettingOn"

    return-object v0

    .line 143
    :pswitch_6
    const-string/jumbo v0, "setHsvGainSettingValue"

    return-object v0

    .line 139
    :pswitch_7
    const-string/jumbo v0, "setSkinColorSettingOn"

    return-object v0

    .line 135
    :pswitch_8
    const-string/jumbo v0, "setRgbGainSettingOn"

    return-object v0

    .line 131
    :pswitch_9
    const-string/jumbo v0, "setRgbGainSettingValue"

    return-object v0

    .line 127
    :pswitch_a
    const-string/jumbo v0, "setEyeTempSettingOn"

    return-object v0

    .line 123
    :pswitch_b
    const-string/jumbo v0, "setEyeTempSettingValue"

    return-object v0

    .line 119
    :pswitch_c
    const-string/jumbo v0, "setColorTempSettingOn"

    return-object v0

    .line 115
    :pswitch_d
    const-string/jumbo v0, "setColorTempSettingValue"

    return-object v0

    .line 111
    :pswitch_e
    const-string/jumbo v0, "setColorEnhancementSettingValue"

    return-object v0

    .line 107
    :pswitch_f
    const-string v0, "getColorEnhancementMode"

    return-object v0

    .line 103
    :pswitch_10
    const-string/jumbo v0, "setDisplayFeature"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 94
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 674
    const/16 v0, 0x10

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 178
    invoke-static {p1}, Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 182
    const-string v0, "android.hardware.display.IExynosDisplaySolutionManager"

    .line 183
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 184
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 194
    packed-switch p1, :pswitch_data_1

    .line 365
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 190
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    return v1

    .line 358
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;->getRgbGain()[F

    move-result-object v2

    .line 359
    .local v2, "_result":[F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 361
    goto/16 :goto_0

    .line 350
    .end local v2    # "_result":[F
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 351
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 352
    invoke-virtual {p0, v2}, Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;->setEdgeSharpnessSettingOn(I)V

    .line 353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    goto/16 :goto_0

    .line 341
    .end local v2    # "_arg0":I
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 342
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 343
    invoke-virtual {p0, v2}, Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;->setEdgeSharpnessSettingValue(I)V

    .line 344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    goto/16 :goto_0

    .line 328
    .end local v2    # "_arg0":I
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 330
    .local v2, "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 332
    .local v3, "_arg1":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 333
    .local v4, "_arg2":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 334
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;->setRgbGain(FFF)V

    .line 335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    goto/16 :goto_0

    .line 319
    .end local v2    # "_arg0":F
    .end local v3    # "_arg1":F
    .end local v4    # "_arg2":F
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 320
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 321
    invoke-virtual {p0, v2}, Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;->setWhitePointColorSettingOn(I)V

    .line 322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    goto/16 :goto_0

    .line 310
    .end local v2    # "_arg0":I
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 311
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 312
    invoke-virtual {p0, v2}, Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;->setHsvGainSettingOn(I)V

    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    goto/16 :goto_0

    .line 297
    .end local v2    # "_arg0":I
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 299
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 301
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 302
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 303
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;->setHsvGainSettingValue(III)V

    .line 304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    goto/16 :goto_0

    .line 288
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 289
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 290
    invoke-virtual {p0, v2}, Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;->setSkinColorSettingOn(I)V

    .line 291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    goto/16 :goto_0

    .line 279
    .end local v2    # "_arg0":I
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 280
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-virtual {p0, v2}, Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;->setRgbGainSettingOn(I)V

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    goto/16 :goto_0

    .line 266
    .end local v2    # "_arg0":I
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 268
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 270
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 271
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 272
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;->setRgbGainSettingValue(III)V

    .line 273
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    goto :goto_0

    .line 257
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 258
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    invoke-virtual {p0, v2}, Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;->setEyeTempSettingOn(I)V

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    goto :goto_0

    .line 248
    .end local v2    # "_arg0":I
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 249
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    invoke-virtual {p0, v2}, Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;->setEyeTempSettingValue(I)V

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    goto :goto_0

    .line 239
    .end local v2    # "_arg0":I
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 240
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 241
    invoke-virtual {p0, v2}, Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;->setColorTempSettingOn(I)V

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    goto :goto_0

    .line 230
    .end local v2    # "_arg0":I
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 231
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {p0, v2}, Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;->setColorTempSettingValue(I)V

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    goto :goto_0

    .line 221
    .end local v2    # "_arg0":I
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 222
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {p0, v2}, Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;->setColorEnhancementSettingValue(I)V

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    goto :goto_0

    .line 213
    .end local v2    # "_arg0":I
    :pswitch_10
    invoke-virtual {p0}, Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;->getColorEnhancementMode()Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    goto :goto_0

    .line 199
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 203
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 205
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 206
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;->setDisplayFeature(Ljava/lang/String;IILjava/lang/String;)V

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    nop

    .line 368
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Ljava/lang/String;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
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
