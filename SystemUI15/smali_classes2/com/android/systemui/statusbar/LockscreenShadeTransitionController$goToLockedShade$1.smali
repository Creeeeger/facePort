.class final Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$goToLockedShade$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$goToLockedShade$1;->this$0:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$goToLockedShade$1;->this$0:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->shadeLockscreenInteractorLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;

    const/4 p1, 0x0

    invoke-interface {p0, v0, v1, p1}, Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;->transitionToExpandedShade(JZ)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
