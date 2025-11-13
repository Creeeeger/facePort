.class public final Lcom/android/systemui/common/ui/compose/SelectedUserAwareInputConnectionKt$SelectedUserAwareInputConnection$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/ui/platform/PlatformTextInputInterceptor;


# instance fields
.field public final synthetic $selectedUserId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/common/ui/compose/SelectedUserAwareInputConnectionKt$SelectedUserAwareInputConnection$1$1;->$selectedUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final interceptStartInputMethod(Landroidx/compose/ui/platform/PlatformTextInputMethodRequest;Landroidx/compose/ui/platform/PlatformTextInputSession;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;
    .locals 4

    instance-of v0, p3, Lcom/android/systemui/common/ui/compose/SelectedUserAwareInputConnectionKt$SelectedUserAwareInputConnection$1$1$interceptStartInputMethod$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/android/systemui/common/ui/compose/SelectedUserAwareInputConnectionKt$SelectedUserAwareInputConnection$1$1$interceptStartInputMethod$1;

    iget v1, v0, Lcom/android/systemui/common/ui/compose/SelectedUserAwareInputConnectionKt$SelectedUserAwareInputConnection$1$1$interceptStartInputMethod$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/common/ui/compose/SelectedUserAwareInputConnectionKt$SelectedUserAwareInputConnection$1$1$interceptStartInputMethod$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/common/ui/compose/SelectedUserAwareInputConnectionKt$SelectedUserAwareInputConnection$1$1$interceptStartInputMethod$1;

    invoke-direct {v0, p0, p3}, Lcom/android/systemui/common/ui/compose/SelectedUserAwareInputConnectionKt$SelectedUserAwareInputConnection$1$1$interceptStartInputMethod$1;-><init>(Lcom/android/systemui/common/ui/compose/SelectedUserAwareInputConnectionKt$SelectedUserAwareInputConnection$1$1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/android/systemui/common/ui/compose/SelectedUserAwareInputConnectionKt$SelectedUserAwareInputConnection$1$1$interceptStartInputMethod$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/common/ui/compose/SelectedUserAwareInputConnectionKt$SelectedUserAwareInputConnection$1$1$interceptStartInputMethod$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p3, Lcom/android/systemui/common/ui/compose/SelectedUserAwareInputConnectionKt$SelectedUserAwareInputConnection$1$1$modifiedRequest$1;

    iget p0, p0, Lcom/android/systemui/common/ui/compose/SelectedUserAwareInputConnectionKt$SelectedUserAwareInputConnection$1$1;->$selectedUserId:I

    invoke-direct {p3, p1, p0}, Lcom/android/systemui/common/ui/compose/SelectedUserAwareInputConnectionKt$SelectedUserAwareInputConnection$1$1$modifiedRequest$1;-><init>(Landroidx/compose/ui/platform/PlatformTextInputMethodRequest;I)V

    iput v3, v0, Lcom/android/systemui/common/ui/compose/SelectedUserAwareInputConnectionKt$SelectedUserAwareInputConnection$1$1$interceptStartInputMethod$1;->label:I

    invoke-interface {p2, p3, v0}, Landroidx/compose/ui/platform/PlatformTextInputSession;->startInputMethod(Landroidx/compose/ui/platform/PlatformTextInputMethodRequest;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method
