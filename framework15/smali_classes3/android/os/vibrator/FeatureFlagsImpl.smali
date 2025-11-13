.class public final Landroid/os/vibrator/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Landroid/os/vibrator/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist adaptiveHapticsEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist hapticFeedbackVibrationOemCustomizationEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist keyboardCategoryEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist useVibratorHapticFeedback()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
