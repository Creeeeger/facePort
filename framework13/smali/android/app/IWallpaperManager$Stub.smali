.class public abstract Landroid/app/IWallpaperManager$Stub;
.super Landroid/os/Binder;
.source "IWallpaperManager.java"

# interfaces
.implements Landroid/app/IWallpaperManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IWallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IWallpaperManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.IWallpaperManager"

.field static final blacklist TRANSACTION_addOnLocalColorsChangedListener:I = 0x1a

.field static final blacklist TRANSACTION_applyWallpaperColors:I = 0x59

.field static final greylist-max-o TRANSACTION_clearWallpaper:I = 0xa

.field static final blacklist TRANSACTION_copyFileToWallpaperFile:I = 0x45

.field static final blacklist TRANSACTION_copyPreloadedFileToWallpaperFile:I = 0x46

.field static final blacklist TRANSACTION_forceRebindWallpaper:I = 0x58

.field static final blacklist TRANSACTION_getAnimatedPkgName:I = 0x40

.field static final blacklist TRANSACTION_getDesktopMode:I = 0x24

.field static final blacklist TRANSACTION_getDeviceColor:I = 0x41

.field static final blacklist TRANSACTION_getDisplayId:I = 0x54

.field static final greylist-max-o TRANSACTION_getHeightHint:I = 0xe

.field static final blacklist TRANSACTION_getHighlightFilterState:I = 0x48

.field static final blacklist TRANSACTION_getLegacyDeviceColor:I = 0x42

.field static final blacklist TRANSACTION_getLidState:I = 0x53

.field static final blacklist TRANSACTION_getLockWallpaper:I = 0x7

.field static final blacklist TRANSACTION_getLockWallpaperType:I = 0x27

.field static final blacklist TRANSACTION_getMotionWallpaperPkgName:I = 0x34

.field static final greylist-max-o TRANSACTION_getName:I = 0x10

.field static final blacklist TRANSACTION_getSnapshotCount:I = 0x3d

.field static final blacklist TRANSACTION_getVideoColor:I = 0x31

.field static final blacklist TRANSACTION_getVideoFileName:I = 0x32

.field static final blacklist TRANSACTION_getVideoFilePath:I = 0x2f

.field static final blacklist TRANSACTION_getVideoPackage:I = 0x30

.field static final greylist-max-o TRANSACTION_getWallpaper:I = 0x5

.field static final greylist-max-o TRANSACTION_getWallpaperColors:I = 0x18

.field static final blacklist TRANSACTION_getWallpaperComponentExtras:I = 0x4a

.field static final blacklist TRANSACTION_getWallpaperDimAmount:I = 0x21

.field static final blacklist TRANSACTION_getWallpaperExtras:I = 0x4b

.field static final greylist-max-o TRANSACTION_getWallpaperIdForUser:I = 0x8

.field static final greylist-max-o TRANSACTION_getWallpaperInfo:I = 0x9

.field static final blacklist TRANSACTION_getWallpaperOrientation:I = 0x4c

.field static final blacklist TRANSACTION_getWallpaperThumbnailFileDescriptor:I = 0x2e

.field static final blacklist TRANSACTION_getWallpaperWithFeature:I = 0x6

.field static final greylist-max-o TRANSACTION_getWidthHint:I = 0xd

.field static final greylist-max-o TRANSACTION_hasNamedWallpaper:I = 0xb

.field static final blacklist TRANSACTION_hasVideoWallpaper:I = 0x2d

.field static final blacklist TRANSACTION_isDefaultWallpaperState:I = 0x2a

.field static final blacklist TRANSACTION_isDesktopMode:I = 0x23

.field static final blacklist TRANSACTION_isDesktopModeEnabled:I = 0x25

.field static final blacklist TRANSACTION_isDesktopStandAloneMode:I = 0x26

.field static final blacklist TRANSACTION_isHomeAndLockPaired:I = 0x47

.field static final greylist-max-o TRANSACTION_isSetWallpaperAllowed:I = 0x13

.field static final blacklist TRANSACTION_isSnapshotTestMode:I = 0x3b

.field static final blacklist TRANSACTION_isValidSnapshot:I = 0x3f

.field static final blacklist TRANSACTION_isVideoWallpaper:I = 0x2c

.field static final blacklist TRANSACTION_isVirtualWallpaperDisplay:I = 0x55

.field static final blacklist TRANSACTION_isWallpaperBackupAllowed:I = 0x15

.field static final greylist-max-o TRANSACTION_isWallpaperBackupEligible:I = 0x14

.field static final blacklist TRANSACTION_isWallpaperDataExists:I = 0x5b

.field static final greylist-max-o TRANSACTION_isWallpaperSupported:I = 0x12

.field static final blacklist TRANSACTION_lockScreenWallpaperExists:I = 0x22

.field static final blacklist TRANSACTION_makeSnapshot:I = 0x39

.field static final blacklist TRANSACTION_notifyGoingToSleep:I = 0x1f

.field static final blacklist TRANSACTION_notifyPid:I = 0x5a

.field static final blacklist TRANSACTION_notifyWakingUp:I = 0x1e

.field static final greylist-max-o TRANSACTION_registerWallpaperColorsCallback:I = 0x1b

.field static final blacklist TRANSACTION_removeOnLocalColorsChangedListener:I = 0x19

.field static final blacklist TRANSACTION_removeSnapshotByKey:I = 0x37

.field static final blacklist TRANSACTION_removeSnapshotBySource:I = 0x38

