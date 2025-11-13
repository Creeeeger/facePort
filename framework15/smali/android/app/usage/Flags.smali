.class public final Landroid/app/usage/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/app/usage/FeatureFlags; = null

.field public static final blacklist FLAG_DISABLE_IDLE_CHECK:Ljava/lang/String; = "android.app.usage.disable_idle_check"

.field public static final blacklist FLAG_FILTER_BASED_EVENT_QUERY_API:Ljava/lang/String; = "android.app.usage.filter_based_event_query_api"

.field public static final blacklist FLAG_GET_APP_BYTES_BY_DATA_TYPE_API:Ljava/lang/String; = "android.app.usage.get_app_bytes_by_data_type_api"

.field public static final blacklist FLAG_REPORT_USAGE_STATS_PERMISSION:Ljava/lang/String; = "android.app.usage.report_usage_stats_permission"

.field public static final blacklist FLAG_USER_INTERACTION_TYPE_API:Ljava/lang/String; = "android.app.usage.user_interaction_type_api"

.field public static final blacklist FLAG_USE_DEDICATED_HANDLER_THREAD:Ljava/lang/String; = "android.app.usage.use_dedicated_handler_thread"

.field public static final blacklist FLAG_USE_PARCELED_LIST:Ljava/lang/String; = "android.app.usage.use_parceled_list"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/usage/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/app/usage/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/app/usage/Flags;->FEATURE_FLAGS:Landroid/app/usage/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist disableIdleCheck()Z
    .locals 1

    sget-object v0, Landroid/app/usage/Flags;->FEATURE_FLAGS:Landroid/app/usage/FeatureFlags;

    invoke-interface {v0}, Landroid/app/usage/FeatureFlags;->disableIdleCheck()Z

    move-result v0

    return v0
.end method

.method public static greylist filterBasedEventQueryApi()Z
    .locals 1

    sget-object v0, Landroid/app/usage/Flags;->FEATURE_FLAGS:Landroid/app/usage/FeatureFlags;

    invoke-interface {v0}, Landroid/app/usage/FeatureFlags;->filterBasedEventQueryApi()Z

    move-result v0

    return v0
.end method

.method public static greylist getAppBytesByDataTypeApi()Z
    .locals 1

    sget-object v0, Landroid/app/usage/Flags;->FEATURE_FLAGS:Landroid/app/usage/FeatureFlags;

    invoke-interface {v0}, Landroid/app/usage/FeatureFlags;->getAppBytesByDataTypeApi()Z

    move-result v0

    return v0
.end method

.method public static greylist reportUsageStatsPermission()Z
    .locals 1

    sget-object v0, Landroid/app/usage/Flags;->FEATURE_FLAGS:Landroid/app/usage/FeatureFlags;

    invoke-interface {v0}, Landroid/app/usage/FeatureFlags;->reportUsageStatsPermission()Z

    move-result v0

    return v0
.end method

.method public static greylist useDedicatedHandlerThread()Z
    .locals 1

    sget-object v0, Landroid/app/usage/Flags;->FEATURE_FLAGS:Landroid/app/usage/FeatureFlags;

    invoke-interface {v0}, Landroid/app/usage/FeatureFlags;->useDedicatedHandlerThread()Z

    move-result v0

    return v0
.end method

.method public static greylist useParceledList()Z
    .locals 1

    sget-object v0, Landroid/app/usage/Flags;->FEATURE_FLAGS:Landroid/app/usage/FeatureFlags;

    invoke-interface {v0}, Landroid/app/usage/FeatureFlags;->useParceledList()Z

    move-result v0

    return v0
.end method

.method public static greylist userInteractionTypeApi()Z
    .locals 1

    sget-object v0, Landroid/app/usage/Flags;->FEATURE_FLAGS:Landroid/app/usage/FeatureFlags;

    invoke-interface {v0}, Landroid/app/usage/FeatureFlags;->userInteractionTypeApi()Z

    move-result v0

    return v0
.end method
