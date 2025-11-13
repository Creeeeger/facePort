.class final Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$isSecureCameraActive$2;
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
.field final synthetic this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$isSecureCameraActive$2;->this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$isSecureCameraActive$2;->this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    iget-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isKeyguardVisible:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    new-instance v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$isSecureCameraActive$2$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$isSecureCameraActive$2$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iget-object v3, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->onCameraLaunchDetected:Lkotlinx/coroutines/flow/Flow;

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->primaryBouncerShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v0, p0, v3, v1}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$isSecureCameraActive$2$2;

    invoke-direct {v0, v2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$isSecureCameraActive$2$2;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v1, v0, p0}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    return-object v1
.end method
