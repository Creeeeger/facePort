.class public final Lcom/android/systemui/brightness/domain/interactor/ScreenBrightnessInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final gammaBrightness:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final maxGammaBrightness:I

.field public final screenBrightnessRepository:Lcom/android/systemui/brightness/data/repository/ScreenBrightnessRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/brightness/domain/interactor/ScreenBrightnessInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/brightness/domain/interactor/ScreenBrightnessInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/brightness/data/repository/ScreenBrightnessRepository;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/log/table/TableLogBuffer;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xffff

    iput v0, p0, Lcom/android/systemui/brightness/domain/interactor/ScreenBrightnessInteractor;->maxGammaBrightness:I

    check-cast p1, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository;

    iget-object v0, p1, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository;->linearBrightness:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v1, p1, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository;->minLinearBrightness:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v2, Lcom/android/systemui/brightness/domain/interactor/ScreenBrightnessInteractor$gammaBrightness$1$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/brightness/domain/interactor/ScreenBrightnessInteractor$gammaBrightness$1$1;-><init>(Lcom/android/systemui/brightness/domain/interactor/ScreenBrightnessInteractor;Lkotlin/coroutines/Continuation;)V

    iget-object p1, p1, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository;->maxLinearBrightness:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v0, v1, p1, v2}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/android/systemui/brightness/shared/model/GammaBrightnessKt;->logDiffForTable-GAU2kQA(Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;Lcom/android/systemui/log/table/TableLogBuffer;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v0, 0x3

    invoke-static {p3, v0}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/systemui/brightness/shared/model/GammaBrightness;->box-impl(I)Lcom/android/systemui/brightness/shared/model/GammaBrightness;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/brightness/domain/interactor/ScreenBrightnessInteractor;->gammaBrightness:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method
