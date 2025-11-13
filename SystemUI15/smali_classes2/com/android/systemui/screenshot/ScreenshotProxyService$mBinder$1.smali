.class public final Lcom/android/systemui/screenshot/ScreenshotProxyService$mBinder$1;
.super Lcom/android/systemui/screenshot/IScreenshotProxy$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotProxyService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ScreenshotProxyService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotProxyService$mBinder$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotProxyService;

    invoke-direct {p0}, Lcom/android/systemui/screenshot/IScreenshotProxy$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final dismissKeyguard(Lcom/android/systemui/screenshot/IOnDoneCallback;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotProxyService$mBinder$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotProxyService;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotProxyService$mBinder$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotProxyService;

    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotProxyService$mBinder$1$dismissKeyguard$$inlined$launch$default$1;

    const-string v3, "IScreenshotProxy#dismissKeyguard"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, p0, p1}, Lcom/android/systemui/screenshot/ScreenshotProxyService$mBinder$1$dismissKeyguard$$inlined$launch$default$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/android/systemui/screenshot/ScreenshotProxyService;Lcom/android/systemui/screenshot/IOnDoneCallback;)V

    const/4 p0, 0x2

    invoke-static {v0, v1, v4, v2, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final isNotificationShadeExpanded()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotProxyService$mBinder$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotProxyService;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotProxyService;->mExpansionMgr:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->isClosed()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    const-string v0, "isNotificationShadeExpanded(): "

    const-string v1, "ScreenshotProxyService"

    invoke-static {v0, v1, p0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method