.field static final blacklist TRANSACTION_removeSnapshotByWhich:I = 0x36

.field static final blacklist TRANSACTION_restoreSnapshot:I = 0x3a

.field static final blacklist TRANSACTION_semGetPrimaryWallpaperColors:I = 0x4e

.field static final blacklist TRANSACTION_semGetSmartCropRect:I = 0x52

.field static final blacklist TRANSACTION_semGetUri:I = 0x57

.field static final blacklist TRANSACTION_semGetWallpaperColors:I = 0x4d

.field static final blacklist TRANSACTION_semGetWallpaperCropHint:I = 0x29

.field static final blacklist TRANSACTION_semGetWallpaperType:I = 0x28

.field static final blacklist TRANSACTION_semRequestWallpaperColorsAnalysis:I = 0x4f

.field static final blacklist TRANSACTION_semSetDLSWallpaperColors:I = 0x50

.field static final blacklist TRANSACTION_semSetSmartCropRect:I = 0x51

.field static final blacklist TRANSACTION_semSetUri:I = 0x56

.field static final blacklist TRANSACTION_setAnimatedWallpaper:I = 0x35

.field static final blacklist TRANSACTION_setCoverWallpaperCallback:I = 0x17

.field static final greylist-max-o TRANSACTION_setDimensionHints:I = 0xc

.field static final greylist-max-o TRANSACTION_setDisplayPadding:I = 0xf

.field static final greylist-max-o TRANSACTION_setInAmbientMode:I = 0x1d

.field static final blacklist TRANSACTION_setKWPTypeLiveWallpaper:I = 0x43

.field static final blacklist TRANSACTION_setKWPTypeLiveWallpaperWithMode:I = 0x44

.field static final greylist-max-o TRANSACTION_setLockWallpaperCallback:I = 0x16

.field static final blacklist TRANSACTION_setMotionWallpaper:I = 0x33

.field static final blacklist TRANSACTION_setSnapshotSource:I = 0x3e

.field static final blacklist TRANSACTION_setSnapshotTestMode:I = 0x3c

.field static final blacklist TRANSACTION_setVideoWallpaper:I = 0x2b

.field static final greylist-max-o TRANSACTION_setWallpaper:I = 0x1

.field static final greylist-max-o TRANSACTION_setWallpaperComponent:I = 0x4

.field static final greylist-max-o TRANSACTION_setWallpaperComponentChecked:I = 0x3

.field static final blacklist TRANSACTION_setWallpaperComponentWithExtras:I = 0x49

.field static final blacklist TRANSACTION_setWallpaperDimAmount:I = 0x20

.field static final blacklist TRANSACTION_setWallpaperWithExtras:I = 0x2

.field static final greylist-max-o TRANSACTION_settingsRestored:I = 0x11

