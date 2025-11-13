.class public abstract Lcom/android/internal/policy/IKeyguardService$Stub;
.super Landroid/os/Binder;
.source "IKeyguardService.java"

# interfaces
.implements Lcom/android/internal/policy/IKeyguardService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/IKeyguardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.policy.IKeyguardService"

.field static final greylist-max-o TRANSACTION_addStateMonitorCallback:I = 0x2

.field static final greylist-max-o TRANSACTION_dismiss:I = 0x4

.field static final blacklist TRANSACTION_dismissKeyguardToLaunch:I = 0x17

.field static final greylist-max-o TRANSACTION_doKeyguardTimeout:I = 0x11

.field static final greylist-max-o TRANSACTION_onBootCompleted:I = 0x14

.field static final greylist-max-o TRANSACTION_onDreamingStarted:I = 0x5

.field static final greylist-max-o TRANSACTION_onDreamingStopped:I = 0x6

.field static final greylist-max-o TRANSACTION_onFinishedGoingToSleep:I = 0x8

.field static final greylist-max-o TRANSACTION_onFinishedWakingUp:I = 0xa

.field static final greylist-max-o TRANSACTION_onScreenTurnedOff:I = 0xe

.field static final greylist-max-o TRANSACTION_onScreenTurnedOn:I = 0xc

.field static final greylist-max-o TRANSACTION_onScreenTurningOff:I = 0xd

.field static final greylist-max-o TRANSACTION_onScreenTurningOn:I = 0xb

.field static final greylist-max-o TRANSACTION_onShortPowerPressedGoHome:I = 0x16

.field static final greylist-max-o TRANSACTION_onStartedGoingToSleep:I = 0x7

.field static final greylist-max-o TRANSACTION_onStartedWakingUp:I = 0x9

.field static final blacklist TRANSACTION_onSystemKeyPressed:I = 0x18

.field static final greylist-max-o TRANSACTION_onSystemReady:I = 0x10

.field static final greylist-max-o TRANSACTION_setCurrentUser:I = 0x13

.field static final blacklist TRANSACTION_setDexOccluded:I = 0x19

.field static final greylist-max-o TRANSACTION_setKeyguardEnabled:I = 0xf

.field static final greylist-max-o TRANSACTION_setOccluded:I = 0x1

.field static final blacklist TRANSACTION_setPendingIntentAfterUnlock:I = 0x1a

.field static final greylist-max-o TRANSACTION_setSwitchingUser:I = 0x12

.field static final blacklist TRANSACTION_startFingerprintAuthentication:I = 0x1c

.field static final greylist-max-o TRANSACTION_startKeyguardExitAnimation:I = 0x15

.field static final blacklist TRANSACTION_startedEarlyWakingUp:I = 0x1b

