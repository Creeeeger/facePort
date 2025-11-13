.class public Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;
.super Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDeviceName:Ljava/lang/String;

.field public mIsDataPausedByUserManually:Z

.field public mIsDeviceCurrentlyConnected:Z

.field public mIsOtpClient:Z

.field public mMac:Ljava/lang/String;

.field public mSetDataLimitValueInBytes:J

.field public mSummaryColor:I

.field public mTimeLimitValueInMillis:J

.field public mTodayConsumedTimeInMillis:J

.field public mTodayMobileDataUsageValueInBytes:J

.field public mWarningColor:I


# direct methods
.method public static -$$Nest$mopenClientSettingActivity(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "TETH_013"

    const-string v1, "8075"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "intent_key_connected_client_name_detail"

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "intent_key_connected_client_mac_detail"

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mMac:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const/16 p0, 0xd48

    iget-object v2, v1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput p0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    iput-object v0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    const-class p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;

    return-void
.end method


# virtual methods
.method public final updatePreference(Lcom/samsung/android/wifi/SemWifiApClientDetails;)V
    .locals 19

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Updating Preference1: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiApClientPreference"

    invoke-static {v2, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1b

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientDeviceName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mDeviceName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientIpAddress()Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mMac:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isOtpConnectedClient(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mIsOtpClient:Z

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientDataLimit()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mSetDataLimitValueInBytes:J

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTimeLimit()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mTimeLimitValueInMillis:J

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalTime()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mTodayConsumedTimeInMillis:J

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientDataPausedByUser()Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mIsDataPausedByUserManually:Z

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientInternetPaused()Z

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalMobileDataUsage()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mTodayMobileDataUsageValueInBytes:J

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientConnected()Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mIsDeviceCurrentlyConnected:Z

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientRecentConnectionTimeStamp()J

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isWifiApClientDeviceTypeSupported()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getDeviceType()I

    move-result v1

    if-eq v1, v3, :cond_4

    const/4 v4, 0x3

    if-eq v1, v4, :cond_3

    const/4 v4, 0x4

    if-eq v1, v4, :cond_2

    const/4 v4, 0x7

    if-eq v1, v4, :cond_1

    const/16 v4, 0x8

    if-eq v1, v4, :cond_0

    const v1, 0x7f080ac9

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setIcon2(I)V

    goto :goto_0

    :cond_0
    const v1, 0x7f080aca

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setIcon2(I)V

    goto :goto_0

    :cond_1
    const v1, 0x7f080acb

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setIcon2(I)V

    goto :goto_0

    :cond_2
    const v1, 0x7f080ac8

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setIcon2(I)V

    goto :goto_0

    :cond_3
    const v1, 0x7f080ac7

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setIcon2(I)V

    goto :goto_0

    :cond_4
    const v1, 0x7f080ac0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setIcon2(I)V

    :cond_5
    :goto_0
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mMac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mMac:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const v1, 0x7f1433c1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_1

    :cond_6
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_1
    const-string/jumbo v1, "ro.build.version.oneui"

    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const v5, 0xeac4

    if-lt v1, v5, :cond_7

    iget-boolean v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mIsOtpClient:Z

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mContext:Landroid/content/Context;

    const v5, 0x7f080aba

    invoke-virtual {v1, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    if-eq v5, v1, :cond_7

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_7
    iget-boolean v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mIsDeviceCurrentlyConnected:Z

    const/16 v7, 0x11

    if-eqz v1, :cond_17

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isWifiApClientDeviceTypeSupported()Z

    move-result v1

    if-nez v1, :cond_8

    iget-boolean v1, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryIconVisibility:Z

    if-nez v1, :cond_8

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mContext:Landroid/content/Context;

    const v8, 0x7f080697

    invoke-virtual {v1, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSecondaryIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    iget-wide v8, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mSetDataLimitValueInBytes:J

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-lez v1, :cond_9

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    iget-wide v8, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mTodayMobileDataUsageValueInBytes:J

    invoke-direct {v1, v8, v9}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;-><init>(J)V

    new-instance v8, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    iget-wide v12, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mSetDataLimitValueInBytes:J

    invoke-direct {v8, v12, v13}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;-><init>(J)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v12

    invoke-virtual {v8}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v8

    div-double/2addr v12, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v12, v8

    double-to-int v1, v12

    goto :goto_2

    :cond_9
    move v1, v4

    :goto_2
    iget-wide v8, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mSetDataLimitValueInBytes:J

    cmp-long v8, v8, v10

    const-string v9, "WifiApPreference"

    const-string/jumbo v12, "setSpannableSummary(builder): "

    const-string v14, "\n"

    const v15, 0x1010038

    const-string v6, ""

    const v13, 0x7f143301

    const/16 v3, 0x64

    if-lez v8, :cond_10

    const/16 v8, 0x5a

    if-lt v1, v3, :cond_a

    invoke-virtual {v0, v13}, Landroidx/preference/Preference;->setSummary(I)V

    iget v5, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mWarningColor:I

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSummaryTextColor(I)V

    goto/16 :goto_4

    :cond_a
    iget v13, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mSummaryColor:I

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSummaryTextColor(I)V

    iget-object v13, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mContext:Landroid/content/Context;

    iget-wide v10, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mTodayMobileDataUsageValueInBytes:J

    long-to-double v10, v10

    invoke-static {v13, v10, v11}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertDataSizeToLocaleString(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v10

    const-string v11, " / "

    invoke-static {v10, v11}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mContext:Landroid/content/Context;

    move-object/from16 v18, v6

    iget-wide v5, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mSetDataLimitValueInBytes:J

    long-to-double v5, v5

    invoke-static {v13, v5, v6}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertDataSizeToLocaleString(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-lt v1, v8, :cond_b

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    iget v11, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mWarningColor:I

    invoke-direct {v5, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v6, v5, v4, v10, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    const v11, 0x1010036

    invoke-static {v5, v11}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getColorFromAttribute(Landroid/content/Context;I)I

    move-result v5

    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v11, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v6, v11, v4, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :goto_3
    new-instance v5, Landroid/text/SpannableString;

    move-object/from16 v10, v18

    invoke-direct {v5, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-wide v10, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mTimeLimitValueInMillis:J

    const-wide/16 v16, 0x0

    cmp-long v13, v10, v16

    if-lez v13, :cond_c

    invoke-static {v10, v11}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApDateUtils;->convertTimeToMinutes(J)I

    move-result v5

    iget-wide v10, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mTodayConsumedTimeInMillis:J

    invoke-static {v10, v11}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApDateUtils;->convertTimeToMinutes(J)I

    move-result v10

    iget-object v11, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mContext:Landroid/content/Context;

    sub-int/2addr v5, v10

    invoke-static {v11, v5}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApDateUtils;->convertTimeToLocaleWithRemainingText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    new-instance v10, Landroid/text/SpannableString;

    invoke-direct {v10, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v15}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getColorFromAttribute(Landroid/content/Context;I)I

    move-result v11

    new-instance v13, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v13, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v10, v13, v4, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object v5, v10

    :cond_c
    invoke-virtual {v5}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSpannableSummary(Landroid/text/SpannableString;)V

    goto :goto_4

    :cond_d
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-static {v5}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_4
    if-lt v1, v8, :cond_f

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isWifiApClientDeviceTypeSupported()Z

    move-result v4

    if-nez v4, :cond_e

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSecondaryIconDividerVisibility(Z)V

    :cond_e
    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mContext:Landroid/content/Context;

    const v5, 0x7f08069b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSecondaryAlertIcon(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$3;

    invoke-direct {v4, v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;I)V

    iput-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryAlertIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->notifyChanged()V

    goto/16 :goto_7

    :cond_f
    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSecondaryIconDividerVisibility(Z)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSecondaryAlertIcon(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    :cond_10
    move-object v10, v6

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mContext:Landroid/content/Context;

    iget-wide v3, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mTodayMobileDataUsageValueInBytes:J

    long-to-double v3, v3

    invoke-static {v5, v3, v4}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertDataSizeToLocaleString(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    const v11, 0x1010036

    invoke-static {v5, v11}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getColorFromAttribute(Landroid/content/Context;I)I

    move-result v5

    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v11, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v4, v11, v5, v3, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-wide v10, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mTimeLimitValueInMillis:J

    const-wide/16 v16, 0x0

    cmp-long v5, v10, v16

    if-lez v5, :cond_11

    invoke-static {v10, v11}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApDateUtils;->convertTimeToMinutes(J)I

    move-result v3

    iget-wide v10, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mTodayConsumedTimeInMillis:J

    invoke-static {v10, v11}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApDateUtils;->convertTimeToMinutes(J)I

    move-result v5

    iget-object v10, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mContext:Landroid/content/Context;

    sub-int/2addr v3, v5

    invoke-static {v10, v3}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApDateUtils;->convertTimeToLocaleWithRemainingText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v15}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getColorFromAttribute(Landroid/content/Context;I)I

    move-result v10

    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v11, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v8, 0x0

    invoke-virtual {v5, v11, v8, v3, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object v3, v5

    :cond_11
    invoke-virtual {v3}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSpannableSummary(Landroid/text/SpannableString;)V

    :goto_5
    const/4 v3, 0x0

    goto :goto_6

    :cond_12
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-static {v3}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    :goto_6
    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSecondaryIconDividerVisibility(Z)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSecondaryAlertIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientDataPausedByDataLimit()Z

    move-result v3

    if-nez v3, :cond_16

    const/16 v3, 0x64

    if-lt v1, v3, :cond_13

    goto :goto_8

    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientDataPauseByTimeLimit()Z

    move-result v1

    if-eqz v1, :cond_15

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Time limit reached for "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f143405

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    iget v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mWarningColor:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSummaryTextColor(I)V

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isWifiApClientDeviceTypeSupported()Z

    move-result v1

    if-nez v1, :cond_14

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSecondaryIconDividerVisibility(Z)V

    :cond_14
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f08069b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSecondaryAlertIcon(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$2;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;I)V

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryAlertIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->notifyChanged()V

    goto/16 :goto_a

    :cond_15
    iget-boolean v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mIsDataPausedByUserManually:Z

    if-eqz v1, :cond_1c

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Sharing paused for "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f1433ee

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    iget v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mSummaryColor:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSummaryTextColor(I)V

    goto/16 :goto_a

    :cond_16
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Data limit reached for "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f143301

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    iget v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mWarningColor:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSummaryTextColor(I)V

    goto :goto_a

    :cond_17
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isWifiApClientDeviceTypeSupported()Z

    move-result v1

    if-nez v1, :cond_18

    iget-boolean v1, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryIconVisibility:Z

    if-eqz v1, :cond_18

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSecondaryIconDividerVisibility(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSecondaryIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    :cond_18
    const/4 v1, 0x0

    :goto_9
    iget-boolean v2, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryAlertIconVisibility:Z

    if-eqz v2, :cond_19

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSecondaryAlertIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_19
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mMac:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mContext:Landroid/content/Context;

    iget-wide v2, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mTodayMobileDataUsageValueInBytes:J

    long-to-double v2, v2

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertDataSizeToLocaleString(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1010036

    invoke-static {v3, v4}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getColorFromAttribute(Landroid/content/Context;I)I

    move-result v3

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3, v1, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSpannableSummary(Landroid/text/SpannableString;)V

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSecondaryIconDividerVisibility(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSecondaryAlertIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_a

    :cond_1a
    const v1, 0x7f143316

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    iget v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mSummaryColor:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSummaryTextColor(I)V

    goto :goto_a

    :cond_1b
    const-string/jumbo v0, "semWifiApClientDetails is null"

    invoke-static {v2, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    :goto_a
    return-void
.end method
