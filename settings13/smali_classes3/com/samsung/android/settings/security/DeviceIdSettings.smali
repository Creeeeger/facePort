.class public Lcom/samsung/android/settings/security/DeviceIdSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "DeviceIdSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static mPrefControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/security/DeviceIdSettings;->mPrefControllers:Ljava/util/List;

    .line 53
    new-instance v0, Lcom/samsung/android/settings/security/DeviceIdSettings$1;

    sget v1, Lcom/android/settings/R$xml;->sec_device_id:I

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/security/DeviceIdSettings$1;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/security/DeviceIdSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/security/DeviceIdSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/settings/security/DeviceIdSettings;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sput-object p1, Lcom/samsung/android/settings/security/DeviceIdSettings;->mPrefControllers:Ljava/util/List;

    .line 48
    new-instance p2, Lcom/samsung/android/settings/security/ResetDeviceIdPreferenceController;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/security/ResetDeviceIdPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object p1, Lcom/samsung/android/settings/security/DeviceIdSettings;->mPrefControllers:Ljava/util/List;

    new-instance p2, Lcom/samsung/android/settings/security/AllowDeviceIdPreferenceController;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/security/AllowDeviceIdPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object p0, Lcom/samsung/android/settings/security/DeviceIdSettings;->mPrefControllers:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
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

    .line 42
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/samsung/android/settings/security/DeviceIdSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/security/DeviceIdSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "DeviceIdSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x57

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 27
    sget p0, Lcom/android/settings/R$xml;->sec_device_id:I

    return p0
.end method
