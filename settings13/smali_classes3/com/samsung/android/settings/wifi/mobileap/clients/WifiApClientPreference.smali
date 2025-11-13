.class public Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;
.super Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;
.source "WifiApClientPreference.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mConnectedDeviceTimeInMillis:J

.field private mContext:Landroid/content/Context;

.field private mDataLimitValueInBytes:J

.field private mDeviceName:Ljava/lang/String;

.field private mIp:Ljava/lang/String;

.field private mIsDataPausedBySetDataLimitApi:Z

.field private mIsDataPausedByUserManually:Z

.field private mIsDeviceCurrentlyConnected:Z

.field private mMac:Ljava/lang/String;

.field private mProgressColor:I

.field private mSemWifiApClientDetails:Lcom/samsung/android/wifi/SemWifiApClientDetails;

.field private mTimeLimitValueInSeconds:J

.field private mTodayMobileDataUsageValueInBytes:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceName(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMac(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mMac:Ljava/lang/String;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/wifi/SemWifiApClientDetails;I)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;-><init>(Landroid/content/Context;)V

    .line 109
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mContext:Landroid/content/Context;

    .line 110
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mSemWifiApClientDetails:Lcom/samsung/android/wifi/SemWifiApClientDetails;

    const/4 p1, 0x0

    .line 111
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setIsRippleEffectRequired(Z)V

    .line 112
    invoke-virtual {p2}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientDeviceName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mDeviceName:Ljava/lang/String;

    .line 113
    invoke-virtual {p2}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mMac:Ljava/lang/String;

    .line 114
    iput p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mProgressColor:I

    .line 116
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mContext:Landroid/content/Context;

    sget p3, Lcom/android/settings/R$drawable;->sec_wifi_ap_progress_index_dot:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 117
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setIconScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 118
    iget p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mProgressColor:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setIconColorFilter(I)V

    .line 119
    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSecondaryIconClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->updatePreference(Lcom/samsung/android/wifi/SemWifiApClientDetails;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/wifi/SemWifiApClientDetails;II)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-virtual {p0, p4}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 80
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mSemWifiApClientDetails:Lcom/samsung/android/wifi/SemWifiApClientDetails;

    .line 82
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    const p4, 0x1010036

    invoke-static {p1, p4}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->seslSetSummaryColor(Landroid/content/res/ColorStateList;)V

    const/4 p1, 0x0

    .line 83
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setIsRippleEffectRequired(Z)V

    .line 84
    invoke-virtual {p2}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientDeviceName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mDeviceName:Ljava/lang/String;

    .line 85
    invoke-virtual {p2}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mMac:Ljava/lang/String;

    .line 86
    iput p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mProgressColor:I

    .line 88
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mContext:Landroid/content/Context;

    sget p3, Lcom/android/settings/R$drawable;->sec_wifi_ap_progress_index_dot:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 89
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setIconScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 90
    iget p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mProgressColor:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setIconColorFilter(I)V

    .line 91
    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSecondaryIconClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->updatePreference(Lcom/samsung/android/wifi/SemWifiApClientDetails;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-virtual {p0, p5}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 66
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mContext:Landroid/content/Context;

    .line 67
    iput p4, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mProgressColor:I

    .line 68
    sget p4, Lcom/android/settings/R$drawable;->sec_wifi_ap_progress_index_dot:I

    invoke-virtual {p1, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 69
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setIconScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 70
    iget p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mProgressColor:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setIconColorFilter(I)V

    .line 71
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 72
    invoke-virtual {p0, p1, p1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setDividerLine(ZZ)V

    .line 73
    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setIsRippleEffectRequired(Z)V

    return-void
.end method


# virtual methods
.method public getProgress()J
    .locals 3

    .line 144
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    iget-wide v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mTodayMobileDataUsageValueInBytes:J

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;-><init>(J)V

    .line 145
    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public getProgressColor()I
    .locals 0

    .line 153
    iget p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mProgressColor:I

    return p0
.end method

.method public isClientOthers()Z
    .locals 0

    .line 267
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mMac:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public isEqualsWithMac(Lcom/samsung/android/wifi/SemWifiApClientDetails;)Z
    .locals 0

    .line 271
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mSemWifiApClientDetails:Lcom/samsung/android/wifi/SemWifiApClientDetails;

    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public setDefaultSummary()V
    .locals 2

    .line 136
    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mTodayMobileDataUsageValueInBytes:J

    long-to-double v0, v0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertDataSizeToLocaleString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updatePreference(Lcom/samsung/android/wifi/SemWifiApClientDetails;)V
    .locals 10

    .line 157
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating Preference1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_a

    .line 159
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientDeviceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mDeviceName:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientIpAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mIp:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mMac:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientDataLimit()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mDataLimitValueInBytes:J

    .line 163
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTimeLimit()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mTimeLimitValueInSeconds:J

    .line 164
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientDataPausedByUser()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mIsDataPausedByUserManually:Z

    .line 165
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientInternetPaused()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mIsDataPausedBySetDataLimitApi:Z

    .line 166
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalMobileDataUsage()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mTodayMobileDataUsageValueInBytes:J

    .line 167
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientConnected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mIsDeviceCurrentlyConnected:Z

    .line 168
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientRecentConnectionTimeStamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mConnectedDeviceTimeInMillis:J

    .line 170
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mMac:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mMac:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Others"

    .line 173
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 178
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mIsDeviceCurrentlyConnected:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 179
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->getSecondaryIconVisibility()Z

    move-result v0

    if-nez v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$drawable;->ic_wifi_ap_setting:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSecondaryIcon(Landroid/graphics/drawable/Drawable;)V

    .line 182
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mIsDataPausedByUserManually:Z

    if-eqz v0, :cond_2

    .line 183
    sget v0, Lcom/android/settings/R$string;->wifi_ap_sharing_paused:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto/16 :goto_2

    .line 185
    :cond_2
    iget-wide v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mDataLimitValueInBytes:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    const/16 v3, 0x11

    const v4, 0x1010036

    if-lez v0, :cond_5

    .line 186
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    iget-wide v5, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mTodayMobileDataUsageValueInBytes:J

    invoke-direct {v0, v5, v6}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;-><init>(J)V

    .line 187
    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    iget-wide v6, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mDataLimitValueInBytes:J

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;-><init>(J)V

    .line 188
    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v6

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_3

    .line 189
    sget v3, Lcom/android/settings/R$string;->wifi_ap_data_limit_reached:I

    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 191
    :cond_3
    iget-wide v6, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mTodayMobileDataUsageValueInBytes:J

    long-to-double v6, v6

    invoke-static {v6, v7}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertDataSizeToLocaleString(D)Ljava/lang/String;

    move-result-object v6

    .line 192
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mDataLimitValueInBytes:J

    long-to-double v8, v8

    invoke-static {v8, v9}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertDataSizeToLocaleString(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 193
    new-instance v8, Landroid/text/SpannableString;

    invoke-direct {v8, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 194
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v4, v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getColorFromAttribute(Landroid/content/Context;II)I

    move-result v4

    .line 195
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v7, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v8, v7, v2, v4, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 196
    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSpannableSummary(Landroid/text/SpannableString;)V

    .line 198
    :goto_1
    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v3

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v5

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double/2addr v3, v5

    double-to-int v0, v3

    const/16 v3, 0x5a

    if-le v0, v3, :cond_4

    const/4 v1, 0x1

    .line 200
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSecondaryIconDividerVisibility(Z)V

    .line 201
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$drawable;->ic_wifi_ap_warning:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSecondaryAlertIcon(Landroid/graphics/drawable/Drawable;)V

    .line 202
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$3;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;I)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSecondaryAlertIconClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 214
    :cond_4
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSecondaryIconDividerVisibility(Z)V

    .line 215
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSecondaryAlertIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 218
    :cond_5
    iget-wide v5, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mTodayMobileDataUsageValueInBytes:J

    long-to-double v5, v5

    invoke-static {v5, v6}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertDataSizeToLocaleString(D)Ljava/lang/String;

    move-result-object v0

    .line 219
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 220
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4, v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getColorFromAttribute(Landroid/content/Context;II)I

    move-result v4

    .line 221
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v5, v6, v2, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 222
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSpannableSummary(Landroid/text/SpannableString;)V

    .line 223
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSecondaryIconDividerVisibility(Z)V

    .line 224
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSecondaryAlertIcon(Landroid/graphics/drawable/Drawable;)V

    .line 227
    :goto_2
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientDataPausedByDataLimit()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 228
    sget v0, Lcom/android/settings/R$string;->wifi_ap_data_limit_reached:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 231
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mMac:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApClientTimeLimit(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 232
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mMac:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApClientTodayTotalTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    .line 233
    sget-object v4, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "semWifiApClientDetails.isClientDataPauseByTimeLimit(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientDataPauseByTimeLimit()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", consumedTimeTodayTotal"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", setTimeLimitInMillis"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientDataPauseByTimeLimit()Z

    move-result p1

    if-eqz p1, :cond_b

    cmp-long p1, v0, v2

    if-gtz p1, :cond_b

    .line 237
    sget p1, Lcom/android/settings/R$string;->wifi_ap_time_limit_reached:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_3

    .line 241
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->getSecondaryIconVisibility()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 242
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSecondaryIconDividerVisibility(Z)V

    .line 243
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSecondaryIcon(Landroid/graphics/drawable/Drawable;)V

    .line 245
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->isClientOthers()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 246
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 248
    :cond_9
    sget p1, Lcom/android/settings/R$string;->wifi_ap_disconnected:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_3

    .line 252
    :cond_a
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->TAG:Ljava/lang/String;

    const-string p1, "semWifiApClientDetails is null"

    invoke-static {p0, p1}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_3
    return-void
.end method
