.class public final Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mAllowed5gNetworkType:Z

.field public final mCarrierConfigCache:Lcom/android/settings/network/CarrierConfigCache;

.field public final mContext:Landroid/content/Context;

.field public mDisplay2gOptions:Z

.field public mDisplay3gOptions:Z

.field public final mEntries:Ljava/util/List;

.field public final mEntriesValue:Ljava/util/List;

.field public mIs5gEntryDisplayed:Z

.field public mIsGlobalCdma:Z

.field public mLteEnabled:Z

.field public mSelectedEntry:I

.field public mShow4gForLTE:Z

.field public final mSubId:I

.field public mSummary:Ljava/lang/String;

.field public mSupported5gRadioAccessFamily:Z

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public final synthetic this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntries:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    iput-object p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    invoke-static {p2}, Lcom/android/settings/network/CarrierConfigCache;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/CarrierConfigCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mCarrierConfigCache:Lcom/android/settings/network/CarrierConfigCache;

    const-class p1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p3}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->updateConfig()V

    return-void
.end method

.method public static addNrToLteNetworkType(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    return p0

    :pswitch_1
    const/16 p0, 0x21

    return p0

    :pswitch_2
    const/16 p0, 0x20

    return p0

    :pswitch_3
    const/16 p0, 0x1f

    return p0

    :pswitch_4
    const/16 p0, 0x1e

    return p0

    :pswitch_5
    const/16 p0, 0x1d

    return p0

    :pswitch_6
    const/16 p0, 0x1c

    return p0

    :pswitch_7
    const/16 p0, 0x18

    return p0

    :pswitch_8
    const/16 p0, 0x1b

    return p0

    :pswitch_9
    const/16 p0, 0x1a

    return p0

    :pswitch_a
    const/16 p0, 0x19

    return p0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final add4gEntry(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->showNrList()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntries:Ljava/util/List;

    invoke-virtual {v1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f141944

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntries:Ljava/util/List;

    invoke-virtual {v1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f141943

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final add5gEntry(I)V
    .locals 4

    const/16 v0, 0x17

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt p1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->showNrList()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntries:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f141945

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mIs5gEntryDisplayed:Z

    goto :goto_1

    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mIs5gEntryDisplayed:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Hide 5G option.  supported5GRadioAccessFamily: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSupported5gRadioAccessFamily:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " allowed5GNetworkType: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mAllowed5gNetworkType:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " isNRValue: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EnabledNetworkMode"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public final addLteEntry(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->showNrList()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntries:Ljava/util/List;

    invoke-virtual {v1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f14195c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntries:Ljava/util/List;

    invoke-virtual {v1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f14195b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getPreferredNetworkMode()I
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getAllowedNetworkTypesForReason(I)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getNetworkTypeFromRaf(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->showNrList()Z

    move-result p0

    const-string v1, "EnabledNetworkMode"

    if-nez p0, :cond_0

    const-string p0, "Network mode :"

    const-string v2, " reduce NR"

    invoke-static {v0, p0, v2, v1}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x16

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x14

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x13

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x11

    goto :goto_0

    :pswitch_4
    const/16 v0, 0xf

    goto :goto_0

    :pswitch_5
    const/16 v0, 0xc

    goto :goto_0

    :pswitch_6
    const/16 v0, 0xa

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x9

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_9
    const/16 v0, 0xb

    :cond_0
    :goto_0
    const-string p0, "getPreferredNetworkMode: "

    invoke-static {v0, p0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v0

    :pswitch_data_0
    .packed-switch 0x18
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

.method public final setPreferenceValueAndSummary(I)V
    .locals 11

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    const v0, 0x7f141943

    const v1, 0x7f141944

    const/4 v2, 0x2

    const/16 v3, 0xa

    const v4, 0x7f14195b

    const v5, 0x7f14195c

    const v6, 0x7f141945

    const v7, 0x7f141942

    const v8, 0x7f14195a

    iget v9, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    iget-object v10, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    packed-switch p1, :pswitch_data_0

    invoke-virtual {v10}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v1, 0x7f141812

    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSummary:Ljava/lang/String;

    goto/16 :goto_6

    :pswitch_0
    const/16 p1, 0x21

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    invoke-virtual {v10}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSummary:Ljava/lang/String;

    goto/16 :goto_6

    :pswitch_1
    const/16 p1, 0x1b

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p1

    if-eq p1, v2, :cond_1

    iget-boolean p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mIsGlobalCdma:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mContext:Landroid/content/Context;

    invoke-static {p1, v9}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWorldMode(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v10}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSummary:Ljava/lang/String;

    goto/16 :goto_6

    :cond_1
    :goto_0
    invoke-virtual {p0, v8}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto/16 :goto_6

    :pswitch_2
    const/16 p1, 0x19

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    invoke-virtual {v10}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSummary:Ljava/lang/String;

    goto/16 :goto_6

    :pswitch_3
    const/16 p1, 0x1a

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    invoke-virtual {v10}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSummary:Ljava/lang/String;

    goto/16 :goto_6

    :pswitch_4
    const/16 p1, 0x15

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    invoke-virtual {p0, v7}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto/16 :goto_6

    :pswitch_5
    const/16 p1, 0x12

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    invoke-virtual {p0, v7}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto/16 :goto_6

    :pswitch_6
    const/16 p1, 0xd

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    invoke-virtual {p0, v7}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto/16 :goto_6

    :pswitch_7
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mContext:Landroid/content/Context;

    invoke-static {p1, v9}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isTdscdmaSupported(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x16

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    iget-boolean p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mIs5gEntryDisplayed:Z

    if-eqz p1, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto/16 :goto_6

    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p1

    if-eq p1, v2, :cond_8

    iget-boolean p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mIsGlobalCdma:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mContext:Landroid/content/Context;

    invoke-static {p1, v9}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWorldMode(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    iget-boolean p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mIs5gEntryDisplayed:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mShow4gForLTE:Z

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v1, v5

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto/16 :goto_6

    :cond_6
    iget-boolean p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mShow4gForLTE:Z

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    move v0, v4

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto/16 :goto_6

    :cond_8
    :goto_3
    invoke-virtual {p0, v8}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto/16 :goto_6

    :pswitch_8
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mContext:Landroid/content/Context;

    invoke-static {p1, v9}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWorldMode(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_9

    const p1, 0x7f141caf

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto/16 :goto_6

    :cond_9
    :pswitch_9
    iget-boolean p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mIsGlobalCdma:Z

    if-nez p1, :cond_d

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    iget-boolean p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mIs5gEntryDisplayed:Z

    if-eqz p1, :cond_b

    iget-boolean p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mShow4gForLTE:Z

    if-eqz p1, :cond_a

    goto :goto_4

    :cond_a
    move v1, v5

    :goto_4
    invoke-virtual {p0, v1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto/16 :goto_6

    :cond_b
    iget-boolean p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mShow4gForLTE:Z

    if-eqz p1, :cond_c

    goto :goto_5

    :cond_c
    move v0, v4

    :goto_5
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto :goto_6

    :cond_d
    invoke-virtual {p0, v3}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    invoke-virtual {p0, v8}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto :goto_6

    :pswitch_a
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mContext:Landroid/content/Context;

    invoke-static {p1, v9}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWorldMode(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_e

    const p1, 0x7f141cae

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto :goto_6

    :cond_e
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    iget-boolean p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mIs5gEntryDisplayed:Z

    if-eqz p1, :cond_f

    move v4, v5

    :cond_f
    invoke-virtual {p0, v4}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto :goto_6

    :pswitch_b
    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    const p1, 0x7f141940

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto :goto_6

    :pswitch_c
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    invoke-virtual {p0, v7}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto :goto_6

    :pswitch_d
    iget-boolean p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mIsGlobalCdma:Z

    if-nez p1, :cond_10

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    const p1, 0x7f141941

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto :goto_6

    :cond_10
    invoke-virtual {p0, v3}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    invoke-virtual {p0, v8}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto :goto_6

    :pswitch_e
    iget-boolean p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mIsGlobalCdma:Z

    if-nez p1, :cond_11

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    invoke-virtual {p0, v7}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto :goto_6

    :cond_11
    invoke-virtual {p0, v3}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    invoke-virtual {p0, v8}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_c
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_9
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final setSelectedEntry(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSelectedEntry:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    const/4 v0, 0x0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSelectedEntry:I

    goto :goto_0

    :cond_1
    const-string p0, "EnabledNetworkMode"

    const-string p1, "entriesValue is empty"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final setSummary(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSummary:Ljava/lang/String;

    return-void
.end method

.method public final showNrList()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSupported5gRadioAccessFamily:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mAllowed5gNetworkType:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final updateConfig()V
    .locals 11

    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mCarrierConfigCache:Lcom/android/settings/network/CarrierConfigCache;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/settings/network/CarrierConfigCache;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getAllowedNetworkTypesForReason(I)J

    move-result-wide v2

    const-wide/32 v4, 0x80000

    and-long/2addr v2, v4

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    const/4 v3, 0x0

    const/4 v8, 0x1

    if-lez v2, :cond_0

    move v2, v8

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mAllowed5gNetworkType:Z

    iget-object v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSupportedRadioAccessFamily()J

    move-result-wide v9

    and-long/2addr v4, v9

    cmp-long v2, v4, v6

    if-lez v2, :cond_1

    move v2, v8

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSupported5gRadioAccessFamily:Z

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isLteCdmaEvdoGsmWcdmaEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "show_cdma_choices_bool"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v8

    :cond_2
    iput-boolean v3, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mIsGlobalCdma:Z

    const-string v2, "show_4g_for_lte_data_icon_bool"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mShow4gForLTE:Z

    const-string v2, "prefer_2g_bool"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mDisplay2gOptions:Z

    const-string v2, "prefer_3g_visibility_bool"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mDisplay3gOptions:Z

    const-string v2, "lte_enabled_bool"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mLteEnabled:Z

    :cond_3
    const-string v0, "PreferenceEntriesBuilder: subId"

    const-string v2, " ,Supported5gRadioAccessFamily :"

    invoke-static {v1, v0, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSupported5gRadioAccessFamily:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,mAllowed5gNetworkType :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mAllowed5gNetworkType:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,IsGlobalCdma :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mIsGlobalCdma:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,Display2gOptions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mDisplay2gOptions:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,Display3gOptions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mDisplay3gOptions:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,Display4gOptions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mLteEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,Show4gForLTE :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mShow4gForLTE:Z

    const-string v1, "EnabledNetworkMode"

    invoke-static {v0, p0, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method
