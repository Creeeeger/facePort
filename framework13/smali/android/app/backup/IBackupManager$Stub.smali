.class public abstract Landroid/app/backup/IBackupManager$Stub;
.super Landroid/os/Binder;
.source "IBackupManager.java"

# interfaces
.implements Landroid/app/backup/IBackupManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/IBackupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/IBackupManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.backup.IBackupManager"

.field static final greylist-max-o TRANSACTION_acknowledgeFullBackupOrRestore:I = 0x1b

.field static final blacklist TRANSACTION_acknowledgeFullBackupOrRestoreForUser:I = 0x1a

.field static final greylist-max-o TRANSACTION_adbBackup:I = 0x16

.field static final greylist-max-o TRANSACTION_adbRestore:I = 0x19

.field static final greylist-max-o TRANSACTION_agentConnected:I = 0x7

.field static final blacklist TRANSACTION_agentConnectedForUser:I = 0x6

.field static final greylist-max-o TRANSACTION_agentDisconnected:I = 0x9

.field static final blacklist TRANSACTION_agentDisconnectedForUser:I = 0x8

.field static final greylist-max-o TRANSACTION_backupNow:I = 0x15

.field static final blacklist TRANSACTION_backupNowForUser:I = 0x14

.field static final blacklist TRANSACTION_beginRestoreSessionForUser:I = 0x2e

.field static final greylist-max-o TRANSACTION_cancelBackups:I = 0x3a

.field static final blacklist TRANSACTION_cancelBackupsForUser:I = 0x39

.field static final greylist-max-o TRANSACTION_clearBackupData:I = 0x4

.field static final blacklist TRANSACTION_clearBackupDataForUser:I = 0x3

.field static final greylist-max-o TRANSACTION_dataChanged:I = 0x2

.field static final blacklist TRANSACTION_dataChangedForUser:I = 0x1

.field static final blacklist TRANSACTION_excludeKeysFromRestore:I = 0x45

.field static final blacklist TRANSACTION_filterAppsEligibleForBackupForUser:I = 0x36

.field static final blacklist TRANSACTION_fullBackupCustomized:I = 0x3b

.field static final blacklist TRANSACTION_fullRestoreCustomized:I = 0x18

.field static final blacklist TRANSACTION_fullTransportBackupForUser:I = 0x17

.field static final blacklist TRANSACTION_getAvailableRestoreTokenForUser:I = 0x34

.field static final greylist-max-o TRANSACTION_getConfigurationIntent:I = 0x28

.field static final blacklist TRANSACTION_getConfigurationIntentForUser:I = 0x27

.field static final greylist-max-o TRANSACTION_getCurrentTransport:I = 0x1e

.field static final blacklist TRANSACTION_getCurrentTransportComponentForUser:I = 0x1f

.field static final blacklist TRANSACTION_getCurrentTransportForUser:I = 0x1d

.field static final greylist-max-o TRANSACTION_getDataManagementIntent:I = 0x2c

.field static final blacklist TRANSACTION_getDataManagementIntentForUser:I = 0x2b

.field static final blacklist TRANSACTION_getDataManagementLabelForUser:I = 0x2d

.field static final greylist-max-o TRANSACTION_getDestinationString:I = 0x2a

.field static final blacklist TRANSACTION_getDestinationStringForUser:I = 0x29

.field static final greylist-max-o TRANSACTION_getTransportWhitelist:I = 0x23

.field static final blacklist TRANSACTION_getUserForAncestralSerialNumber:I = 0x3c

.field static final greylist-max-o TRANSACTION_hasBackupPassword:I = 0x13

.field static final blacklist TRANSACTION_initializeTransportsForUser:I = 0x5

.field static final blacklist TRANSACTION_isAppEligibleForBackupForUser:I = 0x35

.field static final greylist-max-o TRANSACTION_isBackupEnabled:I = 0x11

.field static final blacklist TRANSACTION_isBackupEnabledForUser:I = 0x10

.field static final greylist-max-o TRANSACTION_isBackupServiceActive:I = 0x32

.field static final blacklist TRANSACTION_isSubUserSupported:I = 0x3e

.field static final blacklist TRANSACTION_isUserReadyForBackup:I = 0x33

.field static final blacklist TRANSACTION_listAllTransportComponentsForUser:I = 0x22

.field static final greylist-max-o TRANSACTION_listAllTransports:I = 0x21

.field static final blacklist TRANSACTION_listAllTransportsForUser:I = 0x20

.field static final greylist-max-o TRANSACTION_opComplete:I = 0x30

.field static final blacklist TRANSACTION_opCompleteForUser:I = 0x2f

.field static final greylist-max-o TRANSACTION_requestBackup:I = 0x38

.field static final blacklist TRANSACTION_requestBackupForUser:I = 0x37

.field static final greylist-max-o TRANSACTION_restoreAtInstall:I = 0xb

.field static final blacklist TRANSACTION_restoreAtInstallForUser:I = 0xa

