.class public Lcom/samsung/android/settings/biometrics/BiometricsOptionSettings;
.super Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;
.source "BiometricsOptionSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private final mBiometricsPatchStatusObserver:Landroid/database/ContentObserver;


# direct methods
.method static bridge synthetic -$$Nest$smbuildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/biometrics/BiometricsOptionSettings;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsOptionSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/biometrics/BiometricsOptionSettings;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Lcom/samsung/android/settings/biometrics/BiometricsOptionSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/biometrics/BiometricsOptionSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/biometrics/BiometricsOptionSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;-><init>()V

    .line 23
    new-instance v0, Lcom/samsung/android/settings/biometrics/BiometricsOptionSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsOptionSettings$1;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsOptionSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsOptionSettings;->mBiometricsPatchStatusObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/biometrics/BiometricsOptionSettings;)V
    .locals 0

    .line 19
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/biometrics/BiometricsOptionSettings;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/settings/biometrics/BiometricsOptionSettings;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 51
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 47
    invoke-static {p1, p0}, Lcom/samsung/android/settings/biometrics/BiometricsOptionSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/biometrics/BiometricsOptionSettings;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "BiometricsOptionSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2136

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 32
    sget p0, Lcom/android/settings/R$xml;->sec_biometrics_option_settings:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoAddFooterPreference(Z)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 63
    invoke-super {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onPause()V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/BiometricsOptionSettings;->mBiometricsPatchStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
