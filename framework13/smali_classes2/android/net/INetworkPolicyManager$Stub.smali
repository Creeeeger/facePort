.class public abstract Landroid/net/INetworkPolicyManager$Stub;
.super Landroid/os/Binder;
.source "INetworkPolicyManager.java"

# interfaces
.implements Landroid/net/INetworkPolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkPolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkPolicyManager"

.field static final greylist-max-o TRANSACTION_addUidPolicy:I = 0x2

.field static final greylist-max-o TRANSACTION_factoryReset:I = 0x18

.field static final blacklist TRANSACTION_getFirewallRuleMobileData:I = 0x1f

.field static final blacklist TRANSACTION_getFirewallRuleWifi:I = 0x20

.field static final blacklist TRANSACTION_getMultipathPreference:I = 0x11

.field static final greylist-max-o TRANSACTION_getNetworkPolicies:I = 0x9

.field static final greylist-max-o TRANSACTION_getRestrictBackground:I = 0xc

.field static final greylist-max-o TRANSACTION_getRestrictBackgroundByCaller:I = 0xd

.field static final blacklist TRANSACTION_getRestrictBackgroundStatus:I = 0xe

.field static final blacklist TRANSACTION_getSubscriptionPlan:I = 0x12

.field static final greylist-max-o TRANSACTION_getSubscriptionPlans:I = 0x14

.field static final greylist-max-o TRANSACTION_getSubscriptionPlansOwner:I = 0x16

.field static final greylist-max-o TRANSACTION_getUidPolicy:I = 0x4

.field static final greylist-max-o TRANSACTION_getUidsWithPolicy:I = 0x5

.field static final greylist-max-o TRANSACTION_isUidNetworkingBlocked:I = 0x19

.field static final blacklist TRANSACTION_isUidRestrictedOnMeteredNetworks:I = 0x1a

.field static final blacklist TRANSACTION_notifyStatsProviderWarningOrLimitReached:I = 0x13

.field static final blacklist TRANSACTION_onApplicationKill:I = 0x21

.field static final greylist-max-o TRANSACTION_registerListener:I = 0x6

.field static final greylist-max-o TRANSACTION_removeUidPolicy:I = 0x3

.field static final greylist-max-o TRANSACTION_setDeviceIdleMode:I = 0xf

.field static final blacklist TRANSACTION_setFirewallRuleMobileData:I = 0x1b

.field static final blacklist TRANSACTION_setFirewallRuleMobileDataMap:I = 0x1d

.field static final blacklist TRANSACTION_setFirewallRuleWifi:I = 0x1c

.field static final blacklist TRANSACTION_setFirewallRuleWifiMap:I = 0x1e

.field static final greylist-max-o TRANSACTION_setNetworkPolicies:I = 0x8

.field static final greylist-max-o TRANSACTION_setRestrictBackground:I = 0xb

.field static final greylist-max-o TRANSACTION_setSubscriptionOverride:I = 0x17

.field static final greylist-max-o TRANSACTION_setSubscriptionPlans:I = 0x15

.field static final greylist-max-o TRANSACTION_setUidPolicy:I = 0x1

.field static final greylist-max-o TRANSACTION_setWifiMeteredOverride:I = 0x10

.field static final greylist-max-o TRANSACTION_snoozeLimit:I = 0xa

