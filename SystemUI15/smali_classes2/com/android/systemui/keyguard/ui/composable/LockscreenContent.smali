.class public final Lcom/android/systemui/keyguard/ui/composable/LockscreenContent;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final blueprintByBlueprintId$delegate:Lkotlin/Lazy;

.field public final blueprints:Ljava/util/Set;

.field public final clockInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;

.field public final viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenContentViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenContentViewModel;Ljava/util/Set;Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenContentViewModel;",
            "Ljava/util/Set<",
            "Lcom/android/systemui/keyguard/ui/composable/blueprint/ComposableLockscreenSceneBlueprint;",
            ">;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/composable/LockscreenContent;->blueprints:Ljava/util/Set;

    new-instance p1, Lcom/android/systemui/keyguard/ui/composable/LockscreenContent$blueprintByBlueprintId$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/ui/composable/LockscreenContent$blueprintByBlueprintId$2;-><init>(Lcom/android/systemui/keyguard/ui/composable/LockscreenContent;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    return-void
.end method
