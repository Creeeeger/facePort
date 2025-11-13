.class public Lcom/android/settings/notification/modes/ZenModesListFragment;
.super Lcom/android/settings/notification/modes/ZenModesFragmentBase;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v10, Lcom/android/settings/utils/ManagedServiceSettings$Config;

    const-string v6, "condition provider"

    const/4 v7, 0x0

    const-string v1, "ZenModesSettings"

    const/4 v2, 0x0

    const-string v3, "android.service.notification.ConditionProviderService"

    const-string v4, "android.app.action.AUTOMATIC_ZEN_RULE"

    const-string v5, "android.permission.BIND_CONDITION_PROVIDER_SERVICE"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/android/settings/utils/ManagedServiceSettings$Config;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    sput-object v10, Lcom/android/settings/notification/modes/ZenModesListFragment;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    new-instance v0, Lcom/android/settings/notification/modes/ZenModesListFragment$1;

    const v1, 0x7f1700e6

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/notification/modes/ZenModesListFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/modes/ZenModesFragmentBase;-><init>()V

    return-void
.end method


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3

    new-instance v0, Lcom/android/settings/utils/ZenServiceListing;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/settings/notification/modes/ZenModesListFragment;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/utils/ZenServiceListing;-><init>(Landroid/content/Context;Lcom/android/settings/utils/ManagedServiceSettings$Config;)V

    invoke-virtual {v0}, Lcom/android/settings/utils/ZenServiceListing;->reloadApprovedServices()V

    sget-object v0, Lcom/android/settings/notification/modes/ZenModesBackend;->sInstance:Lcom/android/settings/notification/modes/ZenModesBackend;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/notification/modes/ZenModesBackend;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/notification/modes/ZenModesBackend;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/notification/modes/ZenModesBackend;->sInstance:Lcom/android/settings/notification/modes/ZenModesBackend;

    :cond_0
    sget-object v0, Lcom/android/settings/notification/modes/ZenModesBackend;->sInstance:Lcom/android/settings/notification/modes/ZenModesBackend;

    new-instance v1, Lcom/android/settings/notification/modes/ZenModesListPreferenceController;

    invoke-direct {v1, p1, p0, v0}, Lcom/android/settings/notification/modes/ZenModesListPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settings/notification/modes/ZenModesBackend;)V

    new-instance p0, Lcom/android/settings/notification/modes/ZenModesListAddModePreferenceController;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/modes/ZenModesListAddModePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/modes/ZenModesBackend;)V

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->construct([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x8e

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1700e6

    return p0
.end method

.method public final updateZenModeState()V
    .locals 0

    return-void
.end method
