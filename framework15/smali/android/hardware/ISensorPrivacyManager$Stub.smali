.class public abstract Landroid/hardware/ISensorPrivacyManager$Stub;
.super Landroid/os/Binder;
.source "ISensorPrivacyManager.java"

# interfaces
.implements Landroid/hardware/ISensorPrivacyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ISensorPrivacyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ISensorPrivacyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addSensorPrivacyListener:I = 0x2

.field static final blacklist TRANSACTION_addToggleSensorPrivacyListener:I = 0x3

.field static final blacklist TRANSACTION_getCameraPrivacyAllowlist:I = 0xd

.field static final blacklist TRANSACTION_getToggleSensorPrivacyState:I = 0xe

.field static final blacklist TRANSACTION_isCameraPrivacyEnabled:I = 0x11

.field static final blacklist TRANSACTION_isCombinedToggleSensorPrivacyEnabled:I = 0x7

.field static final blacklist TRANSACTION_isSensorPrivacyEnabled:I = 0x6

.field static final blacklist TRANSACTION_isToggleSensorPrivacyEnabled:I = 0x8

.field static final blacklist TRANSACTION_removeSensorPrivacyListener:I = 0x4

.field static final blacklist TRANSACTION_removeToggleSensorPrivacyListener:I = 0x5

.field static final blacklist TRANSACTION_requiresAuthentication:I = 0x14

.field static final blacklist TRANSACTION_setCameraPrivacyAllowlist:I = 0x12

.field static final blacklist TRANSACTION_setSensorPrivacy:I = 0x9

.field static final blacklist TRANSACTION_setToggleSensorPrivacy:I = 0xa

.field static final blacklist TRANSACTION_setToggleSensorPrivacyForProfileGroup:I = 0xb

.field static final blacklist TRANSACTION_setToggleSensorPrivacyForProfileGroupWithConfirmPopup:I = 0xc

.field static final blacklist TRANSACTION_setToggleSensorPrivacyState:I = 0xf

.field static final blacklist TRANSACTION_setToggleSensorPrivacyStateForProfileGroup:I = 0x10

.field static final blacklist TRANSACTION_showSensorUseDialog:I = 0x15

.field static final blacklist TRANSACTION_supportsSensorToggle:I = 0x1

.field static final blacklist TRANSACTION_suppressToggleSensorPrivacyReminders:I = 0x13


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.hardware.ISensorPrivacyManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/ISensorPrivacyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/ISensorPrivacyManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.hardware.ISensorPrivacyManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/ISensorPrivacyManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/hardware/ISensorPrivacyManager;

    return-object v1

    :cond_1
    new-instance v1, Landroid/hardware/ISensorPrivacyManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/ISensorPrivacyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "showSensorUseDialog"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "requiresAuthentication"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "suppressToggleSensorPrivacyReminders"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "setCameraPrivacyAllowlist"

    return-object v0

    :pswitch_4
    const-string v0, "isCameraPrivacyEnabled"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "setToggleSensorPrivacyStateForProfileGroup"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "setToggleSensorPrivacyState"

    return-object v0

    :pswitch_7
    const-string v0, "getToggleSensorPrivacyState"

    return-object v0

    :pswitch_8
    const-string v0, "getCameraPrivacyAllowlist"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "setToggleSensorPrivacyForProfileGroupWithConfirmPopup"

    return-object v0

    :pswitch_a
    const-string/jumbo v0, "setToggleSensorPrivacyForProfileGroup"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "setToggleSensorPrivacy"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "setSensorPrivacy"

    return-object v0

    :pswitch_d
    const-string/jumbo v0, "isToggleSensorPrivacyEnabled"

    return-object v0

    :pswitch_e
    const-string v0, "isCombinedToggleSensorPrivacyEnabled"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "isSensorPrivacyEnabled"

    return-object v0

    :pswitch_10
    const-string/jumbo v0, "removeToggleSensorPrivacyListener"

    return-object v0

    :pswitch_11
    const-string/jumbo v0, "removeSensorPrivacyListener"

    return-object v0

    :pswitch_12
    const-string v0, "addToggleSensorPrivacyListener"

    return-object v0

    :pswitch_13
    const-string v0, "addSensorPrivacyListener"

    return-object v0

    :pswitch_14
    const-string/jumbo v0, "supportsSensorToggle"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    const/16 v0, 0x14

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/hardware/ISensorPrivacyManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p3

    const-string v9, "android.hardware.ISensorPrivacyManager"

    const/4 v10, 0x1

    if-lt v7, v10, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    move-object/from16 v11, p2

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v11, p2

    :goto_0
    const v0, 0x5f4e5446

    if-ne v7, v0, :cond_1

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :cond_1
    packed-switch v7, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/hardware/ISensorPrivacyManager$Stub;->showSensorUseDialog(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/ISensorPrivacyManager$Stub;->requiresAuthentication()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/hardware/ISensorPrivacyManager$Stub;->suppressToggleSensorPrivacyReminders(IILandroid/os/IBinder;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/hardware/ISensorPrivacyManager$Stub;->setCameraPrivacyAllowlist(Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/hardware/ISensorPrivacyManager$Stub;->isCameraPrivacyEnabled(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/hardware/ISensorPrivacyManager$Stub;->setToggleSensorPrivacyStateForProfileGroup(IIII)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/hardware/ISensorPrivacyManager$Stub;->setToggleSensorPrivacyState(IIII)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/hardware/ISensorPrivacyManager$Stub;->getToggleSensorPrivacyState(II)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/ISensorPrivacyManager$Stub;->getCameraPrivacyAllowlist()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/ISensorPrivacyManager$Stub;->setToggleSensorPrivacyForProfileGroupWithConfirmPopup(IIIZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/hardware/ISensorPrivacyManager$Stub;->setToggleSensorPrivacyForProfileGroup(IIIZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/hardware/ISensorPrivacyManager$Stub;->setToggleSensorPrivacy(IIIZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/hardware/ISensorPrivacyManager$Stub;->setSensorPrivacy(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/hardware/ISensorPrivacyManager$Stub;->isToggleSensorPrivacyEnabled(II)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/hardware/ISensorPrivacyManager$Stub;->isCombinedToggleSensorPrivacyEnabled(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_1

    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/ISensorPrivacyManager$Stub;->isSensorPrivacyEnabled()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_1

    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ISensorPrivacyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ISensorPrivacyListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/hardware/ISensorPrivacyManager$Stub;->removeToggleSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ISensorPrivacyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ISensorPrivacyListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/hardware/ISensorPrivacyManager$Stub;->removeSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ISensorPrivacyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ISensorPrivacyListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/hardware/ISensorPrivacyManager$Stub;->addToggleSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ISensorPrivacyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ISensorPrivacyListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/hardware/ISensorPrivacyManager$Stub;->addSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/hardware/ISensorPrivacyManager$Stub;->supportsSensorToggle(II)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    nop

    :goto_1
    return v10

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
