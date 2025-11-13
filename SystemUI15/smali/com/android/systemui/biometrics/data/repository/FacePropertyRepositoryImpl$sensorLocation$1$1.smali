.class final Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl$sensorLocation$1$1;
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
.field synthetic F$0:F

.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field synthetic L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl$sensorLocation$1$1;->this$0:Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;

    const/4 p1, 0x5

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/graphics/Point;

    check-cast p2, Lcom/android/systemui/biometrics/shared/model/DisplayRotation;

    check-cast p3, Landroid/util/Size;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->floatValue()F

    move-result p4

    check-cast p5, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl$sensorLocation$1$1;

    iget-object p0, p0, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl$sensorLocation$1$1;->this$0:Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;

    invoke-direct {v0, p0, p5}, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl$sensorLocation$1$1;-><init>(Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl$sensorLocation$1$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl$sensorLocation$1$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl$sensorLocation$1$1;->L$2:Ljava/lang/Object;

    iput p4, v0, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl$sensorLocation$1$1;->F$0:F

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl$sensorLocation$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl$sensorLocation$1$1;->label:I

    if-nez v0, :cond_5

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl$sensorLocation$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Point;

    iget-object v0, p0, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl$sensorLocation$1$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/biometrics/shared/model/DisplayRotation;

    iget-object v1, p0, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl$sensorLocation$1$1;->L$2:Ljava/lang/Object;

    check-cast v1, Landroid/util/Size;

    iget v2, p0, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl$sensorLocation$1$1;->F$0:F

    iget-object p0, p0, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl$sensorLocation$1$1;->this$0:Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    new-instance p0, Landroid/graphics/Point;

    iget v3, p1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    mul-float/2addr p1, v2

    float-to-int p1, p1

    invoke-direct {p0, v3, p1}, Landroid/graphics/Point;-><init>(II)V

    sget-object p1, Lcom/android/systemui/biometrics/shared/model/DisplayRotationKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result p1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {p0, v0, p1, v1}, Landroid/util/RotationUtils;->rotatePoint(Landroid/graphics/Point;III)V

    :goto_1
    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
