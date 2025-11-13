.class public abstract Landroid/view/IRecentsAnimationController$Stub;
.super Landroid/os/Binder;
.source "IRecentsAnimationController.java"

# interfaces
.implements Landroid/view/IRecentsAnimationController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IRecentsAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IRecentsAnimationController$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.view.IRecentsAnimationController"

.field static final blacklist TRANSACTION_animateNavigationBarToApp:I = 0xc

.field static final blacklist TRANSACTION_cleanupScreenshot:I = 0x7

.field static final blacklist TRANSACTION_detachNavigationBarFromApp:I = 0xb

.field static final greylist-max-o TRANSACTION_finish:I = 0x3

.field static final greylist-max-o TRANSACTION_hideCurrentInputMethod:I = 0x6

.field static final blacklist TRANSACTION_removeTask:I = 0xa

.field static final greylist-max-o TRANSACTION_screenshotTask:I = 0x1

.field static final greylist-max-o TRANSACTION_setAnimationTargetsBehindSystemBars:I = 0x5

.field static final blacklist TRANSACTION_setDeferCancelUntilNextTransition:I = 0x8

.field static final blacklist TRANSACTION_setFinishTaskTransaction:I = 0x2

.field static final greylist-max-o TRANSACTION_setInputConsumerEnabled:I = 0x4

.field static final blacklist TRANSACTION_setWillFinishToHome:I = 0x9


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 167
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 168
    const-string v0, "android.view.IRecentsAnimationController"

    invoke-virtual {p0, p0, v0}, Landroid/view/IRecentsAnimationController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/view/IRecentsAnimationController;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 176
    if-nez p0, :cond_0

    .line 177
    const/4 v0, 0x0

    return-object v0

    .line 179
    :cond_0
    const-string v0, "android.view.IRecentsAnimationController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 180
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IRecentsAnimationController;

    if-eqz v1, :cond_1

    .line 181
    move-object v1, v0

    check-cast v1, Landroid/view/IRecentsAnimationController;

    return-object v1

    .line 183
    :cond_1
    new-instance v1, Landroid/view/IRecentsAnimationController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IRecentsAnimationController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 192
    packed-switch p0, :pswitch_data_0

    .line 244
    const/4 v0, 0x0

    return-object v0

    .line 240
    :pswitch_0
    const-string v0, "animateNavigationBarToApp"

    return-object v0

    .line 236
    :pswitch_1
    const-string v0, "detachNavigationBarFromApp"

    return-object v0

    .line 232
    :pswitch_2
    const-string/jumbo v0, "removeTask"

    return-object v0

    .line 228
    :pswitch_3
    const-string/jumbo v0, "setWillFinishToHome"

    return-object v0

    .line 224
    :pswitch_4
    const-string/jumbo v0, "setDeferCancelUntilNextTransition"

    return-object v0

    .line 220
    :pswitch_5
    const-string v0, "cleanupScreenshot"

    return-object v0

    .line 216
    :pswitch_6
    const-string v0, "hideCurrentInputMethod"

    return-object v0

    .line 212
    :pswitch_7
    const-string/jumbo v0, "setAnimationTargetsBehindSystemBars"

    return-object v0

    .line 208
    :pswitch_8
    const-string/jumbo v0, "setInputConsumerEnabled"

    return-object v0

    .line 204
    :pswitch_9
    const-string v0, "finish"

    return-object v0

    .line 200
    :pswitch_a
    const-string/jumbo v0, "setFinishTaskTransaction"

    return-object v0

    .line 196
    :pswitch_b
    const-string/jumbo v0, "screenshotTask"

    return-object v0

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

    .line 187
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 710
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 251
    invoke-static {p1}, Landroid/view/IRecentsAnimationController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 255
    const-string v0, "android.view.IRecentsAnimationController"

    .line 256
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 257
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 267
    packed-switch p1, :pswitch_data_1

    .line 383
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 263
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 264
    return v1

    .line 375
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 376
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 377
    invoke-virtual {p0, v2, v3}, Landroid/view/IRecentsAnimationController$Stub;->animateNavigationBarToApp(J)V

    .line 378
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    goto/16 :goto_0

    .line 366
    .end local v2    # "_arg0":J
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 367
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 368
    invoke-virtual {p0, v2}, Landroid/view/IRecentsAnimationController$Stub;->detachNavigationBarFromApp(Z)V

    .line 369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    goto/16 :goto_0

    .line 356
    .end local v2    # "_arg0":Z
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 357
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 358
    invoke-virtual {p0, v2}, Landroid/view/IRecentsAnimationController$Stub;->removeTask(I)Z

    move-result v3

    .line 359
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 361
    goto/16 :goto_0

    .line 347
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 348
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 349
    invoke-virtual {p0, v2}, Landroid/view/IRecentsAnimationController$Stub;->setWillFinishToHome(Z)V

    .line 350
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    goto/16 :goto_0

    .line 336
    .end local v2    # "_arg0":Z
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 338
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 339
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 340
    invoke-virtual {p0, v2, v3}, Landroid/view/IRecentsAnimationController$Stub;->setDeferCancelUntilNextTransition(ZZ)V

    .line 341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    goto :goto_0

    .line 329
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Z
    :pswitch_6
    invoke-virtual {p0}, Landroid/view/IRecentsAnimationController$Stub;->cleanupScreenshot()V

    .line 330
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    goto :goto_0

    .line 323
    :pswitch_7
    invoke-virtual {p0}, Landroid/view/IRecentsAnimationController$Stub;->hideCurrentInputMethod()V

    .line 324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    goto :goto_0

    .line 315
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 316
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 317
    invoke-virtual {p0, v2}, Landroid/view/IRecentsAnimationController$Stub;->setAnimationTargetsBehindSystemBars(Z)V

    .line 318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    goto :goto_0

    .line 306
    .end local v2    # "_arg0":Z
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 307
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 308
    invoke-virtual {p0, v2}, Landroid/view/IRecentsAnimationController$Stub;->setInputConsumerEnabled(Z)V

    .line 309
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    goto :goto_0

    .line 295
    .end local v2    # "_arg0":Z
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 297
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 298
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 299
    invoke-virtual {p0, v2, v3}, Landroid/view/IRecentsAnimationController$Stub;->finish(ZZ)V

    .line 300
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    goto :goto_0

    .line 282
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Z
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 284
    .local v2, "_arg0":I
    sget-object v3, Landroid/window/PictureInPictureSurfaceTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/PictureInPictureSurfaceTransaction;

    .line 286
    .local v3, "_arg1":Landroid/window/PictureInPictureSurfaceTransaction;
    sget-object v4, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceControl;

    .line 287
    .local v4, "_arg2":Landroid/view/SurfaceControl;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 288
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IRecentsAnimationController$Stub;->setFinishTaskTransaction(ILandroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V

    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    goto :goto_0

    .line 272
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/window/PictureInPictureSurfaceTransaction;
    .end local v4    # "_arg2":Landroid/view/SurfaceControl;
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 273
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 274
    invoke-virtual {p0, v2}, Landroid/view/IRecentsAnimationController$Stub;->screenshotTask(I)Landroid/window/TaskSnapshot;

    move-result-object v3

    .line 275
    .local v3, "_result":Landroid/window/TaskSnapshot;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 277
    nop

    .line 386
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/window/TaskSnapshot;
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
