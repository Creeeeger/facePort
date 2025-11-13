.class public final Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$1;
.super Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;

    invoke-direct {p0}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClientListUpdated(Ljava/util/List;J)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v2, 0x1

    sget-object v3, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->INTENT_FILTER:Landroid/content/IntentFilter;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onClientListUpdated() : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "totalDataUsageInBytes : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v10, p2

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WifiApClientsManageMobileHotspot"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;-><init>(JJJ)V

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;

    iget-object v5, v5, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mContext:Landroid/content/Context;

    move-object/from16 v6, p1

    invoke-static {v5, v6}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getTopHotspotClientConfigListToday(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;

    iget-boolean v6, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->isScreenRefreshing:Z

    if-nez v6, :cond_17

    iput-boolean v2, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->isScreenRefreshing:Z

    iget-object v6, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mWifiApMobileDataSharedTodayPreferenceController:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;

    invoke-virtual {v6, v5, v3}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->updateState(Ljava/util/List;Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;)V

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v6, v5

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;

    iget-object v9, v8, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mMac:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientConnected()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v3, v9, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Hotspot List : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    const-string/jumbo v7, "topHotspotWifiApClientConfigList.size(): "

    invoke-static {v5, v7, v4}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const-string v4, "no_device_error"

    if-nez v5, :cond_4

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mOldHotspotClientMacHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mOldHotspotClientMacHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    iget-object v6, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroidx/preference/PreferenceGroup;->removePreferenceRecursively(Ljava/lang/CharSequence;)V

    iget-object v6, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mPreviouslyConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v6, v5}, Landroidx/preference/PreferenceGroup;->removePreferenceRecursively(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mOldHotspotClientMacHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    :cond_2
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mNoDevicePreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    invoke-virtual {v2, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_3
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mPreviouslyConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_16

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mPreviouslyConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mNoPreviouslyConnectedDevicePreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto/16 :goto_a

    :cond_4
    iget-object v7, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mOldHotspotClientMacHashMap:Ljava/util/LinkedHashMap;

    sget-boolean v8, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->DBG:Z

    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_a

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v7}, Landroidx/preference/PreferenceGroup;->removeAll()V

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mPreviouslyConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v7}, Landroidx/preference/PreferenceGroup;->removeAll()V

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v5, :cond_12

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;

    new-instance v10, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;

    iget-object v11, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mContext:Landroid/content/Context;

    iget-object v12, v9, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mSemWifiApClientDetails:Lcom/samsung/android/wifi/SemWifiApClientDetails;

    iget v13, v9, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mProgressbarColorId:I

    invoke-direct {v10, v11}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;-><init>(Landroid/content/Context;)V

    iput-object v11, v10, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mContext:Landroid/content/Context;

    const v14, 0x7f060b77

    invoke-virtual {v11, v14}, Landroid/content/Context;->getColor(I)I

    move-result v14

    iput v14, v10, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mWarningColor:I

    const v14, 0x7f060b67

    invoke-virtual {v11, v14}, Landroid/content/Context;->getColor(I)I

    move-result v14

    iput v14, v10, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mSummaryColor:I

    invoke-virtual {v12}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientDeviceName()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v10, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v10, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mMac:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientConnected()Z

    move-result v14

    iput-boolean v14, v10, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mIsDeviceCurrentlyConnected:Z

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isWifiApClientDeviceTypeSupported()Z

    move-result v14

    const/4 v15, -0x2

    const/16 v2, 0x28

    const v1, 0x7f080ac2

    if-eqz v14, :cond_7

    invoke-virtual {v10, v8}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v11, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSecondaryIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v10, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mContext:Landroid/content/Context;

    invoke-static {v1, v15}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v1

    iput v1, v10, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryIconWidthInPx:I

    iget-object v1, v10, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v1

    iput v1, v10, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryIconHeightInPx:I

    invoke-virtual {v10}, Landroidx/preference/Preference;->notifyChanged()V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v10, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryIconScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq v2, v1, :cond_5

    iput-object v1, v10, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryIconScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_5
    iput v13, v10, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryIconColor:I

    invoke-virtual {v10}, Landroidx/preference/Preference;->notifyChanged()V

    iget-boolean v1, v10, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mIsDeviceCurrentlyConnected:Z

    if-eqz v1, :cond_6

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$1;

    invoke-direct {v1, v10}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;)V

    invoke-virtual {v10, v1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v10, v8}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v11, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v10, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mContext:Landroid/content/Context;

    invoke-static {v1, v15}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v1

    iput v1, v10, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mIconWidthInPx:I

    iget-object v1, v10, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v1

    iput v1, v10, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mIconHeightInPx:I

    invoke-virtual {v10}, Landroidx/preference/Preference;->notifyChanged()V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v10, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mIconScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq v2, v1, :cond_8

    iput-object v1, v10, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mIconScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_8
    iput v13, v10, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mIconColor:I

    invoke-virtual {v10, v8}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$2;

    const/4 v2, 0x0

    invoke-direct {v1, v10, v2}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;I)V

    iput-object v1, v10, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10}, Landroidx/preference/Preference;->notifyChanged()V

    :goto_3
    invoke-virtual {v10, v12}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->updatePreference(Lcom/samsung/android/wifi/SemWifiApClientDetails;)V

    iget-boolean v1, v10, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mIsDeviceCurrentlyConnected:Z

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v10}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto :goto_4

    :cond_9
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mPreviouslyConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v10}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :goto_4
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$3;

    invoke-direct {v2, v10, v9}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;)V

    const-wide/16 v9, 0x1

    invoke-virtual {v1, v2, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v1, 0x1

    add-int/2addr v7, v1

    move v2, v1

    goto/16 :goto_2

    :cond_a
    const/4 v2, 0x0

    :goto_5
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v2, v1, :cond_e

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;

    iget-object v10, v9, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mMac:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    goto :goto_6

    :cond_c
    move-object v9, v8

    :goto_6
    iget-object v5, v9, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mSemWifiApClientDetails:Lcom/samsung/android/wifi/SemWifiApClientDetails;

    if-eqz v5, :cond_d

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->updatePreference(Lcom/samsung/android/wifi/SemWifiApClientDetails;)V

    :cond_d
    const/4 v1, 0x1

    add-int/2addr v2, v1

    goto :goto_5

    :cond_e
    const/4 v2, 0x0

    :goto_7
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mPreviouslyConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v2, v1, :cond_12

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mPreviouslyConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mPreviouslyConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;

    iget-object v10, v9, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mMac:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    goto :goto_8

    :cond_10
    move-object v9, v8

    :goto_8
    iget-object v5, v9, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mSemWifiApClientDetails:Lcom/samsung/android/wifi/SemWifiApClientDetails;

    if-eqz v5, :cond_11

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->updatePreference(Lcom/samsung/android/wifi/SemWifiApClientDetails;)V

    :cond_11
    const/4 v1, 0x1

    add-int/2addr v2, v1

    goto :goto_7

    :cond_12
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_13

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mNoDevicePreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto :goto_9

    :cond_13
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_14

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mNoDevicePreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreferenceRecursively(Ljava/lang/CharSequence;)V

    :cond_14
    :goto_9
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mPreviouslyConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_15

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mPreviouslyConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mPreviouslyConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mNoPreviouslyConnectedDevicePreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto :goto_a

    :cond_15
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mPreviouslyConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_16

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mPreviouslyConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mNoPreviouslyConnectedDevicePreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreferenceRecursively(Ljava/lang/CharSequence;)V

    :cond_16
    :goto_a
    iput-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mOldHotspotClientMacHashMap:Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->isScreenRefreshing:Z

    goto :goto_b

    :cond_17
    const-string/jumbo v0, "refreshConnectedPreferenceCategory : isScreenRefreshing is true"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    return-void
.end method

.method public final onOverallDataLimitChanged(J)V
    .locals 1

    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->INTENT_FILTER:Landroid/content/IntentFilter;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onOverallDataLimitChanged() : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiApClientsManageMobileHotspot"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
