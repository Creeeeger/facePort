.class public final Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field public static final CU_GRAPH_COLORS:[I

.field public static final CU_GRAPH_PARAMS:[I

.field public static final RSSI_GRAPH_COLORS:[I

.field public static final RSSI_GRAPH_PARAMS:[I


# instance fields
.field public mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

.field public mConnectionInfoRepoCallback:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController$ConnectionInfoRepoCallback;

.field public mCuGraphPref:Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;

.field public mCuPref:Landroidx/preference/Preference;

.field public mGraphLabels:[Ljava/lang/String;

.field public mLinkSpeedPref:Landroidx/preference/Preference;

.field public mRssiGraphPref:Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;

.field public mRssiPref:Landroidx/preference/Preference;

.field public mSsidPref:Landroidx/preference/Preference;

.field public mTxRxPref:Landroidx/preference/Preference;


# direct methods
.method public static -$$Nest$mupdateView(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    iget-object v2, v1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-boolean v3, v2, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mIsConnected:Z

    const/4 v6, 0x1

    if-eqz v3, :cond_11

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mSsidPref:Landroidx/preference/Preference;

    iget-object v7, v2, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mSsid:Ljava/lang/String;

    invoke-static {v7}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mSsidPref:Landroidx/preference/Preference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->getBssid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mRssiPref:Landroidx/preference/Preference;

    iget-boolean v7, v2, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mIsMloConnected:Z

    const-string v8, "Not in use"

    const-string v9, "] "

    const-string v10, "\n"

    const-string v11, " ["

    const-string v12, " dBm"

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v13, v2, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mRssi:I

    invoke-static {v7, v13, v12}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->getAssociatedMloLinks()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/MloLink;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/net/wifi/MloLink;->getBand()I

    move-result v15

    invoke-static {v15}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->getBandString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->isLinkNotInUse(Landroid/net/wifi/MloLink;)Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v14}, Landroid/net/wifi/MloLink;->getRssi()I

    move-result v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_3

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    sub-int/2addr v12, v6

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_2
    invoke-virtual {v3, v7}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mRssiPref:Landroidx/preference/Preference;

    invoke-virtual {v3, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mRssiGraphPref:Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;

    invoke-virtual {v3, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mLinkSpeedPref:Landroidx/preference/Preference;

    iget-boolean v7, v2, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mIsMloConnected:Z

    const-string v12, " Mbps"

    if-eqz v7, :cond_8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->getAssociatedMloLinks()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/MloLink;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/net/wifi/MloLink;->getBand()I

    move-result v15

    invoke-static {v15}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->getBandString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "] Tx="

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/net/wifi/MloLink;->getTxLinkSpeedMbps()I

    move-result v15

    const-string v5, "Unknown"

    const/4 v4, -0x1

    if-ne v15, v4, :cond_4

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_4
    invoke-virtual {v14}, Landroid/net/wifi/MloLink;->getTxLinkSpeedMbps()I

    move-result v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    const-string v15, " / Rx="

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/net/wifi/MloLink;->getRxLinkSpeedMbps()I

    move-result v15

    if-ne v15, v4, :cond_5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_5
    invoke-virtual {v14}, Landroid/net/wifi/MloLink;->getRxLinkSpeedMbps()I

    move-result v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Tx="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v2, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mTxLinkSpeed:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Mbps / Rx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mRxLinkSpeed:I

    invoke-static {v4, v5, v12}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_6
    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mLinkSpeedPref:Landroidx/preference/Preference;

    invoke-virtual {v3, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mTxRxPref:Landroidx/preference/Preference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/text/DecimalFormat;

    const-string v7, "0.00#"

    invoke-direct {v5, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-wide v12, v2, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mTxSuccess:D

    invoke-virtual {v5, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v12, Ljava/text/DecimalFormat;

    invoke-direct {v12, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-wide v13, v2, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mRxSuccess:D

    invoke-virtual {v12, v13, v14}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v12, Ljava/text/DecimalFormat;

    invoke-direct {v12, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-wide v13, v2, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mTxLost:D

    invoke-virtual {v12, v13, v14}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/text/DecimalFormat;

    invoke-direct {v5, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-wide v12, v2, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mTxRetries:D

    invoke-virtual {v5, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n(Tx success/Rx Success/Tx lost/Tx retries per sec)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mTxRxPref:Landroidx/preference/Preference;

    invoke-virtual {v3, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-boolean v3, v1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mIsValidCu:Z

    if-eqz v3, :cond_10

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mCuPref:Landroidx/preference/Preference;

    iget-boolean v4, v2, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mIsMloConnected:Z

    const-string v5, "/255)"

    const-string v7, "% ("

    if-nez v4, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v2, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mChannelUtilization:I

    if-ltz v8, :cond_9

    const/16 v9, 0xff

    if-gt v8, v9, :cond_9

    mul-int/lit8 v8, v8, 0x64

    div-int/2addr v8, v9

    :cond_9
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mChannelUtilization:I

    invoke-static {v4, v7, v5}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_a

    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v2, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mChannelUtilizationMap:Ljava/util/Map;

    check-cast v12, Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->getBandString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ltz v14, :cond_d

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/16 v15, 0xff

    if-le v14, v15, :cond_b

    goto :goto_8

    :cond_b
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ltz v14, :cond_c

    if-gt v14, v15, :cond_c

    mul-int/lit8 v14, v14, 0x64

    div-int/2addr v14, v15

    :cond_c
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_d
    :goto_8
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_9
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_f

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_a
    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mCuPref:Landroidx/preference/Preference;

    invoke-virtual {v3, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mCuGraphPref:Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;

    invoke-virtual {v3, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_b

    :cond_10
    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mCuPref:Landroidx/preference/Preference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mCuGraphPref:Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_b

    :cond_11
    const/4 v4, 0x0

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mSsidPref:Landroidx/preference/Preference;

    const-string v5, "No network connected."

    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mSsidPref:Landroidx/preference/Preference;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mRssiPref:Landroidx/preference/Preference;

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mRssiGraphPref:Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mCuPref:Landroidx/preference/Preference;

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mCuGraphPref:Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mLinkSpeedPref:Landroidx/preference/Preference;

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mTxRxPref:Landroidx/preference/Preference;

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mCuPref:Landroidx/preference/Preference;

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_b
    iget-boolean v3, v2, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mIsMloConnected:Z

    if-eqz v3, :cond_13

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->getAssociatedMloLinks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/MloLink;

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->isLinkNotInUse(Landroid/net/wifi/MloLink;)Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-virtual {v5}, Landroid/net/wifi/MloLink;->getBand()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v7, -0x7f

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_12
    invoke-virtual {v5}, Landroid/net/wifi/MloLink;->getBand()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5}, Landroid/net/wifi/MloLink;->getRssi()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_13
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget v1, v2, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mFrequency:I

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->toBand(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v4, v2, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mRssi:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "rssiMap="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "ConnectionStatusPrefCtrl"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_15

    const/4 v8, 0x0

    aput-object v7, v5, v8

    :cond_15
    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-eqz v8, :cond_16

    aput-object v8, v5, v6

    :cond_16
    const/16 v8, 0x8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_17

    aput-object v3, v5, v7

    :cond_17
    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mRssiGraphPref:Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;

    iget-object v9, v3, Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;->mChartView:Lcom/samsung/android/settings/wifi/develop/utils/ChartView;

    const-string v9, "Chart is not initialized"

    const-string v10, "ChartViewPreference"

    if-eqz v3, :cond_18

    invoke-virtual {v3, v5}, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->update([Ljava/lang/Integer;)V

    goto :goto_d

    :cond_18
    invoke-static {v10, v9}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mChannelUtilizationMap:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v12, 0xff

    if-ltz v5, :cond_19

    if-gt v5, v12, :cond_19

    mul-int/lit8 v5, v5, 0x64

    div-int/2addr v5, v12

    :cond_19
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_1a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "cuMap="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1b

    const/4 v4, 0x0

    aput-object v2, v1, v4

    :cond_1b
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1c

    aput-object v2, v1, v6

    :cond_1c
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1d

    aput-object v2, v1, v7

    :cond_1d
    iget-object v0, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mCuGraphPref:Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;->mChartView:Lcom/samsung/android/settings/wifi/develop/utils/ChartView;

    if-eqz v0, :cond_1e

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->update([Ljava/lang/Integer;)V

    goto :goto_f

    :cond_1e
    invoke-static {v10, v9}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const/16 v0, -0x5a

    const/16 v1, -0xa

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->RSSI_GRAPH_PARAMS:[I

    const-string v0, "#6BDAC2"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string v2, "#40A1F6"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string v4, "#C987FF"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v3, v5}, [I

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->RSSI_GRAPH_COLORS:[I

    const/4 v1, 0x0

    const/16 v3, 0x64

    filled-new-array {v1, v3}, [I

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->CU_GRAPH_PARAMS:[I

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->CU_GRAPH_COLORS:[I

    return-void
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string/jumbo v0, "ssid"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mSsidPref:Landroidx/preference/Preference;

    const-string/jumbo v0, "rssi_graph"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mRssiGraphPref:Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;

    const-string/jumbo v0, "rssi"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mRssiPref:Landroidx/preference/Preference;

    const-string v0, "channel_utilization"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mCuPref:Landroidx/preference/Preference;

    const-string v0, "cu_graph"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mCuGraphPref:Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;

    const-string v0, "link_speed"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mLinkSpeedPref:Landroidx/preference/Preference;

    const-string/jumbo v0, "tx_rx_data"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mTxRxPref:Landroidx/preference/Preference;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mGraphLabels:[Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->is6GHzBandSupported()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-nez v3, :cond_0

    array-length v3, p1

    if-le v3, v4, :cond_0

    aput-object v5, p1, v4

    :cond_0
    iget-object v0, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->is5GHzBandSupported()Z

    move-result v0

    if-nez v0, :cond_1

    array-length v0, p1

    if-le v0, v1, :cond_1

    aput-object v5, p1, v1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Supported bands="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p1, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v4

    const-string v4, "ConnectionStatusPrefCtrl"

    invoke-static {v0, v3, v4}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mRssiGraphPref:Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;

    sget-object v3, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->RSSI_GRAPH_PARAMS:[I

    aget v4, v3, v2

    aget v3, v3, v1

    iput v4, v0, Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;->mMinY:I

    iput v3, v0, Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;->mMaxY:I

    sget-object v3, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->RSSI_GRAPH_COLORS:[I

    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;->mGraphColors:[I

    if-eqz p1, :cond_3

    iput-object p1, v0, Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;->mGraphLabels:[Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mCuGraphPref:Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;

    sget-object v3, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->CU_GRAPH_PARAMS:[I

    aget v4, v3, v2

    aget v1, v3, v1

    iput v4, v0, Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;->mMinY:I

    iput v1, v0, Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;->mMaxY:I

    sget-object v1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->CU_GRAPH_COLORS:[I

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;->mGraphColors:[I

    if-eqz p1, :cond_4

    iput-object p1, v0, Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;->mGraphLabels:[Ljava/lang/String;

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mCuPref:Landroidx/preference/Preference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mCuGraphPref:Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

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

.method public onPause()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mConnectionInfoRepoCallback:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController$ConnectionInfoRepoCallback;

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfoUpdatedCallback:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    iput-object p0, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfoUpdatedCallback:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mConnectionInfoRepoCallback:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController$ConnectionInfoRepoCallback;

    iput-object p0, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfoUpdatedCallback:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;

    return-void
.end method

.method public onStop()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    return-void
.end method
