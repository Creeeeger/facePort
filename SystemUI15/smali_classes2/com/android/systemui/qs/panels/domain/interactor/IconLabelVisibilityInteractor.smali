.class public final Lcom/android/systemui/qs/panels/domain/interactor/IconLabelVisibilityInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final logBuffer:Lcom/android/systemui/log/LogBuffer;

.field public final preferencesInteractor:Lcom/android/systemui/qs/panels/domain/interactor/QSPreferencesInteractor;

.field public final showLabels:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/panels/domain/interactor/IconLabelVisibilityInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/panels/domain/interactor/IconLabelVisibilityInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/panels/domain/interactor/QSPreferencesInteractor;Lcom/android/systemui/log/LogBuffer;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/panels/domain/interactor/IconLabelVisibilityInteractor;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    new-instance p2, Lcom/android/systemui/qs/panels/domain/interactor/IconLabelVisibilityInteractor$showLabels$1;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/qs/panels/domain/interactor/IconLabelVisibilityInteractor$showLabels$1;-><init>(Lcom/android/systemui/qs/panels/domain/interactor/IconLabelVisibilityInteractor;Lkotlin/coroutines/Continuation;)V

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    iget-object p1, p1, Lcom/android/systemui/qs/panels/domain/interactor/QSPreferencesInteractor;->showLabels:Lkotlinx/coroutines/flow/Flow;

    invoke-direct {v0, p1, p2}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    sget-object p1, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, p3, p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/panels/domain/interactor/IconLabelVisibilityInteractor;->showLabels:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method
