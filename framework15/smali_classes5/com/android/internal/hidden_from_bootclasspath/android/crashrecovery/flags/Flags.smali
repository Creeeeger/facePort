.class public final Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/FeatureFlags; = null

.field public static final blacklist FLAG_ALLOW_RESCUE_PARTY_FLAG_RESETS:Ljava/lang/String; = "android.crashrecovery.flags.allow_rescue_party_flag_resets"

.field public static final blacklist FLAG_ENABLE_CRASHRECOVERY:Ljava/lang/String; = "android.crashrecovery.flags.enable_crashrecovery"

.field public static final blacklist FLAG_RECOVERABILITY_DETECTION:Ljava/lang/String; = "android.crashrecovery.flags.recoverability_detection"

.field public static final blacklist FLAG_REENABLE_SETTINGS_RESETS:Ljava/lang/String; = "android.crashrecovery.flags.reenable_settings_resets"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist allowRescuePartyFlagResets()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/FeatureFlags;->allowRescuePartyFlagResets()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableCrashrecovery()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/FeatureFlags;->enableCrashrecovery()Z

    move-result v0

    return v0
.end method

.method public static blacklist recoverabilityDetection()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/FeatureFlags;->recoverabilityDetection()Z

    move-result v0

    return v0
.end method

.method public static blacklist reenableSettingsResets()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/FeatureFlags;->reenableSettingsResets()Z

    move-result v0

    return v0
.end method
