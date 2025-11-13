.class public abstract Landroid/content/pm/IPackageInstaller$Stub;
.super Landroid/os/Binder;
.source "IPackageInstaller.java"

# interfaces
.implements Landroid/content/pm/IPackageInstaller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageInstaller$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPackageInstaller"

.field static final greylist-max-o TRANSACTION_abandonSession:I = 0x4

.field static final blacklist TRANSACTION_bypassNextAllowedApexUpdateCheck:I = 0x11

.field static final blacklist TRANSACTION_bypassNextStagedInstallerCheck:I = 0x10

.field static final greylist-max-o TRANSACTION_createSession:I = 0x1

.field static final greylist-max-o TRANSACTION_getAllSessions:I = 0x7

.field static final greylist-max-o TRANSACTION_getMySessions:I = 0x8

.field static final greylist-max-o TRANSACTION_getSessionInfo:I = 0x6

.field static final blacklist TRANSACTION_getStagedSessions:I = 0x9

.field static final blacklist TRANSACTION_installExistingPackage:I = 0xe

.field static final greylist-max-o TRANSACTION_openSession:I = 0x5

.field static final greylist-max-o TRANSACTION_registerCallback:I = 0xa

.field static final blacklist TRANSACTION_setAllowUnlimitedSilentUpdates:I = 0x12

.field static final greylist-max-o TRANSACTION_setPermissionsResult:I = 0xf

.field static final blacklist TRANSACTION_setSilentUpdatesThrottleTime:I = 0x13

.field static final blacklist TRANSACTION_setUnknownSourceConfirmResult:I = 0x14

.field static final greylist-max-o TRANSACTION_uninstall:I = 0xc

.field static final blacklist TRANSACTION_uninstallExistingPackage:I = 0xd

.field static final greylist-max-o TRANSACTION_unregisterCallback:I = 0xb

.field static final greylist-max-o TRANSACTION_updateSessionAppIcon:I = 0x2

