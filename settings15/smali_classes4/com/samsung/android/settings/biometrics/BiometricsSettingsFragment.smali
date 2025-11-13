.class public Lcom/samsung/android/settings/biometrics/BiometricsSettingsFragment;
.super Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/biometrics/BiometricsSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/biometrics/BiometricsSettingsFragment;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/biometrics/BiometricsSettingsFragment$1;

    invoke-direct {v0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/biometrics/BiometricsSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/biometrics/BiometricsSettingsFragment;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170156

    return p0
.end method
