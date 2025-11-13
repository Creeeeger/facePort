.class public Lcom/android/settings/SettingsActivity;
.super Lcom/android/settings/core/SettingsBaseActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;
.implements Lcom/android/settings/ButtonBarHandler;
.implements Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;


# instance fields
.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

.field private mFragmentClass:Ljava/lang/String;

.field private mHighlightMenuKey:Ljava/lang/String;

.field private mInitialTitle:Ljava/lang/CharSequence;

.field private mInitialTitleResId:I

.field private mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field private mNextButton:Landroid/widget/Button;


# direct methods
.method public static synthetic $r8$lambda$-AbIEPURzxSdL7XpcOzNSbqEBFg(Lcom/android/settings/SettingsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/SettingsActivity;->lambda$createUiFromIntent$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kP3ONax-hdvFOQgR-yWGskQXunM(Lcom/android/settings/SettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->lambda$createUiFromIntent$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$p9efbOhi92qik5coa3QX5ZyZOlI(Lcom/android/settings/SettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->lambda$updateTilesList$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$qqQ5J3nV7KArVZO6GfiKOIubcJY(Lcom/android/settings/SettingsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/SettingsActivity;->lambda$createUiFromIntent$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v5G3KyvOc0f6Ky0uHMy_ETd9pBc(Lcom/android/settings/SettingsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/SettingsActivity;->lambda$createUiFromIntent$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 111
    invoke-direct {p0}, Lcom/android/settings/core/SettingsBaseActivity;-><init>()V

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    return-void
.end method

.method private doUpdateTilesList()V
    .locals 11

    .line 969
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 970
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 971
    invoke-virtual {v1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v1

    .line 973
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 974
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 975
    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/android/settings/Settings$WifiSettingsActivity;

    .line 976
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "android.hardware.wifi"

    .line 977
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    .line 975
    invoke-direct {p0, v3, v4, v5, v1}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    .line 979
    :goto_0
    new-instance v7, Landroid/content/ComponentName;

    const-class v8, Lcom/android/settings/Settings$BluetoothSettingsActivity;

    .line 980
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v2, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "android.hardware.bluetooth"

    .line 981
    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    .line 979
    invoke-direct {p0, v3, v7, v8, v1}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v6

    .line 986
    :goto_2
    new-instance v7, Landroid/content/ComponentName;

    const-class v8, Lcom/android/settings/Settings$DataUsageSummaryActivity;

    .line 987
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v2, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    invoke-static {}, Lcom/android/settings/Utils;->isBandwidthControlEnabled()Z

    move-result v8

    .line 986
    invoke-direct {p0, v3, v7, v8, v1}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v7

    if-nez v7, :cond_4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    move v4, v5

    goto :goto_4

    :cond_4
    :goto_3
    move v4, v6

    .line 1008
    :goto_4
    new-instance v7, Landroid/content/ComponentName;

    const-class v8, Lcom/android/settings/Settings$UserSettingsActivity;

    .line 1009
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v2, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1011
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v8

    if-nez v8, :cond_5

    move v8, v6

    goto :goto_5

    :cond_5
    move v8, v5

    .line 1008
    :goto_5
    invoke-direct {p0, v3, v7, v8, v1}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v7

    if-nez v7, :cond_7

    if-eqz v4, :cond_6

    goto :goto_6

    :cond_6
    move v4, v5

    goto :goto_7

    :cond_7
    :goto_6
    move v4, v6

    .line 1014
    :goto_7
    invoke-static {p0}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1015
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v7

    if-nez v7, :cond_8

    move v7, v6

    goto :goto_8

    :cond_8
    move v7, v5

    .line 1016
    :goto_8
    new-instance v8, Landroid/content/ComponentName;

    const-class v9, Lcom/android/settings/Settings$DevelopmentSettingsDashboardActivity;

    .line 1017
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v2, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    invoke-direct {p0, v3, v8, v7, v1}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v7

    if-nez v7, :cond_a

    if-eqz v4, :cond_9

    goto :goto_9

    :cond_9
    move v4, v5

    goto :goto_a

    :cond_a
    :goto_9
    move v4, v6

    .line 1021
    :goto_a
    new-instance v7, Landroid/content/ComponentName;

    const-class v8, Lcom/android/settings/Settings$WifiDisplaySettingsActivity;

    .line 1022
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v2, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    invoke-static {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isAvailable(Landroid/content/Context;)Z

    move-result v8

    .line 1021
    invoke-direct {p0, v3, v7, v8, v1}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v7

    if-nez v7, :cond_c

    if-eqz v4, :cond_b

    goto :goto_b

    :cond_b
    move v4, v5

    goto :goto_c

    :cond_c
    :goto_b
    move v4, v6

    :goto_c
    const-string v7, "android.hardware.nfc"

    .line 1053
    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d

    const-string v8, "ro.factory.factory_binary"

    const-string v9, "Unknown"

    .line 1054
    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "factory"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d

    move v8, v5

    goto :goto_d

    :cond_d
    move v8, v6

    .line 1057
    :goto_d
    new-instance v9, Landroid/content/ComponentName;

    const-class v10, Lcom/android/settings/Settings$NfcSettingsActivity;

    .line 1058
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v2, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_e

    .line 1059
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v10

    if-eqz v10, :cond_10

    :cond_e
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isY2OlympicEdition()Z

    move-result v10

    if-nez v10, :cond_10

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/settings/Rune;->isGpFelicaSupported(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_10

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isFaver3Supported()Z

    move-result v10

    if-nez v10, :cond_f

    goto :goto_e

    :cond_f
    move v10, v5

    goto :goto_f

    :cond_10
    :goto_e
    move v10, v6

    .line 1057
    :goto_f
    invoke-direct {p0, v3, v9, v10, v1}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v9

    if-nez v9, :cond_12

    if-eqz v4, :cond_11

    goto :goto_10

    :cond_11
    move v4, v5

    goto :goto_11

    :cond_12
    :goto_10
    move v4, v6

    .line 1062
    :goto_11
    new-instance v9, Landroid/content/ComponentName;

    const-class v10, Lcom/android/settings/Settings$NfcOsaifukeitaiSettingsActivity;

    .line 1063
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v2, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_13

    .line 1064
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isFaver3Supported()Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/settings/Rune;->isGpFelicaSupported(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_13

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isY2OlympicEdition()Z

    move-result v8

    if-nez v8, :cond_13

    move v8, v6

    goto :goto_12

    :cond_13
    move v8, v5

    .line 1062
    :goto_12
    invoke-direct {p0, v3, v9, v8, v1}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v8

    if-nez v8, :cond_15

    if-eqz v4, :cond_14

    goto :goto_13

    :cond_14
    move v4, v5

    goto :goto_14

    :cond_15
    :goto_13
    move v4, v6

    .line 1067
    :goto_14
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v8

    .line 1068
    new-instance v9, Landroid/content/ComponentName;

    const-class v10, Lcom/android/settings/Settings$PaymentSettingsActivity;

    .line 1069
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v2, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "android.hardware.nfc.hce"

    .line 1071
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    if-eqz v8, :cond_16

    .line 1072
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isNfcOtherCategorySupported()Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v6

    goto :goto_15

    :cond_16
    move v0, v5

    .line 1068
    :goto_15
    invoke-direct {p0, v3, v9, v0, v1}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v0

    if-nez v0, :cond_17

    if-eqz v4, :cond_18

    :cond_17
    move v5, v6

    :cond_18
    const-string v0, "SettingsActivity"

    if-eqz v5, :cond_19

    .line 1085
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enabled state changed for some tiles, reloading all categories "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1085
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    iget-object p0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mCategoryMixin:Lcom/android/settings/core/CategoryMixin;

    invoke-virtual {p0}, Lcom/android/settings/core/CategoryMixin;->updateCategories()V

    goto :goto_16

    :cond_19
    const-string p0, "No enabled state changed, skipping updateCategory call"

    .line 1089
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_16
    return-void
.end method

.method private getMetaData()V
    .locals 3

    .line 1112
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1114
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "com.android.settings.FRAGMENT_CLASS"

    .line 1115
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    .line 1116
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.android.settings.HIGHLIGHT_MENU_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mHighlightMenuKey:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 1119
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot get Metadata for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SettingsActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private getMetricsTag()Ljava/lang/String;
    .locals 3

    .line 279
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":settings:show_fragment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->getInitialFragmentName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 282
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MetricsTag is invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string p0, "com.android.settings."

    .line 286
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    .line 287
    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .line 903
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 905
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 906
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const-string p0, "com.android.settings.RunningServices"

    .line 908
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "com.android.settings.applications.StorageUse"

    .line 909
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 911
    :cond_2
    const-class p0, Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method public static getTrampolineIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    .line 523
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 525
    invoke-virtual {v0}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 526
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 529
    :cond_0
    new-instance p0, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS_EMBED_DEEP_LINK_ACTIVITY"

    invoke-direct {p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.settings"

    .line 530
    invoke-virtual {p0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 531
    invoke-virtual {p0, v0}, Landroid/content/Intent;->replaceExtras(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    .line 538
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "settings_large_screen_deep_link_intent_data"

    .line 536
    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 539
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 542
    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.provider.extra.SETTINGS_EMBEDDED_DEEP_LINK_INTENT_URI"

    .line 541
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.provider.extra.SETTINGS_EMBEDDED_DEEP_LINK_HIGHLIGHT_MENU_KEY"

    .line 544
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x2000000

    .line 546
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p0
.end method

.method public static getTrampolineIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 553
    invoke-static {p0, p1}, Lcom/android/settings/SettingsActivity;->getTrampolineIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "android.provider.extra.SETTINGS_EMBEDDED_DEEP_LINK_HIGHLIGHT_MENU_TITLE"

    .line 554
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method private isActionBarButtonEnabled(Landroid/content/Intent;)Z
    .locals 4

    .line 474
    invoke-static {p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "settings_homekey_mode"

    .line 479
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "mode_invisible"

    .line 480
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 484
    :cond_1
    invoke-static {p0}, Lcom/android/settings/Utils;->isLockTaskModeLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 488
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/settings/homepage/HomepageUtils;->isSupportMultiPaneLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 489
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v0

    if-nez v0, :cond_4

    .line 490
    :cond_3
    invoke-static {p0}, Lcom/samsung/android/settings/homepage/HomepageUtils;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 492
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 493
    instance-of v3, v2, Lcom/samsung/android/settings/core/PathProvider;

    if-nez v3, :cond_6

    goto :goto_0

    .line 497
    :cond_6
    const-class v3, Lcom/android/settings/homepage/TopLevelSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    check-cast v2, Lcom/samsung/android/settings/core/PathProvider;

    .line 498
    invoke-interface {v2, p0}, Lcom/samsung/android/settings/core/PathProvider;->getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 497
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    return v1

    :cond_7
    const-string v0, ":settings:is_second_layer_page"

    .line 507
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 511
    invoke-static {p0, p1}, Lcom/android/settingslib/activityembedding/ActivityEmbeddingUtils;->shouldHideNavigateUpButton(Landroid/app/Activity;Z)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private isSubSettings(Landroid/content/Intent;)Z
    .locals 1

    .line 515
    instance-of p0, p0, Lcom/android/settings/SubSettings;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, ":settings:show_fragment_as_subsetting"

    .line 516
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private synthetic lambda$createUiFromIntent$0()V
    .locals 1

    const-string v0, "SettingsActivityKnoxUtils.updateRestrictionState"

    .line 352
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->updateRestrictionState(Landroid/content/Context;)V

    .line 356
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method private synthetic lambda$createUiFromIntent$1(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 415
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 416
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$createUiFromIntent$2(Landroid/view/View;)V
    .locals 1

    const/4 p1, -0x1

    const/4 v0, 0x0

    .line 420
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 421
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$createUiFromIntent$3(Landroid/view/View;)V
    .locals 1

    const/4 p1, -0x1

    const/4 v0, 0x0

    .line 425
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 426
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$updateTilesList$4()V
    .locals 0

    .line 965
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->doUpdateTilesList()V

    return-void
.end method

.method private setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z
    .locals 1

    if-nez p4, :cond_0

    .line 1098
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    sget-object p4, Lcom/android/settings/core/gateway/SettingsGateway;->SETTINGS_FOR_RESTRICTED:[Ljava/lang/String;

    .line 1100
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1099
    invoke-static {p4, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p3, 0x0

    .line 1103
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/core/SettingsBaseActivity;->setTileEnabled(Landroid/content/ComponentName;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1105
    invoke-virtual {p2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return p0
.end method

.method private setTitleFromBackStack()V
    .locals 2

    .line 777
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 780
    iget v0, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    if-lez v0, :cond_0

    .line 781
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SettingsBaseActivity;->setTitle(I)V

    goto :goto_0

    .line 783
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/core/SettingsBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    .line 788
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    .line 789
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryAt(I)Landroidx/fragment/app/FragmentManager$BackStackEntry;

    move-result-object v0

    .line 790
    invoke-direct {p0, v0}, Lcom/android/settings/SettingsActivity;->setTitleFromBackStackEntry(Landroidx/fragment/app/FragmentManager$BackStackEntry;)V

    return-void
.end method

.method private setTitleFromBackStackEntry(Landroidx/fragment/app/FragmentManager$BackStackEntry;)V
    .locals 1

    .line 795
    invoke-interface {p1}, Landroidx/fragment/app/FragmentManager$BackStackEntry;->getBreadCrumbTitleRes()I

    move-result v0

    if-lez v0, :cond_0

    .line 797
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    .line 799
    :cond_0
    invoke-interface {p1}, Landroidx/fragment/app/FragmentManager$BackStackEntry;->getBreadCrumbTitle()Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 802
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private setTitleFromIntent(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "SettingsActivity"

    const-string v1, "Starting to set activity title"

    .line 737
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ":settings:show_fragment_title_resid"

    const/4 v2, -0x1

    .line 738
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v3, 0x0

    .line 740
    iput-object v3, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 741
    iput v1, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    const-string v1, ":settings:show_fragment_title_res_package_name"

    .line 743
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 747
    :try_start_0
    new-instance v3, Landroid/os/UserHandle;

    .line 748
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 747
    invoke-virtual {p0, p1, v1, v3}, Landroid/app/Activity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    .line 749
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 750
    invoke-virtual {p0, v1}, Lcom/android/settings/core/SettingsBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 751
    iput v2, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 756
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find title resource in "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 754
    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find package"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 760
    :cond_0
    iget p1, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->setTitle(I)V

    goto :goto_1

    .line 763
    :cond_1
    iput v2, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    const-string v1, ":settings:show_fragment_title"

    .line 764
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 765
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 766
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    :goto_1
    const-string p0, "Done setting title"

    .line 768
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private shouldShowTwoPaneDeepLink(Landroid/content/Intent;)Z
    .locals 3

    .line 626
    invoke-static {p0}, Lcom/samsung/android/settings/homepage/HomepageUtils;->isSupportMultiPaneLayout(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 627
    invoke-static {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isEmbeddingActivityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 636
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v2, 0x10000000

    and-int/2addr v0, v2

    if-nez v0, :cond_1

    return v1

    .line 642
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 649
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v2, 0x10000

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 651
    iget v0, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    const-string p0, "SettingsActivity"

    const-string p1, "launchMode: singleInstance"

    .line 652
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const-string v0, "is_from_slice"

    .line 656
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    return v2

    .line 662
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsActivity;->isSubSettings(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v1

    :cond_5
    const-string p0, "is_from_settings_homepage"

    .line 666
    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_6

    return v1

    .line 671
    :cond_6
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "android.intent.action.CREATE_SHORTCUT"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    return v1

    :cond_7
    return v2
.end method

.method private switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZILjava/lang/CharSequence;)V
    .locals 2

    .line 940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Switching to fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1

    .line 941
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 942
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid fragment for this activity: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 945
    :cond_1
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/android/settings/Utils;->getTargetFragment(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 949
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    .line 950
    sget p3, Lcom/android/settings/R$id;->main_content:I

    invoke-virtual {p2, p3, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    if-lez p4, :cond_3

    .line 952
    invoke-virtual {p2, p4}, Landroidx/fragment/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_1

    :cond_3
    if-eqz p5, :cond_4

    .line 954
    invoke-virtual {p2, p5}, Landroidx/fragment/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroidx/fragment/app/FragmentTransaction;

    .line 956
    :cond_4
    :goto_1
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 957
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    const-string p0, "Executed frag manager pendingTransactions"

    .line 958
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private tryStartTwoPaneDeepLink(Landroid/content/Intent;)Z
    .locals 5

    .line 561
    const-class v0, Lcom/android/settings/homepage/DeepLinkHomepageActivityInternal;

    .line 562
    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    .line 561
    invoke-static {v1}, Lcom/android/settings/password/PasswordUtils;->getCallingAppPackageName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "initial_calling_package"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "is_from_slice"

    const/4 v2, 0x0

    .line 564
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.provider.extra.SETTINGS_EMBEDDED_DEEP_LINK_HIGHLIGHT_MENU_KEY"

    .line 566
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 568
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 569
    iput-object v1, p0, Lcom/android/settings/SettingsActivity;->mHighlightMenuKey:Ljava/lang/String;

    .line 571
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mHighlightMenuKey:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/settings/SettingsActivity;->getTrampolineIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 572
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 574
    :cond_1
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mHighlightMenuKey:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/settings/SettingsActivity;->getTrampolineIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 578
    :goto_0
    :try_start_0
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 579
    invoke-virtual {p0}, Landroid/app/Activity;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 584
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 585
    :cond_2
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 587
    :cond_3
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "user_handle"

    .line 588
    invoke-virtual {p0}, Landroid/app/Activity;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 589
    invoke-virtual {v1}, Landroid/os/UserManager;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2

    .line 595
    :cond_4
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v0

    const v1, 0x7fffffff

    .line 596
    invoke-virtual {v0, v1}, Landroid/app/ActivityTaskManager;->getTasks(I)Ljava/util/List;

    move-result-object v0

    .line 595
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_5

    .line 597
    iget-object v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-nez v3, :cond_6

    goto :goto_1

    .line 600
    :cond_6
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/android/settings/homepage/DeepLinkHomepageActivity;

    .line 601
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 600
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 602
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v0

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityTaskManager;->removeTask(I)Z

    .line 606
    :cond_7
    invoke-static {p0}, Lcom/samsung/android/settings/homepage/HomepageUtils;->isSupportMultiPaneLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 607
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    const/4 v1, 0x0

    .line 608
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/app/ActivityOptions;->semSetPopOverOptions([I[I[Landroid/graphics/Point;[I)Landroid/app/ActivityOptions;

    .line 609
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_2

    .line 611
    :cond_8
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p0, "SettingsActivity"

    const-string p1, "Deep link homepage is not available to show 2-pane UI"

    .line 617
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private updateTilesList()V
    .locals 1

    .line 965
    new-instance v0, Lcom/android/settings/SettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected createUiFromIntent(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 5

    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 331
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 332
    invoke-virtual {v0, p0}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    const-string v0, "settings:ui_options"

    .line 334
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 335
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/Window;->setUiOptions(I)V

    .line 339
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/settings/SettingsActivity;->getInitialFragmentName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 345
    invoke-direct {p0, p2}, Lcom/android/settings/SettingsActivity;->isSubSettings(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 346
    sget v1, Lcom/android/settings/R$style;->Theme_SubSettings:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 350
    :cond_1
    new-instance v1, Lcom/android/settings/SettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 363
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getContentViewResId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/core/SettingsBaseActivity;->setContentView(I)V

    .line 366
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/fragment/app/FragmentManager;->addOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    if-eqz p1, :cond_2

    .line 371
    invoke-direct {p0, p2}, Lcom/android/settings/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    const-string v0, ":settings:categories"

    .line 374
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 376
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 377
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 378
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->setTitleFromBackStack()V

    goto :goto_0

    .line 381
    :cond_2
    invoke-virtual {p0, v0, p2}, Lcom/android/settings/SettingsActivity;->launchSettingFragment(Ljava/lang/String;Landroid/content/Intent;)V

    .line 384
    :cond_3
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/settings/SettingsActivity;->isActionBarButtonEnabled(Landroid/content/Intent;)Z

    move-result p1

    .line 388
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 391
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 392
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    const/4 p1, 0x1

    .line 393
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 396
    :cond_4
    sget p1, Lcom/android/settings/R$id;->switch_bar:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/SettingsMainSwitchBar;

    iput-object p1, p0, Lcom/android/settings/SettingsActivity;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p1, :cond_5

    .line 398
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->getMetricsTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setMetricsTag(Ljava/lang/String;)V

    .line 399
    iget-object p1, p0, Lcom/android/settings/SettingsActivity;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    sget v0, Lcom/android/settings/R$id;->main_content:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationZ()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTranslationZ(F)V

    :cond_5
    const-string p1, "extra_prefs_show_button_bar"

    .line 403
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 405
    sget p1, Lcom/android/settings/R$id;->button_bar:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 407
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 409
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->sec_widget_settings_main_button_bar:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 410
    check-cast p1, Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 413
    sget p1, Lcom/android/settings/R$id;->back_button:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 414
    new-instance v0, Lcom/android/settings/SettingsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    sget v0, Lcom/android/settings/R$id;->skip_button:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 419
    new-instance v1, Lcom/android/settings/SettingsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsActivity$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    sget v1, Lcom/android/settings/R$id;->next_button:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    .line 424
    new-instance v3, Lcom/android/settings/SettingsActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/android/settings/SettingsActivity$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "extra_prefs_set_next_text"

    .line 430
    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_7

    .line 431
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 432
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 433
    iget-object p0, p0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {p0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 435
    :cond_6
    iget-object p0, p0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_1
    const-string p0, "extra_prefs_set_back_text"

    .line 438
    invoke-virtual {p2, p0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 439
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 440
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 441
    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 443
    :cond_8
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_2
    const-string p0, "extra_prefs_show_skip"

    .line 446
    invoke-virtual {p2, p0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 447
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method public finishPreferencePanel(ILandroid/content/Intent;)V
    .locals 1

    .line 926
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    const-string v0, "remove_task_when_finishing"

    .line 928
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 929
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    goto :goto_0

    .line 931
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method protected getContentViewResId()I
    .locals 0

    .line 324
    sget p0, Lcom/android/settings/R$layout;->sec_settings_main_prefs:I

    return p0
.end method

.method public getInitialCallingPackage()Ljava/lang/String;
    .locals 2

    .line 685
    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/password/PasswordUtils;->getCallingAppPackageName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    .line 686
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 690
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v1, "initial_calling_package"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 691
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public getInitialFragmentName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 0

    const-string p0, ":settings:show_fragment"

    .line 697
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 4

    .line 878
    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 879
    invoke-direct {p0, v0}, Lcom/android/settings/SettingsActivity;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 883
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v2, ":settings:show_fragment"

    .line 884
    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, ":settings:show_fragment_args"

    .line 885
    invoke-virtual {v0, p0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 887
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    .line 889
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string v2, "intent"

    .line 891
    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 892
    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v1

    :cond_1
    return-object v0
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 0

    .line 1129
    iget-object p0, p0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    return-object p0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 2

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    new-instance p1, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->getMetricsTag()Ljava/lang/String;

    move-result-object p2

    .line 272
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    invoke-direct {p1, p0, p2, v0}, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    return-object p1

    .line 274
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/android/settings/SettingsActivity;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    return-object p0
.end method

.method public hasNextButton()Z
    .locals 0

    .line 1125
    iget-object p0, p0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 4

    const/4 p0, 0x0

    move v0, p0

    .line 865
    :goto_0
    sget-object v1, Lcom/android/settings/core/gateway/SettingsGateway;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    .line 866
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, p0

    .line 869
    :goto_1
    sget-object v1, Lcom/android/settings/core/gateway/SettingsGateway;->SAMSUNG_ENTRY_FRAGMENTS:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 870
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return p0
.end method

.method launchSettingFragment(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 7

    if-eqz p1, :cond_0

    .line 722
    invoke-direct {p0, p2}, Lcom/android/settings/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    const-string v0, ":settings:show_fragment_args"

    .line 724
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const/4 v4, 0x1

    .line 725
    iget v5, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZILjava/lang/CharSequence;)V

    goto :goto_0

    .line 729
    :cond_0
    sget p1, Lcom/android/settings/R$string;->dashboard_title:I

    iput p1, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    .line 731
    const-class p1, Lcom/android/settings/homepage/TopLevelSettings;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZILjava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 708
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 709
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 711
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 712
    instance-of v1, v0, Lcom/android/settings/core/OnActivityResultListener;

    if-eqz v1, :cond_0

    .line 713
    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 2

    .line 702
    sget v0, Lcom/android/settings/R$style;->SetupWizardPartnerResource:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 703
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method public onBackStackChanged()V
    .locals 0

    .line 773
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->setTitleFromBackStack()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 460
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/SettingsActivity;->isActionBarButtonEnabled(Landroid/content/Intent;)Z

    move-result v0

    .line 461
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 463
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 464
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "actionBar.setDisplayHomeAsUpEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SettingsActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 469
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "SettingsActivity#onCreate"

    .line 295
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 298
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->getMetaData()V

    .line 299
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 301
    invoke-direct {p0, v0}, Lcom/android/settings/SettingsActivity;->shouldShowTwoPaneDeepLink(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/settings/SettingsActivity;->tryStartTwoPaneDeepLink(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 303
    invoke-super {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 305
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void

    .line 310
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v1, "SettingsActivity"

    const-string v2, "Starting onCreate"

    .line 311
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SettingsActivity#createUiFromIntent"

    .line 313
    invoke-static {v1}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/SettingsActivity;->createUiFromIntent(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 317
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    .line 318
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 845
    invoke-super {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onPause()V

    return-void
.end method

.method public onPreferenceStartFragment(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z
    .locals 1

    .line 249
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 250
    invoke-virtual {p2}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 251
    invoke-virtual {p2}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 252
    instance-of v0, p1, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    if-eqz v0, :cond_0

    .line 253
    check-cast p1, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    invoke-interface {p1}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 252
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/4 p1, -0x1

    .line 255
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 257
    invoke-virtual {p2}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleText(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onResume()V
    .locals 0

    .line 824
    invoke-super {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onResume()V

    .line 840
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->updateTilesList()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 808
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 809
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->saveState(Landroid/os/Bundle;)V

    return-void
.end method

.method saveState(Landroid/os/Bundle;)V
    .locals 1

    .line 817
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 818
    iget-object p0, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    const-string v0, ":settings:categories"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 0

    .line 859
    invoke-super {p0, p1}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    return-void
.end method
