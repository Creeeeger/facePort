.class public Lcom/samsung/android/settings/biometrics/BiometricsSettingsFragment;
.super Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;
.source "BiometricsSettingsFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    const-class v0, Lcom/samsung/android/settings/biometrics/BiometricsSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/biometrics/BiometricsSettingsFragment;->TAG:Ljava/lang/String;

    .line 31
    new-instance v0, Lcom/samsung/android/settings/biometrics/BiometricsSettingsFragment$1;

    sget v1, Lcom/android/settings/R$xml;->sec_biometrics_settings:I

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsSettingsFragment$1;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/biometrics/BiometricsSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 23
    sget-object p0, Lcom/samsung/android/settings/biometrics/BiometricsSettingsFragment;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 18
    sget p0, Lcom/android/settings/R$xml;->sec_biometrics_settings:I

    return p0
.end method
