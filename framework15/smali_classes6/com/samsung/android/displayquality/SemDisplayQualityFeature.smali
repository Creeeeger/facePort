.class public Lcom/samsung/android/displayquality/SemDisplayQualityFeature;
.super Ljava/lang/Object;
.source "SemDisplayQualityFeature.java"


# static fields
.field public static final blacklist ADAPTIVE_SYNC_SUPPORT:Z

.field public static final blacklist DP_BACKOFF_SUPPORT:Z

.field public static final blacklist DP_DEBUG_SUPPORT:Z

.field public static final blacklist DP_RATIO_SUPPORT:Z

.field private static final blacklist DQ_SVC_FEATURE:Ljava/lang/String; = "LSI,dp_debug"

.field public static final blacklist ENABLED:Z

.field public static final blacklist HAL_SUPPORT:Z

.field private static final blacklist HAS_OPTION:Z

.field public static final blacklist LTM_SUPPORT:Z

.field public static final blacklist OUTDOOR_VISIBILITY_SUPPORT:Z

.field public static final blacklist PLATFORM:Ljava/lang/String;

.field public static final blacklist SVI_SUPPORT:Z

.field public static final blacklist VIVID_PLUS_SUPPORT:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 6

    const-string v0, "QCT"

    const-string v1, "LSI,dp_debug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "MTK"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    const-string v0, "LSI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v4

    :goto_1
    sput-boolean v0, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->ENABLED:Z

    sget-boolean v0, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->ENABLED:Z

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x3

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    const-string v0, ""

    :goto_2
    sput-object v0, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->PLATFORM:Ljava/lang/String;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-le v0, v4, :cond_3

    move v0, v4

    goto :goto_3

    :cond_3
    move v0, v3

    :goto_3
    sput-boolean v0, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->HAS_OPTION:Z

    const-string v0, "outdoor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_4
    move v3, v4

    goto :goto_5

    :cond_4
    sget-object v0, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->HAS_OPTION:Z

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    :goto_5
    sput-boolean v3, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->OUTDOOR_VISIBILITY_SUPPORT:Z

    const-string v0, "adaptivesync"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->ADAPTIVE_SYNC_SUPPORT:Z

    const-string v0, "ltm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->LTM_SUPPORT:Z

    const-string v0, "svi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->SVI_SUPPORT:Z

    const-string v0, "hal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->HAL_SUPPORT:Z

    const-string v0, "vividplus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->VIVID_PLUS_SUPPORT:Z

    const-string v0, "dp_ratio"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->DP_RATIO_SUPPORT:Z

    const-string v0, "dp_debug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->DP_DEBUG_SUPPORT:Z

    const-string v0, "dp_backoff"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->DP_BACKOFF_SUPPORT:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
