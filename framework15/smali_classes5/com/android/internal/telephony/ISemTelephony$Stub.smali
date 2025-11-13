.class public abstract Lcom/android/internal/telephony/ISemTelephony$Stub;
.super Landroid/os/Binder;
.source "ISemTelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/ISemTelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ISemTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ISemTelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_NSRI_requestProc:I = 0x3e

.field static final blacklist TRANSACTION_changeIccSimPersoPassword:I = 0x2b

.field static final blacklist TRANSACTION_changeIccSimPersoPasswordForSubId:I = 0x2c

.field static final blacklist TRANSACTION_checkCallControl:I = 0x32

.field static final blacklist TRANSACTION_checkNSRIUSIMstate_int:I = 0x3d

.field static final blacklist TRANSACTION_dialForSubscriber:I = 0x5

.field static final blacklist TRANSACTION_getActivationDay:I = 0xf

.field static final blacklist TRANSACTION_getAllCellInfoBySubId:I = 0x3

.field static final blacklist TRANSACTION_getAllCellInfoForPhone:I = 0x4

.field static final blacklist TRANSACTION_getAtr:I = 0x31

.field static final blacklist TRANSACTION_getCdmaMinForOtasp:I = 0x30

.field static final blacklist TRANSACTION_getCellLocationBySubId:I = 0x1

.field static final blacklist TRANSACTION_getCellLocationForPhone:I = 0x2

.field static final blacklist TRANSACTION_getCurrentUATI:I = 0x41

.field static final blacklist TRANSACTION_getDataRoamingEnabled:I = 0x3f

.field static final blacklist TRANSACTION_getDisable2g:I = 0xa

.field static final blacklist TRANSACTION_getEuimid:I = 0x2f

.field static final blacklist TRANSACTION_getFDNavailable:I = 0x33

.field static final blacklist TRANSACTION_getIccUsimPersoEnabled:I = 0x29

.field static final blacklist TRANSACTION_getIccUsimPersoEnabledForSubId:I = 0x2a

.field static final blacklist TRANSACTION_getIpAddressFromLinkProp:I = 0x43

.field static final blacklist TRANSACTION_getLastNetworkCountryIsoForPhone:I = 0x46

.field static final blacklist TRANSACTION_getLteCsCapa:I = 0x12

.field static final blacklist TRANSACTION_getMobileQualityInformation:I = 0x42

.field static final blacklist TRANSACTION_getNetworkStatusDisplayOption:I = 0x10

.field static final blacklist TRANSACTION_getNextRetryTime:I = 0x45

.field static final blacklist TRANSACTION_getNrMode:I = 0x15

.field static final blacklist TRANSACTION_getNtnSmsSupported:I = 0x1f

.field static final blacklist TRANSACTION_getSatelliteImei:I = 0x38

.field static final blacklist TRANSACTION_getSdnAvailable:I = 0x21

.field static final blacklist TRANSACTION_getSecondaryImei:I = 0x37

.field static final blacklist TRANSACTION_getSimPinRetryForSubscriber:I = 0x27

.field static final blacklist TRANSACTION_getSimPukRetryForSubscriber:I = 0x28

.field static final blacklist TRANSACTION_getSupportUacType:I = 0x1a

.field static final blacklist TRANSACTION_getSupportedNrca:I = 0x18

.field static final blacklist TRANSACTION_getUaUap:I = 0x39

.field static final blacklist TRANSACTION_getVendorConfigState:I = 0x1b

.field static final blacklist TRANSACTION_getVoNRMode:I = 0x17

.field static final blacklist TRANSACTION_invokeOemRilRequestRawForPhone:I = 0x34

.field static final blacklist TRANSACTION_invokeOemRilRequestRawForSubscriber:I = 0x35

.field static final blacklist TRANSACTION_isEmergencyNumberBySubId:I = 0x6

.field static final blacklist TRANSACTION_isMmiForSubscriber:I = 0x11

.field static final blacklist TRANSACTION_isSimFDNEnabledForSubscriber:I = 0x26

.field static final blacklist TRANSACTION_isSupportLteCapaOptionC:I = 0x19

.field static final blacklist TRANSACTION_isVideoCall:I = 0x9

.field static final blacklist TRANSACTION_reloadTestEmergencyNumber:I = 0x7

.field static final blacklist TRANSACTION_requestModemActivityInfo:I = 0x1c

