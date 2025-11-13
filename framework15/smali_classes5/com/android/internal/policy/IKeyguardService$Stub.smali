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

.field static final blacklist TRANSACTION_onFinishedBootAnim:I = 0x1c

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

.field static final blacklist TRANSACTION_setCoverOccluded:I = 0x1f

.field static final greylist-max-o TRANSACTION_setCurrentUser:I = 0x13

.field static final blacklist TRANSACTION_setDexOccluded:I = 0x1e

.field static final greylist-max-o TRANSACTION_setKeyguardEnabled:I = 0xf

.field static final greylist-max-o TRANSACTION_setOccluded:I = 0x1

.field static final blacklist TRANSACTION_setPendingIntentAfterUnlock:I = 0x1a

.field static final greylist-max-o TRANSACTION_setSwitchingUser:I = 0x12

.field static final blacklist TRANSACTION_showDismissibleKeyguard:I = 0x19

.field static final blacklist TRANSACTION_startFingerprintAuthentication:I = 0x1b

.field static final greylist-max-o TRANSACTION_startKeyguardExitAnimation:I = 0x15

.field static final blacklist TRANSACTION_startedEarlyWakingUp:I = 0x1d

.field static final greylist-max-o TRANSACTION_verifyUnlock:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.android.internal.policy.IKeyguardService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/policy/IKeyguardService;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/android/internal/policy/IKeyguardService;

    return-object v1

    :cond_1
    new-instance v1, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "setCoverOccluded"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "setDexOccluded"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "startedEarlyWakingUp"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "onFinishedBootAnim"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "startFingerprintAuthentication"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "setPendingIntentAfterUnlock"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "showDismissibleKeyguard"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "onSystemKeyPressed"

    return-object v0

    :pswitch_8
    const-string v0, "dismissKeyguardToLaunch"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "onShortPowerPressedGoHome"

    return-object v0

    :pswitch_a
    const-string/jumbo v0, "startKeyguardExitAnimation"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "onBootCompleted"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "setCurrentUser"

    return-object v0

    :pswitch_d
    const-string/jumbo v0, "setSwitchingUser"

    return-object v0

    :pswitch_e
    const-string v0, "doKeyguardTimeout"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "onSystemReady"

    return-object v0

    :pswitch_10
    const-string/jumbo v0, "setKeyguardEnabled"

    return-object v0

    :pswitch_11
    const-string/jumbo v0, "onScreenTurnedOff"

    return-object v0

    :pswitch_12
    const-string/jumbo v0, "onScreenTurningOff"

    return-object v0

    :pswitch_13
    const-string/jumbo v0, "onScreenTurnedOn"

    return-object v0

    :pswitch_14
    const-string/jumbo v0, "onScreenTurningOn"

    return-object v0

    :pswitch_15
    const-string/jumbo v0, "onFinishedWakingUp"

    return-object v0

    :pswitch_16
    const-string/jumbo v0, "onStartedWakingUp"

    return-object v0

    :pswitch_17
    const-string/jumbo v0, "onFinishedGoingToSleep"

    return-object v0

    :pswitch_18
    const-string/jumbo v0, "onStartedGoingToSleep"

    return-object v0

    :pswitch_19
    const-string/jumbo v0, "onDreamingStopped"

    return-object v0

    :pswitch_1a
    const-string/jumbo v0, "onDreamingStarted"

    return-object v0

    :pswitch_1b
    const-string v0, "dismiss"

    return-object v0

    :pswitch_1c
    const-string/jumbo v0, "verifyUnlock"

    return-object v0

    :pswitch_1d
    const-string v0, "addStateMonitorCallback"

    return-object v0

    :pswitch_1e
    const-string/jumbo v0, "setOccluded"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1d
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/android/internal/policy/IKeyguardService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.android.internal.policy.IKeyguardService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->setCoverOccluded(Z)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->setDexOccluded(Z)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->startedEarlyWakingUp(I)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onFinishedBootAnim()V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->startFingerprintAuthentication()V

    goto/16 :goto_0

    :pswitch_5
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/IKeyguardService$Stub;->setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->showDismissibleKeyguard()V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->onSystemKeyPressed(I)V

    goto/16 :goto_0

    :pswitch_8
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->dismissKeyguardToLaunch(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onShortPowerPressedGoHome()V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/policy/IKeyguardService$Stub;->startKeyguardExitAnimation(JJ)V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onBootCompleted()V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->setCurrentUser(I)V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->setSwitchingUser(Z)V

    goto/16 :goto_0

    :pswitch_e
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->doKeyguardTimeout(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onSystemReady()V

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->setKeyguardEnabled(Z)V

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurnedOff()V

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurningOff()V

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurnedOn()V

    goto/16 :goto_0

    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IKeyguardDrawnCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDrawnCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    goto/16 :goto_0

    :pswitch_15
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onFinishedWakingUp()V

    goto/16 :goto_0

    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/IKeyguardService$Stub;->onStartedWakingUp(IZ)V

    goto :goto_0

    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/IKeyguardService$Stub;->onFinishedGoingToSleep(IZ)V

    goto :goto_0

    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->onStartedGoingToSleep(I)V

    goto :goto_0

    :pswitch_19
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onDreamingStopped()V

    goto :goto_0

    :pswitch_1a
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onDreamingStarted()V

    goto :goto_0

    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDismissCallback;

    move-result-object v2

    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/IKeyguardService$Stub;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IKeyguardExitCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardExitCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V

    goto :goto_0

    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardStateCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V

    goto :goto_0

    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/IKeyguardService$Stub;->setOccluded(ZZ)V

    nop

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1d
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
        :pswitch_0
    .end packed-switch
.end method
