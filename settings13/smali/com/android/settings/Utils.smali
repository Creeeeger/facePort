.class public final Lcom/android/settings/Utils;
.super Lcom/android/settingslib/Utils;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/Utils$EmojiInputFilter;,
        Lcom/android/settings/Utils$OnlineHelpMenuState;
    }
.end annotation


# static fields
.field public static CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String; = null

.field public static final CONFIG_SECURE_SVC_INTEGRATION:Ljava/lang/String;

.field public static final DBG:Z

.field public static final DEFAULT_TIMEOUT_MOBILEAP:I

.field public static final DEX_SETTINGS_URI:Landroid/net/Uri;

.field public static MAX_CLIENT_4_MOBILEAP:I = 0x0

.field public static final MHSDBG:Z

.field public static final SHOW_DETAILED_AP_INFO:Z

.field public static SPF_SupportMobileApDualAp:Z = false

.field public static SPF_SupportMobileApDualPassword:Z = false

.field public static SPF_SupportMobileApEnhanced:Z = false

.field public static SPF_SupportMobileApEnhancedLite:Z = false

.field public static SPF_SupportMobileApEnhancedWifiOnlyLite:Z = false

.field public static SUPPORT_MOBILEAP_5G_BASED_ON_COUNTRY:Z = false

.field public static SUPPORT_MOBILEAP_6G_BASED_ON_COUNTRY:Z = false

.field public static final SUPPORT_MOBILEAP_MAXCLIENT_MENU:Z

.field private static SUPPORT_MOBILEAP_REGION:Ljava/lang/String; = null

.field public static SUPPORT_MOBILEAP_WIFISHARING:Z = false

.field public static SUPPORT_MOBILEAP_WIFISHARINGLITE:Z = false

.field private static USE_BIXBY:Z = false

.field private static isJDMDevice:Z = false

.field public static final isSupportMobileWips:Z

.field public static mCountryCode:Ljava/lang/String;

.field private static mHelpMenuData:Lcom/android/settings/Utils$OnlineHelpMenuState;

.field private static final sBuilder:Ljava/lang/StringBuilder;

.field private static final sFormatter:Ljava/util/Formatter;