.field static final blacklist TRANSACTION_resetNetworkSettings:I = 0x20

.field static final blacklist TRANSACTION_semGetSatelliteState:I = 0x1e

.field static final blacklist TRANSACTION_semRequestSatelliteMode:I = 0x1d

.field static final blacklist TRANSACTION_sendRequestToRIL:I = 0x22

.field static final blacklist TRANSACTION_sendVolteState:I = 0x13

.field static final blacklist TRANSACTION_setAllowDataDuringCall:I = 0x8

.field static final blacklist TRANSACTION_setDisable2g:I = 0xb

.field static final blacklist TRANSACTION_setEPSLOCI:I = 0x25

.field static final blacklist TRANSACTION_setGbaBootstrappingParams:I = 0x40

.field static final blacklist TRANSACTION_setIccSimPersoEnabled:I = 0x2d

.field static final blacklist TRANSACTION_setIccSimPersoEnabledForSubId:I = 0x2e

.field static final blacklist TRANSACTION_setNrMode:I = 0x14

.field static final blacklist TRANSACTION_setSimOnOffForSlot:I = 0x36

.field static final blacklist TRANSACTION_setTransmitPowerExt:I = 0xe

.field static final blacklist TRANSACTION_setTransmitPowerWithDSI:I = 0xd

.field static final blacklist TRANSACTION_setTransmitPowerWithFlag:I = 0xc

.field static final blacklist TRANSACTION_setVoNRMode:I = 0x16

.field static final blacklist TRANSACTION_simCheck:I = 0x44

.field static final blacklist TRANSACTION_sms_NSRI_decryptsms:I = 0x3b

.field static final blacklist TRANSACTION_sms_NSRI_decryptsmsintxside:I = 0x3c

.field static final blacklist TRANSACTION_sms_NSRI_encryptsms:I = 0x3a

.field static final blacklist TRANSACTION_supplyPerso:I = 0x23

