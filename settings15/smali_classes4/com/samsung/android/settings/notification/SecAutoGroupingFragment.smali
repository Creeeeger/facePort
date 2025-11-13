.class public Lcom/samsung/android/settings/notification/SecAutoGroupingFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/notification/SecAutoGroupingFragment$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/SecAutoGroupingFragment;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    new-instance v0, Lcom/samsung/android/settings/notification/SecAutoGroupingFragment$2;

    const v1, 0x7f17014d

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/notification/SecAutoGroupingFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method public static buildPreferenceControllers$1$1(Landroid/content/Context;)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/notification/SecNotificationFilterTypeController;

    const-string v2, "filter_advertisements"

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/android/settings/notification/SecNotificationFilterTypeController;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/notification/SecNotificationFilterTypeController;

    const-string v2, "filer_old_notification"

    const/4 v3, 0x2

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/android/settings/notification/SecNotificationFilterTypeController;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/notification/SecNotificationFilterTypeController;

    const-string v2, "filter_background_activites"

    const/4 v3, 0x3

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/android/settings/notification/SecNotificationFilterTypeController;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/notification/SecNotificationFilterTypeController;

    const-string v2, "filter_minimized_notification"

    const/4 v3, 0x4

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/android/settings/notification/SecNotificationFilterTypeController;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-static {p1}, Lcom/samsung/android/settings/notification/SecAutoGroupingFragment;->buildPreferenceControllers$1$1(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SecAutoGroupingFragment"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f17014d

    return p0
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    const p0, 0x8ccf

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;)V

    return-void
.end method
