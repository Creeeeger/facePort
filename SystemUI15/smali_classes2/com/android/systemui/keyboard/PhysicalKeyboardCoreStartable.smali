.class public final Lcom/android/systemui/keyboard/PhysicalKeyboardCoreStartable;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final featureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final keyboardBacklightDialogCoordinator:Ldagger/Lazy;

.field public final stickyKeysIndicatorCoordinator:Ldagger/Lazy;


# direct methods
.method public constructor <init>(Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/flags/FeatureFlags;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyboard/PhysicalKeyboardCoreStartable;->keyboardBacklightDialogCoordinator:Ldagger/Lazy;

    iput-object p2, p0, Lcom/android/systemui/keyboard/PhysicalKeyboardCoreStartable;->stickyKeysIndicatorCoordinator:Ldagger/Lazy;

    iput-object p4, p0, Lcom/android/systemui/keyboard/PhysicalKeyboardCoreStartable;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 2

    sget-object v0, Lcom/android/systemui/flags/Flags;->KEYBOARD_BACKLIGHT_INDICATOR:Lcom/android/systemui/flags/ReleasedFlag;

    iget-object v1, p0, Lcom/android/systemui/keyboard/PhysicalKeyboardCoreStartable;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    check-cast v1, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;

    invoke-virtual {v1, v0}, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyboard/PhysicalKeyboardCoreStartable;->keyboardBacklightDialogCoordinator:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyboard/backlight/ui/KeyboardBacklightDialogCoordinator;

    invoke-virtual {v0}, Lcom/android/systemui/keyboard/backlight/ui/KeyboardBacklightDialogCoordinator;->startListening()V

    :cond_0
    invoke-static {}, Landroid/hardware/input/InputSettings;->isAccessibilityStickyKeysFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/keyboard/PhysicalKeyboardCoreStartable;->stickyKeysIndicatorCoordinator:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyboard/stickykeys/ui/StickyKeysIndicatorCoordinator;

    invoke-virtual {p0}, Lcom/android/systemui/keyboard/stickykeys/ui/StickyKeysIndicatorCoordinator;->startListening()V

    :cond_1
    sget-object p0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
