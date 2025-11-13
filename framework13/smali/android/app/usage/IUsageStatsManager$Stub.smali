.class public abstract Landroid/app/usage/IUsageStatsManager$Stub;
.super Landroid/os/Binder;
.source "IUsageStatsManager.java"

# interfaces
.implements Landroid/app/usage/IUsageStatsManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/IUsageStatsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/IUsageStatsManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.usage.IUsageStatsManager"

.field static final blacklist TRANSACTION_clearBroadcastEvents:I = 0x22

.field static final blacklist TRANSACTION_clearBroadcastResponseStats:I = 0x21

.field static final blacklist TRANSACTION_deleteUsageStats:I = 0x27

.field static final blacklist TRANSACTION_forceUsageSourceSettingRead:I = 0x1e

.field static final blacklist TRANSACTION_getAppMinStandbyBucket:I = 0x10

.field static final greylist-max-o TRANSACTION_getAppStandbyBucket:I = 0xc

.field static final greylist-max-o TRANSACTION_getAppStandbyBuckets:I = 0xe

.field static final blacklist TRANSACTION_getAppStandbyConstant:I = 0x23

.field static final blacklist TRANSACTION_getLastTimeAnyComponentUsed:I = 0x1f

.field static final blacklist TRANSACTION_getUsageSource:I = 0x1d

.field static final greylist-max-o TRANSACTION_isAppInactive:I = 0x9

.field static final greylist-max-o TRANSACTION_onCarrierPrivilegedAppsChanged:I = 0xa

.field static final blacklist TRANSACTION_queryBroadcastResponseStats:I = 0x20

.field static final greylist-max-o TRANSACTION_queryConfigurationStats:I = 0x2

.field static final greylist-max-o TRANSACTION_queryEventStats:I = 0x3

.field static final greylist-max-o TRANSACTION_queryEvents:I = 0x4

.field static final greylist-max-o TRANSACTION_queryEventsForPackage:I = 0x5

.field static final greylist-max-o TRANSACTION_queryEventsForPackageForUser:I = 0x7

.field static final greylist-max-o TRANSACTION_queryEventsForUser:I = 0x6

.field static final greylist-max-o TRANSACTION_queryUsageStats:I = 0x1

.field static final blacklist TRANSACTION_registerAppUsageLimitObserver:I = 0x17

.field static final greylist-max-o TRANSACTION_registerAppUsageObserver:I = 0x13

.field static final blacklist TRANSACTION_registerUsageSessionObserver:I = 0x15

.field static final blacklist TRANSACTION_registerUsageStatsWatcher:I = 0x24

.field static final blacklist TRANSACTION_registerUsageStatsWatcherWithComponent:I = 0x25

.field static final greylist-max-o TRANSACTION_reportChooserSelection:I = 0xb

.field static final blacklist TRANSACTION_reportPastUsageStart:I = 0x1a

.field static final blacklist TRANSACTION_reportUsageStart:I = 0x19

.field static final blacklist TRANSACTION_reportUsageStop:I = 0x1b

.field static final blacklist TRANSACTION_reportUserInteraction:I = 0x1c

.field static final greylist-max-o TRANSACTION_setAppInactive:I = 0x8

.field static final greylist-max-o TRANSACTION_setAppStandbyBucket:I = 0xd

.field static final greylist-max-o TRANSACTION_setAppStandbyBuckets:I = 0xf

.field static final blacklist TRANSACTION_setEstimatedLaunchTime:I = 0x11

.field static final blacklist TRANSACTION_setEstimatedLaunchTimes:I = 0x12

.field static final blacklist TRANSACTION_unregisterAppUsageLimitObserver:I = 0x18

.field static final greylist-max-o TRANSACTION_unregisterAppUsageObserver:I = 0x14

.field static final blacklist TRANSACTION_unregisterUsageSessionObserver:I = 0x16

