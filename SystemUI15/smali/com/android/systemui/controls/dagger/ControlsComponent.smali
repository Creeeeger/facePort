.class public final Lcom/android/systemui/controls/dagger/ControlsComponent;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final canShowWhileLockedSetting:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final controlsController:Ljava/util/Optional;

.field public final controlsListingController:Ljava/util/Optional;

.field public final controlsTileResourceConfiguration:Lcom/android/systemui/controls/controller/ControlsTileResourceConfigurationImpl;

.field public final controlsUiController:Ljava/util/Optional;

.field public final controlsUtil:Ljava/util/Optional;

.field public final featureEnabled:Z

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final secControlsController:Ljava/util/Optional;

.field public final secControlsUiController:Ljava/util/Optional;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(ZLdagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/controls/settings/ControlsSettingsRepository;Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Lcom/android/systemui/controls/settings/ControlsSettingsRepository;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/controls/controller/ControlsTileResourceConfigurationImpl;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/controls/dagger/ControlsComponent;->featureEnabled:Z

    iput-object p8, p0, Lcom/android/systemui/controls/dagger/ControlsComponent;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p9, p0, Lcom/android/systemui/controls/dagger/ControlsComponent;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p10, p0, Lcom/android/systemui/controls/dagger/ControlsComponent;->userTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-static {p1, p2}, Lcom/android/systemui/controls/dagger/ControlsComponent;->optionalIf(ZLdagger/Lazy;)Ljava/util/Optional;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/controls/dagger/ControlsComponent;->controlsController:Ljava/util/Optional;

    invoke-static {p1, p3}, Lcom/android/systemui/controls/dagger/ControlsComponent;->optionalIf(ZLdagger/Lazy;)Ljava/util/Optional;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/controls/dagger/ControlsComponent;->secControlsController:Ljava/util/Optional;

    invoke-static {p1, p4}, Lcom/android/systemui/controls/dagger/ControlsComponent;->optionalIf(ZLdagger/Lazy;)Ljava/util/Optional;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/controls/dagger/ControlsComponent;->controlsUiController:Ljava/util/Optional;

    invoke-static {p1, p5}, Lcom/android/systemui/controls/dagger/ControlsComponent;->optionalIf(ZLdagger/Lazy;)Ljava/util/Optional;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/controls/dagger/ControlsComponent;->secControlsUiController:Ljava/util/Optional;

    invoke-static {p1, p6}, Lcom/android/systemui/controls/dagger/ControlsComponent;->optionalIf(ZLdagger/Lazy;)Ljava/util/Optional;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/controls/dagger/ControlsComponent;->controlsListingController:Ljava/util/Optional;

    invoke-static {p1, p7}, Lcom/android/systemui/controls/dagger/ControlsComponent;->optionalIf(ZLdagger/Lazy;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/dagger/ControlsComponent;->controlsUtil:Ljava/util/Optional;

    check-cast p11, Lcom/android/systemui/controls/settings/ControlsSettingsRepositoryImpl;

    iget-object p1, p11, Lcom/android/systemui/controls/settings/ControlsSettingsRepositoryImpl;->canShowControlsInLockscreen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p1, p0, Lcom/android/systemui/controls/dagger/ControlsComponent;->canShowWhileLockedSetting:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p1, Lcom/android/systemui/controls/controller/ControlsTileResourceConfigurationImpl;

    invoke-direct {p1}, Lcom/android/systemui/controls/controller/ControlsTileResourceConfigurationImpl;-><init>()V

    invoke-virtual {p12, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/controls/controller/ControlsTileResourceConfigurationImpl;

    iput-object p1, p0, Lcom/android/systemui/controls/dagger/ControlsComponent;->controlsTileResourceConfiguration:Lcom/android/systemui/controls/controller/ControlsTileResourceConfigurationImpl;

    return-void
.end method

.method public static optionalIf(ZLdagger/Lazy;)Ljava/util/Optional;
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method
