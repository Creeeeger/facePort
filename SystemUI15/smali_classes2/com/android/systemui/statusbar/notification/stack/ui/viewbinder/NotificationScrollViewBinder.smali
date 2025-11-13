.class public final Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/NotificationScrollViewBinder;
.super Lcom/android/systemui/util/kotlin/FlowDumperImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final configuration:Lcom/android/systemui/common/ui/ConfigurationState;

.field public final view:Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationScrollView;

.field public final viewLeftOffset:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final viewModel:Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dump/DumpManager;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationScrollView;Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel;Lcom/android/systemui/common/ui/ConfigurationState;)V
    .locals 0

    const/4 p2, 0x0

    const/4 p3, 0x2

    invoke-direct {p0, p1, p2, p3, p2}, Lcom/android/systemui/util/kotlin/FlowDumperImpl;-><init>(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    const-string/jumbo p2, "viewLeftOffset"

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/kotlin/FlowDumperImpl;->dumpValue(Lkotlinx/coroutines/flow/StateFlow;Ljava/lang/String;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/flow/MutableStateFlow;

    return-void
.end method
