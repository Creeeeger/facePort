.class final Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGoneTransitionViewModel$lockscreenAlpha$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $startAlpha:Lkotlin/jvm/internal/Ref$FloatRef;

.field final synthetic $viewState:Lcom/android/systemui/keyguard/ui/viewmodel/ViewStateAccessor;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$FloatRef;Lcom/android/systemui/keyguard/ui/viewmodel/ViewStateAccessor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGoneTransitionViewModel$lockscreenAlpha$2;->$startAlpha:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGoneTransitionViewModel$lockscreenAlpha$2;->$viewState:Lcom/android/systemui/keyguard/ui/viewmodel/ViewStateAccessor;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGoneTransitionViewModel$lockscreenAlpha$2;->$startAlpha:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToGoneTransitionViewModel$lockscreenAlpha$2;->$viewState:Lcom/android/systemui/keyguard/ui/viewmodel/ViewStateAccessor;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/ViewStateAccessor;->alpha:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    iput p0, v0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