.field static final blacklist TRANSACTION_unregisterUsageStatsWatcher:I = 0x26


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 161
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 162
    const-string v0, "android.app.usage.IUsageStatsManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/usage/IUsageStatsManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 170
    if-nez p0, :cond_0

    .line 171
    const/4 v0, 0x0

    return-object v0

    .line 173
    :cond_0
    const-string v0, "android.app.usage.IUsageStatsManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 174
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/usage/IUsageStatsManager;

    if-eqz v1, :cond_1

    .line 175
    move-object v1, v0

    check-cast v1, Landroid/app/usage/IUsageStatsManager;

    return-object v1

    .line 177
    :cond_1
    new-instance v1, Landroid/app/usage/IUsageStatsManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/usage/IUsageStatsManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 186
    packed-switch p0, :pswitch_data_0

    .line 346
    const/4 v0, 0x0

    return-object v0

    .line 342
    :pswitch_0
    const-string v0, "deleteUsageStats"

    return-object v0

    .line 338
    :pswitch_1
    const-string/jumbo v0, "unregisterUsageStatsWatcher"

    return-object v0

    .line 334
    :pswitch_2
    const-string/jumbo v0, "registerUsageStatsWatcherWithComponent"

    return-object v0

    .line 330
    :pswitch_3
    const-string/jumbo v0, "registerUsageStatsWatcher"

    return-object v0

    .line 326
    :pswitch_4
    const-string v0, "getAppStandbyConstant"

    return-object v0

    .line 322
    :pswitch_5
    const-string v0, "clearBroadcastEvents"

    return-object v0

    .line 318
    :pswitch_6
    const-string v0, "clearBroadcastResponseStats"

    return-object v0

    .line 314
    :pswitch_7
    const-string/jumbo v0, "queryBroadcastResponseStats"

    return-object v0

    .line 310
    :pswitch_8
    const-string v0, "getLastTimeAnyComponentUsed"

    return-object v0

    .line 306
    :pswitch_9
    const-string v0, "forceUsageSourceSettingRead"

    return-object v0

    .line 302
    :pswitch_a
    const-string v0, "getUsageSource"

    return-object v0

    .line 298
    :pswitch_b
    const-string/jumbo v0, "reportUserInteraction"

    return-object v0

    .line 294
    :pswitch_c
    const-string/jumbo v0, "reportUsageStop"

    return-object v0

    .line 290
    :pswitch_d
    const-string/jumbo v0, "reportPastUsageStart"

    return-object v0

    .line 286
    :pswitch_e
    const-string/jumbo v0, "reportUsageStart"

    return-object v0

    .line 282
    :pswitch_f
    const-string/jumbo v0, "unregisterAppUsageLimitObserver"

    return-object v0

    .line 278
    :pswitch_10
    const-string/jumbo v0, "registerAppUsageLimitObserver"

    return-object v0

    .line 274
    :pswitch_11
    const-string/jumbo v0, "unregisterUsageSessionObserver"

    return-object v0

    .line 270
    :pswitch_12
    const-string/jumbo v0, "registerUsageSessionObserver"

    return-object v0

    .line 266
    :pswitch_13
    const-string/jumbo v0, "unregisterAppUsageObserver"

    return-object v0

    .line 262
    :pswitch_14
    const-string/jumbo v0, "registerAppUsageObserver"

    return-object v0

    .line 258
    :pswitch_15
    const-string/jumbo v0, "setEstimatedLaunchTimes"

    return-object v0

    .line 254
    :pswitch_16
    const-string/jumbo v0, "setEstimatedLaunchTime"

    return-object v0

    .line 250
    :pswitch_17
    const-string v0, "getAppMinStandbyBucket"

    return-object v0

    .line 246
    :pswitch_18
    const-string/jumbo v0, "setAppStandbyBuckets"

    return-object v0

    .line 242
    :pswitch_19
    const-string v0, "getAppStandbyBuckets"

    return-object v0

    .line 238
    :pswitch_1a
    const-string/jumbo v0, "setAppStandbyBucket"

    return-object v0

    .line 234
    :pswitch_1b
    const-string v0, "getAppStandbyBucket"

    return-object v0

    .line 230
    :pswitch_1c
    const-string/jumbo v0, "reportChooserSelection"

    return-object v0

    .line 226
    :pswitch_1d
    const-string/jumbo v0, "onCarrierPrivilegedAppsChanged"

    return-object v0

    .line 222
    :pswitch_1e
    const-string v0, "isAppInactive"

    return-object v0

    .line 218
    :pswitch_1f
    const-string/jumbo v0, "setAppInactive"

    return-object v0

    .line 214
    :pswitch_20
    const-string/jumbo v0, "queryEventsForPackageForUser"

    return-object v0

    .line 210
    :pswitch_21
    const-string/jumbo v0, "queryEventsForUser"

    return-object v0

    .line 206
    :pswitch_22
    const-string/jumbo v0, "queryEventsForPackage"

    return-object v0

    .line 202
    :pswitch_23
    const-string/jumbo v0, "queryEvents"

    return-object v0

    .line 198
    :pswitch_24
    const-string/jumbo v0, "queryEventStats"

    return-object v0

    .line 194
    :pswitch_25
    const-string/jumbo v0, "queryConfigurationStats"

    return-object v0

    .line 190
    :pswitch_26
    const-string/jumbo v0, "queryUsageStats"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 181
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1645
    const/16 v0, 0x26

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 353
    invoke-static {p1}, Landroid/app/usage/IUsageStatsManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 25
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 357
    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    const-string v14, "android.app.usage.IUsageStatsManager"

    .line 358
    .local v14, "descriptor":Ljava/lang/String;
    const/4 v15, 0x1

    if-lt v11, v15, :cond_0

    const v0, 0xffffff

    if-gt v11, v0, :cond_0

    .line 359
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    :cond_0
    packed-switch v11, :pswitch_data_0

    .line 369
    packed-switch v11, :pswitch_data_1

    .line 877
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 365
    :pswitch_0
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 366
    return v15

    .line 871
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/IUsageStatsManager$Stub;->deleteUsageStats()V

    .line 872
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 873
    goto/16 :goto_0

    .line 863
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/usage/IUsageStatsWatcher;

    move-result-object v0

    .line 864
    .local v0, "_arg0":Lcom/samsung/android/app/usage/IUsageStatsWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 865
    invoke-virtual {v10, v0}, Landroid/app/usage/IUsageStatsManager$Stub;->unregisterUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;)V

    .line 866
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 867
    goto/16 :goto_0

    .line 852
    .end local v0    # "_arg0":Lcom/samsung/android/app/usage/IUsageStatsWatcher;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/usage/IUsageStatsWatcher;

    move-result-object v0

    .line 854
    .restart local v0    # "_arg0":Lcom/samsung/android/app/usage/IUsageStatsWatcher;
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 855
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 856
    invoke-virtual {v10, v0, v1}, Landroid/app/usage/IUsageStatsManager$Stub;->registerUsageStatsWatcherWithComponent(Lcom/samsung/android/app/usage/IUsageStatsWatcher;Ljava/util/List;)V

    .line 857
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 858
    goto/16 :goto_0

    .line 843
    .end local v0    # "_arg0":Lcom/samsung/android/app/usage/IUsageStatsWatcher;
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/usage/IUsageStatsWatcher;

    move-result-object v0

    .line 844
    .restart local v0    # "_arg0":Lcom/samsung/android/app/usage/IUsageStatsWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 845
    invoke-virtual {v10, v0}, Landroid/app/usage/IUsageStatsManager$Stub;->registerUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;)V

    .line 846
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 847
    goto/16 :goto_0

    .line 833
    .end local v0    # "_arg0":Lcom/samsung/android/app/usage/IUsageStatsWatcher;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 834
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 835
    invoke-virtual {v10, v0}, Landroid/app/usage/IUsageStatsManager$Stub;->getAppStandbyConstant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 836
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 837
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 838
    goto/16 :goto_0

    .line 822
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 824
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 825
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 826
    invoke-virtual {v10, v0, v1}, Landroid/app/usage/IUsageStatsManager$Stub;->clearBroadcastEvents(Ljava/lang/String;I)V

    .line 827
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 828
    goto/16 :goto_0

    .line 807
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 809
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 811
    .local v7, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 813
    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 814
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 815
    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v7

    move-object v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/IUsageStatsManager$Stub;->clearBroadcastResponseStats(Ljava/lang/String;JLjava/lang/String;I)V

    .line 816
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 817
    goto/16 :goto_0

    .line 791
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":J
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":I
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 793
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 795
    .restart local v7    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 797
    .restart local v9    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 798
    .restart local v16    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 799
    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v7

    move-object v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/IUsageStatsManager$Stub;->queryBroadcastResponseStats(Ljava/lang/String;JLjava/lang/String;I)Landroid/app/usage/BroadcastResponseStatsList;

    move-result-object v0

    .line 800
    .local v0, "_result":Landroid/app/usage/BroadcastResponseStatsList;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 801
    invoke-virtual {v13, v0, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 802
    goto/16 :goto_0

    .line 779
    .end local v0    # "_result":Landroid/app/usage/BroadcastResponseStatsList;
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":J
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":I
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 781
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 782
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 783
    invoke-virtual {v10, v0, v1}, Landroid/app/usage/IUsageStatsManager$Stub;->getLastTimeAnyComponentUsed(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 784
    .local v2, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 785
    invoke-virtual {v13, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 786
    goto/16 :goto_0

    .line 772
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":J
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/IUsageStatsManager$Stub;->forceUsageSourceSettingRead()V

    .line 773
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 774
    goto/16 :goto_0

    .line 765
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/IUsageStatsManager$Stub;->getUsageSource()I

    move-result v0

    .line 766
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 768
    goto/16 :goto_0

    .line 755
    .end local v0    # "_result":I
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 757
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 758
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 759
    invoke-virtual {v10, v0, v1}, Landroid/app/usage/IUsageStatsManager$Stub;->reportUserInteraction(Ljava/lang/String;I)V

    .line 760
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 761
    goto/16 :goto_0

    .line 742
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 744
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 746
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 747
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 748
    invoke-virtual {v10, v0, v1, v2}, Landroid/app/usage/IUsageStatsManager$Stub;->reportUsageStop(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 750
    goto/16 :goto_0

    .line 727
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 729
    .local v6, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 731
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 733
    .local v8, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 734
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 735
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-wide v3, v8

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/IUsageStatsManager$Stub;->reportPastUsageStart(Landroid/os/IBinder;Ljava/lang/String;JLjava/lang/String;)V

    .line 736
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 737
    goto/16 :goto_0

    .line 714
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":J
    .end local v16    # "_arg3":Ljava/lang/String;
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 716
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 718
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 719
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 720
    invoke-virtual {v10, v0, v1, v2}, Landroid/app/usage/IUsageStatsManager$Stub;->reportUsageStart(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 722
    goto/16 :goto_0

    .line 703
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 705
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 706
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 707
    invoke-virtual {v10, v0, v1}, Landroid/app/usage/IUsageStatsManager$Stub;->unregisterAppUsageLimitObserver(ILjava/lang/String;)V

    .line 708
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 709
    goto/16 :goto_0

    .line 684
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 686
    .local v9, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v16

    .line 688
    .local v16, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 690
    .local v17, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 692
    .local v19, "_arg3":J
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/app/PendingIntent;

    .line 694
    .local v21, "_arg4":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 695
    .local v22, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 696
    move-object/from16 v0, p0

    move v1, v9

    move-object/from16 v2, v16

    move-wide/from16 v3, v17

    move-wide/from16 v5, v19

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/app/usage/IUsageStatsManager$Stub;->registerAppUsageLimitObserver(I[Ljava/lang/String;JJLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 697
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    goto/16 :goto_0

    .line 673
    .end local v9    # "_arg0":I
    .end local v16    # "_arg1":[Ljava/lang/String;
    .end local v17    # "_arg2":J
    .end local v19    # "_arg3":J
    .end local v21    # "_arg4":Landroid/app/PendingIntent;
    .end local v22    # "_arg5":Ljava/lang/String;
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 675
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 676
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 677
    invoke-virtual {v10, v0, v1}, Landroid/app/usage/IUsageStatsManager$Stub;->unregisterUsageSessionObserver(ILjava/lang/String;)V

    .line 678
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    goto/16 :goto_0

    .line 652
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 654
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v17

    .line 656
    .local v17, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 658
    .local v18, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .line 660
    .local v20, "_arg3":J
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Landroid/app/PendingIntent;

    .line 662
    .local v22, "_arg4":Landroid/app/PendingIntent;
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Landroid/app/PendingIntent;

    .line 664
    .local v23, "_arg5":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 665
    .local v24, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 666
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-wide/from16 v3, v18

    move-wide/from16 v5, v20

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    invoke-virtual/range {v0 .. v9}, Landroid/app/usage/IUsageStatsManager$Stub;->registerUsageSessionObserver(I[Ljava/lang/String;JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 667
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    goto/16 :goto_0

    .line 641
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":[Ljava/lang/String;
    .end local v18    # "_arg2":J
    .end local v20    # "_arg3":J
    .end local v22    # "_arg4":Landroid/app/PendingIntent;
    .end local v23    # "_arg5":Landroid/app/PendingIntent;
    .end local v24    # "_arg6":Ljava/lang/String;
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 643
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 644
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 645
    invoke-virtual {v10, v0, v1}, Landroid/app/usage/IUsageStatsManager$Stub;->unregisterAppUsageObserver(ILjava/lang/String;)V

    .line 646
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    goto/16 :goto_0

    .line 624
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 626
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v8

    .line 628
    .local v8, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 630
    .local v16, "_arg2":J
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/PendingIntent;

    .line 632
    .local v9, "_arg3":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 633
    .local v18, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 634
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move-wide/from16 v3, v16

    move-object v5, v9

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/app/usage/IUsageStatsManager$Stub;->registerAppUsageObserver(I[Ljava/lang/String;JLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 635
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    goto/16 :goto_0

    .line 613
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":[Ljava/lang/String;
    .end local v9    # "_arg3":Landroid/app/PendingIntent;
    .end local v16    # "_arg2":J
    .end local v18    # "_arg4":Ljava/lang/String;
    :pswitch_16
    sget-object v0, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    .line 615
    .local v0, "_arg0":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 616
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 617
    invoke-virtual {v10, v0, v1}, Landroid/app/usage/IUsageStatsManager$Stub;->setEstimatedLaunchTimes(Landroid/content/pm/ParceledListSlice;I)V

    .line 618
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    goto/16 :goto_0

    .line 600
    .end local v0    # "_arg0":Landroid/content/pm/ParceledListSlice;
    .end local v1    # "_arg1":I
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 602
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 604
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 605
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 606
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/app/usage/IUsageStatsManager$Stub;->setEstimatedLaunchTime(Ljava/lang/String;JI)V

    .line 607
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    goto/16 :goto_0

    .line 586
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":I
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 588
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 590
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 591
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 592
    invoke-virtual {v10, v0, v1, v2}, Landroid/app/usage/IUsageStatsManager$Stub;->getAppMinStandbyBucket(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 593
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 595
    goto/16 :goto_0

    .line 575
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :pswitch_19
    sget-object v0, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    .line 577
    .local v0, "_arg0":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 578
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 579
    invoke-virtual {v10, v0, v1}, Landroid/app/usage/IUsageStatsManager$Stub;->setAppStandbyBuckets(Landroid/content/pm/ParceledListSlice;I)V

    .line 580
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    goto/16 :goto_0

    .line 563
    .end local v0    # "_arg0":Landroid/content/pm/ParceledListSlice;
    .end local v1    # "_arg1":I
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 565
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 566
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 567
    invoke-virtual {v10, v0, v1}, Landroid/app/usage/IUsageStatsManager$Stub;->getAppStandbyBuckets(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 568
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    invoke-virtual {v13, v2, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 570
    goto/16 :goto_0

    .line 550
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 552
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 554
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 555
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 556
    invoke-virtual {v10, v0, v1, v2}, Landroid/app/usage/IUsageStatsManager$Stub;->setAppStandbyBucket(Ljava/lang/String;II)V

    .line 557
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    goto/16 :goto_0

    .line 536
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 538
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 540
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 541
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 542
    invoke-virtual {v10, v0, v1, v2}, Landroid/app/usage/IUsageStatsManager$Stub;->getAppStandbyBucket(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 543
    .restart local v3    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 545
    goto/16 :goto_0

    .line 519
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 521
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 523
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 525
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v9

    .line 527
    .local v9, "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 528
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 529
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/IUsageStatsManager$Stub;->reportChooserSelection(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    goto/16 :goto_0

    .line 512
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":[Ljava/lang/String;
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_1e
    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/IUsageStatsManager$Stub;->onCarrierPrivilegedAppsChanged()V

    .line 513
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    goto/16 :goto_0

    .line 499
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 501
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 503
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 504
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 505
    invoke-virtual {v10, v0, v1, v2}, Landroid/app/usage/IUsageStatsManager$Stub;->isAppInactive(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    .line 506
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 508
    goto/16 :goto_0

    .line 486
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 488
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 490
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 491
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 492
    invoke-virtual {v10, v0, v1, v2}, Landroid/app/usage/IUsageStatsManager$Stub;->setAppInactive(Ljava/lang/String;ZI)V

    .line 493
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    goto/16 :goto_0

    .line 468
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 470
    .local v8, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 472
    .local v16, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 474
    .local v18, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 476
    .local v19, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 477
    .local v20, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 478
    move-object/from16 v0, p0

    move-wide v1, v8

    move-wide/from16 v3, v16

    move/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/app/usage/IUsageStatsManager$Stub;->queryEventsForPackageForUser(JJILjava/lang/String;Ljava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object v0

    .line 479
    .local v0, "_result":Landroid/app/usage/UsageEvents;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    invoke-virtual {v13, v0, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 481
    goto/16 :goto_0

    .line 452
    .end local v0    # "_result":Landroid/app/usage/UsageEvents;
    .end local v8    # "_arg0":J
    .end local v16    # "_arg1":J
    .end local v18    # "_arg2":I
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v20    # "_arg4":Ljava/lang/String;
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 454
    .local v7, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 456
    .restart local v16    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 458
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 459
    .local v18, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 460
    move-object/from16 v0, p0

    move-wide v1, v7

    move-wide/from16 v3, v16

    move v5, v9

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/app/usage/IUsageStatsManager$Stub;->queryEventsForUser(JJILjava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object v0

    .line 461
    .restart local v0    # "_result":Landroid/app/usage/UsageEvents;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    invoke-virtual {v13, v0, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 463
    goto/16 :goto_0

    .line 438
    .end local v0    # "_result":Landroid/app/usage/UsageEvents;
    .end local v7    # "_arg0":J
    .end local v9    # "_arg2":I
    .end local v16    # "_arg1":J
    .end local v18    # "_arg3":Ljava/lang/String;
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 440
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 442
    .local v8, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 443
    .local v16, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 444
    move-object/from16 v0, p0

    move-wide v1, v6

    move-wide v3, v8

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/IUsageStatsManager$Stub;->queryEventsForPackage(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object v0

    .line 445
    .restart local v0    # "_result":Landroid/app/usage/UsageEvents;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    invoke-virtual {v13, v0, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 447
    goto/16 :goto_0

    .line 424
    .end local v0    # "_result":Landroid/app/usage/UsageEvents;
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":J
    .end local v16    # "_arg2":Ljava/lang/String;
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 426
    .restart local v6    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 428
    .restart local v8    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 429
    .restart local v16    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 430
    move-object/from16 v0, p0

    move-wide v1, v6

    move-wide v3, v8

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/IUsageStatsManager$Stub;->queryEvents(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object v0

    .line 431
    .restart local v0    # "_result":Landroid/app/usage/UsageEvents;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    invoke-virtual {v13, v0, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 433
    goto/16 :goto_0

    .line 408
    .end local v0    # "_result":Landroid/app/usage/UsageEvents;
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":J
    .end local v16    # "_arg2":Ljava/lang/String;
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 410
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 412
    .restart local v8    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 414
    .local v16, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 415
    .restart local v18    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 416
    move-object/from16 v0, p0

    move v1, v7

    move-wide v2, v8

    move-wide/from16 v4, v16

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/app/usage/IUsageStatsManager$Stub;->queryEventStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 417
    .local v0, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    invoke-virtual {v13, v0, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 419
    goto :goto_0

    .line 392
    .end local v0    # "_result":Landroid/content/pm/ParceledListSlice;
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":J
    .end local v16    # "_arg2":J
    .end local v18    # "_arg3":Ljava/lang/String;
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 394
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 396
    .restart local v8    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 398
    .restart local v16    # "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 399
    .restart local v18    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 400
    move-object/from16 v0, p0

    move v1, v7

    move-wide v2, v8

    move-wide/from16 v4, v16

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/app/usage/IUsageStatsManager$Stub;->queryConfigurationStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 401
    .restart local v0    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    invoke-virtual {v13, v0, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 403
    goto :goto_0

    .line 374
    .end local v0    # "_result":Landroid/content/pm/ParceledListSlice;
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":J
    .end local v16    # "_arg2":J
    .end local v18    # "_arg3":Ljava/lang/String;
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 376
    .local v8, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 378
    .local v16, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 380
    .local v18, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 382
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 383
    .local v20, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 384
    move-object/from16 v0, p0

    move v1, v8

    move-wide/from16 v2, v16

    move-wide/from16 v4, v18

    move-object v6, v9

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/app/usage/IUsageStatsManager$Stub;->queryUsageStats(IJJLjava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 385
    .restart local v0    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    invoke-virtual {v13, v0, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 387
    nop

    .line 880
    .end local v0    # "_result":Landroid/content/pm/ParceledListSlice;
    .end local v8    # "_arg0":I
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg1":J
    .end local v18    # "_arg2":J
    .end local v20    # "_arg4":I
    :goto_0
    return v15

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
