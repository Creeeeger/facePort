.class public final Lcom/android/internal/hidden_from_bootclasspath/android/app/job/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/job/FeatureFlags; = null

.field public static final blacklist FLAG_BACKUP_JOBS_EXEMPTION:Ljava/lang/String; = "android.app.job.backup_jobs_exemption"

.field public static final blacklist FLAG_ENFORCE_MINIMUM_TIME_WINDOWS:Ljava/lang/String; = "android.app.job.enforce_minimum_time_windows"

.field public static final blacklist FLAG_JOB_DEBUG_INFO_APIS:Ljava/lang/String; = "android.app.job.job_debug_info_apis"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/job/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist backupJobsExemption()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/job/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/FeatureFlags;->backupJobsExemption()Z

    move-result v0

    return v0
.end method

.method public static blacklist enforceMinimumTimeWindows()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/job/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/FeatureFlags;->enforceMinimumTimeWindows()Z

    move-result v0

    return v0
.end method

.method public static blacklist jobDebugInfoApis()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/job/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/FeatureFlags;->jobDebugInfoApis()Z

    move-result v0

    return v0
.end method