.field static final blacklist TRANSACTION_supplyPersoForSubId:I = 0x24


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.telephony.ISemTelephony"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISemTelephony;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.android.internal.telephony.ISemTelephony"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ISemTelephony;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/ISemTelephony;

    return-object v1

    :cond_1
    new-instance v1, Lcom/android/internal/telephony/ISemTelephony$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ISemTelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "getLastNetworkCountryIsoForPhone"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "getNextRetryTime"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "simCheck"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "getIpAddressFromLinkProp"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "getMobileQualityInformation"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "getCurrentUATI"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "setGbaBootstrappingParams"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "getDataRoamingEnabled"

    return-object v0

    :pswitch_8
    const-string v0, "NSRI_requestProc"

    return-object v0

    :pswitch_9
    const-string v0, "checkNSRIUSIMstate_int"

    return-object v0

    :pswitch_a
    const-string/jumbo v0, "sms_NSRI_decryptsmsintxside"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "sms_NSRI_decryptsms"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "sms_NSRI_encryptsms"

    return-object v0

    :pswitch_d
    const-string/jumbo v0, "getUaUap"

    return-object v0

    :pswitch_e
    const-string/jumbo v0, "getSatelliteImei"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "getSecondaryImei"

    return-object v0

    :pswitch_10
    const-string/jumbo v0, "setSimOnOffForSlot"

    return-object v0

    :pswitch_11
    const-string/jumbo v0, "invokeOemRilRequestRawForSubscriber"

    return-object v0

    :pswitch_12
    const-string/jumbo v0, "invokeOemRilRequestRawForPhone"

    return-object v0

    :pswitch_13
    const-string/jumbo v0, "getFDNavailable"

    return-object v0

    :pswitch_14
    const-string v0, "checkCallControl"

    return-object v0

    :pswitch_15
    const-string/jumbo v0, "getAtr"

    return-object v0

    :pswitch_16
    const-string/jumbo v0, "getCdmaMinForOtasp"

    return-object v0

    :pswitch_17
    const-string/jumbo v0, "getEuimid"

    return-object v0

    :pswitch_18
    const-string/jumbo v0, "setIccSimPersoEnabledForSubId"

    return-object v0

    :pswitch_19
    const-string/jumbo v0, "setIccSimPersoEnabled"

    return-object v0

    :pswitch_1a
    const-string v0, "changeIccSimPersoPasswordForSubId"

    return-object v0

    :pswitch_1b
    const-string v0, "changeIccSimPersoPassword"

    return-object v0

    :pswitch_1c
    const-string/jumbo v0, "getIccUsimPersoEnabledForSubId"

    return-object v0

    :pswitch_1d
    const-string/jumbo v0, "getIccUsimPersoEnabled"

    return-object v0

    :pswitch_1e
    const-string/jumbo v0, "getSimPukRetryForSubscriber"

    return-object v0

    :pswitch_1f
    const-string/jumbo v0, "getSimPinRetryForSubscriber"

    return-object v0

    :pswitch_20
    const-string/jumbo v0, "isSimFDNEnabledForSubscriber"

    return-object v0

    :pswitch_21
    const-string/jumbo v0, "setEPSLOCI"

    return-object v0

    :pswitch_22
    const-string/jumbo v0, "supplyPersoForSubId"

    return-object v0

    :pswitch_23
    const-string/jumbo v0, "supplyPerso"

    return-object v0

    :pswitch_24
    const-string/jumbo v0, "sendRequestToRIL"

    return-object v0

    :pswitch_25
    const-string/jumbo v0, "getSdnAvailable"

    return-object v0

    :pswitch_26
    const-string/jumbo v0, "resetNetworkSettings"

    return-object v0

    :pswitch_27
    const-string/jumbo v0, "getNtnSmsSupported"

    return-object v0

    :pswitch_28
    const-string/jumbo v0, "semGetSatelliteState"

    return-object v0

    :pswitch_29
    const-string/jumbo v0, "semRequestSatelliteMode"

    return-object v0

    :pswitch_2a
    const-string/jumbo v0, "requestModemActivityInfo"

    return-object v0

    :pswitch_2b
    const-string/jumbo v0, "getVendorConfigState"

    return-object v0

    :pswitch_2c
    const-string/jumbo v0, "getSupportUacType"

    return-object v0

    :pswitch_2d
    const-string/jumbo v0, "isSupportLteCapaOptionC"

    return-object v0

    :pswitch_2e
    const-string/jumbo v0, "getSupportedNrca"

    return-object v0

    :pswitch_2f
    const-string/jumbo v0, "getVoNRMode"

    return-object v0

    :pswitch_30
    const-string/jumbo v0, "setVoNRMode"

    return-object v0

    :pswitch_31
    const-string/jumbo v0, "getNrMode"

    return-object v0

    :pswitch_32
    const-string/jumbo v0, "setNrMode"

    return-object v0

    :pswitch_33
    const-string/jumbo v0, "sendVolteState"

    return-object v0

    :pswitch_34
    const-string/jumbo v0, "getLteCsCapa"

    return-object v0

    :pswitch_35
    const-string/jumbo v0, "isMmiForSubscriber"

    return-object v0

    :pswitch_36
    const-string/jumbo v0, "getNetworkStatusDisplayOption"

    return-object v0

    :pswitch_37
    const-string/jumbo v0, "getActivationDay"

    return-object v0

    :pswitch_38
    const-string/jumbo v0, "setTransmitPowerExt"

    return-object v0

    :pswitch_39
    const-string/jumbo v0, "setTransmitPowerWithDSI"

    return-object v0

    :pswitch_3a
    const-string/jumbo v0, "setTransmitPowerWithFlag"

    return-object v0

    :pswitch_3b
    const-string/jumbo v0, "setDisable2g"

    return-object v0

    :pswitch_3c
    const-string/jumbo v0, "getDisable2g"

    return-object v0

    :pswitch_3d
    const-string/jumbo v0, "isVideoCall"

    return-object v0

    :pswitch_3e
    const-string/jumbo v0, "setAllowDataDuringCall"

    return-object v0

    :pswitch_3f
    const-string/jumbo v0, "reloadTestEmergencyNumber"

    return-object v0

    :pswitch_40
    const-string/jumbo v0, "isEmergencyNumberBySubId"

    return-object v0

    :pswitch_41
    const-string v0, "dialForSubscriber"

    return-object v0

    :pswitch_42
    const-string/jumbo v0, "getAllCellInfoForPhone"

    return-object v0

    :pswitch_43
    const-string/jumbo v0, "getAllCellInfoBySubId"

    return-object v0

    :pswitch_44
    const-string/jumbo v0, "getCellLocationForPhone"

    return-object v0

    :pswitch_45
    const-string/jumbo v0, "getCellLocationBySubId"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
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

    const/16 v0, 0x45

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.android.internal.telephony.ISemTelephony"

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

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getLastNetworkCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getNextRetryTime()J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->simCheck(I)[B

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getIpAddressFromLinkProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getMobileQualityInformation(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getCurrentUATI()[B

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telephony/ISemTelephony$Stub;->setGbaBootstrappingParams(I[BLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getDataRoamingEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_2

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->NSRI_requestProc(I[B)[B

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->checkNSRIUSIMstate_int()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ISemTelephony$Stub;->sms_NSRI_decryptsmsintxside(ILjava/lang/String;[B)[B

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_2

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->sms_NSRI_decryptsms(I[B)[B

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ISemTelephony$Stub;->sms_NSRI_encryptsms(ILjava/lang/String;[B)[B

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getUaUap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getSatelliteImei(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getSecondaryImei(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->setSimOnOffForSlot(II)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_2

    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-gez v4, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    new-array v5, v4, [B

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v5}, Lcom/android/internal/telephony/ISemTelephony$Stub;->invokeOemRilRequestRawForSubscriber(I[B[B)I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_2

    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-gez v4, :cond_3

    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    new-array v5, v4, [B

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v5}, Lcom/android/internal/telephony/ISemTelephony$Stub;->invokeOemRilRequestRawForPhone(I[B[B)I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_2

    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getFDNavailable(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_2

    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->checkCallControl(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getAtr(I)[B

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_2

    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getCdmaMinForOtasp(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_17
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getEuimid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ISemTelephony$Stub;->setIccSimPersoEnabledForSubId(IZLjava/lang/String;)Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_2

    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->setIccSimPersoEnabled(ZLjava/lang/String;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_2

    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ISemTelephony$Stub;->changeIccSimPersoPasswordForSubId(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_2

    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->changeIccSimPersoPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_2

    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getIccUsimPersoEnabledForSubId(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_2

    :pswitch_1d
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getIccUsimPersoEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_2

    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getSimPukRetryForSubscriber(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getSimPinRetryForSubscriber(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->isSimFDNEnabledForSubscriber(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_2

    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->setEPSLOCI([B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->supplyPersoForSubId(ILjava/lang/String;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_2

    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->supplyPerso(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_2

    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telephony/ISemTelephony$Stub;->sendRequestToRIL([B[BII)I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_2

    :pswitch_25
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getSdnAvailable()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_2

    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->resetNetworkSettings(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :pswitch_27
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getNtnSmsSupported()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_2

    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->semGetSatelliteState(I)Landroid/telephony/satellite/SemSatelliteState;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_2

    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ISemTelephony$Stub;->semRequestSatelliteMode(IZLcom/android/internal/telephony/IIntegerConsumer;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :pswitch_2a
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->requestModemActivityInfo(Landroid/os/ResultReceiver;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getVendorConfigState(I)Landroid/telephony/VendorConfigurationState;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_2

    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getSupportUacType(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->isSupportLteCapaOptionC(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_2

    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getSupportedNrca(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_2

    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getVoNRMode(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->setVoNRMode(II)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_2

    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getNrMode(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telephony/ISemTelephony$Stub;->setNrMode(IIZLjava/lang/String;)Z

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_2

    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->sendVolteState(IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getLteCsCapa(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->isMmiForSubscriber(ILjava/lang/String;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_2

    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getNetworkStatusDisplayOption(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getActivationDay(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ISemTelephony$Stub;->setTransmitPowerExt(JZ)Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_2

    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->setTransmitPowerWithDSI(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_2

    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->setTransmitPowerWithFlag(IZ)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_2

    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->setDisable2g(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_2

    :pswitch_3c
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getDisable2g()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    :pswitch_3d
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->isVideoCall()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_2

    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->setAllowDataDuringCall(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :pswitch_3f
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->reloadTestEmergencyNumber()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ISemTelephony$Stub;->isEmergencyNumberBySubId(ILjava/lang/String;Z)Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_2

    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->dialForSubscriber(ILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getAllCellInfoForPhone(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto :goto_2

    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getAllCellInfoBySubId(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto :goto_2

    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getCellLocationForPhone(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_2

    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getCellLocationBySubId(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    nop

    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
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
