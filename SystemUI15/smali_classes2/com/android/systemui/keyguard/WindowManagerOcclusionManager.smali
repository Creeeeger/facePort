.class public final Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$Companion;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final activityTransitionAnimator:Lcom/android/systemui/animation/ActivityTransitionAnimator;

.field public final context:Landroid/content/Context;

.field public final interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

.field public final keyguardOcclusionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor;

.field public final keyguardViewController:Ldagger/Lazy;

.field public final occludeAnimationController:Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$occludeAnimationController$1;

.field public occludeAnimationFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

.field public final occludeAnimationRunner:Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$occludeAnimationRunner$1;

.field public final powerButtonY:I

.field public unoccludeAnimationFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

.field public final unoccludeAnimationRunner:Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1;

.field public final windowCornerRadius:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;->Companion:Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$Companion;

    const-string v0, "WindowManagerOcclusion"

    sput-object v0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor;Lcom/android/systemui/animation/ActivityTransitionAnimator;Ldagger/Lazy;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Landroid/content/Context;Lcom/android/internal/jank/InteractionJankMonitor;Ljava/util/concurrent/Executor;Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor;",
            "Lcom/android/systemui/animation/ActivityTransitionAnimator;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/power/domain/interactor/PowerInteractor;",
            "Landroid/content/Context;",
            "Lcom/android/internal/jank/InteractionJankMonitor;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;->keyguardOcclusionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor;

    iput-object p2, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;->activityTransitionAnimator:Lcom/android/systemui/animation/ActivityTransitionAnimator;

    iput-object p3, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;->keyguardViewController:Ldagger/Lazy;

    iput-object p5, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;->context:Landroid/content/Context;

    iput-object p6, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;->interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070c92

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;->powerButtonY:I

    invoke-static {p5}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;->windowCornerRadius:F

    new-instance p1, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$occludeAnimationRunner$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$occludeAnimationRunner$1;-><init>(Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;)V

    new-instance p1, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1;

    invoke-direct {p1, p0, p7}, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1;-><init>(Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;Ljava/util/concurrent/Executor;)V

    new-instance p1, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$occludeAnimationController$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$occludeAnimationController$1;-><init>(Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;)V

    iput-object p1, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;->occludeAnimationController:Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$occludeAnimationController$1;

    return-void
.end method

.method public static synthetic getOccludeAnimationController$annotations()V
    .locals 0

    return-void
.end method
