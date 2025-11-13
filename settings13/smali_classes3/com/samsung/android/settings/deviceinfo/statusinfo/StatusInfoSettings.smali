.class public Lcom/samsung/android/settings/deviceinfo/statusinfo/StatusInfoSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "StatusInfoSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;


# direct methods
.method static bridge synthetic -$$Nest$smbuildPreferenceControllers(Landroid/content/Context;Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/settings/deviceinfo/statusinfo/StatusInfoSettings;->buildPreferenceControllers(Landroid/content/Context;Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 85
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/StatusInfoSettings$1;

    sget v1, Lcom/android/settings/R$xml;->sec_device_info_status:I

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/StatusInfoSettings$1;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/StatusInfoSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Activity;",
            "Landroidx/fragment/app/Fragment;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    new-instance p2, Lcom/android/settings/deviceinfo/IpAddressPreferenceController;

    invoke-direct {p2, p0, p3}, Lcom/android/settings/deviceinfo/IpAddressPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance p2, Lcom/android/settings/deviceinfo/WifiMacAddressPreferenceController;

    invoke-direct {p2, p0, p3}, Lcom/android/settings/deviceinfo/WifiMacAddressPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance p2, Lcom/android/settings/deviceinfo/BluetoothAddressPreferenceController;

    invoke-direct {p2, p0, p3}, Lcom/android/settings/deviceinfo/BluetoothAddressPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance p2, Lcom/android/settings/deviceinfo/UptimePreferenceController;

    invoke-direct {p2, p0, p3}, Lcom/android/settings/deviceinfo/UptimePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance p2, Lcom/samsung/android/settings/deviceinfo/statusinfo/WiMacAddressPreferenceController;

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/settings/deviceinfo/statusinfo/WiMacAddressPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance p2, Lcom/samsung/android/settings/deviceinfo/statusinfo/PaymentServicesPreferenceController;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/PaymentServicesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2
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

    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 34
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    .line 33
    invoke-static {p1, v0, p0, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/StatusInfoSettings;->buildPreferenceControllers(Landroid/content/Context;Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "DeviceStatus"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2c

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 135
    sget p0, Lcom/android/settings/R$xml;->sec_device_info_status:I

    return p0
.end method
