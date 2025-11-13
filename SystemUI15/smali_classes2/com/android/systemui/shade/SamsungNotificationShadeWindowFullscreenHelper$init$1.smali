.class public final Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper$init$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper$init$1;->this$0:Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper$init$1;->this$0:Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper;

    iget-object v1, v0, Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper;->statusBarModeRepository:Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryStore;

    check-cast v1, Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryImpl;->defaultDisplay:Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;->isInFullscreenMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v1, v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper;->access$setNeedFullscreen(Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper;Z)V

    iget-object p0, p0, Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper$init$1;->this$0:Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper;

    iget-object v0, p0, Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper$init$1$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper$init$1$1;-><init>(Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
