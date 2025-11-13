.class public Landroid/os/vibrator/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Landroid/os/vibrator/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/os/vibrator/FeatureFlags;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mReadOnlyFlagsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/function/BiPredicate;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/os/vibrator/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "android.os.vibrator.use_vibrator_haptic_feedback"

    const-string v2, ""

    const-string v3, "android.os.vibrator.adaptive_haptics_enabled"

    const-string v4, "android.os.vibrator.haptic_feedback_vibration_oem_customization_enabled"

    const-string v5, "android.os.vibrator.keyboard_category_enabled"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/os/vibrator/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    iput-object p1, p0, Landroid/os/vibrator/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist adaptiveHapticsEnabled()Z
    .locals 2

    new-instance v0, Landroid/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.os.vibrator.adaptive_haptics_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/os/vibrator/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "android.os.vibrator.keyboard_category_enabled"

    const-string v1, "android.os.vibrator.use_vibrator_haptic_feedback"

    const-string v2, "android.os.vibrator.adaptive_haptics_enabled"

    const-string v3, "android.os.vibrator.haptic_feedback_vibration_oem_customization_enabled"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/os/vibrator/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/vibrator/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist hapticFeedbackVibrationOemCustomizationEnabled()Z
    .locals 2

    new-instance v0, Landroid/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.os.vibrator.haptic_feedback_vibration_oem_customization_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/os/vibrator/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/os/vibrator/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/os/vibrator/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist keyboardCategoryEnabled()Z
    .locals 2

    new-instance v0, Landroid/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.os.vibrator.keyboard_category_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/os/vibrator/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist useVibratorHapticFeedback()Z
    .locals 2

    new-instance v0, Landroid/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.os.vibrator.use_vibrator_haptic_feedback"

    invoke-virtual {p0, v1, v0}, Landroid/os/vibrator/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
