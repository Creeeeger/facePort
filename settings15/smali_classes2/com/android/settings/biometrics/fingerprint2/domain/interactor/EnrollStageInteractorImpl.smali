.class public final Lcom/android/settings/biometrics/fingerprint2/domain/interactor/EnrollStageInteractorImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final enrollStageThresholds:Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    sget-object v0, Lcom/android/settings/biometrics/fingerprint2/data/model/EnrollStageModel$Center;->INSTANCE:Lcom/android/settings/biometrics/fingerprint2/data/model/EnrollStageModel$Center;

    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, p0, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const p0, 0x3d851eb8    # 0.065f

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    sget-object v0, Lcom/android/settings/biometrics/fingerprint2/data/model/EnrollStageModel$Guided;->INSTANCE:Lcom/android/settings/biometrics/fingerprint2/data/model/EnrollStageModel$Guided;

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, p0, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const p0, 0x3ef5c28f    # 0.48f

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    sget-object v0, Lcom/android/settings/biometrics/fingerprint2/data/model/EnrollStageModel$Fingertip;->INSTANCE:Lcom/android/settings/biometrics/fingerprint2/data/model/EnrollStageModel$Fingertip;

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, p0, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const p0, 0x3f158106    # 0.584f

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    sget-object v0, Lcom/android/settings/biometrics/fingerprint2/data/model/EnrollStageModel$LeftEdge;->INSTANCE:Lcom/android/settings/biometrics/fingerprint2/data/model/EnrollStageModel$LeftEdge;

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, p0, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const p0, 0x3f4ac083    # 0.792f

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    sget-object v0, Lcom/android/settings/biometrics/fingerprint2/data/model/EnrollStageModel$RightEdge;->INSTANCE:Lcom/android/settings/biometrics/fingerprint2/data/model/EnrollStageModel$RightEdge;

    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, p0, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1, v2, v3, v4, v5}, [Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    return-void
.end method
