.class public final Lcom/android/internal/os/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/os/FeatureFlags; = null

.field public static final blacklist FLAG_ENABLE_APACHE_HTTP_LEGACY_PRELOAD:Ljava/lang/String; = "com.android.internal.os.enable_apache_http_legacy_preload"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/os/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/os/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/os/Flags;->FEATURE_FLAGS:Lcom/android/internal/os/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist enableApacheHttpLegacyPreload()Z
    .locals 1

    sget-object v0, Lcom/android/internal/os/Flags;->FEATURE_FLAGS:Lcom/android/internal/os/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/os/FeatureFlags;->enableApacheHttpLegacyPreload()Z

    move-result v0

    return v0
.end method
