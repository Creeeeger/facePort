.class final Lcom/android/systemui/biometrics/ui/binder/BiometricCustomizedViewBinder$bind$1;
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
.field final synthetic $contentView:Landroid/hardware/biometrics/PromptContentView;

.field final synthetic $legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;

.field synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Landroid/hardware/biometrics/PromptContentView;Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/biometrics/PromptContentView;",
            "Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricCustomizedViewBinder$bind$1;->$contentView:Landroid/hardware/biometrics/PromptContentView;

    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricCustomizedViewBinder$bind$1;->$legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    check-cast p2, Landroid/view/View;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance p1, Lcom/android/systemui/biometrics/ui/binder/BiometricCustomizedViewBinder$bind$1;

    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricCustomizedViewBinder$bind$1;->$contentView:Landroid/hardware/biometrics/PromptContentView;

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricCustomizedViewBinder$bind$1;->$legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;

    invoke-direct {p1, v0, p0, p3}, Lcom/android/systemui/biometrics/ui/binder/BiometricCustomizedViewBinder$bind$1;-><init>(Landroid/hardware/biometrics/PromptContentView;Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;Lkotlin/coroutines/Continuation;)V

    iput-object p2, p1, Lcom/android/systemui/biometrics/ui/binder/BiometricCustomizedViewBinder$bind$1;->L$0:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lcom/android/systemui/biometrics/ui/binder/BiometricCustomizedViewBinder$bind$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricCustomizedViewBinder$bind$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricCustomizedViewBinder$bind$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricCustomizedViewBinder$bind$1;->$contentView:Landroid/hardware/biometrics/PromptContentView;

    if-nez v0, :cond_0

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    new-instance v1, Lcom/android/systemui/biometrics/ui/binder/BiometricCustomizedViewBinder$bind$1$1;

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricCustomizedViewBinder$bind$1;->$legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;

    invoke-direct {v1, p1, v0, p0}, Lcom/android/systemui/biometrics/ui/binder/BiometricCustomizedViewBinder$bind$1$1;-><init>(Landroid/view/View;Landroid/hardware/biometrics/PromptContentView;Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/biometrics/ui/binder/BiometricCustomizedViewBinderKt$width$1;

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/biometrics/ui/binder/BiometricCustomizedViewBinderKt$width$1;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
