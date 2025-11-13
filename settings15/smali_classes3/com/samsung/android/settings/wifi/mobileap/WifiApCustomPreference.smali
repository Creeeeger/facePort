.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mBleScanAllowedDevice:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

.field public mListener:Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$AutoHotspotCustomPreferenceListener;

.field public mSecondaryIcon:Landroid/graphics/drawable/Drawable;

.field public mSecondaryIconClickListener:Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$1;

.field public final mSecondaryIconResId:I

.field public mSmartWhiteList:Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/wifi/SemWifiApBleScanResult;Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$AutoHotspotCustomPreferenceListener;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mSecondaryIconClickListener:Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$1;

    const-string p1, "WifiApCustomPreference"

    const-string v0, "WifiApCustomPreference() - SemWifiApBleScanResult device received."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mSmartWhiteList:Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mBleScanAllowedDevice:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mListener:Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$AutoHotspotCustomPreferenceListener;

    const p3, 0x7f0d0a1c

    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setLayoutResource(I)V

    iget-object p3, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object p3, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget p3, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mhidden:I

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const p3, 0x7f080698

    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setIcon(I)V

    goto :goto_0

    :cond_0
    const p3, 0x7f080691

    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setIcon(I)V

    :goto_0
    invoke-virtual {p0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    sget-boolean p0, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "WifiApCustomPreference() - SemWifiApBleScanResult Preference added: "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", mac: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-static {p0, p2, p1}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$AutoHotspotCustomPreferenceListener;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mSecondaryIconClickListener:Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$1;

    const-string v0, "WifiApCustomPreference"

    const-string v1, "WifiApCustomPreference() - SmartWhiteList device received"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mSmartWhiteList:Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mBleScanAllowedDevice:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mListener:Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$AutoHotspotCustomPreferenceListener;

    const p3, 0x7f0d0a1c

    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {p2}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getMac()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getDeviceType()I

    move-result p3

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    const p3, 0x7f080698

    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setIcon(I)V

    goto :goto_0

    :cond_0
    const p3, 0x7f080691

    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setIcon(I)V

    :goto_0
    const p3, 0x7f080abb

    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eq v1, p1, :cond_3

    :cond_2
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mSecondaryIconResId:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_3
    iput p3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mSecondaryIconResId:I

    invoke-virtual {p0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    sget-boolean p0, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "WifiApCustomPreference() - SmartWhiteList Preference added: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mac:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getMac()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    const-string v0, "WifiApCustomPreference"

    const-string v1, "onBindViewHolder() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v0, 0x1020018

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v0, 0x7f0a07af

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mSecondaryIconClickListener:Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$1;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mSecondaryIconResId:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mSecondaryIconResId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    goto :goto_0

    :cond_3
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    const-string v1, "WifiApCustomPreference"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onPreferenceClick() - preference: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mSmartWhiteList:Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    if-eqz v0, :cond_1

    const-string p1, "onPreferenceClick() - mSmartWhiteList is clicked"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mListener:Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$AutoHotspotCustomPreferenceListener;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mSmartWhiteList:Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    invoke-interface {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$AutoHotspotCustomPreferenceListener;->onPreferenceClicked(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mBleScanAllowedDevice:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    if-eqz v0, :cond_2

    const-string p1, "onPreferenceClick() - mBleScanAllowedDevice is clicked"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mListener:Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$AutoHotspotCustomPreferenceListener;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mBleScanAllowedDevice:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    invoke-interface {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$AutoHotspotCustomPreferenceListener;->onPreferenceClicked(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v0, "onPreferenceClick() - other preference clicked is clicked"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mListener:Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$AutoHotspotCustomPreferenceListener;

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$AutoHotspotCustomPreferenceListener;->onPreferenceClicked(Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final setEnabled(Z)V
    .locals 2

    const-string v0, "WifiApCustomPreference"

    const-string/jumbo v1, "setEnabled() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