.field static final greylist-max-o TRANSACTION_unregisterWallpaperColorsCallback:I = 0x1c


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 489
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 490
    const-string v0, "android.app.IWallpaperManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IWallpaperManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 498
    if-nez p0, :cond_0

    .line 499
    const/4 v0, 0x0

    return-object v0

    .line 501
    :cond_0
    const-string v0, "android.app.IWallpaperManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 502
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IWallpaperManager;

    if-eqz v1, :cond_1

    .line 503
    move-object v1, v0

    check-cast v1, Landroid/app/IWallpaperManager;

    return-object v1

    .line 505
    :cond_1
    new-instance v1, Landroid/app/IWallpaperManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IWallpaperManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 514
    packed-switch p0, :pswitch_data_0

    .line 882
    const/4 v0, 0x0

    return-object v0

    .line 878
    :pswitch_0
    const-string v0, "isWallpaperDataExists"

    return-object v0

    .line 874
    :pswitch_1
    const-string/jumbo v0, "notifyPid"

    return-object v0

    .line 870
    :pswitch_2
    const-string v0, "applyWallpaperColors"

    return-object v0

    .line 866
    :pswitch_3
    const-string v0, "forceRebindWallpaper"

    return-object v0

    .line 862
    :pswitch_4
    const-string/jumbo v0, "semGetUri"

    return-object v0

    .line 858
    :pswitch_5
    const-string/jumbo v0, "semSetUri"

    return-object v0

    .line 854
    :pswitch_6
    const-string v0, "isVirtualWallpaperDisplay"

    return-object v0

    .line 850
    :pswitch_7
    const-string v0, "getDisplayId"

    return-object v0

    .line 846
    :pswitch_8
    const-string v0, "getLidState"

    return-object v0

    .line 842
    :pswitch_9
    const-string/jumbo v0, "semGetSmartCropRect"

    return-object v0

    .line 838
    :pswitch_a
    const-string/jumbo v0, "semSetSmartCropRect"

    return-object v0

    .line 834
    :pswitch_b
    const-string/jumbo v0, "semSetDLSWallpaperColors"

    return-object v0

    .line 830
    :pswitch_c
    const-string/jumbo v0, "semRequestWallpaperColorsAnalysis"

    return-object v0

    .line 826
    :pswitch_d
    const-string/jumbo v0, "semGetPrimaryWallpaperColors"

    return-object v0

    .line 822
    :pswitch_e
    const-string/jumbo v0, "semGetWallpaperColors"

    return-object v0

    .line 818
    :pswitch_f
    const-string v0, "getWallpaperOrientation"

    return-object v0

    .line 814
    :pswitch_10
    const-string v0, "getWallpaperExtras"

    return-object v0

    .line 810
    :pswitch_11
    const-string v0, "getWallpaperComponentExtras"

    return-object v0

    .line 806
    :pswitch_12
    const-string/jumbo v0, "setWallpaperComponentWithExtras"

    return-object v0

    .line 802
    :pswitch_13
    const-string v0, "getHighlightFilterState"

    return-object v0

    .line 798
    :pswitch_14
    const-string v0, "isHomeAndLockPaired"

    return-object v0

    .line 794
    :pswitch_15
    const-string v0, "copyPreloadedFileToWallpaperFile"

    return-object v0

    .line 790
    :pswitch_16
    const-string v0, "copyFileToWallpaperFile"

    return-object v0

    .line 786
    :pswitch_17
    const-string/jumbo v0, "setKWPTypeLiveWallpaperWithMode"

    return-object v0

    .line 782
    :pswitch_18
    const-string/jumbo v0, "setKWPTypeLiveWallpaper"

    return-object v0

    .line 778
    :pswitch_19
    const-string v0, "getLegacyDeviceColor"

    return-object v0

    .line 774
    :pswitch_1a
    const-string v0, "getDeviceColor"

    return-object v0

    .line 770
    :pswitch_1b
    const-string v0, "getAnimatedPkgName"

    return-object v0

    .line 766
    :pswitch_1c
    const-string v0, "isValidSnapshot"

    return-object v0

    .line 762
    :pswitch_1d
    const-string/jumbo v0, "setSnapshotSource"

    return-object v0

    .line 758
    :pswitch_1e
    const-string v0, "getSnapshotCount"

    return-object v0

    .line 754
    :pswitch_1f
    const-string/jumbo v0, "setSnapshotTestMode"

    return-object v0

    .line 750
    :pswitch_20
    const-string v0, "isSnapshotTestMode"

    return-object v0

    .line 746
    :pswitch_21
    const-string/jumbo v0, "restoreSnapshot"

    return-object v0

    .line 742
    :pswitch_22
    const-string/jumbo v0, "makeSnapshot"

    return-object v0

    .line 738
    :pswitch_23
    const-string/jumbo v0, "removeSnapshotBySource"

    return-object v0

    .line 734
    :pswitch_24
    const-string/jumbo v0, "removeSnapshotByKey"

    return-object v0

    .line 730
    :pswitch_25
    const-string/jumbo v0, "removeSnapshotByWhich"

    return-object v0

    .line 726
    :pswitch_26
    const-string/jumbo v0, "setAnimatedWallpaper"

    return-object v0

    .line 722
    :pswitch_27
    const-string v0, "getMotionWallpaperPkgName"

    return-object v0

    .line 718
    :pswitch_28
    const-string/jumbo v0, "setMotionWallpaper"

    return-object v0

    .line 714
    :pswitch_29
    const-string v0, "getVideoFileName"

    return-object v0

    .line 710
    :pswitch_2a
    const-string v0, "getVideoColor"

    return-object v0

    .line 706
    :pswitch_2b
    const-string v0, "getVideoPackage"

    return-object v0

    .line 702
    :pswitch_2c
    const-string v0, "getVideoFilePath"

    return-object v0

    .line 698
    :pswitch_2d
    const-string v0, "getWallpaperThumbnailFileDescriptor"

    return-object v0

    .line 694
    :pswitch_2e
    const-string v0, "hasVideoWallpaper"

    return-object v0

    .line 690
    :pswitch_2f
    const-string v0, "isVideoWallpaper"

    return-object v0

    .line 686
    :pswitch_30
    const-string/jumbo v0, "setVideoWallpaper"

    return-object v0

    .line 682
    :pswitch_31
    const-string v0, "isDefaultWallpaperState"

    return-object v0

    .line 678
    :pswitch_32
    const-string/jumbo v0, "semGetWallpaperCropHint"

    return-object v0

    .line 674
    :pswitch_33
    const-string/jumbo v0, "semGetWallpaperType"

    return-object v0

    .line 670
    :pswitch_34
    const-string v0, "getLockWallpaperType"

    return-object v0

    .line 666
    :pswitch_35
    const-string v0, "isDesktopStandAloneMode"

    return-object v0

    .line 662
    :pswitch_36
    const-string v0, "isDesktopModeEnabled"

    return-object v0

    .line 658
    :pswitch_37
    const-string v0, "getDesktopMode"

    return-object v0

    .line 654
    :pswitch_38
    const-string v0, "isDesktopMode"

    return-object v0

    .line 650
    :pswitch_39
    const-string v0, "lockScreenWallpaperExists"

    return-object v0

    .line 646
    :pswitch_3a
    const-string v0, "getWallpaperDimAmount"

    return-object v0

    .line 642
    :pswitch_3b
    const-string/jumbo v0, "setWallpaperDimAmount"

    return-object v0

    .line 638
    :pswitch_3c
    const-string/jumbo v0, "notifyGoingToSleep"

    return-object v0

    .line 634
    :pswitch_3d
    const-string/jumbo v0, "notifyWakingUp"

    return-object v0

    .line 630
    :pswitch_3e
    const-string/jumbo v0, "setInAmbientMode"

    return-object v0

    .line 626
    :pswitch_3f
    const-string/jumbo v0, "unregisterWallpaperColorsCallback"

    return-object v0

    .line 622
    :pswitch_40
    const-string/jumbo v0, "registerWallpaperColorsCallback"

    return-object v0

    .line 618
    :pswitch_41
    const-string v0, "addOnLocalColorsChangedListener"

    return-object v0

    .line 614
    :pswitch_42
    const-string/jumbo v0, "removeOnLocalColorsChangedListener"

    return-object v0

    .line 610
    :pswitch_43
    const-string v0, "getWallpaperColors"

    return-object v0

    .line 606
    :pswitch_44
    const-string/jumbo v0, "setCoverWallpaperCallback"

    return-object v0

    .line 602
    :pswitch_45
    const-string/jumbo v0, "setLockWallpaperCallback"

    return-object v0

    .line 598
    :pswitch_46
    const-string v0, "isWallpaperBackupAllowed"

    return-object v0

    .line 594
    :pswitch_47
    const-string v0, "isWallpaperBackupEligible"

    return-object v0

    .line 590
    :pswitch_48
    const-string v0, "isSetWallpaperAllowed"

    return-object v0

    .line 586
    :pswitch_49
    const-string v0, "isWallpaperSupported"

    return-object v0

    .line 582
    :pswitch_4a
    const-string/jumbo v0, "settingsRestored"

    return-object v0

    .line 578
    :pswitch_4b
    const-string v0, "getName"

    return-object v0

    .line 574
    :pswitch_4c
    const-string/jumbo v0, "setDisplayPadding"

    return-object v0

    .line 570
    :pswitch_4d
    const-string v0, "getHeightHint"

    return-object v0

    .line 566
    :pswitch_4e
    const-string v0, "getWidthHint"

    return-object v0

    .line 562
    :pswitch_4f
    const-string/jumbo v0, "setDimensionHints"

    return-object v0

    .line 558
    :pswitch_50
    const-string v0, "hasNamedWallpaper"

    return-object v0

    .line 554
    :pswitch_51
    const-string v0, "clearWallpaper"

    return-object v0

    .line 550
    :pswitch_52
    const-string v0, "getWallpaperInfo"

    return-object v0

    .line 546
    :pswitch_53
    const-string v0, "getWallpaperIdForUser"

    return-object v0

    .line 542
    :pswitch_54
    const-string v0, "getLockWallpaper"

    return-object v0

    .line 538
    :pswitch_55
    const-string v0, "getWallpaperWithFeature"

    return-object v0

    .line 534
    :pswitch_56
    const-string v0, "getWallpaper"

    return-object v0

    .line 530
    :pswitch_57
    const-string/jumbo v0, "setWallpaperComponent"

    return-object v0

    .line 526
    :pswitch_58
    const-string/jumbo v0, "setWallpaperComponentChecked"

    return-object v0

    .line 522
    :pswitch_59
    const-string/jumbo v0, "setWallpaperWithExtras"

    return-object v0

    .line 518
    :pswitch_5a
    const-string/jumbo v0, "setWallpaper"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
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

    .line 509
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 3861
    const/16 v0, 0x5a

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 889
    invoke-static {p1}, Landroid/app/IWallpaperManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 28
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 893
    move-object/from16 v12, p0

    move/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    const-string v11, "android.app.IWallpaperManager"

    .line 894
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v13, v10, :cond_0

    const v0, 0xffffff

    if-gt v13, v0, :cond_0

    .line 895
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 897
    :cond_0
    packed-switch v13, :pswitch_data_0

    .line 905
    packed-switch v13, :pswitch_data_1

    .line 1970
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 901
    :pswitch_0
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 902
    return v10

    .line 1959
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1961
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1962
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1963
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->isWallpaperDataExists(II)Z

    move-result v2

    .line 1964
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1965
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1966
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1944
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1946
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1948
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1950
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1951
    .local v3, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1952
    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/app/IWallpaperManager$Stub;->notifyPid(IILjava/lang/String;Z)V

    .line 1953
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1954
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1926
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Z
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 1927
    .local v6, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v14, v6}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1929
    .local v7, "_arg0":Ljava/util/List;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1931
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1933
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1935
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1936
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1937
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move v3, v9

    move/from16 v4, v16

    move-object/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Landroid/app/IWallpaperManager$Stub;->applyWallpaperColors(Ljava/util/List;IIILjava/lang/String;)V

    .line 1938
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1939
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1915
    .end local v6    # "cl":Ljava/lang/ClassLoader;
    .end local v7    # "_arg0":Ljava/util/List;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":Ljava/lang/String;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1917
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1918
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1919
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->forceRebindWallpaper(II)V

    .line 1920
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1921
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1903
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1905
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1906
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1907
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->semGetUri(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1908
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1909
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1910
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1882
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1884
    .local v8, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 1886
    .local v9, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1888
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1890
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1892
    .local v18, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1894
    .local v19, "_arg5":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/os/Bundle;

    .line 1895
    .local v20, "_arg6":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1896
    move-object/from16 v0, p0

    move-object v1, v8

    move v2, v9

    move/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/app/IWallpaperManager$Stub;->semSetUri(Ljava/lang/String;ZIILjava/lang/String;ILandroid/os/Bundle;)V

    .line 1897
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1898
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1872
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":Z
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg5":I
    .end local v20    # "_arg6":Landroid/os/Bundle;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1873
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1874
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->isVirtualWallpaperDisplay(I)Z

    move-result v1

    .line 1875
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1876
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1877
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1862
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1863
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1864
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->getDisplayId(I)I

    move-result v1

    .line 1865
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1866
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1867
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1854
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getLidState()I

    move-result v0

    .line 1855
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1856
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1857
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1845
    .end local v0    # "_result":I
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1846
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1847
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->semGetSmartCropRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 1848
    .local v1, "_result":Landroid/graphics/Rect;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1849
    invoke-virtual {v15, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1850
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1832
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/graphics/Rect;
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1834
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 1836
    .local v1, "_arg1":Landroid/graphics/Rect;
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 1837
    .local v2, "_arg2":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1838
    invoke-virtual {v12, v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->semSetSmartCropRect(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1839
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1840
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1821
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    .end local v2    # "_arg2":Landroid/graphics/Rect;
    :pswitch_c
    sget-object v0, Landroid/app/SemWallpaperColors;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemWallpaperColors;

    .line 1823
    .local v0, "_arg0":Landroid/app/SemWallpaperColors;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1824
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1825
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->semSetDLSWallpaperColors(Landroid/app/SemWallpaperColors;I)V

    .line 1826
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1827
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1810
    .end local v0    # "_arg0":Landroid/app/SemWallpaperColors;
    .end local v1    # "_arg1":I
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1812
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1813
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1814
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->semRequestWallpaperColorsAnalysis(ILjava/lang/String;)V

    .line 1815
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1816
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1800
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1801
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1802
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->semGetPrimaryWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object v1

    .line 1803
    .local v1, "_result":Landroid/app/SemWallpaperColors;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1804
    invoke-virtual {v15, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1805
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1790
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/app/SemWallpaperColors;
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1791
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1792
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->semGetWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object v1

    .line 1793
    .restart local v1    # "_result":Landroid/app/SemWallpaperColors;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1794
    invoke-virtual {v15, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1795
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1778
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/app/SemWallpaperColors;
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1780
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1781
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1782
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->getWallpaperOrientation(II)I

    move-result v2

    .line 1783
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1784
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1785
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1766
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1768
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1769
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1770
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->getWallpaperExtras(II)Landroid/os/Bundle;

    move-result-object v2

    .line 1771
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1772
    invoke-virtual {v15, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1773
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1754
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1756
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1757
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1758
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->getWallpaperComponentExtras(II)Landroid/os/Bundle;

    move-result-object v2

    .line 1759
    .restart local v2    # "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1760
    invoke-virtual {v15, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1761
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1737
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1739
    .local v6, "_arg0":I
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/ComponentName;

    .line 1741
    .local v7, "_arg1":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1743
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1745
    .local v9, "_arg3":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/Bundle;

    .line 1746
    .local v16, "_arg4":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1747
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IWallpaperManager$Stub;->setWallpaperComponentWithExtras(ILandroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 1748
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1749
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1727
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Landroid/content/ComponentName;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":I
    .end local v16    # "_arg4":Landroid/os/Bundle;
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1728
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1729
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->getHighlightFilterState(I)I

    move-result v1

    .line 1730
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1731
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1732
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1717
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1718
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1719
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->isHomeAndLockPaired(I)Z

    move-result v1

    .line 1720
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1721
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1722
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1706
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1708
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1709
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1710
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->copyPreloadedFileToWallpaperFile(ILjava/lang/String;)V

    .line 1711
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1712
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1695
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1697
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1698
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1699
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->copyFileToWallpaperFile(ILjava/lang/String;)V

    .line 1700
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1701
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1684
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1686
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1687
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1688
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->setKWPTypeLiveWallpaperWithMode(II)V

    .line 1689
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1690
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1675
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1676
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1677
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->setKWPTypeLiveWallpaper(I)V

    .line 1678
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1679
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1667
    .end local v0    # "_arg0":I
    :pswitch_1a
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getLegacyDeviceColor()Ljava/lang/String;

    move-result-object v0

    .line 1668
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1669
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1670
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1660
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_1b
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getDeviceColor()Ljava/lang/String;

    move-result-object v0

    .line 1661
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1662
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1663
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1651
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1652
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1653
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->getAnimatedPkgName(I)Ljava/lang/String;

    move-result-object v1

    .line 1654
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1655
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1656
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1641
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1642
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1643
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->isValidSnapshot(I)Z

    move-result v1

    .line 1644
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1645
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1646
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1629
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1631
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1632
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1633
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->setSnapshotSource(ILjava/lang/String;)Z

    move-result v2

    .line 1634
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1635
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1636
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1619
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1620
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1621
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->getSnapshotCount(I)I

    move-result v1

    .line 1622
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1623
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1624
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1610
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1611
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1612
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->setSnapshotTestMode(Z)V

    .line 1613
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1614
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1602
    .end local v0    # "_arg0":Z
    :pswitch_21
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->isSnapshotTestMode()Z

    move-result v0

    .line 1603
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1604
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1605
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1591
    .end local v0    # "_result":Z
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1593
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1594
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1595
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->restoreSnapshot(ILjava/lang/String;)Z

    move-result v2

    .line 1596
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1597
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1598
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1579
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1581
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1582
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1583
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->makeSnapshot(II)I

    move-result v2

    .line 1584
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1585
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1586
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1570
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1571
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1572
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->removeSnapshotBySource(Ljava/lang/String;)V

    .line 1573
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1574
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1561
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1562
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1563
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->removeSnapshotByKey(I)V

    .line 1564
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1565
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1552
    .end local v0    # "_arg0":I
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1553
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1554
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->removeSnapshotByWhich(I)V

    .line 1555
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1556
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1537
    .end local v0    # "_arg0":I
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1539
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1541
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1543
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1544
    .restart local v3    # "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1545
    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/app/IWallpaperManager$Stub;->setAnimatedWallpaper(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1546
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1547
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1527
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Z
    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1528
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1529
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->getMotionWallpaperPkgName(I)Ljava/lang/String;

    move-result-object v1

    .line 1530
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1531
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1532
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1512
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1514
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1516
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1518
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1519
    .restart local v3    # "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1520
    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/app/IWallpaperManager$Stub;->setMotionWallpaper(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1521
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1522
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1502
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Z
    :pswitch_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1503
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1504
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->getVideoFileName(I)Ljava/lang/String;

    move-result-object v1

    .line 1505
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1506
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1507
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1494
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_2b
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getVideoColor()Ljava/lang/String;

    move-result-object v0

    .line 1495
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1496
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1497
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1485
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1486
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1487
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->getVideoPackage(I)Ljava/lang/String;

    move-result-object v1

    .line 1488
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1489
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1490
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1475
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1476
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1477
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->getVideoFilePath(I)Ljava/lang/String;

    move-result-object v1

    .line 1478
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1479
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1480
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1459
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1461
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1463
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1465
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1466
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1467
    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/app/IWallpaperManager$Stub;->getWallpaperThumbnailFileDescriptor(IIII)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 1468
    .local v4, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1469
    invoke-virtual {v15, v4, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1470
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1451
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_2f
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->hasVideoWallpaper()Z

    move-result v0

    .line 1452
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1453
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1454
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1444
    .end local v0    # "_result":Z
    :pswitch_30
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->isVideoWallpaper()Z

    move-result v0

    .line 1445
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1446
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1447
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1422
    .end local v0    # "_result":Z
    :pswitch_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1424
    .local v9, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1426
    .local v16, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1428
    .local v17, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1430
    .local v18, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1432
    .local v19, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1434
    .local v20, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v21

    .line 1436
    .local v21, "_arg6":Z
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/Bundle;

    .line 1437
    .local v22, "_arg7":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1438
    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v7, v21

    move-object/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/app/IWallpaperManager$Stub;->setVideoWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLandroid/os/Bundle;)V

    .line 1439
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1440
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1412
    .end local v9    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":Ljava/lang/String;
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg4":I
    .end local v20    # "_arg5":I
    .end local v21    # "_arg6":Z
    .end local v22    # "_arg7":Landroid/os/Bundle;
    :pswitch_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1413
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1414
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->isDefaultWallpaperState(I)Z

    move-result v1

    .line 1415
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1416
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1417
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1402
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1403
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1404
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->semGetWallpaperCropHint(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 1405
    .local v1, "_result":Landroid/graphics/Rect;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1406
    invoke-virtual {v15, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1407
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1392
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/graphics/Rect;
    :pswitch_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1393
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1394
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->semGetWallpaperType(I)I

    move-result v1

    .line 1395
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1396
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1397
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1384
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_35
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getLockWallpaperType()I

    move-result v0

    .line 1385
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1386
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1387
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1377
    .end local v0    # "_result":I
    :pswitch_36
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->isDesktopStandAloneMode()Z

    move-result v0

    .line 1378
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1379
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1380
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1368
    .end local v0    # "_result":Z
    :pswitch_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1369
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1370
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->isDesktopModeEnabled(I)Z

    move-result v1

    .line 1371
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1372
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1373
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1360
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_38
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getDesktopMode()I

    move-result v0

    .line 1361
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1362
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1363
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1353
    .end local v0    # "_result":I
    :pswitch_39
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->isDesktopMode()Z

    move-result v0

    .line 1354
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1355
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1356
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1346
    .end local v0    # "_result":Z
    :pswitch_3a
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->lockScreenWallpaperExists()Z

    move-result v0

    .line 1347
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1348
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1349
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1339
    .end local v0    # "_result":Z
    :pswitch_3b
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getWallpaperDimAmount()F

    move-result v0

    .line 1340
    .local v0, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1341
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1342
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1332
    .end local v0    # "_result":F
    :pswitch_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 1333
    .local v0, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1334
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->setWallpaperDimAmount(F)V

    .line 1335
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1319
    .end local v0    # "_arg0":F
    :pswitch_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1321
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1323
    .local v1, "_arg1":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1324
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1325
    invoke-virtual {v12, v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->notifyGoingToSleep(IILandroid/os/Bundle;)V

    .line 1326
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1327
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1307
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :pswitch_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1309
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1311
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1312
    .restart local v2    # "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1313
    invoke-virtual {v12, v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->notifyWakingUp(IILandroid/os/Bundle;)V

    .line 1314
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1297
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :pswitch_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1299
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1300
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1301
    invoke-virtual {v12, v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->setInAmbientMode(ZJ)V

    .line 1302
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1284
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":J
    :pswitch_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v0

    .line 1286
    .local v0, "_arg0":Landroid/app/IWallpaperManagerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1288
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1289
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1290
    invoke-virtual {v12, v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->unregisterWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V

    .line 1291
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1292
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1271
    .end local v0    # "_arg0":Landroid/app/IWallpaperManagerCallback;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v0

    .line 1273
    .restart local v0    # "_arg0":Landroid/app/IWallpaperManagerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1275
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1276
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1277
    invoke-virtual {v12, v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->registerWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V

    .line 1278
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1279
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1254
    .end local v0    # "_arg0":Landroid/app/IWallpaperManagerCallback;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ILocalWallpaperColorConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ILocalWallpaperColorConsumer;

    move-result-object v6

    .line 1256
    .local v6, "_arg0":Landroid/app/ILocalWallpaperColorConsumer;
    sget-object v0, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1258
    .local v7, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1260
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1262
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1263
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1264
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IWallpaperManager$Stub;->addOnLocalColorsChangedListener(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;III)V

    .line 1265
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1266
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1237
    .end local v6    # "_arg0":Landroid/app/ILocalWallpaperColorConsumer;
    .end local v7    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ILocalWallpaperColorConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ILocalWallpaperColorConsumer;

    move-result-object v6

    .line 1239
    .restart local v6    # "_arg0":Landroid/app/ILocalWallpaperColorConsumer;
    sget-object v0, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1241
    .restart local v7    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1243
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1245
    .restart local v9    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1246
    .restart local v16    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1247
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IWallpaperManager$Stub;->removeOnLocalColorsChangedListener(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;III)V

    .line 1248
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1249
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1223
    .end local v6    # "_arg0":Landroid/app/ILocalWallpaperColorConsumer;
    .end local v7    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1225
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1227
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1228
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1229
    invoke-virtual {v12, v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->getWallpaperColors(III)Landroid/app/WallpaperColors;

    move-result-object v3

    .line 1230
    .local v3, "_result":Landroid/app/WallpaperColors;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1231
    invoke-virtual {v15, v3, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1232
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1213
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Landroid/app/WallpaperColors;
    :pswitch_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v0

    .line 1214
    .local v0, "_arg0":Landroid/app/IWallpaperManagerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1215
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->setCoverWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z

    move-result v1

    .line 1216
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1217
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1218
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1203
    .end local v0    # "_arg0":Landroid/app/IWallpaperManagerCallback;
    .end local v1    # "_result":Z
    :pswitch_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v0

    .line 1204
    .restart local v0    # "_arg0":Landroid/app/IWallpaperManagerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1205
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->setLockWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z

    move-result v1

    .line 1206
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1207
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1208
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1191
    .end local v0    # "_arg0":Landroid/app/IWallpaperManagerCallback;
    .end local v1    # "_result":Z
    :pswitch_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1193
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1194
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1195
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->isWallpaperBackupAllowed(II)Z

    move-result v2

    .line 1196
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1197
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1198
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1179
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1181
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1182
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1183
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->isWallpaperBackupEligible(II)Z

    move-result v2

    .line 1184
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1185
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1186
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1169
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1170
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1171
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v1

    .line 1172
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1173
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1174
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1159
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1160
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1161
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v1

    .line 1162
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1163
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1164
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1152
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_4b
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->settingsRestored()V

    .line 1153
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1154
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1145
    :pswitch_4c
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1146
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1147
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1148
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1133
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_4d
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 1135
    .local v0, "_arg0":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1137
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1138
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1139
    invoke-virtual {v12, v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->setDisplayPadding(Landroid/graphics/Rect;Ljava/lang/String;I)V

    .line 1140
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1141
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1123
    .end local v0    # "_arg0":Landroid/graphics/Rect;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1124
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1125
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->getHeightHint(I)I

    move-result v1

    .line 1126
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1127
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1128
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1113
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_4f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1114
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1115
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->getWidthHint(I)I

    move-result v1

    .line 1116
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1117
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1118
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1098
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1100
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1102
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1104
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1105
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1106
    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/app/IWallpaperManager$Stub;->setDimensionHints(IILjava/lang/String;I)V

    .line 1107
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1108
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1088
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    :pswitch_51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1089
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1090
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->hasNamedWallpaper(Ljava/lang/String;)Z

    move-result v1

    .line 1091
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1092
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1093
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1075
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1077
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1079
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1080
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1081
    invoke-virtual {v12, v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->clearWallpaper(Ljava/lang/String;II)V

    .line 1082
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1083
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1063
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1065
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1066
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1067
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->getWallpaperInfo(II)Landroid/app/WallpaperInfo;

    move-result-object v2

    .line 1068
    .local v2, "_result":Landroid/app/WallpaperInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1069
    invoke-virtual {v15, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1070
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1051
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/app/WallpaperInfo;
    :pswitch_54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1053
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1054
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1055
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->getWallpaperIdForUser(II)I

    move-result v2

    .line 1056
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1057
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1058
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1034
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v0

    .line 1036
    .local v0, "_arg0":Landroid/app/IWallpaperManagerCallback;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1038
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1040
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1041
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1042
    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/app/IWallpaperManager$Stub;->getLockWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 1043
    .restart local v4    # "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1044
    invoke-virtual {v15, v4, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1045
    invoke-virtual {v15, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1046
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 1009
    .end local v0    # "_arg0":Landroid/app/IWallpaperManagerCallback;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1011
    .local v9, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1013
    .local v16, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v17

    .line 1015
    .local v17, "_arg2":Landroid/app/IWallpaperManagerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1017
    .local v18, "_arg3":I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v8, v0

    .line 1019
    .local v8, "_arg4":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1021
    .local v19, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1023
    .local v20, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v21

    .line 1024
    .local v21, "_arg7":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1025
    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move/from16 v4, v18

    move-object v5, v8

    move/from16 v6, v19

    move/from16 v7, v20

    move-object/from16 v23, v8

    .end local v8    # "_arg4":Landroid/os/Bundle;
    .local v23, "_arg4":Landroid/os/Bundle;
    move/from16 v8, v21

    invoke-virtual/range {v0 .. v8}, Landroid/app/IWallpaperManager$Stub;->getWallpaperWithFeature(Ljava/lang/String;Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;IIZ)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1026
    .local v0, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1027
    invoke-virtual {v15, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1028
    move-object/from16 v1, v23

    .end local v23    # "_arg4":Landroid/os/Bundle;
    .local v1, "_arg4":Landroid/os/Bundle;
    invoke-virtual {v15, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1029
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 990
    .end local v0    # "_result":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg4":Landroid/os/Bundle;
    .end local v9    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":Landroid/app/IWallpaperManagerCallback;
    .end local v18    # "_arg3":I
    .end local v19    # "_arg5":I
    .end local v20    # "_arg6":I
    .end local v21    # "_arg7":Z
    :pswitch_57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 992
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v7

    .line 994
    .local v7, "_arg1":Landroid/app/IWallpaperManagerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 996
    .local v8, "_arg2":I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v9, v0

    .line 998
    .local v9, "_arg3":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 999
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1000
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move-object v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IWallpaperManager$Stub;->getWallpaper(Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1001
    .restart local v0    # "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1002
    invoke-virtual {v15, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1003
    invoke-virtual {v15, v9, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1004
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 981
    .end local v0    # "_result":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Landroid/app/IWallpaperManagerCallback;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Landroid/os/Bundle;
    .end local v16    # "_arg4":I
    :pswitch_58
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 982
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 983
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->setWallpaperComponent(Landroid/content/ComponentName;)V

    .line 984
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 985
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 968
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :pswitch_59
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 970
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 972
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 973
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 974
    invoke-virtual {v12, v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->setWallpaperComponentChecked(Landroid/content/ComponentName;Ljava/lang/String;I)V

    .line 975
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 976
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_0

    .line 937
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_5a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 939
    .local v16, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 941
    .local v17, "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/graphics/Rect;

    .line 943
    .local v18, "_arg2":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 945
    .local v19, "_arg3":Z
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v9, v0

    .line 947
    .local v9, "_arg4":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 949
    .local v20, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v21

    .line 951
    .local v21, "_arg6":Landroid/app/IWallpaperManagerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 953
    .local v22, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 955
    .local v23, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v24

    .line 957
    .local v24, "_arg9":Z
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/os/Bundle;

    .line 958
    .local v25, "_arg10":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 959
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move/from16 v4, v19

    move-object v5, v9

    move/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    move-object v12, v9

    .end local v9    # "_arg4":Landroid/os/Bundle;
    .local v12, "_arg4":Landroid/os/Bundle;
    move/from16 v9, v23

    move v13, v10

    move/from16 v10, v24

    move-object/from16 v26, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v26, "descriptor":Ljava/lang/String;
    move-object/from16 v11, v25

    invoke-virtual/range {v0 .. v11}, Landroid/app/IWallpaperManager$Stub;->setWallpaperWithExtras(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;IIZLandroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 960
    .local v0, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 961
    invoke-virtual {v15, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 962
    invoke-virtual {v15, v12, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 963
    goto :goto_0

    .line 910
    .end local v0    # "_result":Landroid/os/ParcelFileDescriptor;
    .end local v12    # "_arg4":Landroid/os/Bundle;
    .end local v16    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Landroid/graphics/Rect;
    .end local v19    # "_arg3":Z
    .end local v20    # "_arg5":I
    .end local v21    # "_arg6":Landroid/app/IWallpaperManagerCallback;
    .end local v22    # "_arg7":I
    .end local v23    # "_arg8":I
    .end local v24    # "_arg9":Z
    .end local v25    # "_arg10":Landroid/os/Bundle;
    .end local v26    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_5b
    move v13, v10

    move-object/from16 v26, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v26    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 912
    .local v10, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 914
    .local v11, "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/graphics/Rect;

    .line 916
    .local v12, "_arg2":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 918
    .local v16, "_arg3":Z
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v9, v0

    .line 920
    .restart local v9    # "_arg4":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 922
    .local v17, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v18

    .line 924
    .local v18, "_arg6":Landroid/app/IWallpaperManagerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 926
    .local v19, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 927
    .local v20, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 928
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v11

    move-object v3, v12

    move/from16 v4, v16

    move-object v5, v9

    move/from16 v6, v17

    move-object/from16 v7, v18

    move/from16 v8, v19

    move-object/from16 v27, v9

    .end local v9    # "_arg4":Landroid/os/Bundle;
    .local v27, "_arg4":Landroid/os/Bundle;
    move/from16 v9, v20

    invoke-virtual/range {v0 .. v9}, Landroid/app/IWallpaperManager$Stub;->setWallpaper(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 929
    .restart local v0    # "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 930
    invoke-virtual {v15, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 931
    move-object/from16 v1, v27

    .end local v27    # "_arg4":Landroid/os/Bundle;
    .local v1, "_arg4":Landroid/os/Bundle;
    invoke-virtual {v15, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 932
    nop

    .line 1973
    .end local v0    # "_result":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg4":Landroid/os/Bundle;
    .end local v10    # "_arg0":Ljava/lang/String;
    .end local v11    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg2":Landroid/graphics/Rect;
    .end local v16    # "_arg3":Z
    .end local v17    # "_arg5":I
    .end local v18    # "_arg6":Landroid/app/IWallpaperManagerCallback;
    .end local v19    # "_arg7":I
    .end local v20    # "_arg8":I
    :goto_0
    return v13

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
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
