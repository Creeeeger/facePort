.class public final Landroid/webkit/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/webkit/FeatureFlags; = null

.field public static final blacklist FLAG_UPDATE_SERVICE_IPC_WRAPPER:Ljava/lang/String; = "android.webkit.update_service_ipc_wrapper"

.field public static final blacklist FLAG_UPDATE_SERVICE_V2:Ljava/lang/String; = "android.webkit.update_service_v2"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/webkit/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/webkit/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/webkit/Flags;->FEATURE_FLAGS:Landroid/webkit/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist updateServiceIpcWrapper()Z
    .locals 1

    sget-object v0, Landroid/webkit/Flags;->FEATURE_FLAGS:Landroid/webkit/FeatureFlags;

    invoke-interface {v0}, Landroid/webkit/FeatureFlags;->updateServiceIpcWrapper()Z

    move-result v0

    return v0
.end method

.method public static greylist updateServiceV2()Z
    .locals 1

    sget-object v0, Landroid/webkit/Flags;->FEATURE_FLAGS:Landroid/webkit/FeatureFlags;

    invoke-interface {v0}, Landroid/webkit/FeatureFlags;->updateServiceV2()Z

    move-result v0

    return v0
.end method
