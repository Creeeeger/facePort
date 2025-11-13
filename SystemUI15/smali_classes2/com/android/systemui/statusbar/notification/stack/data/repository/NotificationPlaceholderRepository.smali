.class public final Lcom/android/systemui/statusbar/notification/stack/data/repository/NotificationPlaceholderRepository;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final alphaForBrightnessMirror:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final constrainedAvailableSpace:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final scrolledToTop:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final shadeScrimBounds:Lkotlinx/coroutines/flow/StateFlowImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/data/repository/NotificationPlaceholderRepository;->alphaForBrightnessMirror:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/data/repository/NotificationPlaceholderRepository;->shadeScrimBounds:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/data/repository/NotificationPlaceholderRepository;->constrainedAvailableSpace:Lkotlinx/coroutines/flow/StateFlowImpl;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/data/repository/NotificationPlaceholderRepository;->scrolledToTop:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-void
.end method
