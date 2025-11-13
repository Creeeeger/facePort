.class public final Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepository;


# instance fields
.field public final enableLog:Z

.field public final knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

.field public final knoxStatusBarControlModel:Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;

.field public final knoxStatusBarState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/knox/KnoxStateMonitor;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;->enableLog:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isStatusBarHidden()Z

    move-result v2

    iget-object p1, p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-boolean v3, p1, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarIconsState:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const/4 v8, 0x0

    if-nez p1, :cond_1

    move-object v4, v8

    goto :goto_1

    :cond_1
    iget-object v4, p1, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    :goto_1
    if-nez p1, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    iget v5, p1, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextStyle:I

    :goto_2
    if-nez p1, :cond_3

    move v6, v1

    goto :goto_3

    :cond_3
    iget v6, p1, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextSize:I

    :goto_3
    if-nez p1, :cond_4

    move v7, v1

    goto :goto_4

    :cond_4
    iget p1, p1, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextWidth:I

    move v7, p1

    :goto_4
    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;-><init>(ZZLjava/lang/String;III)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;->knoxStatusBarControlModel:Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;

    new-instance p1, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1;

    invoke-direct {p1, p0, v8}, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1;-><init>(Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    move-result-object p1

    sget-object v1, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v1

    invoke-static {p1, p2, v1, v0}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;->knoxStatusBarState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method
