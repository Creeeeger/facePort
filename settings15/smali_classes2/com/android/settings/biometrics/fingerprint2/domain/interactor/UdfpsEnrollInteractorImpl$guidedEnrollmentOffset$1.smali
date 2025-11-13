.class final Lcom/android/settings/biometrics/fingerprint2/domain/interactor/UdfpsEnrollInteractorImpl$guidedEnrollmentOffset$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function4;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Landroid/graphics/PointF;",
        "point",
        "accessibilityEnabled",
        "",
        "guidedEnrollmentEnabled"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic Z$0:Z

.field synthetic Z$1:Z

.field label:I


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/graphics/PointF;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p4, Lkotlin/coroutines/Continuation;

    new-instance p3, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/UdfpsEnrollInteractorImpl$guidedEnrollmentOffset$1;

    const/4 v0, 0x4

    invoke-direct {p3, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    iput-object p1, p3, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/UdfpsEnrollInteractorImpl$guidedEnrollmentOffset$1;->L$0:Ljava/lang/Object;

    iput-boolean p0, p3, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/UdfpsEnrollInteractorImpl$guidedEnrollmentOffset$1;->Z$0:Z

    iput-boolean p2, p3, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/UdfpsEnrollInteractorImpl$guidedEnrollmentOffset$1;->Z$1:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p3, p0}, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/UdfpsEnrollInteractorImpl$guidedEnrollmentOffset$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/UdfpsEnrollInteractorImpl$guidedEnrollmentOffset$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/UdfpsEnrollInteractorImpl$guidedEnrollmentOffset$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/PointF;

    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/UdfpsEnrollInteractorImpl$guidedEnrollmentOffset$1;->Z$0:Z

    iget-boolean p0, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/UdfpsEnrollInteractorImpl$guidedEnrollmentOffset$1;->Z$1:Z

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/graphics/PointF;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr p1, v1

    invoke-direct {p0, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0

    :cond_1
    :goto_0
    new-instance p0, Landroid/graphics/PointF;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