.field static final greylist-max-o TRANSACTION_updateSessionAppLabel:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 89
    const-string v0, "android.content.pm.IPackageInstaller"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPackageInstaller$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstaller;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 97
    if-nez p0, :cond_0

    .line 98
    const/4 v0, 0x0

    return-object v0

    .line 100
    :cond_0
    const-string v0, "android.content.pm.IPackageInstaller"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 101
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/pm/IPackageInstaller;

    if-eqz v1, :cond_1

    .line 102
    move-object v1, v0

    check-cast v1, Landroid/content/pm/IPackageInstaller;

    return-object v1

    .line 104
    :cond_1
    new-instance v1, Landroid/content/pm/IPackageInstaller$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IPackageInstaller$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 113
    packed-switch p0, :pswitch_data_0

    .line 197
    const/4 v0, 0x0

    return-object v0

    .line 193
    :pswitch_0
    const-string/jumbo v0, "setUnknownSourceConfirmResult"

    return-object v0

    .line 189
    :pswitch_1
    const-string/jumbo v0, "setSilentUpdatesThrottleTime"

    return-object v0

    .line 185
    :pswitch_2
    const-string/jumbo v0, "setAllowUnlimitedSilentUpdates"

    return-object v0

    .line 181
    :pswitch_3
    const-string v0, "bypassNextAllowedApexUpdateCheck"

    return-object v0

    .line 177
    :pswitch_4
    const-string v0, "bypassNextStagedInstallerCheck"

    return-object v0

    .line 173
    :pswitch_5
    const-string/jumbo v0, "setPermissionsResult"

    return-object v0

    .line 169
    :pswitch_6
    const-string v0, "installExistingPackage"

    return-object v0

    .line 165
    :pswitch_7
    const-string/jumbo v0, "uninstallExistingPackage"

    return-object v0

    .line 161
    :pswitch_8
    const-string/jumbo v0, "uninstall"

    return-object v0

    .line 157
    :pswitch_9
    const-string/jumbo v0, "unregisterCallback"

    return-object v0

    .line 153
    :pswitch_a
    const-string/jumbo v0, "registerCallback"

    return-object v0

    .line 149
    :pswitch_b
    const-string v0, "getStagedSessions"

    return-object v0

    .line 145
    :pswitch_c
    const-string v0, "getMySessions"

    return-object v0

    .line 141
    :pswitch_d
    const-string v0, "getAllSessions"

    return-object v0

    .line 137
    :pswitch_e
    const-string v0, "getSessionInfo"

    return-object v0

    .line 133
    :pswitch_f
    const-string/jumbo v0, "openSession"

    return-object v0

    .line 129
    :pswitch_10
    const-string v0, "abandonSession"

    return-object v0

    .line 125
    :pswitch_11
    const-string/jumbo v0, "updateSessionAppLabel"

    return-object v0

    .line 121
    :pswitch_12
    const-string/jumbo v0, "updateSessionAppIcon"

    return-object v0

    .line 117
    :pswitch_13
    const-string v0, "createSession"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 108
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 833
    const/16 v0, 0x13

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 204
    invoke-static {p1}, Landroid/content/pm/IPackageInstaller$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 208
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "android.content.pm.IPackageInstaller"

    .line 209
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 210
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 220
    packed-switch v8, :pswitch_data_1

    .line 449
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 216
    :pswitch_0
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    return v12

    .line 439
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 441
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 442
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 443
    invoke-virtual {v7, v0, v1}, Landroid/content/pm/IPackageInstaller$Stub;->setUnknownSourceConfirmResult(IZ)V

    .line 444
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    goto/16 :goto_0

    .line 430
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 431
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 432
    invoke-virtual {v7, v0, v1}, Landroid/content/pm/IPackageInstaller$Stub;->setSilentUpdatesThrottleTime(J)V

    .line 433
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    goto/16 :goto_0

    .line 421
    .end local v0    # "_arg0":J
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 423
    invoke-virtual {v7, v0}, Landroid/content/pm/IPackageInstaller$Stub;->setAllowUnlimitedSilentUpdates(Ljava/lang/String;)V

    .line 424
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    goto/16 :goto_0

    .line 412
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 413
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 414
    invoke-virtual {v7, v0}, Landroid/content/pm/IPackageInstaller$Stub;->bypassNextAllowedApexUpdateCheck(Z)V

    .line 415
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    goto/16 :goto_0

    .line 403
    .end local v0    # "_arg0":Z
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 404
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 405
    invoke-virtual {v7, v0}, Landroid/content/pm/IPackageInstaller$Stub;->bypassNextStagedInstallerCheck(Z)V

    .line 406
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    goto/16 :goto_0

    .line 392
    .end local v0    # "_arg0":Z
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 394
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 395
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 396
    invoke-virtual {v7, v0, v1}, Landroid/content/pm/IPackageInstaller$Stub;->setPermissionsResult(IZ)V

    .line 397
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    goto/16 :goto_0

    .line 373
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 375
    .local v13, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 377
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 379
    .local v15, "_arg2":I
    sget-object v0, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/content/IntentSender;

    .line 381
    .local v16, "_arg3":Landroid/content/IntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 383
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v18

    .line 384
    .local v18, "_arg5":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 385
    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v14

    move v3, v15

    move-object/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/IPackageInstaller$Stub;->installExistingPackage(Ljava/lang/String;IILandroid/content/IntentSender;ILjava/util/List;)V

    .line 386
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    goto/16 :goto_0

    .line 358
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":Landroid/content/IntentSender;
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_8
    sget-object v0, Landroid/content/pm/VersionedPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/VersionedPackage;

    .line 360
    .local v0, "_arg0":Landroid/content/pm/VersionedPackage;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 362
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/IntentSender;

    .line 364
    .local v2, "_arg2":Landroid/content/IntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 365
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 366
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/content/pm/IPackageInstaller$Stub;->uninstallExistingPackage(Landroid/content/pm/VersionedPackage;Ljava/lang/String;Landroid/content/IntentSender;I)V

    .line 367
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    goto/16 :goto_0

    .line 341
    .end local v0    # "_arg0":Landroid/content/pm/VersionedPackage;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/content/IntentSender;
    .end local v3    # "_arg3":I
    :pswitch_9
    sget-object v0, Landroid/content/pm/VersionedPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/pm/VersionedPackage;

    .line 343
    .local v6, "_arg0":Landroid/content/pm/VersionedPackage;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 345
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 347
    .local v14, "_arg2":I
    sget-object v0, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/content/IntentSender;

    .line 349
    .local v15, "_arg3":Landroid/content/IntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 350
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 351
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v13

    move v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageInstaller$Stub;->uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;I)V

    .line 352
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    goto/16 :goto_0

    .line 332
    .end local v6    # "_arg0":Landroid/content/pm/VersionedPackage;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":Landroid/content/IntentSender;
    .end local v16    # "_arg4":I
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageInstallerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallerCallback;

    move-result-object v0

    .line 333
    .local v0, "_arg0":Landroid/content/pm/IPackageInstallerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 334
    invoke-virtual {v7, v0}, Landroid/content/pm/IPackageInstaller$Stub;->unregisterCallback(Landroid/content/pm/IPackageInstallerCallback;)V

    .line 335
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    goto/16 :goto_0

    .line 321
    .end local v0    # "_arg0":Landroid/content/pm/IPackageInstallerCallback;
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageInstallerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallerCallback;

    move-result-object v0

    .line 323
    .restart local v0    # "_arg0":Landroid/content/pm/IPackageInstallerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 324
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 325
    invoke-virtual {v7, v0, v1}, Landroid/content/pm/IPackageInstaller$Stub;->registerCallback(Landroid/content/pm/IPackageInstallerCallback;I)V

    .line 326
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    goto/16 :goto_0

    .line 313
    .end local v0    # "_arg0":Landroid/content/pm/IPackageInstallerCallback;
    .end local v1    # "_arg1":I
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageInstaller$Stub;->getStagedSessions()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 314
    .local v0, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 316
    goto/16 :goto_0

    .line 302
    .end local v0    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 305
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 306
    invoke-virtual {v7, v0, v1}, Landroid/content/pm/IPackageInstaller$Stub;->getMySessions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 307
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    invoke-virtual {v10, v2, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 309
    goto/16 :goto_0

    .line 292
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 293
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    invoke-virtual {v7, v0}, Landroid/content/pm/IPackageInstaller$Stub;->getAllSessions(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 295
    .local v1, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 297
    goto/16 :goto_0

    .line 282
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 283
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 284
    invoke-virtual {v7, v0}, Landroid/content/pm/IPackageInstaller$Stub;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v1

    .line 285
    .local v1, "_result":Landroid/content/pm/PackageInstaller$SessionInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 287
    goto :goto_0

    .line 272
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/content/pm/PackageInstaller$SessionInfo;
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 273
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 274
    invoke-virtual {v7, v0}, Landroid/content/pm/IPackageInstaller$Stub;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v1

    .line 275
    .local v1, "_result":Landroid/content/pm/IPackageInstallerSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 277
    goto :goto_0

    .line 263
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/content/pm/IPackageInstallerSession;
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 264
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 265
    invoke-virtual {v7, v0}, Landroid/content/pm/IPackageInstaller$Stub;->abandonSession(I)V

    .line 266
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    goto :goto_0

    .line 252
    .end local v0    # "_arg0":I
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 254
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 256
    invoke-virtual {v7, v0, v1}, Landroid/content/pm/IPackageInstaller$Stub;->updateSessionAppLabel(ILjava/lang/String;)V

    .line 257
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    goto :goto_0

    .line 241
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 243
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 244
    .local v1, "_arg1":Landroid/graphics/Bitmap;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 245
    invoke-virtual {v7, v0, v1}, Landroid/content/pm/IPackageInstaller$Stub;->updateSessionAppIcon(ILandroid/graphics/Bitmap;)V

    .line 246
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    goto :goto_0

    .line 225
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/graphics/Bitmap;
    :pswitch_14
    sget-object v0, Landroid/content/pm/PackageInstaller$SessionParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInstaller$SessionParams;

    .line 227
    .local v0, "_arg0":Landroid/content/pm/PackageInstaller$SessionParams;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 232
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 233
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/content/pm/IPackageInstaller$Stub;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 234
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    nop

    .line 452
    .end local v0    # "_arg0":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":I
    :goto_0
    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
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
    .end packed-switch
.end method
