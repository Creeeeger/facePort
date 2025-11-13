.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;
.super Landroidx/preference/Preference;
.source "WifiApCustomPreference.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$AutoHotspotCustomPreferenceListener;
    }
.end annotation


# static fields
.field private static final MHSDBG:Z

.field private static TAG:Ljava/lang/String; = "WifiApCustomPreference"


# instance fields
.field private mBleScanAllowedDevice:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$AutoHotspotCustomPreferenceListener;

.field private mSecondaryIcon:Landroid/graphics/drawable/Drawable;

.field private mSecondaryIconClickListener:Landroid/view/View$OnClickListener;

.field private mSecondaryIconResId:I

.field private mSmartWhiteList:Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;


# direct methods
.method static bridge synthetic -$$Nest$fgetmListener(Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;)Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$AutoHotspotCustomPreferenceListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mListener:Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$AutoHotspotCustomPreferenceListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSmartWhiteList(Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;)Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mSmartWhiteList:Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetMHSDBG()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->MHSDBG:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 23
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->MHSDBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApFamilyMember;Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$AutoHotspotCustomPreferenceListener;I)V
    .locals 2

    .line 103
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mSecondaryIconClickListener:Landroid/view/View$OnClickListener;

    .line 104
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->TAG:Ljava/lang/String;

    const-string v1, "WifiApCustomPreference() - Account name for Account preference received"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 106
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mSmartWhiteList:Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    .line 107
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mBleScanAllowedDevice:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    .line 108
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mListener:Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$AutoHotspotCustomPreferenceListener;

    .line 109
    sget p1, Lcom/android/settings/R$layout;->sec_wifi_ap_custom_preference:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 110
    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApFamilyMember;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApFamilyMember;->getGuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApFamilyMember;->getPhoto()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApFamilyMember;->getPhoto()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 115
    :cond_0
    sget p1, Lcom/android/settings/R$drawable;->sec_profile_default_image:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(I)V

    :goto_0
    if-nez p4, :cond_1

    .line 118
    invoke-virtual {p0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/wifi/SemWifiApBleScanResult;Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$AutoHotspotCustomPreferenceListener;)V
    .locals 2

    .line 62
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mSecondaryIconClickListener:Landroid/view/View$OnClickListener;

    .line 63
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->TAG:Ljava/lang/String;

    const-string v1, "WifiApCustomPreference() - SemWifiApBleScanResult device received."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mSmartWhiteList:Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    .line 66
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mBleScanAllowedDevice:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    .line 67
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mListener:Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$AutoHotspotCustomPreferenceListener;

    .line 68
    sget p1, Lcom/android/settings/R$layout;->sec_wifi_ap_custom_preference_small:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 69
    iget-object p1, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 70
    iget-object p1, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 71
    iget p1, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mhidden:I

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    .line 72
    sget p1, Lcom/android/settings/R$drawable;->sec_hotspot_list_ic_tablet:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(I)V

    goto :goto_0

    .line 74
    :cond_0
    sget p1, Lcom/android/settings/R$drawable;->sec_hotspot_list_ic_mobile:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(I)V

    .line 76
    :goto_0
    invoke-virtual {p0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 77
    sget-boolean p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->MHSDBG:Z

    if-eqz p0, :cond_1

    .line 78
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "WifiApCustomPreference() - SemWifiApBleScanResult Preference added: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", mac: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$AutoHotspotCustomPreferenceListener;)V
    .locals 2

    .line 82
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mSecondaryIconClickListener:Landroid/view/View$OnClickListener;

    .line 83
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->TAG:Ljava/lang/String;

    const-string v1, "WifiApCustomPreference() - SmartWhiteList device received"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mSmartWhiteList:Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    const/4 p1, 0x0

    .line 86
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mBleScanAllowedDevice:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    .line 87
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mListener:Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$AutoHotspotCustomPreferenceListener;

    .line 88
    sget p1, Lcom/android/settings/R$layout;->sec_wifi_ap_custom_preference_small:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 89
    invoke-virtual {p2}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getMac()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {p2}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getDeviceType()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 92
    sget p1, Lcom/android/settings/R$drawable;->sec_hotspot_list_ic_tablet:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(I)V

    goto :goto_0

    .line 94
    :cond_0
    sget p1, Lcom/android/settings/R$drawable;->sec_hotspot_list_ic_mobile:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(I)V

    .line 96
    :goto_0
    sget p1, Lcom/android/settings/R$drawable;->sec_hotspot_list_ic_minus:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->setSecondaryIcon(I)V

    .line 97
    invoke-virtual {p0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 98
    sget-boolean p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->MHSDBG:Z

    if-eqz p1, :cond_1

    .line 99
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "WifiApCustomPreference() - SmartWhiteList Preference added: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mSmartWhiteList:Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    invoke-virtual {p3}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", mac:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mSmartWhiteList:Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getMac()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 124
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->TAG:Ljava/lang/String;

    const-string v1, "onBindViewHolder() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020016

    .line 126
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v0, 0x1020006

    .line 127
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v0, 0x1020018

    .line 128
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 131
    sget v0, Lcom/android/settings/R$id;->icon_secondary:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    .line 133
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mSecondaryIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mSecondaryIconResId:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 136
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mSecondaryIconResId:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 139
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
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

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 148
    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->MHSDBG:Z

    if-eqz v0, :cond_0

    .line 149
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceClick() - preference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mSmartWhiteList:Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    if-eqz v0, :cond_1

    .line 151
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->TAG:Ljava/lang/String;

    const-string v0, "onPreferenceClick() - mSmartWhiteList is clicked"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mListener:Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$AutoHotspotCustomPreferenceListener;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mSmartWhiteList:Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    invoke-interface {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$AutoHotspotCustomPreferenceListener;->onPreferenceClicked(Ljava/lang/Object;)V

    goto :goto_0

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mBleScanAllowedDevice:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    if-eqz v0, :cond_2

    .line 154
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->TAG:Ljava/lang/String;

    const-string v0, "onPreferenceClick() - mBleScanAllowedDevice is clicked"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mListener:Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$AutoHotspotCustomPreferenceListener;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mBleScanAllowedDevice:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    invoke-interface {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$AutoHotspotCustomPreferenceListener;->onPreferenceClicked(Ljava/lang/Object;)V

    goto :goto_0

    .line 157
    :cond_2
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->TAG:Ljava/lang/String;

    const-string v1, "onPreferenceClick() - other preference clicked is clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mListener:Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$AutoHotspotCustomPreferenceListener;

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$AutoHotspotCustomPreferenceListener;->onPreferenceClicked(Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 192
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->TAG:Ljava/lang/String;

    const-string v1, "setEnabled() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public setSecondaryIcon(I)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->setSecondaryIcon(Landroid/graphics/drawable/Drawable;)V

    .line 187
    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mSecondaryIconResId:I

    return-void
.end method

.method public setSecondaryIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-nez p1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    .line 173
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 174
    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mSecondaryIconResId:I

    .line 175
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_2
    return-void
.end method