.field static final greylist-max-o TRANSACTION_verifyUnlock:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 170
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 171
    const-string v0, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 179
    if-nez p0, :cond_0

    .line 180
    const/4 v0, 0x0

    return-object v0

    .line 182
    :cond_0
    const-string v0, "com.android.internal.policy.IKeyguardService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 183
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/policy/IKeyguardService;

    if-eqz v1, :cond_1

    .line 184
    move-object v1, v0

    check-cast v1, Lcom/android/internal/policy/IKeyguardService;

    return-object v1

    .line 186
    :cond_1
    new-instance v1, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 195
    packed-switch p0, :pswitch_data_0

    .line 311
    const/4 v0, 0x0

    return-object v0

    .line 307
    :pswitch_0
    const-string/jumbo v0, "startFingerprintAuthentication"

    return-object v0

    .line 303
    :pswitch_1
    const-string/jumbo v0, "startedEarlyWakingUp"

    return-object v0

    .line 299
    :pswitch_2
    const-string/jumbo v0, "setPendingIntentAfterUnlock"

    return-object v0

    .line 295
    :pswitch_3
    const-string v0, "setDexOccluded"

    return-object v0

    .line 291
    :pswitch_4
    const-string v0, "onSystemKeyPressed"

    return-object v0

    .line 287
    :pswitch_5
    const-string v0, "dismissKeyguardToLaunch"

    return-object v0

    .line 283
    :pswitch_6
    const-string v0, "onShortPowerPressedGoHome"

    return-object v0

    .line 279
    :pswitch_7
    const-string/jumbo v0, "startKeyguardExitAnimation"

    return-object v0

    .line 275
    :pswitch_8
    const-string v0, "onBootCompleted"

    return-object v0

    .line 271
    :pswitch_9
    const-string v0, "setCurrentUser"

    return-object v0

    .line 267
    :pswitch_a
    const-string/jumbo v0, "setSwitchingUser"

    return-object v0

    .line 263
    :pswitch_b
    const-string v0, "doKeyguardTimeout"

    return-object v0

    .line 259
    :pswitch_c
    const-string v0, "onSystemReady"

    return-object v0

    .line 255
    :pswitch_d
    const-string/jumbo v0, "setKeyguardEnabled"

    return-object v0

    .line 251
    :pswitch_e
    const-string v0, "onScreenTurnedOff"

    return-object v0

    .line 247
    :pswitch_f
    const-string v0, "onScreenTurningOff"

    return-object v0

    .line 243
    :pswitch_10
    const-string v0, "onScreenTurnedOn"

    return-object v0

    .line 239
    :pswitch_11
    const-string v0, "onScreenTurningOn"

    return-object v0

    .line 235
    :pswitch_12
    const-string v0, "onFinishedWakingUp"

    return-object v0

    .line 231
    :pswitch_13
    const-string v0, "onStartedWakingUp"

    return-object v0

    .line 227
    :pswitch_14
    const-string v0, "onFinishedGoingToSleep"

    return-object v0

    .line 223
    :pswitch_15
    const-string v0, "onStartedGoingToSleep"

    return-object v0

    .line 219
    :pswitch_16
    const-string v0, "onDreamingStopped"

    return-object v0

    .line 215
    :pswitch_17
    const-string v0, "onDreamingStarted"

    return-object v0

    .line 211
    :pswitch_18
    const-string v0, "dismiss"

    return-object v0

    .line 207
    :pswitch_19
    const-string/jumbo v0, "verifyUnlock"

    return-object v0

    .line 203
    :pswitch_1a
    const-string v0, "addStateMonitorCallback"

    return-object v0

    .line 199
    :pswitch_1b
    const-string/jumbo v0, "setOccluded"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 190
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1004
    const/16 v0, 0x1b

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 318
    invoke-static {p1}, Lcom/android/internal/policy/IKeyguardService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 322
    const-string v0, "com.android.internal.policy.IKeyguardService"

    .line 323
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 324
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 334
    packed-switch p1, :pswitch_data_1

    .line 546
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 330
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 331
    return v1

    .line 541
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->startFingerprintAuthentication()V

    .line 542
    goto/16 :goto_0

    .line 534
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 535
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 536
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->startedEarlyWakingUp(I)V

    .line 537
    goto/16 :goto_0

    .line 524
    .end local v2    # "_arg0":I
    :pswitch_3
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 526
    .local v2, "_arg0":Landroid/app/PendingIntent;
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 527
    .local v3, "_arg1":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 528
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/IKeyguardService$Stub;->setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 529
    goto/16 :goto_0

    .line 514
    .end local v2    # "_arg0":Landroid/app/PendingIntent;
    .end local v3    # "_arg1":Landroid/content/Intent;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 516
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 517
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 518
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/IKeyguardService$Stub;->setDexOccluded(ZZ)V

    .line 519
    goto/16 :goto_0

    .line 506
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Z
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 507
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 508
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->onSystemKeyPressed(I)V

    .line 509
    goto/16 :goto_0

    .line 498
    .end local v2    # "_arg0":I
    :pswitch_6
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 499
    .local v2, "_arg0":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 500
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->dismissKeyguardToLaunch(Landroid/content/Intent;)V

    .line 501
    goto/16 :goto_0

    .line 492
    .end local v2    # "_arg0":Landroid/content/Intent;
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onShortPowerPressedGoHome()V

    .line 493
    goto/16 :goto_0

    .line 483
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 485
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 486
    .local v4, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 487
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/policy/IKeyguardService$Stub;->startKeyguardExitAnimation(JJ)V

    .line 488
    goto/16 :goto_0

    .line 477
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":J
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onBootCompleted()V

    .line 478
    goto/16 :goto_0

    .line 470
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 471
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 472
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->setCurrentUser(I)V

    .line 473
    goto/16 :goto_0

    .line 462
    .end local v2    # "_arg0":I
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 463
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 464
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->setSwitchingUser(Z)V

    .line 465
    goto/16 :goto_0

    .line 454
    .end local v2    # "_arg0":Z
    :pswitch_c
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 455
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 456
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->doKeyguardTimeout(Landroid/os/Bundle;)V

    .line 457
    goto/16 :goto_0

    .line 448
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onSystemReady()V

    .line 449
    goto/16 :goto_0

    .line 441
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 442
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 443
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->setKeyguardEnabled(Z)V

    .line 444
    goto/16 :goto_0

    .line 435
    .end local v2    # "_arg0":Z
    :pswitch_f
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurnedOff()V

    .line 436
    goto/16 :goto_0

    .line 430
    :pswitch_10
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurningOff()V

    .line 431
    goto/16 :goto_0

    .line 425
    :pswitch_11
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurnedOn()V

    .line 426
    goto/16 :goto_0

    .line 418
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IKeyguardDrawnCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDrawnCallback;

    move-result-object v2

    .line 419
    .local v2, "_arg0":Lcom/android/internal/policy/IKeyguardDrawnCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 420
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    .line 421
    goto/16 :goto_0

    .line 412
    .end local v2    # "_arg0":Lcom/android/internal/policy/IKeyguardDrawnCallback;
    :pswitch_13
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onFinishedWakingUp()V

    .line 413
    goto/16 :goto_0

    .line 403
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 405
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 406
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 407
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/IKeyguardService$Stub;->onStartedWakingUp(IZ)V

    .line 408
    goto :goto_0

    .line 393
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 395
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 396
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 397
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/IKeyguardService$Stub;->onFinishedGoingToSleep(IZ)V

    .line 398
    goto :goto_0

    .line 385
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 386
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 387
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->onStartedGoingToSleep(I)V

    .line 388
    goto :goto_0

    .line 379
    .end local v2    # "_arg0":I
    :pswitch_17
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onDreamingStopped()V

    .line 380
    goto :goto_0

    .line 374
    :pswitch_18
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onDreamingStarted()V

    .line 375
    goto :goto_0

    .line 365
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDismissCallback;

    move-result-object v2

    .line 367
    .local v2, "_arg0":Lcom/android/internal/policy/IKeyguardDismissCallback;
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 368
    .local v3, "_arg1":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 369
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/IKeyguardService$Stub;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 370
    goto :goto_0

    .line 357
    .end local v2    # "_arg0":Lcom/android/internal/policy/IKeyguardDismissCallback;
    .end local v3    # "_arg1":Ljava/lang/CharSequence;
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IKeyguardExitCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardExitCallback;

    move-result-object v2

    .line 358
    .local v2, "_arg0":Lcom/android/internal/policy/IKeyguardExitCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 359
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V

    .line 360
    goto :goto_0

    .line 349
    .end local v2    # "_arg0":Lcom/android/internal/policy/IKeyguardExitCallback;
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardStateCallback;

    move-result-object v2

    .line 350
    .local v2, "_arg0":Lcom/android/internal/policy/IKeyguardStateCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 351
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V

    .line 352
    goto :goto_0

    .line 339
    .end local v2    # "_arg0":Lcom/android/internal/policy/IKeyguardStateCallback;
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 341
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 342
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 343
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/IKeyguardService$Stub;->setOccluded(ZZ)V

    .line 344
    nop

    .line 549
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Z
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
