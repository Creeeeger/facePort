.class public final Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

.field public mConnectionInfoRepoCallback:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController$ConnectionInfoRepoCallback;

.field public mCountryCodePref:Landroidx/preference/Preference;

.field public mFrequencyPref:Landroidx/preference/Preference;

.field public mGenerationPref:Landroidx/preference/Preference;

.field public mKVRPref:Landroidx/preference/Preference;

.field public mMultiLinkPref:Landroidx/preference/Preference;

.field public mSecurityTypePref:Landroidx/preference/Preference;

.field public mSsidBssidPref:Landroidx/preference/Preference;


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string/jumbo v0, "ssid_bssid"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mSsidBssidPref:Landroidx/preference/Preference;

    const-string v0, "kvr"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mKVRPref:Landroidx/preference/Preference;

    const-string v0, "country_code"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mCountryCodePref:Landroidx/preference/Preference;

    const-string/jumbo v0, "security_type"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mSecurityTypePref:Landroidx/preference/Preference;

    const-string v0, "frequency"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mFrequencyPref:Landroidx/preference/Preference;

    const-string v0, "generation"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mGenerationPref:Landroidx/preference/Preference;

    const-string v0, "multi_link"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mMultiLinkPref:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->updateView$1()V

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 2

    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mConnectionInfoRepoCallback:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController$ConnectionInfoRepoCallback;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    if-ne p2, p1, :cond_0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfoUpdatedCallback:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->updateView$1()V

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p0, :cond_1

    iget-object p0, v1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfoUpdatedCallback:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    iput-object p0, v1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfoUpdatedCallback:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateView$1()V
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-boolean v2, v1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mIsConnected:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mSsidBssidPref:Landroidx/preference/Preference;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mSsid:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mSsidBssidPref:Landroidx/preference/Preference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->getBssid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mSsidBssidPref:Landroidx/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mKVRPref:Landroidx/preference/Preference;

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget v5, v4, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mKVR:I

    const/4 v6, 0x2

    const/4 v7, -0x1

    if-ne v5, v7, :cond_0

    const-string v4, "Neighbor Report: Not updated\nBSS Transition: Not updated\n11R: Not updated"

    goto :goto_2

    :cond_0
    and-int/lit8 v8, v5, 0x1

    if-eqz v8, :cond_1

    const-string v8, "Neighbor Report: Enabled\n"

    goto :goto_0

    :cond_1
    const-string v8, "Neighbor Report: Disabled\n"

    :goto_0
    and-int/2addr v5, v6

    if-eqz v5, :cond_2

    const-string v5, "BSS Transition: Enabled\n"

    invoke-virtual {v8, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    const-string v5, "BSS Transition: Disabled\n"

    invoke-virtual {v8, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    iget v4, v4, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mKVR:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_3

    const-string v4, "11R: Enabled"

    invoke-static {v5, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    const-string v4, "11R: Disabled"

    invoke-static {v5, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mKVRPref:Landroidx/preference/Preference;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mCountryCodePref:Landroidx/preference/Preference;

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-object v5, v4, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mApCountryCode:Ljava/lang/String;

    if-nez v5, :cond_5

    iget v5, v4, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mKVR:I

    if-ne v5, v7, :cond_4

    const-string v5, "Not updated"

    iput-object v5, v4, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mApCountryCode:Ljava/lang/String;

    goto :goto_3

    :cond_4
    const-string v5, "AP doesn\'t have Country code element"

    iput-object v5, v4, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mApCountryCode:Ljava/lang/String;

    :cond_5
    :goto_3
    iget-object v5, v4, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mStaCountryCode:Ljava/lang/String;

    if-nez v5, :cond_6

    const-string v5, "STA doesn\'t have Country code element"

    iput-object v5, v4, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mStaCountryCode:Ljava/lang/String;

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "AP: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v4, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mApCountryCode:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\nSTA: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mStaCountryCode:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mCountryCodePref:Landroidx/preference/Preference;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mSecurityTypePref:Landroidx/preference/Preference;

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget v4, v4, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mSecurityType:I

    const/16 v5, 0x9

    const-string v8, "Unknown"

    if-eq v4, v5, :cond_7

    packed-switch v4, :pswitch_data_0

    move-object v4, v8

    goto :goto_4

    :pswitch_0
    const-string v4, "OWE"

    goto :goto_4

    :pswitch_1
    const-string v4, "WPA3 SAE"

    goto :goto_4

    :pswitch_2
    const-string v4, "EAP"

    goto :goto_4

    :pswitch_3
    const-string v4, "PSK"

    goto :goto_4

    :pswitch_4
    const-string v4, "WEP"

    goto :goto_4

    :pswitch_5
    const-string v4, "OPEN"

    goto :goto_4

    :cond_7
    :pswitch_6
    const-string v4, "WPA3 Enterprise"

    :goto_4
    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mSecurityTypePref:Landroidx/preference/Preference;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mFrequencyPref:Landroidx/preference/Preference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->getAssociatedMloLinks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const-string v9, " "

    if-nez v5, :cond_8

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget v4, v4, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mFrequency:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/MloLink;

    invoke-virtual {v10}, Landroid/net/wifi/MloLink;->getChannel()I

    move-result v11

    invoke-virtual {v10}, Landroid/net/wifi/MloLink;->getBand()I

    move-result v10

    invoke-static {v11, v10}, Landroid/net/wifi/ScanResult;->convertChannelToFrequencyMhzIfSupported(II)I

    move-result v10

    if-lez v10, :cond_9

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_a
    const-string v4, "[Associated Links]"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_6
    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mFrequencyPref:Landroidx/preference/Preference;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget v1, v1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mWifiGeneration:I

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mGenerationPref:Landroidx/preference/Preference;

    invoke-virtual {v1, v8}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_b
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mGenerationPref:Landroidx/preference/Preference;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Wi-Fi "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget v5, v5, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mWifiGeneration:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_7
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mGenerationPref:Landroidx/preference/Preference;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->getAffiliatedMloLinks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    const-string v0, ""

    goto/16 :goto_a

    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/MloLink;

    invoke-virtual {v4}, Landroid/net/wifi/MloLink;->getState()I

    move-result v5

    invoke-virtual {v4}, Landroid/net/wifi/MloLink;->getBand()I

    move-result v10

    if-ne v10, v7, :cond_d

    move v5, v2

    :cond_d
    const-string v10, "Link "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/wifi/MloLink;->getLinkId()I

    move-result v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " ["

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x3

    if-eqz v5, :cond_11

    if-eq v5, v2, :cond_10

    if-eq v5, v6, :cond_f

    if-eq v5, v10, :cond_e

    move-object v11, v8

    goto :goto_9

    :cond_e
    const-string v11, "Associated"

    goto :goto_9

    :cond_f
    const-string v11, "Associated-Idle"

    goto :goto_9

    :cond_10
    const-string v11, "UnAssociated"

    goto :goto_9

    :cond_11
    const-string v11, "Invalid"

    :goto_9
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "] "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/wifi/MloLink;->getApMacAddress()Landroid/net/MacAddress;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v5, v6, :cond_12

    if-ne v5, v10, :cond_13

    :cond_12
    const-string v5, "Freq="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/wifi/MloLink;->getChannel()I

    move-result v5

    invoke-virtual {v4}, Landroid/net/wifi/MloLink;->getBand()I

    move-result v10

    invoke-static {v5, v10}, Landroid/net/wifi/ScanResult;->convertChannelToFrequencyMhzIfSupported(II)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " (CH"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/wifi/MloLink;->getChannel()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_a
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mMultiLinkPref:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mMultiLinkPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_b

    :cond_15
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mMultiLinkPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_b

    :cond_16
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mSsidBssidPref:Landroidx/preference/Preference;

    const-string v1, "No network connected."

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mSsidBssidPref:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mKVRPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mCountryCodePref:Landroidx/preference/Preference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mSecurityTypePref:Landroidx/preference/Preference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mFrequencyPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mGenerationPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mMultiLinkPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method