.field static final greylist-max-o TRANSACTION_selectBackupTransport:I = 0x25

.field static final blacklist TRANSACTION_selectBackupTransportAsyncForUser:I = 0x26

.field static final blacklist TRANSACTION_selectBackupTransportForUser:I = 0x24

.field static final blacklist TRANSACTION_semBackupPackage:I = 0x3f

.field static final blacklist TRANSACTION_semBackupPackagePath:I = 0x40

.field static final blacklist TRANSACTION_semIsBackupEnabled:I = 0x42

.field static final blacklist TRANSACTION_semRestorePackage:I = 0x41

.field static final blacklist TRANSACTION_semSetAutoRestoreEnabled:I = 0x44

.field static final blacklist TRANSACTION_semSetBackupEnabled:I = 0x43

.field static final blacklist TRANSACTION_setAncestralSerialNumber:I = 0x3d

.field static final greylist-max-o TRANSACTION_setAutoRestore:I = 0xf

.field static final blacklist TRANSACTION_setAutoRestoreForUser:I = 0xe

.field static final greylist-max-o TRANSACTION_setBackupEnabled:I = 0xd

.field static final blacklist TRANSACTION_setBackupEnabledForUser:I = 0xc

.field static final greylist-max-o TRANSACTION_setBackupPassword:I = 0x12

.field static final greylist-max-o TRANSACTION_setBackupServiceActive:I = 0x31

