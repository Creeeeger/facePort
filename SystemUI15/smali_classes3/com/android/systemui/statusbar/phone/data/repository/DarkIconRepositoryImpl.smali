.class public final Lcom/android/systemui/statusbar/phone/data/repository/DarkIconRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/data/repository/DarkIconRepository;


# instance fields
.field public final darkState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mDarkChangeFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/data/repository/DarkIconRepositoryImpl;->darkState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method
