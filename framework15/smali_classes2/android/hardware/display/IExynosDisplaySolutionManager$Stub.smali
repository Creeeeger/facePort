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

.field static final blacklist TRANSACTION_setColorEnhancementSettingValue:I = 0x3

.field static final blacklist TRANSACTION_setColorTempSettingOn:I = 0x5

.field static final blacklist TRANSACTION_setColorTempSettingValue:I = 0x4

.field static final blacklist TRANSACTION_setDisplayFeature:I = 0x1

.field static final blacklist TRANSACTION_setEdgeSharpnessSettingOn:I = 0x11

.field static final blacklist TRANSACTION_setEdgeSharpnessSettingValue:I = 0x10

.field static final blacklist TRANSACTION_setEyeTempSettingOn:I = 0x7

.field static final blacklist TRANSACTION_setEyeTempSettingValue:I = 0x6

.field static final blacklist TRANSACTION_setHsvGainSettingOn:I = 0xe

.field static final blacklist TRANSACTION_setHsvGainSettingValue:I = 0xd

.field static final blacklist TRANSACTION_setRgbGainSettingOn:I = 0x9

.field static final blacklist TRANSACTION_setRgbGainSettingValue:I = 0x8

.field static final blacklist TRANSACTION_setRgbWeightSettingOn:I = 0xb

.field static final blacklist TRANSACTION_setRgbWeightSettingValue:I = 0xa

.field static final blacklist TRANSACTION_setSkinColorSettingOn:I = 0xc

.field static final blacklist TRANSACTION_setWhitePointColorSettingOn:I = 0xf


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.hardware.display.IExynosDisplaySolutionManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IExynosDisplaySolutionManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.hardware.display.IExynosDisplaySolutionManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/display/IExynosDisplaySolutionManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/hardware/display/IExynosDisplaySolutionManager;

    return-object v1

    :cond_1
    new-instance v1, Landroid/hardware/display/IExynosDisplaySolutionManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/display/IExynosDisplaySolutionManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "setEdgeSharpnessSettingOn"

    return-object v0

    :pswitch_1
    const-string v0, "setEdgeSharpnessSettingValue"

    return-object v0

    :pswitch_2
    const-string v0, "setWhitePointColorSettingOn"

    return-object v0

    :pswitch_3
    const-string v0, "setHsvGainSettingOn"

    return-object v0

    :pswitch_4
    const-string v0, "setHsvGainSettingValue"

    return-object v0

    :pswitch_5
    const-string v0, "setSkinColorSettingOn"

    return-object v0

    :pswitch_6
    const-string v0, "setRgbWeightSettingOn"

    return-object v0

    :pswitch_7
    const-string v0, "setRgbWeightSettingValue"

    return-object v0

    :pswitch_8
    const-string v0, "setRgbGainSettingOn"

    return-object v0

    :pswitch_9
    const-string v0, "setRgbGainSettingValue"

    return-object v0

    :pswitch_a
    const-string v0, "setEyeTempSettingOn"

    return-object v0

    :pswitch_b
    const-string v0, "setEyeTempSettingValue"

    return-object v0

    :pswitch_c
    const-string v0, "setColorTempSettingOn"

    return-object v0

    :pswitch_d
    const-string v0, "setColorTempSettingValue"

    return-object v0

    :pswitch_e
    const-string v0, "setColorEnhancementSettingValue"

    return-object v0

    :pswitch_f
    const-string v0, "getColorEnhancementMode"

    return-object v0

    :pswitch_10
    const-string v0, "setDisplayFeature"

    return-object v0

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

    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.hardware.display.IExynosDisplaySolutionManager"

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;->setEdgeSharpnessSettingOn(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;->setEdgeSharpnessSettingValue(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;->setWhitePointColorSettingOn(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;->setHsvGainSettingOn(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;->setHsvGainSettingValue(III)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;->setSkinColorSettingOn(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;->setRgbWeightSettingOn(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;->setRgbWeightSettingValue(FFF)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;->setRgbGainSettingOn(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;->setRgbGainSettingValue(III)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;->setEyeTempSettingOn(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;->setEyeTempSettingValue(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;->setColorTempSettingOn(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;->setColorTempSettingValue(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;->setColorEnhancementSettingValue(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_f
    invoke-virtual {p0}, Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;->getColorEnhancementMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;->setDisplayFeature(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_0
    return v1

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
