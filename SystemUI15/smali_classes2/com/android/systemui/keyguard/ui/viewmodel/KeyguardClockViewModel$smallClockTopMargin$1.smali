.class final Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$smallClockTopMargin$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$smallClockTopMargin$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Unit;

    check-cast p2, Lcom/android/systemui/shade/shared/model/ShadeMode;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance p1, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$smallClockTopMargin$1;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$smallClockTopMargin$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;

    invoke-direct {p1, p0, p3}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$smallClockTopMargin$1;-><init>(Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;Lkotlin/coroutines/Continuation;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$smallClockTopMargin$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$smallClockTopMargin$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$smallClockTopMargin$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;->systemBarUtils:Lcom/android/systemui/statusbar/ui/SystemBarUtilsProxy;

    check-cast p1, Lcom/android/systemui/statusbar/ui/SystemBarUtilsProxyImpl;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ui/SystemBarUtilsProxyImpl;->getStatusBarHeaderHeightKeyguard()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;->shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    check-cast v0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object v0, v0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {v0}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->getShadeMode()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/shade/shared/model/ShadeMode$Split;->INSTANCE:Lcom/android/systemui/shade/shared/model/ShadeMode$Split;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;->resources:Landroid/content/res/Resources;

    const p1, 0x7f07050d

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-static {}, Lcom/android/systemui/Flags;->composeLockscreen()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;->resources:Landroid/content/res/Resources;

    const v0, 0x7f07049f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-static {}, Lcom/android/systemui/Flags;->composeLockscreen()V

    add-int/2addr p0, p1

    :goto_0
    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
