.class public final Lcom/android/server/feature/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/server/feature/flags/FeatureFlags; = null

.field public static final blacklist FLAG_ENABLE_READ_DROPBOX_PERMISSION:Ljava/lang/String; = "com.android.server.feature.flags.enable_read_dropbox_permission"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/feature/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/server/feature/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/server/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/feature/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist enableReadDropboxPermission()Z
    .locals 1

    sget-object v0, Lcom/android/server/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/feature/flags/FeatureFlags;->enableReadDropboxPermission()Z

    move-result v0

    return v0
.end method
