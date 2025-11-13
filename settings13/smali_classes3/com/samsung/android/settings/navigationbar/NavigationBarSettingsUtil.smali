.class public Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;
.super Ljava/lang/Object;
.source "NavigationBarSettingsUtil.java"


# static fields
.field private static MODE_BUTTON:I = 0x0

.field private static MODE_GESTURE:I = 0x1

.field private static sBottomInsetScale:[F = null

.field private static sInsetScale:[F = null

.field private static sIsForceUpdate:Z = false

.field private static sIsWalletApp:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static getBottomSensitivityInsetScale(Landroid/content/Context;I)F
    .locals 1

    .line 80
    sget-object v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->sBottomInsetScale:[F

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x107008a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object p0

    sput-object p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->sBottomInsetScale:[F

    .line 84
    :cond_0
    sget-object p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->sBottomInsetScale:[F

    aget p0, p0, p1

    return p0
.end method

.method public static getDefaultAssistAppLinkData(Landroid/content/Context;I)Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    .locals 2

    .line 252
    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->supportRelativeLink(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 255
    :cond_0
    new-instance v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v0}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 256
    sget v1, Lcom/android/settings/R$string;->navigationbar_defaultassistapp_deeplink:I

    iput v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    const v1, 0xb65fc

    .line 257
    iput v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    .line 258
    iput p1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    const-string p1, "top_level_apps"

    .line 259
    iput-object p1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    .line 260
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGE_DEFAULT_APP"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "android.intent.extra.ROLE_NAME"

    const-string v1, "android.app.role.ASSISTANT"

    .line 262
    invoke-virtual {p0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 263
    iput-object p0, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public static getDefaultSettingsValue(Ljava/lang/String;)I
    .locals 1

    .line 268
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v0, "navigationbar_key_position"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "navigation_bar_gesture_detail_type"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 272
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportSamsungGesturalModeAsDefault()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method

.method public static getDetailType(Landroid/content/Context;)I
    .locals 2

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "navigation_bar_gesture_detail_type"

    .line 53
    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getDefaultSettingsValue(Ljava/lang/String;)I

    move-result v1

    .line 52
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static getFloatArray(Landroid/content/res/TypedArray;)[F
    .locals 4

    .line 113
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 114
    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 116
    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method

.method public static getGestureTalkbackDescription(Landroid/content/Context;)I
    .locals 2

    .line 279
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "navigation_bar_gesture_detail_type"

    .line 281
    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getDefaultSettingsValue(Ljava/lang/String;)I

    move-result v1

    .line 279
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_1

    .line 283
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/android/settings/R$string;->navigationbar_swipe_from_bottom_description_for_tablet_voice_assistant:I

    goto :goto_0

    .line 284
    :cond_0
    sget p0, Lcom/android/settings/R$string;->navigationbar_swipe_from_bottom_description_for_voice_assistant:I

    :goto_0
    return p0

    .line 286
    :cond_1
    sget p0, Lcom/android/settings/R$string;->navigationbar_swipe_from_side_and_bottom_description:I

    return p0
.end method

.method public static getLinkDataList(Landroid/content/Context;I)[Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    .locals 4

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v1, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->MODE_BUTTON:I

    const-string v2, "navigation_bar_gesture_while_hidden"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    .line 128
    invoke-static {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getTaskBarLinkData(Landroid/content/Context;I)Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 129
    invoke-static {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getTouchAndVibrationLinkData(Landroid/content/Context;I)Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 130
    invoke-static {p0, p1, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getSPayLinkData(Landroid/content/Context;II)Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 131
    invoke-static {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getDefaultAssistAppLinkData(Landroid/content/Context;I)Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v1, p1

    return-object v1
.end method

.method public static getNavBarMode(Landroid/content/Context;)I
    .locals 2

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->MODE_BUTTON:I

    const-string v1, "navigation_bar_gesture_while_hidden"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getNavBarTypeForSALog(Landroid/content/Context;)I
    .locals 3

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigation_bar_gesture_detail_type"

    .line 63
    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getDefaultSettingsValue(Ljava/lang/String;)I

    move-result v2

    .line 62
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 64
    invoke-static {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getNavBarMode(Landroid/content/Context;)I

    move-result p0

    sget v1, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->MODE_BUTTON:I

    if-ne p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method private static getSPayLinkData(Landroid/content/Context;II)Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    .locals 2

    .line 180
    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->supportRelativeLink(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    sget v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->MODE_GESTURE:I

    if-eq p2, v0, :cond_0

    goto :goto_1

    .line 184
    :cond_0
    new-instance p2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {p2}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 185
    invoke-static {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isSamsungWalletEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    sget-boolean p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->sIsWalletApp:Z

    if-eqz p0, :cond_1

    .line 187
    sget p0, Lcom/android/settings/R$string;->navigationbar_samsungwallet_deeplink:I

    iput p0, p2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    goto :goto_0

    .line 189
    :cond_1
    sget p0, Lcom/android/settings/R$string;->navigationbar_samsungpay_deeplink:I

    iput p0, p2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    goto :goto_0

    .line 191
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isSamsungPayProvisioned(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 192
    sget p0, Lcom/android/settings/R$string;->navigationbar_samsungpay_deeplink:I

    iput p0, p2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    :goto_0
    const p0, 0xb65fa

    .line 196
    iput p0, p2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    .line 197
    iput p1, p2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    const-string p0, "samsungpay://launch?action=settings&menu=simplepay_view"

    .line 198
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 199
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p0, 0x10000000

    .line 201
    invoke-virtual {p1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 p0, 0x1

    const-string v0, "relative_link"

    .line 202
    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 203
    iput-object p1, p2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    return-object p2

    :cond_3
    :goto_1
    return-object v1
.end method

.method public static getSensitivityInsetScale(Landroid/content/Context;I)F
    .locals 1

    .line 88
    sget-object v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->sInsetScale:[F

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1070081

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object p0

    sput-object p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->sInsetScale:[F

    .line 92
    :cond_0
    sget-object p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->sInsetScale:[F

    aget p0, p0, p1

    return p0
.end method

.method private static getTaskBarLinkData(Landroid/content/Context;I)Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    .locals 2

    .line 137
    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->supportRelativeLink(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isTaskBarLinkDataEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBarForHardKey()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getNavBarMode(Landroid/content/Context;)I

    move-result p0

    sget v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->MODE_BUTTON:I

    if-ne p0, v0, :cond_1

    return-object v1

    .line 145
    :cond_1
    new-instance p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {p0}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 146
    sget v0, Lcom/android/settings/R$string;->navigationbar_taskbar_deeplink:I

    iput v0, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 147
    iput p1, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    .line 148
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$TaskBarSettingsActivity"

    .line 149
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    iput-object p1, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method private static getTouchAndVibrationLinkData(Landroid/content/Context;I)Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    .locals 2

    .line 157
    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->supportRelativeLink(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 160
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/as/utils/VibUtils;->hasSystemVibrationMenu(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    return-object v1

    .line 164
    :cond_1
    new-instance p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {p0}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 165
    sget v0, Lcom/android/settings/R$string;->navigationbar_systemvibrationcontrol_deeplink:I

    iput v0, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    const v0, 0xb65fb

    .line 166
    iput v0, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    .line 167
    iput p1, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    const-string p1, "top_level_sounds"

    .line 168
    iput-object p1, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    .line 169
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$VibrationSystemIntensitySettingsActivity"

    .line 170
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    iput-object p1, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    return-object p0
.end method

.method public static isDefaultDigitalAssistantAppSet(Landroid/content/Context;)Z
    .locals 2

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    const-string v1, "assistant"

    .line 38
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 40
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isForceUpdate()Z
    .locals 1

    .line 72
    sget-boolean v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->sIsForceUpdate:Z

    return v0
.end method

.method public static isGestureHintOn(Landroid/content/Context;)Z
    .locals 2

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "navigation_bar_gesture_hint"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isSamsungPayProvisioned(Landroid/content/Context;)Z
    .locals 9

    const-string v0, "value"

    const-string v1, "GET_global"

    const-string v2, "NavigationBarSettingsUtil"

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "content://com.samsung.android.spay.common.share/global"

    .line 210
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 211
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "samsung_pay_provisioning_status"

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v1, v6, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 213
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 214
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v3

    .line 215
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v8, "samsung_pay_setting_quickaccess_deeplink"

    invoke-virtual {p0, v4, v1, v8, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    .line 217
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 218
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v6, :cond_1

    move p0, v6

    goto :goto_1

    :cond_1
    move p0, v3

    .line 219
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isProvisioned : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", supportedQuickAccess : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_2

    if-eqz p0, :cond_2

    move v3, v6

    :cond_2
    return v3

    :catch_0
    const-string p0, "Spay is not provisioned."

    .line 222
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private static isSamsungWalletEnabled(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    .line 229
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "content://com.samsung.android.spay.common.share/global"

    .line 230
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "GET_global"

    const-string v3, "samsungwallet_open_quickaccess"

    const/4 v4, 0x0

    .line 229
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    .line 234
    invoke-static {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->updateWalletAppCheck(Landroid/os/Bundle;)V

    const-string v1, "value"

    .line 235
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0

    .line 237
    :catch_0
    sput-boolean v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->sIsWalletApp:Z

    const-string p0, "NavigationBarSettingsUtil"

    const-string v1, "Samsung wallet is not provisioned."

    .line 238
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static isTaskBarEnableCondition(Landroid/content/Context;)Z
    .locals 7

    .line 303
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 305
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    .line 306
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, -0x2

    const-string v6, "easy_mode_switch"

    invoke-static {v4, v6, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    .line 308
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "minimal_battery_use"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    if-nez v0, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    if-nez v4, :cond_4

    if-eqz v5, :cond_4

    .line 311
    invoke-static {p0}, Lcom/samsung/android/settings/taskbar/TaskBarUtils;->isSamsungLauncher(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    return v1
.end method

.method public static isTaskBarEnabled(Landroid/content/Context;)Z
    .locals 3

    .line 296
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "task_bar"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 299
    invoke-static {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isTaskBarEnableCondition(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    return v2
.end method

.method private static isTaskBarLinkDataEnabled(Landroid/content/Context;)Z
    .locals 0

    .line 292
    invoke-static {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isTaskBarEnableCondition(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static setForceUpdateState(Z)V
    .locals 0

    .line 76
    sput-boolean p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->sIsForceUpdate:Z

    return-void
.end method

.method public static setSensitivityInsetScale(Landroid/content/Context;)V
    .locals 4

    .line 96
    sget-object v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->sInsetScale:[F

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->sInsetScale:[F

    .line 100
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    const-string v0, "navigation_bar_back_gesture_sensitivity_sub"

    goto :goto_0

    :cond_1
    const-string v0, "navigation_bar_back_gesture_sensitivity"

    .line 103
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->sInsetScale:[F

    aget v2, v2, v0

    const-string v3, "back_gesture_inset_scale_left"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->sInsetScale:[F

    aget v2, v2, v0

    const-string v3, "back_gesture_inset_scale_right"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getBottomSensitivityInsetScale(Landroid/content/Context;I)F

    move-result p0

    const-string v0, "bottom_gesture_inset_scale"

    invoke-static {v1, v0, p0}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    return-void
.end method

.method private static updateWalletAppCheck(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "wallet_app_status"

    .line 247
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->sIsWalletApp:Z

    return-void
.end method
