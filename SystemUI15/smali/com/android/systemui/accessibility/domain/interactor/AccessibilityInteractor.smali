.class public final Lcom/android/systemui/accessibility/domain/interactor/AccessibilityInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final isEnabled:Lkotlinx/coroutines/flow/Flow;

.field public final isTouchExplorationEnabled:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/data/repository/AccessibilityRepository;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lcom/android/systemui/accessibility/data/repository/AccessibilityRepositoryImpl;

    iget-object v0, p1, Lcom/android/systemui/accessibility/data/repository/AccessibilityRepositoryImpl;->isTouchExplorationEnabled:Lkotlinx/coroutines/flow/Flow;

    iput-object v0, p0, Lcom/android/systemui/accessibility/domain/interactor/AccessibilityInteractor;->isTouchExplorationEnabled:Lkotlinx/coroutines/flow/Flow;

    iget-object p1, p1, Lcom/android/systemui/accessibility/data/repository/AccessibilityRepositoryImpl;->isEnabled:Lkotlinx/coroutines/flow/Flow;

    iput-object p1, p0, Lcom/android/systemui/accessibility/domain/interactor/AccessibilityInteractor;->isEnabled:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method
