.class public final Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlags; = null

.field public static final blacklist FLAG_BROADCAST_VISIBILITY_TYPES:Ljava/lang/String; = "android.media.tv.flags.broadcast_visibility_types"

.field public static final blacklist FLAG_ENABLE_AD_SERVICE_FW:Ljava/lang/String; = "android.media.tv.flags.enable_ad_service_fw"

.field public static final blacklist FLAG_TIAF_V_APIS:Ljava/lang/String; = "android.media.tv.flags.tiaf_v_apis"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist broadcastVisibilityTypes()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlags;->broadcastVisibilityTypes()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableAdServiceFw()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlags;->enableAdServiceFw()Z

    move-result v0

    return v0
.end method

.method public static blacklist tiafVApis()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlags;->tiafVApis()Z

    move-result v0

    return v0
.end method
