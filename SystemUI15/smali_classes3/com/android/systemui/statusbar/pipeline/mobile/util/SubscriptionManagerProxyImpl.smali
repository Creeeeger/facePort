.class public final Lcom/android/systemui/statusbar/pipeline/mobile/util/SubscriptionManagerProxyImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/pipeline/mobile/util/SubscriptionManagerProxy;


# instance fields
.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final subscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineDispatcher;Landroid/telephony/SubscriptionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/util/SubscriptionManagerProxyImpl;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/util/SubscriptionManagerProxyImpl;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    return-void
.end method


# virtual methods
.method public final getActiveSubscriptionInfo(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/util/SubscriptionManagerProxyImpl$getActiveSubscriptionInfo$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/statusbar/pipeline/mobile/util/SubscriptionManagerProxyImpl$getActiveSubscriptionInfo$2;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/util/SubscriptionManagerProxyImpl;ILkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/util/SubscriptionManagerProxyImpl;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {p0, v0, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
