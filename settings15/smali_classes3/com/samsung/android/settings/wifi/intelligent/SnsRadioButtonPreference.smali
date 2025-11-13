.class public Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;
.super Landroidx/preference/CheckBoxPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mListener:Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;->mListener:Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;

    const p1, 0x7f0d09b6

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const p1, 0x7f0d0546

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const p0, 0x1020016

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBreakStrategy(I)V

    :cond_1
    return-void
.end method

.method public final onClick()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;->mListener:Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    const-string/jumbo v2, "wifi_watchdog_poor_network_aggressive_mode_on"

    const-string v3, "WifiSmartNetworkSwitchEnabler"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p0, v1, :cond_0

    const-string p0, "Agg on pressed"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    invoke-virtual {p0, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p0, v0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    invoke-virtual {p0, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p0, v0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    if-ne p0, v1, :cond_1

    const-string p0, "Agg off pressed"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    invoke-virtual {p0, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p0, v0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;

    invoke-virtual {p0, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p0, v0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    return-void
.end method
