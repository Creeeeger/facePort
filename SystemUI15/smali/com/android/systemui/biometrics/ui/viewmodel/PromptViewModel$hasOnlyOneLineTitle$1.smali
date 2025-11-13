.class final Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$hasOnlyOneLineTitle$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function5;"
    }
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field synthetic L$2:Ljava/lang/Object;

.field synthetic L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$hasOnlyOneLineTitle$1;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    const/4 p1, 0x5

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Landroid/hardware/biometrics/PromptContentView;

    check-cast p4, Ljava/lang/String;

    check-cast p5, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$hasOnlyOneLineTitle$1;

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$hasOnlyOneLineTitle$1;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    invoke-direct {v0, p0, p5}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$hasOnlyOneLineTitle$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$hasOnlyOneLineTitle$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$hasOnlyOneLineTitle$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$hasOnlyOneLineTitle$1;->L$2:Ljava/lang/Object;

    iput-object p4, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$hasOnlyOneLineTitle$1;->L$3:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$hasOnlyOneLineTitle$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$hasOnlyOneLineTitle$1;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$hasOnlyOneLineTitle$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$hasOnlyOneLineTitle$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$hasOnlyOneLineTitle$1;->L$2:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/biometrics/PromptContentView;

    iget-object v2, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$hasOnlyOneLineTitle$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v3, 0x0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$hasOnlyOneLineTitle$1;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v0, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$hasOnlyOneLineTitle$1;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->context:Landroid/content/Context;

    const v1, 0x1010095

    filled-new-array {v1}, [I

    move-result-object v1

    const v2, 0x7f140432

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    invoke-virtual {p0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    int-to-float p0, v0

    div-float/2addr p1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_2

    const/4 v3, 0x1

    :cond_2
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
