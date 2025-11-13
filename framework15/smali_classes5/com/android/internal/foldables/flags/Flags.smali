.class public final Lcom/android/internal/foldables/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/foldables/flags/FeatureFlags; = null

.field public static final blacklist FLAG_FOLD_GRACE_PERIOD_ENABLED:Ljava/lang/String; = "com.android.internal.foldables.flags.fold_grace_period_enabled"

.field public static final blacklist FLAG_FOLD_LOCK_SETTING_ENABLED:Ljava/lang/String; = "com.android.internal.foldables.flags.fold_lock_setting_enabled"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/foldables/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/foldables/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/foldables/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/foldables/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist foldGracePeriodEnabled()Z
    .locals 1

    sget-object v0, Lcom/android/internal/foldables/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/foldables/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/foldables/flags/FeatureFlags;->foldGracePeriodEnabled()Z

    move-result v0

    return v0
.end method

.method public static greylist foldLockSettingEnabled()Z
    .locals 1

    sget-object v0, Lcom/android/internal/foldables/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/foldables/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/foldables/flags/FeatureFlags;->foldLockSettingEnabled()Z

    move-result v0

    return v0
.end method
