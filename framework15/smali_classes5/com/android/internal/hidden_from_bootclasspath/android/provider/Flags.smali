.class public final Lcom/android/internal/hidden_from_bootclasspath/android/provider/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/provider/FeatureFlags; = null

.field public static final blacklist FLAG_A11Y_STANDALONE_GESTURE_ENABLED:Ljava/lang/String; = "android.provider.a11y_standalone_gesture_enabled"

.field public static final blacklist FLAG_BACKUP_TASKS_SETTINGS_SCREEN:Ljava/lang/String; = "android.provider.backup_tasks_settings_screen"

.field public static final blacklist FLAG_SYSTEM_SETTINGS_DEFAULT:Ljava/lang/String; = "android.provider.system_settings_default"

.field public static final blacklist FLAG_USER_KEYS:Ljava/lang/String; = "android.provider.user_keys"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/provider/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist a11yStandaloneGestureEnabled()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/provider/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/FeatureFlags;->a11yStandaloneGestureEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist backupTasksSettingsScreen()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/provider/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/FeatureFlags;->backupTasksSettingsScreen()Z

    move-result v0

    return v0
.end method

.method public static blacklist systemSettingsDefault()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/provider/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/FeatureFlags;->systemSettingsDefault()Z

    move-result v0

    return v0
.end method

.method public static blacklist userKeys()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/provider/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/FeatureFlags;->userKeys()Z

    move-result v0

    return v0
.end method