.field private static sSystemSignature:[Landroid/content/pm/Signature;


# direct methods
.method static bridge synthetic -$$Nest$smemojiParsing(Ljava/lang/CharSequence;Landroid/content/Context;Landroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/settings/Utils;->emojiParsing(Ljava/lang/CharSequence;Landroid/content/Context;Landroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 227
    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    sput-boolean v0, Lcom/android/settings/Utils;->MHSDBG:Z

    .line 266
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ConfigSecureSvcIntegration"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/Utils;->CONFIG_SECURE_SVC_INTEGRATION:Ljava/lang/String;

    .line 268
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Wifi_ShowDetailedApInfo"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    .line 890
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v1, Lcom/android/settings/Utils;->sBuilder:Ljava/lang/StringBuilder;

    .line 891
    new-instance v2, Ljava/util/Formatter;

    .line 892
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v2, Lcom/android/settings/Utils;->sFormatter:Ljava/util/Formatter;

    const-string v1, "ro.debuggable"

    const/4 v2, 0x0

    .line 1417
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/android/settings/Utils;->DBG:Z

    const-string v1, "content://com.sec.android.desktopmode.uiservice.SettingsProvider/"

    .line 1418
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/settings/Utils;->DEX_SETTINGS_URI:Landroid/net/Uri;

    .line 2845
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const/16 v4, 0x4b0

    const-string v5, "CscFeature_Wifi_ConfigMobileApDefaultTimeOut"

    invoke-virtual {v1, v5, v4}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/settings/Utils;->DEFAULT_TIMEOUT_MOBILEAP:I

    .line 2846
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const/16 v4, 0xa

    const-string v5, "CscFeature_Wifi_MaxClient4MobileAp"

    invoke-virtual {v1, v5, v4}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/settings/Utils;->MAX_CLIENT_4_MOBILEAP:I

    .line 2847
    sput-boolean v2, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARING:Z

    .line 2848
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApCust;->getInstance()Lcom/samsung/android/wifi/SemWifiApCust;

    sget-object v1, Lcom/samsung/android/wifi/SemWifiApCust;->mMHSCustomer:Ljava/lang/String;

    sput-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    .line 2849
    sput-boolean v3, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    .line 2850
    sput-boolean v2, Lcom/android/settings/Utils;->SPF_SupportMobileApDualPassword:Z

    .line 2851
    sput-boolean v2, Lcom/android/settings/Utils;->SPF_SupportMobileApDualAp:Z

    .line 2852
    sput-boolean v2, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhancedLite:Z

    .line 2853
    sput-boolean v2, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhancedWifiOnlyLite:Z

    .line 2854
    sput-boolean v2, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARINGLITE:Z

    .line 2855
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v4, "CscFeature_Wifi_SupportMenuMobileApMaxClient"

    invoke-virtual {v1, v4, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_MAXCLIENT_MENU:Z

    .line 2857
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v4, "CscFeature_Wifi_DisableMWIPS"

    invoke-virtual {v1, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v4, ""

    if-nez v1, :cond_1

    .line 2858
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/settings/Utils;->isJDMDevice:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    sput-boolean v3, Lcom/android/settings/Utils;->isSupportMobileWips:Z

    .line 2859
    sput-boolean v2, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_5G_BASED_ON_COUNTRY:Z

    .line 2860
    sput-boolean v2, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_6G_BASED_ON_COUNTRY:Z

    .line 2862
    sput-object v4, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_REGION:Ljava/lang/String;

    .line 2863
    sput-boolean v2, Lcom/android/settings/Utils;->USE_BIXBY:Z

    return-void
.end method

.method public static applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V
    .locals 3

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 3053
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    .line 3054
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 3055
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 3057
    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x1a4

    if-ge v0, v2, :cond_1

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 3060
    iget p0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 p0, p0, 0x400

    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 3062
    :cond_1
    iget p0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p0, p0, -0x401

    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    const/4 p0, 0x1

    .line 3065
    invoke-virtual {v1, p0}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    .line 3066
    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static buildSummaryString(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1707
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    .line 1708
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    if-ge v0, p2, :cond_1

    .line 1709
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1710
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1711
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1714
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static confirmWorkProfileCredentials(Landroid/content/Context;I)Z
    .locals 2

    const-string v0, "keyguard"

    .line 930
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    const/4 v1, 0x0

    .line 932
    invoke-virtual {v0, v1, v1, p1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 934
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static createAccessibleSequence(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 3

    .line 791
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 792
    new-instance v1, Landroid/text/style/TtsSpan$TextBuilder;

    invoke-direct {v1, p1}, Landroid/text/style/TtsSpan$TextBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/text/style/TtsSpan$TextBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object p1

    .line 793
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const/4 v1, 0x0

    const/16 v2, 0x12

    .line 792
    invoke-virtual {v0, p1, v1, p0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static createBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 3

    .line 1214
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1215
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1216
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1217
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p1
.end method

.method public static createIconWithDrawable(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 3

    .line 1198
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 1199
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_2

    .line 1201
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 1202
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/4 v2, 0x1

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 1203
    :goto_1
    invoke-static {p0, v0, v1}, Lcom/android/settings/Utils;->createBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 1207
    :goto_2
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0
.end method

.method public static createLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;
    .locals 4

    if-nez p0, :cond_0

    .line 382
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x3

    const-string v1, "_"

    .line 383
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 385
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_1

    .line 386
    new-instance v0, Ljava/util/Locale;

    aget-object p0, p0, v1

    invoke-direct {v0, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 387
    :cond_1
    array-length v0, p0

    const/4 v3, 0x2

    if-ne v3, v0, :cond_2

    .line 388
    new-instance v0, Ljava/util/Locale;

    aget-object v1, p0, v1

    aget-object p0, p0, v2

    invoke-direct {v0, v1, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 390
    :cond_2
    new-instance v0, Ljava/util/Locale;

    aget-object v1, p0, v1

    aget-object v2, p0, v2

    aget-object p0, p0, v3

    invoke-direct {v0, v1, v2, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createPackageContextAsUser(Landroid/content/Context;I)Landroid/content/Context;
    .locals 2

    .line 970
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 969
    invoke-virtual {p0, v0, v1, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "Settings"

    const-string v0, "Failed to create user context"

    .line 972
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static disableComponent(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 2

    .line 1660
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 1661
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1663
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Component not found, not disabling it: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Settings"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static disableNfcComponent(Landroid/content/Context;)V
    .locals 3

    const-string v0, "Settings"

    const-string v1, "Removing nfc components from Manifest file"

    .line 1649
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$NfcSettingsActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->disableComponent(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 1651
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.settings.Settings$PaymentSettingsActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->disableComponent(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 1652
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.settings.Settings$AndroidBeamSettingsActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->disableComponent(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 1653
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.settings.Settings$NfcAdvancedRoutingSettingActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->disableComponent(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 1654
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.settings.nfc.PaymentDefaultDialog"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->disableComponent(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 1655
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.settings.nfc.NfcForegroundDialog"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->disableComponent(Landroid/content/Context;Landroid/content/ComponentName;)V

    return-void
.end method

.method private static emojiParsing(Ljava/lang/CharSequence;Landroid/content/Context;Landroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 8

    .line 2393
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_4

    .line 2398
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x13

    .line 2399
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->getType(C)I

    move-result v6

    const/4 v7, 0x1

    if-ne v5, v6, :cond_1

    :cond_0
    :goto_1
    :pswitch_0
    :sswitch_0
    move v3, v7

    goto :goto_2

    :cond_1
    const v5, 0xd800

    if-lt v4, v5, :cond_2

    const v5, 0xdbff

    if-gt v4, v5, :cond_2

    goto :goto_1

    :cond_2
    const/16 v5, 0x2600

    if-eq v4, v5, :cond_0

    const/16 v5, 0x2601

    if-eq v4, v5, :cond_0

    const/16 v5, 0x2614

    if-eq v4, v5, :cond_0

    const/16 v5, 0x2615

    if-eq v4, v5, :cond_0

    const/16 v5, 0x2665

    if-eq v4, v5, :cond_0

    const/16 v5, 0x2666

    if-eq v4, v5, :cond_0

    const/16 v5, 0x26a0

    if-eq v4, v5, :cond_0

    const/16 v5, 0x26a1

    if-eq v4, v5, :cond_0

    const/16 v5, 0x26aa

    if-eq v4, v5, :cond_0

    const/16 v5, 0x26ab

    if-eq v4, v5, :cond_0

    sparse-switch v4, :sswitch_data_0

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    packed-switch v4, :pswitch_data_2

    packed-switch v4, :pswitch_data_3

    :goto_2
    if-eqz v3, :cond_3

    .line 2520
    new-instance p0, Landroid/view/ContextThemeWrapper;

    const v0, 0x103012b

    invoke-direct {p0, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    sget v0, Lcom/android/settings/R$string;->sec_fingerprint_invalid_rename_character:I

    .line 2522
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2520
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 2523
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 2524
    invoke-interface {p2, p3, p4}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x2049 -> :sswitch_0
        0x2139 -> :sswitch_0
        0x21aa -> :sswitch_0
        0x231b -> :sswitch_0
        0x23f0 -> :sswitch_0
        0x23f3 -> :sswitch_0
        0x24c2 -> :sswitch_0
        0x25ab -> :sswitch_0
        0x25b6 -> :sswitch_0
        0x25c0 -> :sswitch_0
        0x2611 -> :sswitch_0
        0x261d -> :sswitch_0
        0x2648 -> :sswitch_0
        0x2649 -> :sswitch_0
        0x264a -> :sswitch_0
        0x264b -> :sswitch_0
        0x264c -> :sswitch_0
        0x264d -> :sswitch_0
        0x264e -> :sswitch_0
        0x264f -> :sswitch_0
        0x2650 -> :sswitch_0
        0x2651 -> :sswitch_0
        0x2652 -> :sswitch_0
        0x2653 -> :sswitch_0
        0x2660 -> :sswitch_0
        0x2663 -> :sswitch_0
        0x2668 -> :sswitch_0
        0x267b -> :sswitch_0
        0x267f -> :sswitch_0
        0x26bd -> :sswitch_0
        0x26be -> :sswitch_0
        0x26c4 -> :sswitch_0
        0x26c5 -> :sswitch_0
        0x26ce -> :sswitch_0
        0x26d4 -> :sswitch_0
        0x26f3 -> :sswitch_0
        0x26f5 -> :sswitch_0
        0x26fa -> :sswitch_0
        0x26fd -> :sswitch_0
        0x2702 -> :sswitch_0
        0x2705 -> :sswitch_0
        0x2708 -> :sswitch_0
        0x270a -> :sswitch_0
        0x270b -> :sswitch_0
        0x270c -> :sswitch_0
        0x270d -> :sswitch_0
        0x2712 -> :sswitch_0
        0x2714 -> :sswitch_0
        0x2716 -> :sswitch_0
        0x2728 -> :sswitch_0
        0x2733 -> :sswitch_0
        0x2734 -> :sswitch_0
        0x2744 -> :sswitch_0
        0x2747 -> :sswitch_0
        0x274c -> :sswitch_0
        0x274e -> :sswitch_0
        0x2753 -> :sswitch_0
        0x2754 -> :sswitch_0
        0x2755 -> :sswitch_0
        0x2757 -> :sswitch_0
        0x2763 -> :sswitch_0
        0x2764 -> :sswitch_0
        0x2795 -> :sswitch_0
        0x2796 -> :sswitch_0
        0x2797 -> :sswitch_0
        0x27b0 -> :sswitch_0
        0x27bf -> :sswitch_0
        0x2934 -> :sswitch_0
        0x2935 -> :sswitch_0
        0x2b05 -> :sswitch_0
        0x2b06 -> :sswitch_0
        0x2b07 -> :sswitch_0
        0x2b1b -> :sswitch_0
        0x2b1c -> :sswitch_0
        0x2b50 -> :sswitch_0
        0x2b55 -> :sswitch_0
        0x3030 -> :sswitch_0
        0x303d -> :sswitch_0
        0x3297 -> :sswitch_0
        0x3299 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2194
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x23e9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x25fb
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2639
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static enforceSameOwner(Landroid/content/Context;I)I
    .locals 2

    .line 852
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 853
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v0

    .line 854
    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    .line 858
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isDualDarDoInnerAuthUser(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_1

    return p1

    .line 862
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Given user id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not belong to user "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static enforceSystemUser(Landroid/content/Context;I)I
    .locals 2

    .line 839
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    if-nez p0, :cond_0

    return p1

    .line 842
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Given user id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must only be used from USER_SYSTEM, but current user is "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static forceCustomPadding(Landroid/view/View;Z)V
    .locals 4

    .line 432
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 434
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 435
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    const v3, 0x10502d3

    .line 436
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 439
    invoke-virtual {p0, v2, v1, p1, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public static formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 10

    .line 897
    sget-object v0, Lcom/android/settings/Utils;->sBuilder:Ljava/lang/StringBuilder;

    monitor-enter v0

    const/4 v1, 0x0

    .line 898
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 899
    sget-object v3, Lcom/android/settings/Utils;->sFormatter:Ljava/util/Formatter;

    const v8, 0x10010

    const/4 v9, 0x0

    move-object v2, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-static/range {v2 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object p0

    .line 900
    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 901
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 362
    :cond_0
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllLinkAddresses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 364
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const-string v0, ""

    .line 367
    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 369
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static getAdaptiveIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1137
    invoke-static {p1}, Lcom/android/settings/Utils;->getSafeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1139
    instance-of v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-nez v0, :cond_0

    .line 1140
    new-instance v0, Lcom/android/settingslib/widget/AdaptiveIcon;

    invoke-direct {v0, p0, p1}, Lcom/android/settingslib/widget/AdaptiveIcon;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 1141
    invoke-virtual {v0, p2}, Lcom/android/settingslib/widget/AdaptiveIcon;->setBackgroundColor(I)V

    move-object p1, v0

    :cond_0
    return-object p1
.end method

.method public static getAdminApplicationInfo(Landroid/content/Context;I)Landroid/content/pm/ApplicationInfo;
    .locals 4

    const-string v0, "device_policy"

    .line 756
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 757
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 761
    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 763
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 765
    invoke-interface {v1, p0, v2, v3, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    .line 768
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while retrieving application info for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", userId "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Settings"

    invoke-static {p1, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    .line 943
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0x400200

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 947
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 949
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to find info for package: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Settings"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBadgeKeysFromNotifications(Landroid/content/Context;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1851
    sget-boolean v0, Lcom/samsung/android/settings/Rune;->SUPPORT_FEATURE_INAPP_NOTI_WITH_BUNDLE:Z

    if-nez v0, :cond_0

    .line 1852
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1855
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1856
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1859
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.settings"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Settings"

    if-nez v0, :cond_2

    const-string v0, "Current activity\'s process isn\'t com.android.settings"

    .line 1860
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v8, "com.android.settings"

    const/16 v0, 0x3e8

    const-string v2, "notification"

    .line 1868
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1867
    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v9

    const/4 v10, 0x0

    .line 1872
    :try_start_0
    invoke-interface {v9, v8, v0}, Landroid/app/INotificationManager;->canShowBadge(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 1874
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    move v0, v10

    :goto_0
    const-string v11, " can\'t show badge."

    if-nez v0, :cond_3

    .line 1877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1881
    :cond_3
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-array v2, v10, [Landroid/service/notification/StatusBarNotification;

    .line 1885
    :try_start_1
    invoke-interface {v9, v8}, Landroid/app/INotificationManager;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move-object v13, v2

    goto :goto_2

    :catch_1
    move-exception v0

    .line 1887
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1890
    :goto_2
    array-length v14, v13

    move v15, v10

    :goto_3
    if-ge v15, v14, :cond_9

    aget-object v16, v13, v15

    .line 1891
    invoke-virtual/range {v16 .. v16}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_7

    .line 1895
    :cond_4
    invoke-virtual/range {v16 .. v16}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 1896
    iget-object v0, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_8

    const-string v2, "inapp_noti_data_extra_badge_keys"

    .line 1897
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const-string v5, "notification channel id "

    if-eqz v6, :cond_7

    .line 1898
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_6

    .line 1906
    :cond_5
    :try_start_2
    invoke-virtual {v7}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v4, 0x3e8

    move-object v2, v9

    move-object v3, v8

    move-object v10, v5

    move-object v5, v0

    move-object/from16 v19, v6

    move-object/from16 v6, v17

    move-object/from16 v17, v7

    move/from16 v7, v18

    .line 1905
    :try_start_3
    invoke-interface/range {v2 .. v7}, Landroid/app/INotificationManager;->getNotificationChannelForPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 1907
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v10, v5

    move-object/from16 v19, v6

    move-object/from16 v17, v7

    .line 1909
    :goto_4
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_5
    if-nez v0, :cond_6

    .line 1913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1917
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notification id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " has badge keys : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    invoke-interface {v12, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_7

    :cond_7
    :goto_6
    move-object v10, v5

    move-object/from16 v17, v7

    .line 1899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has no badge keys."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_7
    add-int/lit8 v15, v15, 0x1

    const/4 v10, 0x0

    goto/16 :goto_3

    :cond_9
    return-object v12
.end method

.method public static getBadgedIcon(Landroid/util/IconDrawableFactory;Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/16 v0, 0x80

    .line 1227
    :try_start_0
    invoke-virtual {p1, p2, v0, p3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    .line 1229
    invoke-virtual {p0, p2, p3}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1231
    :catch_0
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;
    .locals 0

    .line 408
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getBatteryLevel(Landroid/content/Intent;)I

    move-result p0

    invoke-static {p0}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCLFLockState()I
    .locals 6

    const-string v0, "Settings"

    const/16 v1, 0x100

    const/4 v2, 0x0

    .line 1615
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    const-string v4, "/efs/sec_efs/FeliCaLock/01"

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1616
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ltz v2, :cond_0

    const/4 v4, 0x3

    if-ge v4, v2, :cond_1

    :cond_0
    move v2, v1

    .line 1623
    :cond_1
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1632
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1635
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    move v1, v2

    goto :goto_4

    :catch_1
    move v1, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v3

    goto :goto_5

    :catch_2
    move-object v2, v3

    goto :goto_2

    :catch_3
    :goto_1
    move-object v2, v3

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_4
    :goto_2
    :try_start_4
    const-string v3, "IOException!"

    .line 1627
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_2

    .line 1632
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_4

    :catch_5
    move-exception v0

    .line 1635
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_6
    :goto_3
    :try_start_6
    const-string v3, "FileNotFoundException!"

    .line 1625
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v2, :cond_2

    .line 1632
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_2
    :goto_4
    return v1

    :goto_5
    if-eqz v2, :cond_3

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_6

    :catch_7
    move-exception v1

    .line 1635
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1637
    :cond_3
    :goto_6
    throw v0
.end method

.method public static getCardTypeContentFrameWidthRatio(Landroid/content/Context;II)F
    .locals 2

    const/high16 p0, 0x41a00000    # 20.0f

    const/high16 v0, 0x3f800000    # 1.0f

    const/16 v1, 0x1e0

    if-lt p1, v1, :cond_0

    const/16 v1, 0x24c

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x24d

    if-lt p1, v1, :cond_2

    const/16 v1, 0x3bf

    if-gt p1, v1, :cond_2

    const/16 v1, 0x19b

    if-lt p2, v1, :cond_1

    const p2, 0x3f5c28f6    # 0.86f

    goto :goto_1

    :cond_1
    const p2, 0x3f1eb852    # 0.62f

    goto :goto_1

    :cond_2
    const/16 p0, 0x3c0

    if-lt p1, p0, :cond_3

    const/high16 p0, 0x44520000    # 840.0f

    int-to-float p2, p1

    div-float p2, p0, p2

    const/high16 p0, 0x42000000    # 32.0f

    goto :goto_1

    :cond_3
    const/high16 p0, 0x41200000    # 10.0f

    :goto_0
    move p2, v0

    :goto_1
    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p0, v1

    int-to-float p1, p1

    sub-float v1, v0, p2

    mul-float/2addr v1, p1

    cmpg-float v1, v1, p0

    if-gez v1, :cond_4

    div-float/2addr p0, p1

    sub-float p2, v0, p0

    :cond_4
    return p2
.end method

.method public static getContactUsIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .line 2536
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 2541
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "voc://view/contactUs"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "packageName"

    .line 2542
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "appId"

    const-string v1, "be4f156x1l"

    .line 2543
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "appName"

    const-string v1, "Settings"

    .line 2544
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getContactUsIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 2551
    new-instance p0, Landroid/content/Intent;

    const-string/jumbo v0, "voc://view/contactUs"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p0, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "packageName"

    .line 2552
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "appId"

    .line 2553
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "appName"

    .line 2554
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public static getContentFrameWidthRatio(Landroid/content/Context;)F
    .locals 5

    if-nez p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    .line 1495
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1496
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    :try_start_0
    const-string v2, "Settings"

    .line 1500
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getContentFrameWidthRatio screenWidthDp : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , screenHeightDp : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , LightTheme : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1502
    invoke-static {p0}, Lcom/android/settings/Utils;->isLightThemeByAttr(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , Context : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1503
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \ndensityDpi : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1504
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , smallestScreenWidthDp : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1505
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , semDesktopModeEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1506
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1500
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1508
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1512
    :goto_0
    invoke-static {p0, v0, v1}, Lcom/android/settings/Utils;->getContentFrameWidthRatio(Landroid/content/Context;II)F

    move-result p0

    return p0
.end method

.method public static getContentFrameWidthRatio(Landroid/content/Context;II)F
    .locals 0

    const/16 p0, 0x24d

    if-lt p1, p0, :cond_0

    const/16 p0, 0x3bf

    if-gt p1, p0, :cond_0

    const/16 p0, 0x19b

    if-lt p2, p0, :cond_0

    const p0, 0x3f5c28f6    # 0.86f

    goto :goto_0

    :cond_0
    const/16 p0, 0x3c0

    if-lt p1, p0, :cond_1

    const/high16 p0, 0x44520000    # 840.0f

    int-to-float p1, p1

    div-float/2addr p0, p1

    goto :goto_0

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method

.method public static getCredentialOwnerUserId(Landroid/content/Context;)I
    .locals 1

    .line 870
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->getCredentialOwnerUserId(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getCredentialOwnerUserId(Landroid/content/Context;I)I
    .locals 1

    .line 877
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 878
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result p0

    return p0
.end method

.method public static getCredentialType(Landroid/content/Context;I)I
    .locals 1

    .line 886
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 887
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result p0

    return p0
.end method

.method public static getCurrentUserId(Landroid/os/UserManager;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 609
    invoke-static {p0}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 613
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    return p0

    .line 611
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Work profile user ID is not available."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 615
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    return p0
.end method

.method public static getDeviceOwnerComponent(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 1

    const-string v0, "device_policy"

    .line 1035
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 1037
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .line 2643
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2644
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2647
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2648
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "true"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2655
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 2656
    throw p1

    .line 2655
    :catch_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    .line 2664
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 p1, -0x1

    if-nez p0, :cond_0

    const-string p0, "Settings"

    const-string p2, "getEnterprisePolicyEnabled: context is null"

    .line 2666
    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 2669
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2672
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2673
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p0, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v0, "true"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2680
    :catch_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 2681
    throw p1

    .line 2683
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "projectionArgs:"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "SettingsEdm"

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public static getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7

    const-string v0, "getPasswordLockDelay"

    .line 2689
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2693
    :goto_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2694
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2697
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2698
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2701
    :catch_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 2702
    throw p1

    :cond_1
    :goto_1
    return v0
.end method

.method public static getEnterprisePolicyStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 2719
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2720
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2723
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2724
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2727
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 2728
    throw p1

    .line 2727
    :catch_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getExistingUser(Landroid/os/UserManager;Landroid/os/UserHandle;)Landroid/content/pm/UserInfo;
    .locals 2

    .line 706
    invoke-virtual {p0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object p0

    .line 707
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 708
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 709
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;
    .locals 2

    .line 991
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.biometrics.face"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "face"

    .line 992
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/face/FaceManager;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 2

    .line 978
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "fingerprint"

    .line 979
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/fingerprint/FingerprintManager;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;
    .locals 1

    if-eqz p0, :cond_0

    .line 1590
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 1591
    aget-object p0, p0, v0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getHandledDomains(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 728
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getIntentFilterVerifications(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 729
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getAllIntentFilters(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 731
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    if-eqz v0, :cond_1

    .line 732
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 733
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/IntentFilterVerificationInfo;

    .line 734
    invoke-virtual {v1}, Landroid/content/pm/IntentFilterVerificationInfo;->getDomains()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 735
    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_4

    .line 739
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 740
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.category.BROWSABLE"

    .line 741
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "http"

    .line 742
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "https"

    .line 743
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 744
    :cond_3
    invoke-virtual {v0}, Landroid/content/IntentFilter;->getHostsList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_4
    return-object p1
.end method

.method public static getInstallationStatus(Landroid/content/pm/ApplicationInfo;)I
    .locals 2

    .line 1113
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 1114
    sget p0, Lcom/android/settings/R$string;->not_installed:I

    return p0

    .line 1116
    :cond_0
    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz p0, :cond_1

    sget p0, Lcom/android/settings/R$string;->installed:I

    goto :goto_0

    :cond_1
    sget p0, Lcom/android/settings/R$string;->disabled:I

    :goto_0
    return p0
.end method

.method public static getKeywordForSearch(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .line 1668
    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/android/settings/Utils;->localeTranslate(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getLocalProfileGivenName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;
    .locals 4

    .line 549
    invoke-virtual {p0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 550
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 551
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {p0}, Landroid/os/UserManager;->getProcessUserId()I

    move-result v3

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 554
    :cond_1
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 555
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getManagedProfileId(Landroid/os/UserManager;I)I
    .locals 4

    .line 591
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object p0

    .line 592
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p0, v1

    if-eq v2, p1, :cond_0

    .line 595
    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 596
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 597
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, -0x2710

    return p0
.end method

.method public static getManagedProfileWithDisabled(Landroid/os/UserManager;)Landroid/os/UserHandle;
    .locals 5

    .line 572
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 573
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p0

    .line 574
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 576
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 577
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 578
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    if-eq v4, v0, :cond_0

    .line 579
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getManagedProfiles(Landroid/os/UserManager;Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserManager;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 3206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3207
    invoke-virtual {p0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    .line 3209
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 3211
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 3212
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {p0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v6

    if-ne v5, v6, :cond_0

    goto :goto_1

    .line 3215
    :cond_0
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 3216
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3217
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 3220
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static getMeProfileName(Landroid/content/Context;ZLandroid/content/pm/UserInfo;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 445
    invoke-static {p0, p2}, Lcom/android/settings/Utils;->getProfileDisplayName(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 447
    :cond_0
    invoke-static {p0, p2}, Lcom/android/settings/Utils;->getShorterNameIfPossible(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getOnlineHelpMenuState(Landroid/content/Context;)Lcom/android/settings/Utils$OnlineHelpMenuState;
    .locals 1

    .line 2055
    sget-object v0, Lcom/android/settings/Utils;->mHelpMenuData:Lcom/android/settings/Utils$OnlineHelpMenuState;

    if-nez v0, :cond_0

    .line 2056
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->getOnlineHelpMenuState(Landroid/content/Context;Lcom/android/settings/Utils$OnlineHelpMenuState;)Lcom/android/settings/Utils$OnlineHelpMenuState;

    move-result-object p0

    sput-object p0, Lcom/android/settings/Utils;->mHelpMenuData:Lcom/android/settings/Utils$OnlineHelpMenuState;

    const-string p0, "Settings"

    const-string v0, "getOnlineHelpMenuState is done"

    .line 2057
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    :cond_0
    sget-object p0, Lcom/android/settings/Utils;->mHelpMenuData:Lcom/android/settings/Utils$OnlineHelpMenuState;

    return-object p0
.end method

.method private static getOnlineHelpMenuState(Landroid/content/Context;Lcom/android/settings/Utils$OnlineHelpMenuState;)Lcom/android/settings/Utils$OnlineHelpMenuState;
    .locals 9

    if-nez p1, :cond_0

    .line 2065
    new-instance p1, Lcom/android/settings/Utils$OnlineHelpMenuState;

    invoke-direct {p1}, Lcom/android/settings/Utils$OnlineHelpMenuState;-><init>()V

    .line 2068
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CscFeature_Setting_ConfigTypeHelp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_ConfigTypeHelp"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "[0:dont support, 1:online, 2:ondevice]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Settings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v0, v3, :cond_a

    .line 2070
    sget v0, Lcom/android/settings/R$string;->help_title:I

    iput v0, p1, Lcom/android/settings/Utils$OnlineHelpMenuState;->titleRes:I

    .line 2071
    iput v0, p1, Lcom/android/settings/Utils$OnlineHelpMenuState;->summaryRes:I

    .line 2072
    sget v0, Lcom/android/settings/R$drawable;->sec_ic_settings_user_manual:I

    iput v0, p1, Lcom/android/settings/Utils$OnlineHelpMenuState;->iconRes:I

    .line 2073
    invoke-static {p0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "isSupportOfflineHelpMenu"

    .line 2074
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string v0, "SEC_FLOATING_FEATURE_ACCESSIBILITY_SUPPORT_MANAGE_ACCESSIBILITY"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    const-string v0, "com.samsung.helphub.HELP"

    if-eqz p0, :cond_1

    const-string p0, "non mass"

    .line 2076
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2078
    iput-object p0, p1, Lcom/android/settings/Utils$OnlineHelpMenuState;->intent:Landroid/content/Intent;

    goto/16 :goto_3

    :cond_1
    const-string p0, "mass"

    .line 2080
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object p0

    const-string v2, "VZW"

    .line 2082
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2083
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is mass. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2084
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2085
    iput-object p0, p1, Lcom/android/settings/Utils$OnlineHelpMenuState;->intent:Landroid/content/Intent;

    goto/16 :goto_3

    .line 2087
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove online help - is mass "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    iput-boolean v4, p1, Lcom/android/settings/Utils$OnlineHelpMenuState;->removeTile:Z

    goto/16 :goto_3

    :cond_3
    const-string v0, "persist.sys.omc_etcpath"

    .line 2095
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2098
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "usermanual.pdf"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v0, "/system/etc/usermanual.pdf"

    .line 2101
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2103
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-nez v0, :cond_5

    goto/16 :goto_2

    :cond_5
    const-string v0, "Manual PDF is supported for this model"

    .line 2108
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/usermanual.pdf"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2112
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v3, v5, v7

    if-nez v3, :cond_7

    :cond_6
    const-string v3, "copy PDF file to files folder"

    .line 2113
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2115
    :try_start_0
    invoke-static {v2, v0}, Lcom/android/settings/Utils;->userManualFileCopy(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 2117
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2121
    :cond_7
    :goto_1
    sget v1, Lcom/android/settings/R$string;->user_manual:I

    iput v1, p1, Lcom/android/settings/Utils$OnlineHelpMenuState;->titleRes:I

    .line 2122
    iput v1, p1, Lcom/android/settings/Utils$OnlineHelpMenuState;->summaryRes:I

    .line 2123
    sget v1, Lcom/android/settings/R$drawable;->sec_ic_settings_user_manual:I

    iput v1, p1, Lcom/android/settings/Utils$OnlineHelpMenuState;->iconRes:I

    .line 2125
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.settings.files"

    .line 2126
    invoke-static {p0, v2, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "application/pdf"

    .line 2127
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2128
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "content"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2129
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2131
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget v0, p1, Lcom/android/settings/Utils$OnlineHelpMenuState;->titleRes:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.intent.extra.TITLE"

    invoke-virtual {v1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "android.intent.category.DEFAULT"

    .line 2132
    invoke-virtual {v1, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2133
    iput-object v1, p1, Lcom/android/settings/Utils$OnlineHelpMenuState;->intent:Landroid/content/Intent;

    goto :goto_3

    :cond_9
    :goto_2
    const-string p0, "Manual file does not exist"

    .line 2104
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "remove help - Nothing is supported."

    .line 2105
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    iput-boolean v4, p1, Lcom/android/settings/Utils$OnlineHelpMenuState;->removeTile:Z

    goto :goto_3

    .line 2136
    :cond_a
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    const-string p0, "remove online help -  help csc feature is 0"

    .line 2137
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    iput-boolean v4, p1, Lcom/android/settings/Utils$OnlineHelpMenuState;->removeTile:Z

    goto :goto_3

    :cond_b
    const-string v0, "help csc feature is Default 1"

    .line 2140
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2142
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->getUserManualSearchURLIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    iput-object p0, p1, Lcom/android/settings/Utils$OnlineHelpMenuState;->intent:Landroid/content/Intent;

    .line 2143
    sget p0, Lcom/android/settings/R$string;->user_manual:I

    iput p0, p1, Lcom/android/settings/Utils$OnlineHelpMenuState;->titleRes:I

    .line 2144
    sget v0, Lcom/android/settings/R$string;->learn_more:I

    iput v0, p1, Lcom/android/settings/Utils$OnlineHelpMenuState;->summaryRes:I

    .line 2145
    sget v0, Lcom/android/settings/R$drawable;->sec_ic_settings_user_manual:I

    iput v0, p1, Lcom/android/settings/Utils$OnlineHelpMenuState;->iconRes:I

    const/4 v0, 0x0

    const-string v2, "ro.product.first_api_level"

    .line 2147
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "firApiLevel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isUSA()Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_c

    .line 2150
    sget v0, Lcom/android/settings/R$string;->help_title:I

    iput v0, p1, Lcom/android/settings/Utils$OnlineHelpMenuState;->titleRes:I

    .line 2151
    iput p0, p1, Lcom/android/settings/Utils$OnlineHelpMenuState;->summaryRes:I

    .line 2152
    sget p0, Lcom/android/settings/R$drawable;->sec_ic_settings_help:I

    iput p0, p1, Lcom/android/settings/Utils$OnlineHelpMenuState;->iconRes:I

    :cond_c
    :goto_3
    return-object p1
.end method

.method private static final getProfileDisplayName(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;
    .locals 6

    .line 503
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 504
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "display_name"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 509
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 529
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :cond_1
    :try_start_1
    const-string/jumbo v2, "user"

    .line 512
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    if-eqz p1, :cond_2

    .line 513
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    :goto_0
    const-string v3, "phone"

    .line 515
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 516
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    if-eqz p0, :cond_4

    .line 518
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 519
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p1, p0}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 529
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    .line 524
    :cond_4
    :try_start_2
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p1, p0}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    .line 527
    :goto_1
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 529
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 530
    throw p0
.end method

.method public static getRegion()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static getSafeDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1170
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    .line 1171
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    if-gt v0, p1, :cond_0

    if-gt v1, p2, :cond_0

    return-object p0

    :cond_0
    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    int-to-float p2, p2

    int-to-float v1, v1

    div-float/2addr p2, v1

    .line 1179
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    mul-float/2addr v0, p1

    float-to-int p2, v0

    mul-float/2addr v1, p1

    float-to-int p1, v1

    .line 1184
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 1185
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p2, p1, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 1188
    :cond_1
    invoke-static {p0, p2, p1}, Lcom/android/settings/Utils;->createBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 1190
    :goto_0
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1
.end method

.method public static getSafeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p0, :cond_0

    .line 1154
    instance-of v0, p0, Landroid/graphics/drawable/VectorDrawable;

    if-nez v0, :cond_0

    const/16 v0, 0x258

    .line 1155
    invoke-static {p0, v0, v0}, Lcom/android/settings/Utils;->getSafeDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getSalesCode()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :try_start_0
    const-string v1, "persist.omc.sales_code"

    .line 1429
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1430
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ro.csc.sales_code"

    .line 1431
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1432
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ril.sales_code"

    .line 1433
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public static getSamsungAccountProfileProviderVersion(Landroid/content/Context;)F
    .locals 3

    const-string v0, "Settings"

    .line 1932
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.osp.app.signin"

    const/16 v2, 0x80

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "There isn\'t Samsung account package."

    .line 1934
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 1939
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    const-string v2, "ProfileProviderVersion"

    .line 1941
    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 1945
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Samsung account profile provider version : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static getSamsungAccountTitleRes()I
    .locals 1

    .line 2274
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settings/R$string;->app_name_samsung_account_jpn:I

    goto :goto_0

    .line 2275
    :cond_0
    sget v0, Lcom/android/settings/R$string;->app_name_samsung_account:I

    :goto_0
    return v0
.end method

.method public static getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;
    .locals 4

    .line 635
    new-instance v0, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 636
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    .line 638
    :try_start_0
    invoke-interface {v1, p0}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.settings"

    .line 640
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 642
    new-instance v3, Landroid/os/UserHandle;

    .line 643
    invoke-interface {v1, p0}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result p0

    .line 642
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-direct {v3, p0}, Landroid/os/UserHandle;-><init>(I)V

    .line 644
    invoke-virtual {v3, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 646
    invoke-static {p1, v3}, Lcom/android/settings/Utils;->isProfileOf(Landroid/os/UserManager;Landroid/os/UserHandle;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v3

    .line 650
    :cond_0
    invoke-static {p3}, Lcom/android/settings/Utils;->getUserHandleFromBundle(Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 651
    invoke-virtual {p0, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    if-eqz v2, :cond_1

    .line 653
    invoke-static {p1, p0}, Lcom/android/settings/Utils;->isProfileOf(Landroid/os/UserManager;Landroid/os/UserHandle;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-object p0

    .line 657
    :cond_1
    invoke-static {p2}, Lcom/android/settings/Utils;->getUserHandleFromBundle(Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 658
    invoke-virtual {p0, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    if-eqz v2, :cond_2

    .line 660
    invoke-static {p1, p0}, Lcom/android/settings/Utils;->isProfileOf(Landroid/os/UserManager;Landroid/os/UserHandle;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "Settings"

    const-string p2, "Could not talk to activity manager."

    .line 666
    invoke-static {p1, p2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v0
.end method

.method private static getShorterNameIfPossible(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;
    .locals 2

    .line 452
    invoke-static {p0}, Lcom/android/settings/Utils;->getLocalProfileGivenName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 453
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/android/settings/Utils;->getProfileDisplayName(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getStringFromDeXSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 2361
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key"

    .line 2362
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "def"

    .line 2363
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2366
    :try_start_0
    sget-object v1, Lcom/android/settings/Utils;->DEX_SETTINGS_URI:Landroid/net/Uri;

    const-string v2, "getSettings"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2368
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2371
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IllegalArgumentException :: getDeXSettings "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Settings"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p2
.end method

.method private static getSystemSignature(Landroid/content/pm/PackageManager;)Landroid/content/pm/Signature;
    .locals 2

    :try_start_0
    const-string v0, "android"

    const/16 v1, 0x40

    .line 1599
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 1600
    invoke-static {p0}, Lcom/android/settings/Utils;->getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTargetFragment(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;
    .locals 6

    const-string v0, "profile"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 1297
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz p2, :cond_1

    .line 1299
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 1303
    :goto_1
    :try_start_0
    const-class v4, Landroid/os/UserManager;

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v4

    .line 1304
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 1305
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1306
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1307
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-static {p0, v5}, Lcom/samsung/android/knox/SemPersonaManager;->isAppSeparationUserId(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1308
    :cond_2
    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    :cond_3
    add-int/2addr v2, v1

    goto :goto_2

    .line 1312
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_5

    sget-object v1, Lcom/android/settings/dashboard/profileselector/ProfileFragmentBridge;->FRAGMENT_MAP:Ljava/util/Map;

    .line 1313
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    if-nez v0, :cond_5

    if-nez v3, :cond_5

    .line 1315
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1316
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/samsung/android/knox/SemPersonaManager;->isAppSeparationUserId(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1318
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1317
    invoke-static {p0, p1, p2}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    goto :goto_3

    .line 1320
    :cond_5
    invoke-static {p0, p1, p2}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    const-string p1, "Settings"

    const-string p2, "Unable to get target fragment"

    .line 1333
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_3
    return-object p0
.end method

.method public static getTipAndUserManualTitleRes(Landroid/content/Context;)I
    .locals 2

    const-string v0, "ro.product.first_api_level"

    const/4 v1, 0x0

    .line 2243
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2244
    invoke-static {p0}, Lcom/android/settings/Utils;->getOnlineHelpMenuState(Landroid/content/Context;)Lcom/android/settings/Utils$OnlineHelpMenuState;

    move-result-object p0

    .line 2246
    iget-boolean p0, p0, Lcom/android/settings/Utils$OnlineHelpMenuState;->removeTile:Z

    if-eqz p0, :cond_0

    .line 2247
    sget p0, Lcom/android/settings/R$string;->sec_tips_title:I

    return p0

    .line 2249
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isUSA()Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x1f

    if-ge v0, p0, :cond_1

    .line 2250
    sget p0, Lcom/android/settings/R$string;->sec_tips_and_help_title:I

    return p0

    .line 2252
    :cond_1
    sget p0, Lcom/android/settings/R$string;->sec_tips_and_user_manual_title:I

    return p0
.end method

.method public static getTopLevelSummarySeparator(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "ja"

    .line 1689
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1690
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 1692
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/settings/Utils$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/settings/Utils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1693
    sget v0, Lcom/android/settings/R$string;->comma:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "  \u2022  "

    :goto_0
    return-object p0
.end method

.method private static getUserHandleFromBundle(Landroid/os/Bundle;)Landroid/os/UserHandle;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "android.intent.extra.USER"

    .line 679
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    const-string v1, "android.intent.extra.USER_ID"

    const/4 v2, -0x1

    .line 683
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v2, :cond_2

    .line 685
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I
    .locals 1

    const/4 v0, 0x0

    .line 806
    invoke-static {p0, p1, v0}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;Z)I

    move-result p0

    return p0
.end method

.method public static getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;Z)I
    .locals 2

    if-nez p1, :cond_0

    .line 821
    invoke-static {p0}, Lcom/android/settings/Utils;->getCredentialOwnerUserId(Landroid/content/Context;)I

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const-string p2, "allow_any_user"

    .line 824
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    .line 825
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, -0x270f

    if-ne p1, p2, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    .line 827
    :cond_2
    invoke-static {p0, p1}, Lcom/android/settings/Utils;->enforceSystemUser(Landroid/content/Context;I)I

    move-result p1

    :goto_0
    return p1

    :cond_3
    if-eqz v0, :cond_4

    goto :goto_1

    .line 829
    :cond_4
    invoke-static {p0, p1}, Lcom/android/settings/Utils;->enforceSameOwner(Landroid/content/Context;I)I

    move-result p1

    :goto_1
    return p1
.end method

.method public static getUserManualSearchURLIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6

    .line 2162
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 2163
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2167
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.app.sbrowser"

    const-string v3, "com.sec.android.app.sbrowser.SBrowserMainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2169
    invoke-static {p0, v2}, Lcom/android/settings/Utils;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "Settings"

    if-eqz v2, :cond_0

    .line 2170
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "s browser is enabled on device."

    .line 2171
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2175
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "online_manual_url"

    invoke-static {p0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "no online_manual_url value"

    .line 2177
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-eqz p0, :cond_1

    .line 2179
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v1, :cond_2

    :cond_1
    const-string p0, "http://www.samsung.com/m-manual/common"

    .line 2183
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 2184
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x2f

    if-ne v2, v4, :cond_3

    const/4 v2, 0x0

    .line 2185
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 2188
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "ro.product.model"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/Android"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "ro.build.version.release"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_4

    .line 2190
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 2191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Search values : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    const-string v1, "UTF-8"

    .line 2193
    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?appid=app&anchor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&pos=find"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string p1, "UnsupportedEncoding for keyword targetUri. using default manualURL"

    .line 2201
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_1

    :cond_4
    const-string p1, "No keyword - launch usermanual main"

    .line 2205
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 2208
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uri: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 349
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 350
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "connectivity"

    .line 353
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 354
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object p0

    .line 355
    invoke-static {p0}, Lcom/android/settings/Utils;->formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static hasFaceHardware(Landroid/content/Context;)Z
    .locals 0

    .line 999
    invoke-static {p0}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1000
    invoke-virtual {p0}, Landroid/hardware/face/FaceManager;->isHardwareDetected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasFingerprintHardware(Landroid/content/Context;)Z
    .locals 0

    .line 986
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 987
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasHaptic(Landroid/content/Context;)Z
    .locals 1

    const-string/jumbo v0, "vibrator"

    .line 3301
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    if-eqz p0, :cond_0

    .line 3302
    invoke-virtual {p0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasMultipleUsers(Landroid/content/Context;)Z
    .locals 1

    .line 540
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 541
    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static hasPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1740
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x1

    const/16 v2, 0x80

    .line 1744
    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    .line 1747
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package not found : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Settings"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public static hasPackage(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1757
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x1

    const/16 v2, 0x80

    .line 1761
    :try_start_0
    invoke-virtual {p0, p1, v2, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    .line 1764
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package not found : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / UserID : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Settings"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public static hasPlatformKey(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .line 1569
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1571
    sget-object v0, Lcom/android/settings/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Landroid/content/pm/Signature;

    .line 1572
    invoke-static {p0}, Lcom/android/settings/Utils;->getSystemSignature(Landroid/content/pm/PackageManager;)Landroid/content/pm/Signature;

    move-result-object v3

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/settings/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    :cond_0
    const/16 v0, 0x40

    .line 1576
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 1577
    sget-object v0, Lcom/android/settings/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/settings/Utils;->getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    move v2, v1

    :catch_0
    if-nez v2, :cond_2

    .line 1582
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not signed with platform key."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Settings"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2
.end method

.method public static inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 717
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->Preference:[I

    const/4 v2, 0x0

    const v3, 0x101008c

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x3

    .line 720
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 722
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 723
    invoke-virtual {p0, v1, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static initMHSFeature(Landroid/content/Context;)V
    .locals 3

    const-string v0, "sem_wifi"

    .line 2877
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/wifi/SemWifiManager;

    const-string v0, "Settings"

    if-nez p0, :cond_0

    const-string p0, "Can\'t get SemWifiManager."

    .line 2880
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2884
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApMaxClient()I

    move-result v1

    sput v1, Lcom/android/settings/Utils;->MAX_CLIENT_4_MOBILEAP:I

    .line 2885
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->supportWifiAp5GBasedOnCountry()Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_5G_BASED_ON_COUNTRY:Z

    .line 2886
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->supportWifiAp6GBasedOnCountry()Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_6G_BASED_ON_COUNTRY:Z

    .line 2887
    invoke-static {}, Lcom/android/settings/Utils;->getRegion()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_REGION:Ljava/lang/String;

    .line 2888
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingSupported()Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARING:Z

    .line 2889
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingLiteSupported()Z

    move-result p0

    sput-boolean p0, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARINGLITE:Z

    .line 2890
    sget-boolean p0, Lcom/android/settings/Utils;->MHSDBG:Z

    if-eqz p0, :cond_1

    const-string p0, "mhs.customer"

    .line 2891
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2892
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mhs.carrier:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_1

    .line 2893
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2894
    sput-object p0, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    .line 2897
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initMHSFeature MAX_CLIENT_4_MOBILEAP :"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/settings/Utils;->MAX_CLIENT_4_MOBILEAP:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2898
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initMHSFeature SUPPORT_MOBILEAP_5G_BASED_ON_COUNTRY :"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_5G_BASED_ON_COUNTRY:Z

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2899
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initMHSFeature SUPPORT_MOBILEAP_6G_BASED_ON_COUNTRY :"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_6G_BASED_ON_COUNTRY:Z

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2900
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initMHSFeature SPF_SupportMobileApDualAp :"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/settings/Utils;->SPF_SupportMobileApDualAp:Z

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2901
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initMHSFeature SUPPORT_MOBILEAP_REGION :"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_REGION:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2902
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initMHSFeature SUPPORT_MOBILEAP_WIFISHARING :"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARING:Z

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2903
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initMHSFeature SUPPORT_MOBILEAP_WIFISHARINGLITE :"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARINGLITE:Z

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2904
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initMHSFeature CONFIGOPBRANDINGFORMOBILEAP :"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static isActivityExists(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 2311
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2312
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2313
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 p1, 0x10000

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isAdvancedAutohotspotSupported()Z
    .locals 1

    .line 2915
    sget-boolean v0, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhancedWifiOnlyLite:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isAfwProfile(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "device_policy"

    .line 1996
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1997
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    const-string/jumbo v0, "user"

    .line 1999
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 2000
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p0

    .line 2001
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 2002
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2004
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    return v1
.end method

.method public static isAlgeriaModel()Z
    .locals 3

    .line 3168
    invoke-static {}, Lcom/android/settings/Utils;->readCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 3169
    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DZ"

    .line 3170
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "TKD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TMC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "WTL"

    .line 3171
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isBandwidthControlEnabled()Z
    .locals 1

    const-string v0, "network_management"

    .line 776
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    .line 778
    :try_start_0
    invoke-interface {v0}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isBatteryPresent(Landroid/content/Context;)Z
    .locals 2

    .line 402
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    .line 404
    invoke-static {p0}, Lcom/android/settings/Utils;->isBatteryPresent(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static isBatteryPresent(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "present"

    const/4 v1, 0x1

    .line 395
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isBixbyMode()Z
    .locals 1

    .line 2908
    sget-boolean v0, Lcom/android/settings/Utils;->USE_BIXBY:Z

    return v0
.end method

.method public static isCMCActivated(Landroid/content/Context;)Z
    .locals 2

    .line 3164
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "cmc_activation"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static isCMCAvailable(Landroid/content/Context;)Z
    .locals 6

    const-string v0, "com.samsung.android.mdecservice"

    .line 3137
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3140
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "cmc_own_settings_menu_supported"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 3141
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCmcMenuSupported = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Settings"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    .line 3145
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 3146
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 3147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "versionName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3148
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\\."

    .line 3149
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 3150
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 3151
    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_2

    return v3

    :catch_0
    move-exception p0

    .line 3157
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_2
    :goto_1
    return v2
.end method

.method public static isCaCertificateDisabledAsUser(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2610
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "content://com.sec.knox.provider/CertificatePolicy"

    const-string v2, "isCaCertificateDisabledAsUser"

    .line 2607
    invoke-static {p0, p1, v2, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-ne p0, p2, :cond_0

    const-string p0, "Settings"

    const-string p1, "CaCertificateDisabledAsUser : disabled"

    .line 2613
    invoke-static {p0, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    :cond_0
    return v1
.end method

.method public static isChinaCTCModel()Z
    .locals 2

    .line 2830
    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CTC"

    .line 2831
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCurrentThemeSupportNightTheme(Landroid/content/Context;)Z
    .locals 3

    .line 3193
    invoke-static {p0}, Lcom/android/settings/Utils;->isSetOpenTheme(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 3196
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "current_theme_support_night_mode"

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method public static isDefaultTheme(Landroid/content/Context;)Z
    .locals 1

    .line 1845
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "current_sec_active_themepackage"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1846
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isDemoUser(Landroid/content/Context;)Z
    .locals 1

    .line 1030
    invoke-static {p0}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Landroid/os/UserManager;

    .line 1031
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isDemoUser()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDesktopConnected(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "desktopmode"

    .line 3246
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz p0, :cond_0

    .line 3248
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDeviceConnected()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isDesktopDualMode(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "desktopmode"

    .line 3080
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 3083
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p0

    .line 3084
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result p0

    const/16 v1, 0x66

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    const-string p0, "Utils"

    const-string v1, "isDesktopDualMode : desktopModeManager is null"

    .line 3086
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isDesktopModeEnabled(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "desktopmode"

    .line 3258
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz p0, :cond_0

    .line 3260
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p0

    .line 3261
    iget p0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isDesktopStandaloneMode(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "desktopmode"

    .line 3096
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 3099
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p0

    .line 3100
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result p0

    const/16 v1, 0x65

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    const-string p0, "Settings"

    const-string v1, "isDesktopStandaloneMode : desktopModeManager is null"

    .line 3103
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isDeviceProvisioned(Landroid/content/Context;)Z
    .locals 2

    .line 3296
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isDuosModel(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 3023
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/overlay/FeatureFactory;->getSecSimFeatureProvider()Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    move-result-object p0

    .line 3024
    invoke-interface {p0}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->isMultiSimModel()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3025
    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "CDMA"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isEasyModeEnabled(Landroid/content/Context;)Z
    .locals 6

    .line 3274
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDesktopMode()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3275
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "minimal_battery_use"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 3276
    :goto_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_EASY_MODE"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3277
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-nez v4, :cond_2

    if-nez v0, :cond_2

    .line 3278
    invoke-static {p0}, Lcom/android/settings/Utils;->isGameModeEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v3, :cond_2

    return v1

    .line 3281
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "easy mode is not displayed.("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3282
    invoke-static {p0}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/settings/Utils;->isGameModeEnabled(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Settings"

    .line 3281
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static isFactoryBinary()Z
    .locals 2

    const-string v0, "ro.factory.factory_binary"

    const-string v1, "Unknown"

    .line 1643
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "factory"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFrpChallengeRequired(Landroid/content/Context;)Z
    .locals 7

    .line 1820
    new-instance v0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    .line 1823
    invoke-virtual {v0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v1

    .line 1824
    invoke-virtual {v0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->isConnected()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 1828
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getStatus()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    .line 1829
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    .line 1830
    invoke-virtual {p0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object p0

    move v0, v3

    .line 1831
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_4

    .line 1832
    aget-object v4, p0, v0

    .line 1833
    iget-object v5, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v6, "com.google"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    if-eq v1, v5, :cond_2

    :cond_1
    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v5, "com.osp.app.signin"

    .line 1834
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-ne v1, v2, :cond_3

    :cond_2
    return v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v2

    :cond_5
    return v3
.end method

.method public static isGameModeEnabled(Landroid/content/Context;)Z
    .locals 3

    .line 3235
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBoostMode()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3236
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sem_perfomance_mode"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 3237
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isGameModeEnabled: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Settings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isGuestMode(Landroid/content/Context;)Z
    .locals 1

    const-string/jumbo v0, "user"

    .line 2341
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 2342
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    .line 2343
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result p0

    return p0
.end method

.method public static isGuestUser(Landroid/content/Context;)Z
    .locals 1

    .line 2351
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2352
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2353
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2

    .line 1798
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/high16 v1, 0x10000

    .line 1800
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1801
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 1783
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1785
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x10000

    .line 1786
    invoke-virtual {p0, v1, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1787
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isJapanDCMModel()Z
    .locals 2

    .line 2741
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DCM"

    .line 2742
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isJapanKDIModel()Z
    .locals 2

    .line 2746
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KDI"

    .line 2747
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isJapanModel()Z
    .locals 2

    .line 2735
    invoke-static {}, Lcom/android/settings/Utils;->readCountryCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JP"

    .line 2736
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isKnoxContainer(Landroid/os/UserManager;)Z
    .locals 1

    .line 2785
    invoke-virtual {p0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    .line 2786
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result p0

    return p0
.end method

.method public static isLargeText(Landroid/content/res/Configuration;)Z
    .locals 3

    .line 2774
    iget v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v1, 0x140

    if-gt v0, v1, :cond_0

    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    const v2, 0x3f8ccccd    # 1.1f

    cmpl-float v1, v1, v2

    if-gez v1, :cond_1

    :cond_0
    const/16 v1, 0x19b

    if-ge v0, v1, :cond_2

    iget p0, p0, Landroid/content/res/Configuration;->fontScale:F

    const v0, 0x3fa66666    # 1.3f

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLaunchModeSingleInstance(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3

    .line 1805
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/high16 v1, 0x10000

    .line 1808
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1809
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1810
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget p1, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 1811
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchMode is singleInstance : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1812
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Settings"

    .line 1811
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    return v0
.end method

.method public static isLightTheme(Landroid/content/Context;)Z
    .locals 3

    .line 2804
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x20

    if-ne p0, v2, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public static isLightThemeByAttr(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    .line 1552
    :try_start_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 1553
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v2, Lcom/android/settings/R$attr;->isLightTheme:I

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1554
    iget p0, v1, Landroid/util/TypedValue;->data:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    move v0, v3

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1556
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method public static isLockTaskModeLocked(Landroid/content/Context;)Z
    .locals 1

    .line 3070
    const-class v0, Landroid/app/ActivityManager;

    .line 3071
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 3072
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isMaximumPowerSavingModeEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 1956
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1957
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMediumPowerSavingModeEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 1965
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "low_power"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isMinimalBatteryUseEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 1974
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "minimal_battery_use"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static isMonkeyRunning()Z
    .locals 1

    .line 331
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    return v0
.end method

.method public static isMultipleBiometricsSupported(Landroid/content/Context;)Z
    .locals 1

    .line 1007
    invoke-static {p0}, Lcom/android/settings/Utils;->hasFingerprintHardware(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/Utils;->hasFaceHardware(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "connectivity"

    .line 196
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 200
    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    move v1, v0

    .line 202
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 203
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static isNightMode(Landroid/content/Context;)Z
    .locals 1

    .line 1354
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isOnCall(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "phone"

    .line 534
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 535
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1238
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while retrieving application info for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Settings"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z
    .locals 2

    .line 1047
    iget v0, p0, Landroid/content/pm/UserInfo;->id:I

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    if-eq v0, v1, :cond_1

    iget p0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v0, -0x2710

    if-eq p0, v0, :cond_0

    iget p1, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne p0, p1, :cond_0

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

.method private static isProfileOf(Landroid/os/UserManager;Landroid/os/UserHandle;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 695
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 696
    invoke-virtual {p0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public static isProfileOrDeviceOwner(Landroid/app/admin/DevicePolicyManager;Ljava/lang/String;I)Z
    .locals 2

    .line 1097
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerUserId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, p2, :cond_0

    .line 1098
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 1101
    :cond_0
    invoke-virtual {p0, p2}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1102
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isProfileOrDeviceOwner(Landroid/os/UserManager;Landroid/app/admin/DevicePolicyManager;Ljava/lang/String;)Z
    .locals 5

    .line 1073
    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p0

    .line 1074
    invoke-virtual {p1, p2}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerAppOnAnyUser(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1077
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    .line 1079
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v4}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1080
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static isQuickSwitchToSecureFolderSupported()Z
    .locals 3

    .line 1771
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportPrivateMode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isRTL(Landroid/content/Context;)Z
    .locals 1

    .line 1727
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 p0, p0, 0xc0

    const/16 v0, 0x80

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isRestrictedProfile(Landroid/content/Context;)Z
    .locals 1

    const-string/jumbo v0, "user"

    .line 2323
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    const-string v0, "no_modify_accounts"

    .line 2324
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isSecBrandAsGalaxy()Z
    .locals 2

    .line 3175
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ReplaceSecBrandAsGalaxy"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "TRUE"

    .line 3176
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSecureFolder(Landroid/os/UserManager;)Z
    .locals 1

    .line 2790
    invoke-virtual {p0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    .line 2791
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result p0

    return p0
.end method

.method public static isSecureWiFiInstalled(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "com.samsung.android.fast"

    .line 2590
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    .line 2592
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    const-string v2, "android"

    .line 2593
    invoke-virtual {p0, v2, v0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v1
.end method

.method public static isSetOpenTheme(Landroid/content/Context;)Z
    .locals 1

    .line 3183
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "current_sec_active_themepackage"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3186
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isSettingsIntelligence(Landroid/content/Context;)Z
    .locals 2

    .line 1342
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1343
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 1344
    sget v1, Lcom/android/settings/R$string;->config_settingsintelligence_package_name:I

    .line 1345
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1344
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isSmsCapable(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "phone"

    .line 1991
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_0

    .line 1992
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSmsDefault(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    .line 3289
    invoke-static {p1, v0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3290
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSupportContactUs(Landroid/content/Context;)Z
    .locals 2

    const-wide/32 v0, 0xa220268

    .line 2532
    invoke-static {p0, v0, v1}, Lcom/android/settings/Utils;->isSupportContactUs(Landroid/content/Context;J)Z

    move-result p0

    return p0
.end method

.method public static isSupportContactUs(Landroid/content/Context;J)Z
    .locals 3

    const-string v0, "com.samsung.android.voc"

    .line 2561
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 2564
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2565
    invoke-static {p0}, Lcom/android/settings/Utils;->getContactUsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_1

    return v2

    .line 2569
    :cond_1
    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 2570
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, p0

    cmp-long p0, v0, p1

    if-gez p0, :cond_2

    return v2

    :cond_2
    const/4 p0, 0x1

    return p0

    :catch_0
    return v2
.end method

.method public static isSupportHelpMenu(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "Settings"

    const-string v1, "com.samsung.helphub"

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    .line 2216
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 2221
    :cond_0
    :try_start_0
    invoke-static {p0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2222
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2223
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    const-string p0, "device support helphub pkg"

    .line 2224
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p0, "No HelpHub pkg"

    .line 2230
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v2
.end method

.method public static isSupportSecureWiFi(Landroid/content/Context;)Z
    .locals 1

    .line 2582
    invoke-static {p0}, Lcom/android/settings/Utils;->isSecureWiFiInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserManager;->isSystemUser()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2583
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSupportTips(Landroid/content/Context;)Z
    .locals 1

    .line 2239
    sget v0, Lcom/android/settings/R$string;->config_sec_toplevel_tips_package:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/settings/PkgUtils;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isSupportVibrate(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string/jumbo v1, "vibrator"

    .line 3310
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    .line 3312
    invoke-virtual {p0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3313
    invoke-virtual {p0}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    move-result p0

    if-le p0, v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public static isSystemAlertWindowEnabled(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "activity"

    .line 1260
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 1261
    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static isTablet()Z
    .locals 2

    const-string v0, "ro.build.characteristics"

    .line 2333
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "tablet"

    .line 2334
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isTalkBackEnabled(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "accessibility"

    .line 3201
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    .line 3202
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->semIsScreenReaderEnabled()Z

    move-result p0

    return p0
.end method

.method public static isUserRemoveCertificateAllowedAsUser(Landroid/content/Context;I)Z
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 2626
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "content://com.sec.knox.provider/CertificatePolicy"

    const-string v3, "isUserRemoveCertificatesAllowed"

    .line 2623
    invoke-static {p0, p1, v3, v1}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "Settings"

    const-string p1, "UserRemoveCertificatesAllowedAsUser : not allowed"

    .line 2629
    invoke-static {p0, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    return v0
.end method

.method public static isVoiceCapable(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "phone"

    .line 339
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_0

    .line 340
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isVolumeValid(Landroid/os/storage/VolumeInfo;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 1120
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1121
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static launchIntent(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 2

    :try_start_0
    const-string v0, "android.intent.extra.USER_ID"

    const/4 v1, -0x1

    .line 1017
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1020
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1022
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1025
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No activity found for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Settings"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static localeTranslate(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/String;
    .locals 3

    const-string v0, "Settings"

    .line 1674
    :try_start_0
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1675
    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 1676
    invoke-virtual {p0, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1680
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "(Class error)Failed to translate : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 1678
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "(Res error)Failed to translate : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/res/Resources$NotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method public static locateSmartNetworkSwitch(Landroid/content/Context;)I
    .locals 3

    const-string v0, "WifiSettings/AdvancedWifiSettings/SettingsSearchUtils"

    if-nez p0, :cond_0

    const-string p0, "context is null."

    .line 2998
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 3001
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_1

    const-string p0, "locateSmartNetworkSwitch() - WIFI_SMART_NETWORK_SWITCH_DISABLED(myUserId != USER_OWNER)"

    .line 3002
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const-string v1, "connectivity"

    .line 3007
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 3012
    invoke-static {p0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 3013
    sget-boolean p0, Lcom/android/settings/Utils;->DBG:Z

    if-eqz p0, :cond_2

    const-string p0, "locateSmartNetworkSwitch() - WIFI_SMART_NETWORK_SWITCH_DISABLED"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2

    .line 3017
    :cond_3
    sget-boolean p0, Lcom/android/settings/Utils;->DBG:Z

    if-eqz p0, :cond_4

    const-string p0, "locateSmartNetworkSwitch() - WIFI_SMART_NETWORK_SWITCH_ON_ADVANCED_WIFI_SETTINGS"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 p0, 0x2

    return p0
.end method

.method public static maybeInitializeVolume(Landroid/os/storage/StorageManager;Landroid/os/Bundle;)Landroid/os/storage/VolumeInfo;
    .locals 2

    const-string v0, "android.os.storage.extra.VOLUME_ID"

    const-string v1, "private"

    .line 1058
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1060
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p0

    .line 1061
    invoke-static {p0}, Lcom/android/settings/Utils;->isVolumeValid(Landroid/os/storage/VolumeInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V
    .locals 3

    .line 418
    invoke-virtual {p2}, Landroid/view/View;->getScrollBarStyle()I

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x2000000

    if-ne p3, v2, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    if-eqz p3, :cond_2

    .line 420
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v2, 0x10502d3

    .line 421
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 424
    instance-of p0, p0, Landroid/preference/PreferenceFrameLayout;

    if-eqz p0, :cond_1

    .line 425
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    iput-boolean v0, p0, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 427
    :cond_1
    invoke-virtual {p2, v1, v1, v1, p3}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_2
    return-void
.end method

.method public static readCountryCode()Ljava/lang/String;
    .locals 2

    .line 1444
    sget-object v0, Lcom/android/settings/Utils;->mCountryCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1445
    sget-object v0, Lcom/android/settings/Utils;->mCountryCode:Ljava/lang/String;

    return-object v0

    .line 1448
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CountryISO"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/Utils;->mCountryCode:Ljava/lang/String;

    .line 1449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readCountryCode(): country="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/settings/Utils;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Settings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    sget-object v0, Lcom/android/settings/Utils;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public static setActionBarShadowAnimation(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle;Landroid/view/View;)V
    .locals 2

    const-string v0, "Settings"

    if-nez p0, :cond_0

    const-string p0, "No activity, cannot style actionbar."

    .line 1273
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1276
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "No actionbar, cannot style actionbar."

    .line 1278
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 1281
    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setElevation(F)V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 1284
    invoke-static {p0, p1, p2}, Lcom/android/settingslib/widget/ActionBarShadowController;->attachToView(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle;Landroid/view/View;)Lcom/android/settingslib/widget/ActionBarShadowController;

    :cond_2
    return-void
.end method

.method public static setBixbyMode(Z)V
    .locals 0

    .line 2911
    sput-boolean p0, Lcom/android/settings/Utils;->USE_BIXBY:Z

    return-void
.end method

.method public static setDeXSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1454
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key"

    .line 1455
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "val"

    .line 1456
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    :try_start_0
    sget-object p2, Lcom/android/settings/Utils;->DEX_SETTINGS_URI:Landroid/net/Uri;

    const-string v1, "setSettings"

    const/4 v2, 0x0

    invoke-virtual {p0, p2, v1, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1461
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "IllegalArgumentException :: setDeXSettings "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Settings"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setEditTextCursorPosition(Landroid/widget/EditText;)V
    .locals 1

    .line 1125
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public static setEnterprisePolicyInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 2710
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2711
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "API"

    .line 2712
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2713
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "flag"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2714
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method public static setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 3

    .line 1467
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 1468
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v1, p0

    const p0, 0x3f8ccccd    # 1.1f

    cmpl-float v2, v0, p0

    if-lez v2, :cond_0

    move v0, p0

    :cond_0
    const/4 p0, 0x1

    mul-float/2addr v1, v0

    .line 1474
    invoke-virtual {p1, p0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public static setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;F)V
    .locals 2

    .line 1478
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 1479
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v1, p0

    cmpl-float p0, v0, p2

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    const/4 p0, 0x1

    mul-float/2addr v1, p2

    .line 1485
    invoke-virtual {p1, p0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public static setTaskIdToIntent(Landroid/content/Intent;Ljava/lang/Integer;)Landroid/content/Intent;
    .locals 7

    if-eqz p1, :cond_0

    .line 3038
    :try_start_0
    const-class v0, Landroid/content/Intent;

    const-string v1, "semSetLaunchOverTargetTask"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 3039
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object p1, v1, v6

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3041
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Settings"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object p0
.end method

.method public static startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z
    .locals 1

    .line 906
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 907
    invoke-static {p2}, Lcom/android/internal/app/UnlaunchableAppActivity;->createInQuietModeDialogIntent(I)Landroid/content/Intent;

    move-result-object p1

    .line 908
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static supportSdcard()Z
    .locals 2

    const-string/jumbo v0, "storage.support.sdcard"

    const-string v1, "0"

    .line 1981
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static unlockWorkProfileIfNecessary(Landroid/content/Context;I)Z
    .locals 3

    const/4 v0, 0x0

    .line 916
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, p1, v2}, Landroid/app/IActivityManager;->isUserRunning(II)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return v0

    .line 923
    :cond_0
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 926
    :cond_1
    invoke-static {p0, p1}, Lcom/android/settings/Utils;->confirmWorkProfileCredentials(Landroid/content/Context;I)Z

    move-result p0

    return p0

    :catch_0
    return v0
.end method

.method public static updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroidx/preference/PreferenceGroup;Ljava/lang/String;I)Z
    .locals 7

    .line 290
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 295
    :cond_0
    invoke-virtual {p2}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 298
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 299
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 300
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 302
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 303
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-eqz v5, :cond_2

    .line 307
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    and-int/lit8 p1, p3, 0x1

    if-eqz p1, :cond_1

    .line 313
    invoke-virtual {v4, p0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return v6

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 322
    :cond_3
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return v0
.end method

.method public static updateSmartNetworkSwitchAvailability(Landroid/content/Context;)I
    .locals 11

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const-string v0, "connectivity"

    .line 2931
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2939
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 2941
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mobile_data"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    const-string v4, "phone"

    .line 2944
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const-string v4, "WifiSettings/AdvancedWifiSettings/SettingsSearchUtils"

    const/4 v5, 0x5

    if-nez p0, :cond_3

    const-string v6, "Utils"

    const-string v7, "TelephonyManager is null."

    .line 2947
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v2

    goto :goto_4

    .line 2949
    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    if-le v6, v1, :cond_6

    .line 2950
    invoke-virtual {p0, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v6

    .line 2951
    invoke-virtual {p0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v7

    if-eq v6, v5, :cond_5

    if-ne v7, v5, :cond_4

    goto :goto_2

    :cond_4
    move v8, v2

    goto :goto_3

    :cond_5
    :goto_2
    move v8, v5

    .line 2958
    :goto_3
    sget-boolean v9, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v9, :cond_7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "simState1 = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", simState2 = "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", simState = "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2961
    :cond_6
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v8

    :cond_7
    :goto_4
    if-eqz p0, :cond_8

    .line 2966
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 2968
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result p0

    goto :goto_5

    :cond_8
    move p0, v2

    :goto_5
    if-eq v8, v5, :cond_a

    .line 2972
    sget-boolean v6, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v6, :cond_9

    const-string v6, "SimCheck.disable"

    .line 2974
    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    :cond_9
    const/4 v6, 0x2

    goto :goto_6

    :cond_a
    if-eqz v0, :cond_b

    const/4 v6, 0x3

    goto :goto_6

    :cond_b
    if-eqz v3, :cond_d

    if-eqz p0, :cond_c

    move v6, v5

    goto :goto_6

    :cond_c
    move v6, v1

    goto :goto_6

    :cond_d
    const/4 v6, 0x4

    .line 2984
    :goto_6
    sget-boolean v7, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v7, :cond_f

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Checkbox - Airplane Mode Off / Mobile Data Enabled / SIM State-Ready / isMobilePolicyDataEnable / !mobileDataBlockedByRoaming / result : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/2addr v0, v1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " / "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v8, v5, :cond_e

    move v2, v1

    :cond_e
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/2addr p0, v1

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return v6
.end method

.method private static userManualFileCopy(Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2035
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2037
    :try_start_0
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p1, 0x400

    :try_start_1
    new-array p1, p1, [B

    .line 2042
    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    .line 2043
    invoke-virtual {p0, p1, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2046
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2049
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 2046
    :try_start_3
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 2047
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    .line 2049
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 2050
    throw p0
.end method