.field static final blacklist TRANSACTION_updateTransportAttributesForUser:I = 0x1c


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 876
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 877
    const-string v0, "android.app.backup.IBackupManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/backup/IBackupManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 878
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 885
    if-nez p0, :cond_0

    .line 886
    const/4 v0, 0x0

    return-object v0

    .line 888
    :cond_0
    const-string v0, "android.app.backup.IBackupManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 889
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_1

    .line 890
    move-object v1, v0

    check-cast v1, Landroid/app/backup/IBackupManager;

    return-object v1

    .line 892
    :cond_1
    new-instance v1, Landroid/app/backup/IBackupManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/backup/IBackupManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 901
    packed-switch p0, :pswitch_data_0

    .line 1181
    const/4 v0, 0x0

    return-object v0

    .line 1177
    :pswitch_0
    const-string v0, "excludeKeysFromRestore"

    return-object v0

    .line 1173
    :pswitch_1
    const-string/jumbo v0, "semSetAutoRestoreEnabled"

    return-object v0

    .line 1169
    :pswitch_2
    const-string/jumbo v0, "semSetBackupEnabled"

    return-object v0

    .line 1165
    :pswitch_3
    const-string/jumbo v0, "semIsBackupEnabled"

    return-object v0

    .line 1161
    :pswitch_4
    const-string/jumbo v0, "semRestorePackage"

    return-object v0

    .line 1157
    :pswitch_5
    const-string/jumbo v0, "semBackupPackagePath"

    return-object v0

    .line 1153
    :pswitch_6
    const-string/jumbo v0, "semBackupPackage"

    return-object v0

    .line 1149
    :pswitch_7
    const-string v0, "isSubUserSupported"

    return-object v0

    .line 1145
    :pswitch_8
    const-string/jumbo v0, "setAncestralSerialNumber"

    return-object v0

    .line 1141
    :pswitch_9
    const-string v0, "getUserForAncestralSerialNumber"

    return-object v0

    .line 1137
    :pswitch_a
    const-string v0, "fullBackupCustomized"

    return-object v0

    .line 1133
    :pswitch_b
    const-string v0, "cancelBackups"

    return-object v0

    .line 1129
    :pswitch_c
    const-string v0, "cancelBackupsForUser"

    return-object v0

    .line 1125
    :pswitch_d
    const-string/jumbo v0, "requestBackup"

    return-object v0

    .line 1121
    :pswitch_e
    const-string/jumbo v0, "requestBackupForUser"

    return-object v0

    .line 1117
    :pswitch_f
    const-string v0, "filterAppsEligibleForBackupForUser"

    return-object v0

    .line 1113
    :pswitch_10
    const-string v0, "isAppEligibleForBackupForUser"

    return-object v0

    .line 1109
    :pswitch_11
    const-string v0, "getAvailableRestoreTokenForUser"

    return-object v0

    .line 1105
    :pswitch_12
    const-string v0, "isUserReadyForBackup"

    return-object v0

    .line 1101
    :pswitch_13
    const-string v0, "isBackupServiceActive"

    return-object v0

    .line 1097
    :pswitch_14
    const-string/jumbo v0, "setBackupServiceActive"

    return-object v0

    .line 1093
    :pswitch_15
    const-string/jumbo v0, "opComplete"

    return-object v0

    .line 1089
    :pswitch_16
    const-string/jumbo v0, "opCompleteForUser"

    return-object v0

    .line 1085
    :pswitch_17
    const-string v0, "beginRestoreSessionForUser"

    return-object v0

    .line 1081
    :pswitch_18
    const-string v0, "getDataManagementLabelForUser"

    return-object v0

    .line 1077
    :pswitch_19
    const-string v0, "getDataManagementIntent"

    return-object v0

    .line 1073
    :pswitch_1a
    const-string v0, "getDataManagementIntentForUser"

    return-object v0

    .line 1069
    :pswitch_1b
    const-string v0, "getDestinationString"

    return-object v0

    .line 1065
    :pswitch_1c
    const-string v0, "getDestinationStringForUser"

    return-object v0

    .line 1061
    :pswitch_1d
    const-string v0, "getConfigurationIntent"

    return-object v0

    .line 1057
    :pswitch_1e
    const-string v0, "getConfigurationIntentForUser"

    return-object v0

    .line 1053
    :pswitch_1f
    const-string/jumbo v0, "selectBackupTransportAsyncForUser"

    return-object v0

    .line 1049
    :pswitch_20
    const-string/jumbo v0, "selectBackupTransport"

    return-object v0

    .line 1045
    :pswitch_21
    const-string/jumbo v0, "selectBackupTransportForUser"

    return-object v0

    .line 1041
    :pswitch_22
    const-string v0, "getTransportWhitelist"

    return-object v0

    .line 1037
    :pswitch_23
    const-string v0, "listAllTransportComponentsForUser"

    return-object v0

    .line 1033
    :pswitch_24
    const-string v0, "listAllTransports"

    return-object v0

    .line 1029
    :pswitch_25
    const-string v0, "listAllTransportsForUser"

    return-object v0

    .line 1025
    :pswitch_26
    const-string v0, "getCurrentTransportComponentForUser"

    return-object v0

    .line 1021
    :pswitch_27
    const-string v0, "getCurrentTransport"

    return-object v0

    .line 1017
    :pswitch_28
    const-string v0, "getCurrentTransportForUser"

    return-object v0

    .line 1013
    :pswitch_29
    const-string/jumbo v0, "updateTransportAttributesForUser"

    return-object v0

    .line 1009
    :pswitch_2a
    const-string v0, "acknowledgeFullBackupOrRestore"

    return-object v0

    .line 1005
    :pswitch_2b
    const-string v0, "acknowledgeFullBackupOrRestoreForUser"

    return-object v0

    .line 1001
    :pswitch_2c
    const-string v0, "adbRestore"

    return-object v0

    .line 997
    :pswitch_2d
    const-string v0, "fullRestoreCustomized"

    return-object v0

    .line 993
    :pswitch_2e
    const-string v0, "fullTransportBackupForUser"

    return-object v0

    .line 989
    :pswitch_2f
    const-string v0, "adbBackup"

    return-object v0

    .line 985
    :pswitch_30
    const-string v0, "backupNow"

    return-object v0

    .line 981
    :pswitch_31
    const-string v0, "backupNowForUser"

    return-object v0

    .line 977
    :pswitch_32
    const-string v0, "hasBackupPassword"

    return-object v0

    .line 973
    :pswitch_33
    const-string/jumbo v0, "setBackupPassword"

    return-object v0

    .line 969
    :pswitch_34
    const-string v0, "isBackupEnabled"

    return-object v0

    .line 965
    :pswitch_35
    const-string v0, "isBackupEnabledForUser"

    return-object v0

    .line 961
    :pswitch_36
    const-string/jumbo v0, "setAutoRestore"

    return-object v0

    .line 957
    :pswitch_37
    const-string/jumbo v0, "setAutoRestoreForUser"

    return-object v0

    .line 953
    :pswitch_38
    const-string/jumbo v0, "setBackupEnabled"

    return-object v0

    .line 949
    :pswitch_39
    const-string/jumbo v0, "setBackupEnabledForUser"

    return-object v0

    .line 945
    :pswitch_3a
    const-string/jumbo v0, "restoreAtInstall"

    return-object v0

    .line 941
    :pswitch_3b
    const-string/jumbo v0, "restoreAtInstallForUser"

    return-object v0

    .line 937
    :pswitch_3c
    const-string v0, "agentDisconnected"

    return-object v0

    .line 933
    :pswitch_3d
    const-string v0, "agentDisconnectedForUser"

    return-object v0

    .line 929
    :pswitch_3e
    const-string v0, "agentConnected"

    return-object v0

    .line 925
    :pswitch_3f
    const-string v0, "agentConnectedForUser"

    return-object v0

    .line 921
    :pswitch_40
    const-string v0, "initializeTransportsForUser"

    return-object v0

    .line 917
    :pswitch_41
    const-string v0, "clearBackupData"

    return-object v0

    .line 913
    :pswitch_42
    const-string v0, "clearBackupDataForUser"

    return-object v0

    .line 909
    :pswitch_43
    const-string v0, "dataChanged"

    return-object v0

    .line 905
    :pswitch_44
    const-string v0, "dataChangedForUser"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 896
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 3950
    const/16 v0, 0x44

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 1188
    invoke-static {p1}, Landroid/app/backup/IBackupManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 31
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1192
    move-object/from16 v15, p0

    move/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    const-string v11, "android.app.backup.IBackupManager"

    .line 1193
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v14, v10, :cond_0

    const v0, 0xffffff

    if-gt v14, v0, :cond_0

    .line 1194
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1196
    :cond_0
    packed-switch v14, :pswitch_data_0

    .line 1204
    packed-switch v14, :pswitch_data_1

    .line 2025
    move-object v14, v13

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1200
    :pswitch_0
    invoke-virtual {v12, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1201
    return v10

    .line 2015
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2017
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 2018
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2019
    invoke-virtual {v15, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->excludeKeysFromRestore(Ljava/lang/String;Ljava/util/List;)V

    .line 2020
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2021
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    goto/16 :goto_0

    .line 2006
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2007
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2008
    invoke-virtual {v15, v0}, Landroid/app/backup/IBackupManager$Stub;->semSetAutoRestoreEnabled(Z)V

    .line 2009
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2010
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    goto/16 :goto_0

    .line 1997
    .end local v0    # "_arg0":Z
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1998
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1999
    invoke-virtual {v15, v0}, Landroid/app/backup/IBackupManager$Stub;->semSetBackupEnabled(Z)V

    .line 2000
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2001
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    goto/16 :goto_0

    .line 1989
    .end local v0    # "_arg0":Z
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->semIsBackupEnabled()Z

    move-result v0

    .line 1990
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1991
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1992
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    goto/16 :goto_0

    .line 1979
    .end local v0    # "_result":Z
    :pswitch_5
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 1981
    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1982
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1983
    invoke-virtual {v15, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->semRestorePackage(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    .line 1984
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1985
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    goto/16 :goto_0

    .line 1961
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_6
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/ParcelFileDescriptor;

    .line 1963
    .local v6, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 1965
    .local v7, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1967
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1969
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v16

    .line 1970
    .local v16, "_arg4":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1971
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/backup/IBackupManager$Stub;->semBackupPackagePath(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1972
    .local v0, "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1973
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 1974
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    goto/16 :goto_0

    .line 1945
    .end local v0    # "_result":Ljava/util/Map;
    .end local v6    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v7    # "_arg1":[Ljava/lang/String;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":I
    .end local v16    # "_arg4":[Ljava/lang/String;
    :pswitch_7
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 1947
    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1949
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1951
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1952
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1953
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/backup/IBackupManager$Stub;->semBackupPackage(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v4

    .line 1954
    .local v4, "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1955
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 1956
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    goto/16 :goto_0

    .line 1937
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":[Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Ljava/util/Map;
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->isSubUserSupported()Z

    move-result v0

    .line 1938
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1939
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1940
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    goto/16 :goto_0

    .line 1929
    .end local v0    # "_result":Z
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 1930
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1931
    invoke-virtual {v15, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->setAncestralSerialNumber(J)V

    .line 1932
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1933
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    goto/16 :goto_0

    .line 1919
    .end local v0    # "_arg0":J
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 1920
    .restart local v0    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1921
    invoke-virtual {v15, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getUserForAncestralSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v2

    .line 1922
    .local v2, "_result":Landroid/os/UserHandle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1923
    invoke-virtual {v12, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1924
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    goto/16 :goto_0

    .line 1884
    .end local v0    # "_arg0":J
    .end local v2    # "_result":Landroid/os/UserHandle;
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1886
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1888
    .local v17, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 1890
    .local v18, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 1892
    .local v19, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    .line 1894
    .local v20, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v21

    .line 1896
    .local v21, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v22

    .line 1898
    .local v22, "_arg6":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v23

    .line 1900
    .local v23, "_arg7":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v24

    .line 1902
    .local v24, "_arg8":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v25

    .line 1904
    .local v25, "_arg9":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v26

    .line 1906
    .local v26, "_arg10":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 1908
    .local v27, "_arg11":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v28

    .line 1910
    .local v28, "_arg12":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IMemorySaverBackupRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    move-result-object v29

    .line 1911
    .local v29, "_arg13":Landroid/app/backup/IMemorySaverBackupRestoreObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1912
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    move-object/from16 v10, v25

    move-object/from16 v30, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v30, "descriptor":Ljava/lang/String;
    move/from16 v11, v26

    move-object/from16 v12, v27

    move/from16 v13, v28

    move-object/from16 v14, v29

    invoke-virtual/range {v0 .. v14}, Landroid/app/backup/IBackupManager$Stub;->fullBackupCustomized(ILjava/lang/String;ZZZZZZZ[Ljava/lang/String;ZLjava/lang/String;ZLandroid/app/backup/IMemorySaverBackupRestoreObserver;)V

    .line 1913
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1914
    move-object/from16 v14, p2

    move-object/from16 v12, p3

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1877
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Z
    .end local v19    # "_arg3":Z
    .end local v20    # "_arg4":Z
    .end local v21    # "_arg5":Z
    .end local v22    # "_arg6":Z
    .end local v23    # "_arg7":Z
    .end local v24    # "_arg8":Z
    .end local v25    # "_arg9":[Ljava/lang/String;
    .end local v26    # "_arg10":Z
    .end local v27    # "_arg11":Ljava/lang/String;
    .end local v28    # "_arg12":Z
    .end local v29    # "_arg13":Landroid/app/backup/IMemorySaverBackupRestoreObserver;
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_c
    move-object/from16 v30, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->cancelBackups()V

    .line 1878
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1879
    move-object/from16 v14, p2

    move-object/from16 v12, p3

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1869
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_d
    move-object/from16 v30, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1870
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1871
    invoke-virtual {v15, v0}, Landroid/app/backup/IBackupManager$Stub;->cancelBackupsForUser(I)V

    .line 1872
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1873
    move-object/from16 v14, p2

    move-object/from16 v12, p3

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1853
    .end local v0    # "_arg0":I
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_e
    move-object/from16 v30, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 1855
    .local v0, "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IBackupObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupObserver;

    move-result-object v1

    .line 1857
    .local v1, "_arg1":Landroid/app/backup/IBackupObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/IBackupManagerMonitor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v2

    .line 1859
    .local v2, "_arg2":Landroid/app/backup/IBackupManagerMonitor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1860
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1861
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/backup/IBackupManager$Stub;->requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result v4

    .line 1862
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1863
    move-object/from16 v12, p3

    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1864
    move-object/from16 v14, p2

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1835
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/app/backup/IBackupObserver;
    .end local v2    # "_arg2":Landroid/app/backup/IBackupManagerMonitor;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":I
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_f
    move-object/from16 v30, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1837
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 1839
    .restart local v7    # "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupObserver;

    move-result-object v8

    .line 1841
    .local v8, "_arg2":Landroid/app/backup/IBackupObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManagerMonitor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v9

    .line 1843
    .local v9, "_arg3":Landroid/app/backup/IBackupManagerMonitor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1844
    .local v10, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1845
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/app/backup/IBackupManager$Stub;->requestBackupForUser(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result v0

    .line 1846
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1847
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1848
    move-object/from16 v14, p2

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1823
    .end local v0    # "_result":I
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":[Ljava/lang/String;
    .end local v8    # "_arg2":Landroid/app/backup/IBackupObserver;
    .end local v9    # "_arg3":Landroid/app/backup/IBackupManagerMonitor;
    .end local v10    # "_arg4":I
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_10
    move-object/from16 v30, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1825
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1826
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1827
    invoke-virtual {v15, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->filterAppsEligibleForBackupForUser(I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1828
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1829
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1830
    move-object/from16 v14, p2

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1811
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Ljava/lang/String;
    .end local v2    # "_result":[Ljava/lang/String;
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_11
    move-object/from16 v30, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1813
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1814
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1815
    invoke-virtual {v15, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->isAppEligibleForBackupForUser(ILjava/lang/String;)Z

    move-result v2

    .line 1816
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1817
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1818
    move-object/from16 v14, p2

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1799
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_12
    move-object/from16 v30, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1801
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1802
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1803
    invoke-virtual {v15, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getAvailableRestoreTokenForUser(ILjava/lang/String;)J

    move-result-wide v2

    .line 1804
    .local v2, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1805
    invoke-virtual {v12, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1806
    move-object/from16 v14, p2

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1789
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":J
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_13
    move-object/from16 v30, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1790
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1791
    invoke-virtual {v15, v0}, Landroid/app/backup/IBackupManager$Stub;->isUserReadyForBackup(I)Z

    move-result v1

    .line 1792
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1793
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1794
    move-object/from16 v14, p2

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1779
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_14
    move-object/from16 v30, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1780
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1781
    invoke-virtual {v15, v0}, Landroid/app/backup/IBackupManager$Stub;->isBackupServiceActive(I)Z

    move-result v1

    .line 1782
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1783
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1784
    move-object/from16 v14, p2

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1768
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_15
    move-object/from16 v30, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1770
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1771
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1772
    invoke-virtual {v15, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->setBackupServiceActive(IZ)V

    .line 1773
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1774
    move-object/from16 v14, p2

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1757
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_16
    move-object/from16 v30, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1759
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1760
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1761
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->opComplete(IJ)V

    .line 1762
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1763
    move-object/from16 v14, p2

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1744
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":J
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_17
    move-object/from16 v30, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1746
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1748
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1749
    .local v2, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1750
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/backup/IBackupManager$Stub;->opCompleteForUser(IIJ)V

    .line 1751
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1752
    move-object/from16 v14, p2

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1730
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":J
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_18
    move-object/from16 v30, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1732
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1734
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1735
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1736
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->beginRestoreSessionForUser(ILjava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v3

    .line 1737
    .local v3, "_result":Landroid/app/backup/IRestoreSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1738
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1739
    move-object/from16 v14, p2

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1712
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Landroid/app/backup/IRestoreSession;
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_19
    move-object/from16 v30, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1714
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1715
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1716
    invoke-virtual {v15, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getDataManagementLabelForUser(ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1717
    .local v2, "_result":Ljava/lang/CharSequence;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1718
    if-eqz v2, :cond_1

    .line 1719
    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 1720
    invoke-static {v2, v12, v13}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    move-object/from16 v14, p2

    goto/16 :goto_0

    .line 1723
    :cond_1
    const/4 v13, 0x1

    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1725
    move-object/from16 v14, p2

    goto/16 :goto_0

    .line 1702
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/CharSequence;
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1a
    move v13, v10

    move-object/from16 v30, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1703
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1704
    invoke-virtual {v15, v0}, Landroid/app/backup/IBackupManager$Stub;->getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1705
    .local v1, "_result":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1706
    invoke-virtual {v12, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1707
    move-object/from16 v14, p2

    goto/16 :goto_0

    .line 1690
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Landroid/content/Intent;
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1b
    move v13, v10

    move-object/from16 v30, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1692
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1693
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1694
    invoke-virtual {v15, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getDataManagementIntentForUser(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1695
    .local v2, "_result":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1696
    invoke-virtual {v12, v2, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1697
    move-object/from16 v14, p2

    goto/16 :goto_0

    .line 1680
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Landroid/content/Intent;
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1c
    move v13, v10

    move-object/from16 v30, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1681
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1682
    invoke-virtual {v15, v0}, Landroid/app/backup/IBackupManager$Stub;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1683
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1684
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1685
    move-object/from16 v14, p2

    goto/16 :goto_0

    .line 1668
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1d
    move v13, v10

    move-object/from16 v30, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1670
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1671
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1672
    invoke-virtual {v15, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getDestinationStringForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1673
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1674
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1675
    move-object/from16 v14, p2

    goto/16 :goto_0

    .line 1658
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1e
    move v13, v10

    move-object/from16 v30, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1659
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1660
    invoke-virtual {v15, v0}, Landroid/app/backup/IBackupManager$Stub;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1661
    .local v1, "_result":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1662
    invoke-virtual {v12, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1663
    move-object/from16 v14, p2

    goto/16 :goto_0

    .line 1646
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Landroid/content/Intent;
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1f
    move v13, v10

    move-object/from16 v30, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1648
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1649
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1650
    invoke-virtual {v15, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getConfigurationIntentForUser(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1651
    .local v2, "_result":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1652
    invoke-virtual {v12, v2, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1653
    move-object/from16 v14, p2

    goto/16 :goto_0

    .line 1633
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Landroid/content/Intent;
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_20
    move v13, v10

    move-object/from16 v30, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1635
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v14, p2

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1637
    .local v1, "_arg1":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/ISelectBackupTransportCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/ISelectBackupTransportCallback;

    move-result-object v2

    .line 1638
    .local v2, "_arg2":Landroid/app/backup/ISelectBackupTransportCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1639
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->selectBackupTransportAsyncForUser(ILandroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V

    .line 1640
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1641
    goto/16 :goto_0

    .line 1623
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    .end local v2    # "_arg2":Landroid/app/backup/ISelectBackupTransportCallback;
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_21
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1624
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1625
    invoke-virtual {v15, v0}, Landroid/app/backup/IBackupManager$Stub;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1626
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1627
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1628
    goto/16 :goto_0

    .line 1611
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_22
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1613
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1614
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1615
    invoke-virtual {v15, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->selectBackupTransportForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1616
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1617
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1618
    goto/16 :goto_0

    .line 1603
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_23
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->getTransportWhitelist()[Ljava/lang/String;

    move-result-object v0

    .line 1604
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1605
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1606
    goto/16 :goto_0

    .line 1594
    .end local v0    # "_result":[Ljava/lang/String;
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_24
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1595
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1596
    invoke-virtual {v15, v0}, Landroid/app/backup/IBackupManager$Stub;->listAllTransportComponentsForUser(I)[Landroid/content/ComponentName;

    move-result-object v1

    .line 1597
    .local v1, "_result":[Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1598
    invoke-virtual {v12, v1, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1599
    goto/16 :goto_0

    .line 1586
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[Landroid/content/ComponentName;
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_25
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->listAllTransports()[Ljava/lang/String;

    move-result-object v0

    .line 1587
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1588
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1589
    goto/16 :goto_0

    .line 1577
    .end local v0    # "_result":[Ljava/lang/String;
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_26
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1578
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1579
    invoke-virtual {v15, v0}, Landroid/app/backup/IBackupManager$Stub;->listAllTransportsForUser(I)[Ljava/lang/String;

    move-result-object v1

    .line 1580
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1581
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1582
    goto/16 :goto_0

    .line 1567
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[Ljava/lang/String;
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_27
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1568
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1569
    invoke-virtual {v15, v0}, Landroid/app/backup/IBackupManager$Stub;->getCurrentTransportComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 1570
    .local v1, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1571
    invoke-virtual {v12, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1572
    goto/16 :goto_0

    .line 1559
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/content/ComponentName;
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_28
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->getCurrentTransport()Ljava/lang/String;

    move-result-object v0

    .line 1560
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1561
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1562
    goto/16 :goto_0

    .line 1550
    .end local v0    # "_result":Ljava/lang/String;
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_29
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1551
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1552
    invoke-virtual {v15, v0}, Landroid/app/backup/IBackupManager$Stub;->getCurrentTransportForUser(I)Ljava/lang/String;

    move-result-object v1

    .line 1553
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1554
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1555
    goto/16 :goto_0

    .line 1529
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2a
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1531
    .local v8, "_arg0":I
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/content/ComponentName;

    .line 1533
    .local v9, "_arg1":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1535
    .local v10, "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/content/Intent;

    .line 1537
    .local v11, "_arg3":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1539
    .local v16, "_arg4":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/content/Intent;

    .line 1541
    .local v17, "_arg5":Landroid/content/Intent;
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/CharSequence;

    .line 1542
    .local v18, "_arg6":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1543
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move-object v3, v10

    move-object v4, v11

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Landroid/app/backup/IBackupManager$Stub;->updateTransportAttributesForUser(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V

    .line 1544
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1545
    goto/16 :goto_0

    .line 1512
    .end local v8    # "_arg0":I
    .end local v9    # "_arg1":Landroid/content/ComponentName;
    .end local v10    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg4":Ljava/lang/String;
    .end local v17    # "_arg5":Landroid/content/Intent;
    .end local v18    # "_arg6":Ljava/lang/CharSequence;
    .end local v30    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_2b
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1514
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 1516
    .local v7, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1518
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1520
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v10

    .line 1521
    .local v10, "_arg4":Landroid/app/backup/IFullBackupRestoreObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1522
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/app/backup/IBackupManager$Stub;->acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 1523
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1524
    goto/16 :goto_0

    .line 1493
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Z
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v10    # "_arg4":Landroid/app/backup/IFullBackupRestoreObserver;
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2c
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1495
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1497
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 1499
    .local v9, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1501
    .local v10, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 1503
    .local v11, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v16

    .line 1504
    .local v16, "_arg5":Landroid/app/backup/IFullBackupRestoreObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1505
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Landroid/app/backup/IBackupManager$Stub;->acknowledgeFullBackupOrRestoreForUser(IIZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 1506
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1507
    goto/16 :goto_0

    .line 1482
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":Z
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg5":Landroid/app/backup/IFullBackupRestoreObserver;
    .end local v30    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_2d
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1484
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 1485
    .local v1, "_arg1":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1486
    invoke-virtual {v15, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->adbRestore(ILandroid/os/ParcelFileDescriptor;)V

    .line 1487
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1488
    goto/16 :goto_0

    .line 1465
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/ParcelFileDescriptor;
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2e
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1467
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1469
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 1471
    .local v8, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1473
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IMemorySaverBackupRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    move-result-object v10

    .line 1474
    .local v10, "_arg4":Landroid/app/backup/IMemorySaverBackupRestoreObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1475
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/app/backup/IBackupManager$Stub;->fullRestoreCustomized(ILjava/lang/String;ZLjava/lang/String;Landroid/app/backup/IMemorySaverBackupRestoreObserver;)V

    .line 1476
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1477
    goto/16 :goto_0

    .line 1454
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Z
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v10    # "_arg4":Landroid/app/backup/IMemorySaverBackupRestoreObserver;
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2f
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1456
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1457
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1458
    invoke-virtual {v15, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->fullTransportBackupForUser(I[Ljava/lang/String;)V

    .line 1459
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1460
    goto/16 :goto_0

    .line 1425
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Ljava/lang/String;
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_30
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1427
    .local v16, "_arg0":I
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/ParcelFileDescriptor;

    .line 1429
    .local v17, "_arg1":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 1431
    .local v18, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 1433
    .restart local v19    # "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    .line 1435
    .restart local v20    # "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v21

    .line 1437
    .restart local v21    # "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v22

    .line 1439
    .restart local v22    # "_arg6":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v23

    .line 1441
    .restart local v23    # "_arg7":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v24

    .line 1443
    .restart local v24    # "_arg8":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v25

    .line 1445
    .local v25, "_arg9":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v26

    .line 1446
    .local v26, "_arg10":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1447
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    move/from16 v10, v25

    move-object/from16 v11, v26

    invoke-virtual/range {v0 .. v11}, Landroid/app/backup/IBackupManager$Stub;->adbBackup(ILandroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V

    .line 1448
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1449
    goto/16 :goto_0

    .line 1418
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":Landroid/os/ParcelFileDescriptor;
    .end local v18    # "_arg2":Z
    .end local v19    # "_arg3":Z
    .end local v20    # "_arg4":Z
    .end local v21    # "_arg5":Z
    .end local v22    # "_arg6":Z
    .end local v23    # "_arg7":Z
    .end local v24    # "_arg8":Z
    .end local v25    # "_arg9":Z
    .end local v26    # "_arg10":[Ljava/lang/String;
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_31
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->backupNow()V

    .line 1419
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1420
    goto/16 :goto_0

    .line 1410
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_32
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1411
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1412
    invoke-virtual {v15, v0}, Landroid/app/backup/IBackupManager$Stub;->backupNowForUser(I)V

    .line 1413
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1414
    goto/16 :goto_0

    .line 1402
    .end local v0    # "_arg0":I
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_33
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->hasBackupPassword()Z

    move-result v0

    .line 1403
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1404
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1405
    goto/16 :goto_0

    .line 1391
    .end local v0    # "_result":Z
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_34
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1393
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1394
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1395
    invoke-virtual {v15, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1396
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1397
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1398
    goto/16 :goto_0

    .line 1383
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_35
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->isBackupEnabled()Z

    move-result v0

    .line 1384
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1385
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1386
    goto/16 :goto_0

    .line 1374
    .end local v0    # "_result":Z
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_36
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1375
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1376
    invoke-virtual {v15, v0}, Landroid/app/backup/IBackupManager$Stub;->isBackupEnabledForUser(I)Z

    move-result v1

    .line 1377
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1378
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1379
    goto/16 :goto_0

    .line 1365
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_37
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1366
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1367
    invoke-virtual {v15, v0}, Landroid/app/backup/IBackupManager$Stub;->setAutoRestore(Z)V

    .line 1368
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1369
    goto/16 :goto_0

    .line 1354
    .end local v0    # "_arg0":Z
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_38
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1356
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1357
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1358
    invoke-virtual {v15, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->setAutoRestoreForUser(IZ)V

    .line 1359
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1360
    goto/16 :goto_0

    .line 1345
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_39
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1346
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1347
    invoke-virtual {v15, v0}, Landroid/app/backup/IBackupManager$Stub;->setBackupEnabled(Z)V

    .line 1348
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1349
    goto/16 :goto_0

    .line 1334
    .end local v0    # "_arg0":Z
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_3a
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1336
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1337
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1338
    invoke-virtual {v15, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->setBackupEnabledForUser(IZ)V

    .line 1339
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1340
    goto/16 :goto_0

    .line 1323
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_3b
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1325
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1326
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1327
    invoke-virtual {v15, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->restoreAtInstall(Ljava/lang/String;I)V

    .line 1328
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1329
    goto/16 :goto_0

    .line 1310
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_3c
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1312
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1314
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1315
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1316
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->restoreAtInstallForUser(ILjava/lang/String;I)V

    .line 1317
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1318
    goto/16 :goto_0

    .line 1301
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_3d
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1302
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1303
    invoke-virtual {v15, v0}, Landroid/app/backup/IBackupManager$Stub;->agentDisconnected(Ljava/lang/String;)V

    .line 1304
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1305
    goto/16 :goto_0

    .line 1290
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_3e
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1292
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1293
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1294
    invoke-virtual {v15, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->agentDisconnectedForUser(ILjava/lang/String;)V

    .line 1295
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1296
    goto/16 :goto_0

    .line 1279
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_3f
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1281
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1282
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1283
    invoke-virtual {v15, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1284
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1285
    goto/16 :goto_0

    .line 1266
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_40
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1268
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1270
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1271
    .local v2, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1272
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->agentConnectedForUser(ILjava/lang/String;Landroid/os/IBinder;)V

    .line 1273
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1274
    goto/16 :goto_0

    .line 1253
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/IBinder;
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_41
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1255
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1257
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/IBackupObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupObserver;

    move-result-object v2

    .line 1258
    .local v2, "_arg2":Landroid/app/backup/IBackupObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1259
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->initializeTransportsForUser(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V

    .line 1260
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1261
    goto :goto_0

    .line 1242
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/app/backup/IBackupObserver;
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_42
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1244
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1245
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1246
    invoke-virtual {v15, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->clearBackupData(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1248
    goto :goto_0

    .line 1229
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_43
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1231
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1233
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1234
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1235
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->clearBackupDataForUser(ILjava/lang/String;Ljava/lang/String;)V

    .line 1236
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1237
    goto :goto_0

    .line 1220
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_44
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1221
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1222
    invoke-virtual {v15, v0}, Landroid/app/backup/IBackupManager$Stub;->dataChanged(Ljava/lang/String;)V

    .line 1223
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1224
    goto :goto_0

    .line 1209
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v30    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_45
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v30    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1211
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1212
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1213
    invoke-virtual {v15, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->dataChangedForUser(ILjava/lang/String;)V

    .line 1214
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1215
    nop

    .line 2028
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :goto_0
    return v13

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
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
    .end packed-switch
.end method
