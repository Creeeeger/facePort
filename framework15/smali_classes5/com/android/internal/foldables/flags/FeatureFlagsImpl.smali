.class public final Lcom/android/internal/foldables/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/foldables/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist foldGracePeriodEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist foldLockSettingEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