.field static final greylist-max-o TRANSACTION_unregisterListener:I = 0x7


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 149
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 150
    const-string v0, "android.net.INetworkPolicyManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkPolicyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 158
    if-nez p0, :cond_0

    .line 159
    const/4 v0, 0x0

    return-object v0

    .line 161
    :cond_0
    const-string v0, "android.net.INetworkPolicyManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 162
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/INetworkPolicyManager;

    if-eqz v1, :cond_1

    .line 163
    move-object v1, v0

    check-cast v1, Landroid/net/INetworkPolicyManager;

    return-object v1

    .line 165
    :cond_1
    new-instance v1, Landroid/net/INetworkPolicyManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/INetworkPolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 174
    packed-switch p0, :pswitch_data_0

    .line 310
    const/4 v0, 0x0

    return-object v0

    .line 306
    :pswitch_0
    const-string v0, "onApplicationKill"

    return-object v0

    .line 302
    :pswitch_1
    const-string v0, "getFirewallRuleWifi"

    return-object v0

    .line 298
    :pswitch_2
    const-string v0, "getFirewallRuleMobileData"

    return-object v0

    .line 294
    :pswitch_3
    const-string v0, "setFirewallRuleWifiMap"

    return-object v0

    .line 290
    :pswitch_4
    const-string v0, "setFirewallRuleMobileDataMap"

    return-object v0

    .line 286
    :pswitch_5
    const-string v0, "setFirewallRuleWifi"

    return-object v0

    .line 282
    :pswitch_6
    const-string v0, "setFirewallRuleMobileData"

    return-object v0

    .line 278
    :pswitch_7
    const-string v0, "isUidRestrictedOnMeteredNetworks"

    return-object v0

    .line 274
    :pswitch_8
    const-string v0, "isUidNetworkingBlocked"

    return-object v0

    .line 270
    :pswitch_9
    const-string v0, "factoryReset"

    return-object v0

    .line 266
    :pswitch_a
    const-string/jumbo v0, "setSubscriptionOverride"

    return-object v0

    .line 262
    :pswitch_b
    const-string v0, "getSubscriptionPlansOwner"

    return-object v0

    .line 258
    :pswitch_c
    const-string/jumbo v0, "setSubscriptionPlans"

    return-object v0

    .line 254
    :pswitch_d
    const-string v0, "getSubscriptionPlans"

    return-object v0

    .line 250
    :pswitch_e
    const-string v0, "notifyStatsProviderWarningOrLimitReached"

    return-object v0

    .line 246
    :pswitch_f
    const-string v0, "getSubscriptionPlan"

    return-object v0

    .line 242
    :pswitch_10
    const-string v0, "getMultipathPreference"

    return-object v0

    .line 238
    :pswitch_11
    const-string/jumbo v0, "setWifiMeteredOverride"

    return-object v0

    .line 234
    :pswitch_12
    const-string v0, "setDeviceIdleMode"

    return-object v0

    .line 230
    :pswitch_13
    const-string v0, "getRestrictBackgroundStatus"

    return-object v0

    .line 226
    :pswitch_14
    const-string v0, "getRestrictBackgroundByCaller"

    return-object v0

    .line 222
    :pswitch_15
    const-string v0, "getRestrictBackground"

    return-object v0

    .line 218
    :pswitch_16
    const-string/jumbo v0, "setRestrictBackground"

    return-object v0

    .line 214
    :pswitch_17
    const-string/jumbo v0, "snoozeLimit"

    return-object v0

    .line 210
    :pswitch_18
    const-string v0, "getNetworkPolicies"

    return-object v0

    .line 206
    :pswitch_19
    const-string/jumbo v0, "setNetworkPolicies"

    return-object v0

    .line 202
    :pswitch_1a
    const-string/jumbo v0, "unregisterListener"

    return-object v0

    .line 198
    :pswitch_1b
    const-string v0, "registerListener"

    return-object v0

    .line 194
    :pswitch_1c
    const-string v0, "getUidsWithPolicy"

    return-object v0

    .line 190
    :pswitch_1d
    const-string v0, "getUidPolicy"

    return-object v0

    .line 186
    :pswitch_1e
    const-string v0, "removeUidPolicy"

    return-object v0

    .line 182
    :pswitch_1f
    const-string v0, "addUidPolicy"

    return-object v0

    .line 178
    :pswitch_20
    const-string/jumbo v0, "setUidPolicy"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 169
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1295
    const/16 v0, 0x20

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 317
    invoke-static {p1}, Landroid/net/INetworkPolicyManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 21
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 321
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "android.net.INetworkPolicyManager"

    .line 322
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v9, v13, :cond_0

    const v0, 0xffffff

    if-gt v9, v0, :cond_0

    .line 323
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    :cond_0
    packed-switch v9, :pswitch_data_0

    .line 333
    packed-switch v9, :pswitch_data_1

    .line 675
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 329
    :pswitch_0
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 330
    return v13

    .line 665
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 667
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 668
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 669
    invoke-virtual {v8, v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->onApplicationKill(Ljava/lang/String;I)V

    .line 670
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    goto/16 :goto_0

    .line 655
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 656
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 657
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->getFirewallRuleWifi(I)Z

    move-result v1

    .line 658
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 660
    goto/16 :goto_0

    .line 645
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 646
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 647
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->getFirewallRuleMobileData(I)Z

    move-result v1

    .line 648
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 649
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 650
    goto/16 :goto_0

    .line 635
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 636
    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    .line 637
    .local v1, "_arg0":Ljava/util/Map;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 638
    invoke-virtual {v8, v1}, Landroid/net/INetworkPolicyManager$Stub;->setFirewallRuleWifiMap(Ljava/util/Map;)V

    .line 639
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    goto/16 :goto_0

    .line 625
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v1    # "_arg0":Ljava/util/Map;
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 626
    .restart local v0    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    .line 627
    .restart local v1    # "_arg0":Ljava/util/Map;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 628
    invoke-virtual {v8, v1}, Landroid/net/INetworkPolicyManager$Stub;->setFirewallRuleMobileDataMap(Ljava/util/Map;)V

    .line 629
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 630
    goto/16 :goto_0

    .line 614
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v1    # "_arg0":Ljava/util/Map;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 616
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 617
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 618
    invoke-virtual {v8, v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->setFirewallRuleWifi(IZ)V

    .line 619
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 620
    goto/16 :goto_0

    .line 603
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 605
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 606
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 607
    invoke-virtual {v8, v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->setFirewallRuleMobileData(IZ)V

    .line 608
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    goto/16 :goto_0

    .line 593
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 594
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 595
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->isUidRestrictedOnMeteredNetworks(I)Z

    move-result v1

    .line 596
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 598
    goto/16 :goto_0

    .line 581
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 583
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 584
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 585
    invoke-virtual {v8, v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->isUidNetworkingBlocked(IZ)Z

    move-result v2

    .line 586
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 588
    goto/16 :goto_0

    .line 572
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 573
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 574
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->factoryReset(Ljava/lang/String;)V

    .line 575
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    goto/16 :goto_0

    .line 553
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 555
    .local v14, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 557
    .local v15, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 559
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v17

    .line 561
    .local v17, "_arg3":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 563
    .local v18, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 564
    .local v20, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 565
    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move-object/from16 v4, v17

    move-wide/from16 v5, v18

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/net/INetworkPolicyManager$Stub;->setSubscriptionOverride(III[IJLjava/lang/String;)V

    .line 566
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    goto/16 :goto_0

    .line 543
    .end local v14    # "_arg0":I
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":[I
    .end local v18    # "_arg4":J
    .end local v20    # "_arg5":Ljava/lang/String;
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 544
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 545
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->getSubscriptionPlansOwner(I)Ljava/lang/String;

    move-result-object v1

    .line 546
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 548
    goto/16 :goto_0

    .line 528
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 530
    .local v6, "_arg0":I
    sget-object v0, Landroid/telephony/SubscriptionPlan;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Landroid/telephony/SubscriptionPlan;

    .line 532
    .local v7, "_arg1":[Landroid/telephony/SubscriptionPlan;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 534
    .local v14, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 535
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 536
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-wide v3, v14

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/net/INetworkPolicyManager$Stub;->setSubscriptionPlans(I[Landroid/telephony/SubscriptionPlan;JLjava/lang/String;)V

    .line 537
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    goto/16 :goto_0

    .line 516
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":[Landroid/telephony/SubscriptionPlan;
    .end local v14    # "_arg2":J
    .end local v16    # "_arg3":Ljava/lang/String;
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 518
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 519
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 520
    invoke-virtual {v8, v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->getSubscriptionPlans(ILjava/lang/String;)[Landroid/telephony/SubscriptionPlan;

    move-result-object v2

    .line 521
    .local v2, "_result":[Landroid/telephony/SubscriptionPlan;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    invoke-virtual {v11, v2, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 523
    goto/16 :goto_0

    .line 509
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":[Landroid/telephony/SubscriptionPlan;
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkPolicyManager$Stub;->notifyStatsProviderWarningOrLimitReached()V

    .line 510
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    goto/16 :goto_0

    .line 500
    :pswitch_10
    sget-object v0, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    .line 501
    .local v0, "_arg0":Landroid/net/NetworkTemplate;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 502
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->getSubscriptionPlan(Landroid/net/NetworkTemplate;)Landroid/telephony/SubscriptionPlan;

    move-result-object v1

    .line 503
    .local v1, "_result":Landroid/telephony/SubscriptionPlan;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 505
    goto/16 :goto_0

    .line 490
    .end local v0    # "_arg0":Landroid/net/NetworkTemplate;
    .end local v1    # "_result":Landroid/telephony/SubscriptionPlan;
    :pswitch_11
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    .line 491
    .local v0, "_arg0":Landroid/net/Network;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 492
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->getMultipathPreference(Landroid/net/Network;)I

    move-result v1

    .line 493
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 495
    goto/16 :goto_0

    .line 479
    .end local v0    # "_arg0":Landroid/net/Network;
    .end local v1    # "_result":I
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 481
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 482
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 483
    invoke-virtual {v8, v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->setWifiMeteredOverride(Ljava/lang/String;I)V

    .line 484
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    goto/16 :goto_0

    .line 470
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 471
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 472
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->setDeviceIdleMode(Z)V

    .line 473
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    goto/16 :goto_0

    .line 460
    .end local v0    # "_arg0":Z
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 461
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 462
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->getRestrictBackgroundStatus(I)I

    move-result v1

    .line 463
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 465
    goto/16 :goto_0

    .line 452
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkPolicyManager$Stub;->getRestrictBackgroundByCaller()I

    move-result v0

    .line 453
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    goto/16 :goto_0

    .line 445
    .end local v0    # "_result":I
    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkPolicyManager$Stub;->getRestrictBackground()Z

    move-result v0

    .line 446
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 448
    goto/16 :goto_0

    .line 437
    .end local v0    # "_result":Z
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 438
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 439
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->setRestrictBackground(Z)V

    .line 440
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    goto/16 :goto_0

    .line 428
    .end local v0    # "_arg0":Z
    :pswitch_18
    sget-object v0, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    .line 429
    .local v0, "_arg0":Landroid/net/NetworkTemplate;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 430
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->snoozeLimit(Landroid/net/NetworkTemplate;)V

    .line 431
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    goto/16 :goto_0

    .line 418
    .end local v0    # "_arg0":Landroid/net/NetworkTemplate;
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 420
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v1

    .line 421
    .local v1, "_result":[Landroid/net/NetworkPolicy;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 423
    goto/16 :goto_0

    .line 409
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":[Landroid/net/NetworkPolicy;
    :pswitch_1a
    sget-object v0, Landroid/net/NetworkPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/NetworkPolicy;

    .line 410
    .local v0, "_arg0":[Landroid/net/NetworkPolicy;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 411
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 412
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    goto/16 :goto_0

    .line 400
    .end local v0    # "_arg0":[Landroid/net/NetworkPolicy;
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyListener;

    move-result-object v0

    .line 401
    .local v0, "_arg0":Landroid/net/INetworkPolicyListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 402
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->unregisterListener(Landroid/net/INetworkPolicyListener;)V

    .line 403
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    goto :goto_0

    .line 391
    .end local v0    # "_arg0":Landroid/net/INetworkPolicyListener;
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyListener;

    move-result-object v0

    .line 392
    .restart local v0    # "_arg0":Landroid/net/INetworkPolicyListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 393
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->registerListener(Landroid/net/INetworkPolicyListener;)V

    .line 394
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    goto :goto_0

    .line 381
    .end local v0    # "_arg0":Landroid/net/INetworkPolicyListener;
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 382
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 383
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->getUidsWithPolicy(I)[I

    move-result-object v1

    .line 384
    .local v1, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 386
    goto :goto_0

    .line 371
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[I
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 372
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 373
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->getUidPolicy(I)I

    move-result v1

    .line 374
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    goto :goto_0

    .line 360
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 362
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 363
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 364
    invoke-virtual {v8, v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->removeUidPolicy(II)V

    .line 365
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    goto :goto_0

    .line 349
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 351
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 352
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 353
    invoke-virtual {v8, v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->addUidPolicy(II)V

    .line 354
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    goto :goto_0

    .line 338
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 340
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 341
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 342
    invoke-virtual {v8, v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->setUidPolicy(II)V

    .line 343
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    nop

    .line 678
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :goto_0
    return v13

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
