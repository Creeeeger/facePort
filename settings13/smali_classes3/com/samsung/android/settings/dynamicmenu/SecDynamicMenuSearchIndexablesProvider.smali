.class public Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider;
.super Ljava/lang/Object;
.source "SecDynamicMenuSearchIndexablesProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$IndexingData;
    }
.end annotation


# static fields
.field private static final SCREEN_TITLE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

.field private static final SKIP_ITEMS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$sfgetSCREEN_TITLE_MAP()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider;->SCREEN_TITLE_MAP:Ljava/util/Map;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetSKIP_ITEMS()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider;->SKIP_ITEMS:Ljava/util/List;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 56
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider;->SCREEN_TITLE_MAP:Ljava/util/Map;

    .line 57
    const-class v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->useful_feature_title:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-class v1, Lcom/android/settings/emergency/EmergencyDashboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->emergency_settings_preference_title:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-class v1, Lcom/samsung/android/settings/connection/ConnectionsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->tab_category_connections:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-class v1, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->security_and_privacy_title:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-class v1, Lcom/android/settings/privacy/OtherPrivacySettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->other_privacy_settings_title:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-class v1, Lcom/android/settings/privacy/PrivacyDashboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->privacy_dashboard_title:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-class v1, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->development_settings_title:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-class v1, Lcom/samsung/android/settings/multidevices/MultiDevicesFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->sec_multi_devices_title:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider;->SKIP_ITEMS:Ljava/util/List;

    const-string v1, "screenshots_and_screen_recorder"

    .line 70
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "wfc_settings_tile"

    .line 71
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "WifiCalling"

    .line 72
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "security_status_security_patch_level"

    .line 73
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "security_status_partial_system_updates"

    .line 74
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "security_status_package_verifier"

    .line 75
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
