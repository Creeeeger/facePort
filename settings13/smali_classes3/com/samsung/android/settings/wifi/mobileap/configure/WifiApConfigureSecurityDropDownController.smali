.class public Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "WifiApConfigureSecurityDropDownController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final BUNDLE_KEY_SECURITY_DROPDOWN_VALUE:Ljava/lang/String; = "bundle_key_security_dropdown_value"

.field private static final DIALOG_OPEN_SECURITY_WARNING:I = 0x1

.field public static final KEY_PREFERENCE:Ljava/lang/String; = "security_dropdown_preference"

.field private static final TAG:Ljava/lang/String; = "WifiApConfigureSecurityDropDownController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mIs6GhzBandSelectedPreviouslyFlag:Z

.field private mOpenSecurityWarningDialogIsRequired:Z

.field private mPreviousSecurityType:I

.field private mSecurityEntries:[Ljava/lang/String;

.field private mSecurityEntryValues:[Ljava/lang/String;

.field private mThisDropDownPreference:Landroidx/preference/SecDropDownPreference;

.field private mWifiApConfigureSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPreviousSecurityType(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mPreviousSecurityType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmOpenSecurityWarningDialogIsRequired(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mOpenSecurityWarningDialogIsRequired:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mfindIndexOfValue(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->findIndexOfValue(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 42
    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mPreviousSecurityType:I

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mSecurityEntries:[Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mSecurityEntryValues:[Ljava/lang/String;

    .line 45
    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mOpenSecurityWarningDialogIsRequired:Z

    .line 47
    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mIs6GhzBandSelectedPreviouslyFlag:Z

    .line 52
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mContext:Landroid/content/Context;

    .line 53
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->TAG:Ljava/lang/String;

    const-string p2, "WifiApConfigureSecurityDropdownController"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getWifiApBandConfig(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisBand6Ghz()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mIs6GhzBandSelectedPreviouslyFlag:Z

    return-void
.end method

.method private findIndexOfValue(I)I
    .locals 3

    .line 162
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finding Index Of Value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mThisDropDownPreference:Landroidx/preference/SecDropDownPreference;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private setSecurityTypeEntryArrays(Z)V
    .locals 5

    .line 199
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSecurityEntryArray(), is6GhzBandCurrentlySelected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$array;->wifi_ap_owe_wpa3_security_type_entries:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mSecurityEntries:[Ljava/lang/String;

    .line 201
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/settings/R$array;->wifi_ap_owe_wpa3_security_type_entry_values:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mSecurityEntryValues:[Ljava/lang/String;

    .line 202
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mThisDropDownPreference:Landroidx/preference/SecDropDownPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mSecurityEntries:[Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 203
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mThisDropDownPreference:Landroidx/preference/SecDropDownPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mSecurityEntryValues:[Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 204
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isWpa3SecurityTypeSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 205
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isOpenEnhancedSecurityTypeSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->is6GhzBandSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    const-string p1, "setSecurityEntryArray() : EnhancedOpen/wpa3"

    .line 207
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$array;->wifi_ap_6ghz_owe_wpa3_security_type_entries:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mSecurityEntries:[Ljava/lang/String;

    .line 209
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$array;->wifi_ap_6ghz_owe_wpa3_security_type_entry_values:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mSecurityEntryValues:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_0
    const-string p1, "setSecurityEntryArray() : open/EnhancedOpen/wpa2/wpa2_wpa3/wpa3"

    .line 211
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mSecurityEntries:[Ljava/lang/String;

    .line 213
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mSecurityEntryValues:[Ljava/lang/String;

    goto/16 :goto_0

    .line 216
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->is6GhzBandSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    const-string p1, "setSecurityEntryArray() : wpa3"

    .line 217
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$array;->wifi_ap_6ghz_wpa3_security_type_entries:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mSecurityEntries:[Ljava/lang/String;

    .line 219
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$array;->wifi_ap_6ghz_wpa3_security_type_entry_values:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mSecurityEntryValues:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p1, "setSecurityEntryArray() : open/wpa2/wpa2_wpa3/wpa3"

    .line 221
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$array;->wifi_ap_wpa3_security_type_entries:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mSecurityEntries:[Ljava/lang/String;

    .line 223
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$array;->wifi_ap_wpa3_security_type_entry_values:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mSecurityEntryValues:[Ljava/lang/String;

    goto :goto_0

    .line 227
    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isOpenEnhancedSecurityTypeSupported()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "setSecurityEntryArray() : open/EnhancedOpen/wpa2"

    .line 228
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$array;->wifi_ap_owe_security_type_entries:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mSecurityEntries:[Ljava/lang/String;

    .line 230
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$array;->wifi_ap_owe_security_type_entry_values:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mSecurityEntryValues:[Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string p1, "setSecurityEntryArray() : open/wpa2"

    .line 232
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$array;->wifi_ap_security_type_entries:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mSecurityEntries:[Ljava/lang/String;

    .line 234
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$array;->wifi_ap_security_type_entry_values:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mSecurityEntryValues:[Ljava/lang/String;

    .line 237
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mThisDropDownPreference:Landroidx/preference/SecDropDownPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mSecurityEntries:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 238
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mThisDropDownPreference:Landroidx/preference/SecDropDownPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mSecurityEntryValues:[Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setSummary(Ljava/lang/CharSequence;)V
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mThisDropDownPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showDialog(I)V
    .locals 4

    .line 264
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDialog() - dialogId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getDialogTheme()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    return-void

    :cond_0
    const-string p1, "showDialog() - DIALOG_OPEN_SECURITY_WARNING is being shown"

    .line 268
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    sget p1, Lcom/android/settings/R$string;->wifi_ap_none_security_warning:I

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->common_continue:I

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;)V

    .line 270
    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->cancel:I

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;)V

    .line 278
    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 289
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mDialog:Landroid/app/AlertDialog;

    .line 290
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 65
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 66
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->TAG:Ljava/lang/String;

    const-string v1, "displayPreference"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecDropDownPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mThisDropDownPreference:Landroidx/preference/SecDropDownPreference;

    .line 68
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->wifi_ap_primary_text_color:I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->seslSetSummaryColor(I)V

    .line 69
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getWifiApBandConfig(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisBand6Ghz()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->setSecurityTypeEntryArrays(Z)V

    .line 70
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getSecurityType(Landroid/content/Context;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->findIndexOfValue(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->setValueIndex(I)V

    .line 71
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getSecurityType(Landroid/content/Context;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mOpenSecurityWarningDialogIsRequired:Z

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 59
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->TAG:Ljava/lang/String;

    const-string v0, "getAvailabilityStatus()"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDropDownValue()I
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mThisDropDownPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mThisDropDownPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mThisDropDownPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 191
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValue Error: (Resetting value to first item from dropdown). newValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 193
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mThisDropDownPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getEntryValuesSize()I
    .locals 4

    .line 316
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mThisDropDownPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p0, v1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 76
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 79
    :cond_0
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->TAG:Ljava/lang/String;

    const-string v1, "handlePreferenceTreeClick - Triggered"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->hideKeyboard(Landroid/content/Context;)V

    .line 81
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isOpenEnhancedSecurityTypeSupported()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mWifiApConfigureSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->getBandPreferenceConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisBand6Ghz()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Trying to disable the click: "

    .line 82
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mThisDropDownPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {p1}, Landroidx/preference/DropDownPreference;->seslGetSpinner()Landroidx/appcompat/widget/AppCompatSpinner;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatSpinner;->seslDismissPopup()V

    .line 84
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->wifi_ap_6GHz_wpa3_required:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public isAnyOpenSecurityTypeSelected()Z
    .locals 1

    .line 254
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->isOpenSecurityTypeSelected()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->isOpenEnhancedSecurityTypeSelected()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public isOpenEnhancedSecurityTypeSelected()Z
    .locals 3

    .line 248
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->getDropDownValue()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 249
    :goto_0
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is currently owe security type selected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isOpenSecurityTypeSelected()Z
    .locals 3

    .line 242
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->getDropDownValue()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 243
    :goto_0
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is currently open security type selected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public isWpa3SecurityTypeSelected()Z
    .locals 3

    .line 258
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->getDropDownValue()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 259
    :goto_0
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is currently Wpa3 security type selected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 91
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->getDropDownValue()I

    move-result v0

    .line 93
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mThisDropDownPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    .line 94
    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mPreviousSecurityType:I

    .line 95
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnPreferenceChange - OldValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", NewValue: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " (Index: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mThisDropDownPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->setSummary(Ljava/lang/CharSequence;)V

    int-to-long v2, p1

    const-string p2, "TETH_011"

    const-string v0, "8011"

    .line 98
    invoke-static {p2, v0, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;J)V

    .line 100
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isOperatorBrandTMO()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isOperatorBrandNEWCO()Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    if-nez p1, :cond_1

    .line 102
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_open_security_warning:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 105
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isOperatorBrandVZW()Z

    move-result p2

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    if-nez p1, :cond_2

    .line 106
    iget-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mOpenSecurityWarningDialogIsRequired:Z

    if-eqz p2, :cond_2

    const-string p2, "SECURITY_TYPE_OPEN is selected for vzw"

    .line 107
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->showDialog(I)V

    .line 111
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mWifiApConfigureSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->getBandPreferenceConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisBand6Ghz()Z

    move-result p2

    if-nez p2, :cond_4

    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    .line 113
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$string;->wifi_ap_security_warning:I

    invoke-static {p2}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result p2

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "WPA3"

    aput-object v3, v1, v0

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    const/4 p2, 0x5

    if-ne p1, p2, :cond_4

    .line 115
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$string;->wifi_ap_security_warning:I

    invoke-static {p2}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result p2

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "Enhanced Open"

    aput-object v3, v1, v0

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 118
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mWifiApConfigureSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->updatePmfState()V

    .line 119
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mWifiApConfigureSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->updatePassWordVisibility()V

    return v2
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 307
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "bundle_key_security_dropdown_value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 309
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestoreInstanceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mThisDropDownPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->setValueIndex(I)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 301
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mThisDropDownPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string v0, "bundle_key_security_dropdown_value"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V
    .locals 1

    .line 295
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mWifiApConfigureSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    :cond_0
    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public setValueIndex(I)V
    .locals 3

    if-ltz p1, :cond_2

    .line 167
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->getEntryValuesSize()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 172
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting Value Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mThisDropDownPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {v1, p1}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    .line 174
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mThisDropDownPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {v1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object p1, v1, p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->setSummary(Ljava/lang/CharSequence;)V

    .line 175
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mWifiApConfigureSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    if-eqz p1, :cond_1

    .line 176
    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->updatePmfState()V

    .line 177
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mWifiApConfigureSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->updatePassWordVisibility()V

    goto :goto_0

    :cond_1
    const-string p0, "mWifiApConfigureSettings is null"

    .line 179
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 168
    :cond_2
    :goto_1
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting Value Index Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", getEntryValuesSize:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->getEntryValuesSize()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", (Resetting index to 0)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 169
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->setValueIndex(I)V

    return-void
.end method

.method public updateState()V
    .locals 6

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 125
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mWifiApConfigureSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->getBandPreferenceConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisBand6Ghz()Z

    move-result v1

    .line 127
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isOpenEnhancedSecurityTypeSupported()Z

    move-result v2

    .line 128
    sget-object v3, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updating state: isOpenEnhancedSecurityTypeSupported "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", wifiApBandConfig(is6Ghz) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisBand6Ghz()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->setSecurityTypeEntryArrays(Z)V

    const/4 v0, 0x0

    const-string v3, "wifi_ap_security_type"

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    .line 132
    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mIs6GhzBandSelectedPreviouslyFlag:Z

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->isOpenSecurityTypeSelected()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->isOpenEnhancedSecurityTypeSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->isWpa3SecurityTypeSelected()Z

    move-result v0

    if-nez v0, :cond_5

    .line 136
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->findIndexOfValue(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->setValueIndex(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x5

    .line 134
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->findIndexOfValue(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->setValueIndex(I)V

    goto :goto_1

    .line 139
    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mIs6GhzBandSelectedPreviouslyFlag:Z

    if-eqz v1, :cond_5

    .line 140
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getSecurityType(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->findIndexOfValue(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->setValueIndex(I)V

    .line 141
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mIs6GhzBandSelectedPreviouslyFlag:Z

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    .line 146
    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mIs6GhzBandSelectedPreviouslyFlag:Z

    .line 148
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->getDropDownValue()I

    move-result v0

    if-eq v0, v5, :cond_5

    .line 149
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->findIndexOfValue(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->setValueIndex(I)V

    goto :goto_1

    .line 152
    :cond_4
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mIs6GhzBandSelectedPreviouslyFlag:Z

    if-eqz v1, :cond_5

    .line 153
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getSecurityType(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->findIndexOfValue(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->setValueIndex(I)V

    .line 154
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->mIs6GhzBandSelectedPreviouslyFlag:Z

    :cond_5
    :goto_1
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
