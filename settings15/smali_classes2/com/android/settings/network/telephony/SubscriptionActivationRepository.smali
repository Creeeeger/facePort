.class public final Lcom/android/settings/network/telephony/SubscriptionActivationRepository;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final callStateRepository:Lcom/android/settings/network/telephony/CallStateRepository;

.field public final context:Landroid/content/Context;

.field public final satelliteRepository:Lcom/android/settings/network/SatelliteRepository;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/android/settings/network/telephony/CallStateRepository;

    invoke-direct {v0, p1}, Lcom/android/settings/network/telephony/CallStateRepository;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/settings/network/SatelliteRepository;

    invoke-direct {v1, p1}, Lcom/android/settings/network/SatelliteRepository;-><init>(Landroid/content/Context;)V

    const-string v2, "context"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/SubscriptionActivationRepository;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/settings/network/telephony/SubscriptionActivationRepository;->callStateRepository:Lcom/android/settings/network/telephony/CallStateRepository;

    iput-object v1, p0, Lcom/android/settings/network/telephony/SubscriptionActivationRepository;->satelliteRepository:Lcom/android/settings/network/SatelliteRepository;

    return-void
.end method


# virtual methods
.method public final isActivationChangeableFlow()Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/network/telephony/SubscriptionActivationRepository;->callStateRepository:Lcom/android/settings/network/telephony/CallStateRepository;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/CallStateRepository;->isInCallFlow()Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/network/telephony/SubscriptionActivationRepository;->satelliteRepository:Lcom/android/settings/network/SatelliteRepository;

    invoke-static {p0}, Lcom/android/settings/network/SatelliteRepository;->getIsSessionStartedFlow$default(Lcom/android/settings/network/SatelliteRepository;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    new-instance v1, Lcom/android/settings/network/telephony/SubscriptionActivationRepository$isActivationChangeableFlow$1;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-static {v0, p0, v1}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    move-result-object p0

    return-object p0
.end method

.method public final setActive(IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lcom/android/settings/network/telephony/SubscriptionActivationRepository$setActive$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/android/settings/network/telephony/SubscriptionActivationRepository$setActive$1;

    iget v1, v0, Lcom/android/settings/network/telephony/SubscriptionActivationRepository$setActive$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/settings/network/telephony/SubscriptionActivationRepository$setActive$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/network/telephony/SubscriptionActivationRepository$setActive$1;

    invoke-direct {v0, p0, p3}, Lcom/android/settings/network/telephony/SubscriptionActivationRepository$setActive$1;-><init>(Lcom/android/settings/network/telephony/SubscriptionActivationRepository;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/android/settings/network/telephony/SubscriptionActivationRepository$setActive$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/settings/network/telephony/SubscriptionActivationRepository$setActive$1;->label:I

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-boolean p2, v0, Lcom/android/settings/network/telephony/SubscriptionActivationRepository$setActive$1;->Z$0:Z

    iget p1, v0, Lcom/android/settings/network/telephony/SubscriptionActivationRepository$setActive$1;->I$0:I

    iget-object p0, v0, Lcom/android/settings/network/telephony/SubscriptionActivationRepository$setActive$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/settings/network/telephony/SubscriptionActivationRepository;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result p3

    if-nez p3, :cond_3

    const-string p0, "SubscriptionActivationR"

    const-string p1, "Unable to toggle subscription due to unusable subscription ID."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_3
    if-nez p2, :cond_5

    iput-object p0, v0, Lcom/android/settings/network/telephony/SubscriptionActivationRepository$setActive$1;->L$0:Ljava/lang/Object;

    iput p1, v0, Lcom/android/settings/network/telephony/SubscriptionActivationRepository$setActive$1;->I$0:I

    iput-boolean p2, v0, Lcom/android/settings/network/telephony/SubscriptionActivationRepository$setActive$1;->Z$0:Z

    iput v4, v0, Lcom/android/settings/network/telephony/SubscriptionActivationRepository$setActive$1;->label:I

    sget-object p3, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    new-instance v2, Lcom/android/settings/network/telephony/SubscriptionActivationRepository$isEmergencyCallbackMode$2;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v4}, Lcom/android/settings/network/telephony/SubscriptionActivationRepository$isEmergencyCallbackMode$2;-><init>(Lcom/android/settings/network/telephony/SubscriptionActivationRepository;ILkotlin/coroutines/Continuation;)V

    invoke-static {p3, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_5

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.telephony.action.SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.android.phone"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/network/telephony/SubscriptionActivationRepository;->context:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-object v3

    :cond_5
    if-eqz p2, :cond_6

    sget-object p2, Lcom/android/settings/network/SimOnboardingActivity;->onboardingService:Lcom/android/settings/network/SimOnboardingService;

    iget-object p0, p0, Lcom/android/settings/network/telephony/SubscriptionActivationRepository;->context:Landroid/content/Context;

    const-string p2, "context"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/android/settings/network/SimOnboardingActivity;

    invoke-direct {p2, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "sub_id"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-object v3

    :cond_6
    iget-object p0, p0, Lcom/android/settings/network/telephony/SubscriptionActivationRepository;->context:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->getIntent(Landroid/content/Context;IZ)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-object v3
.end method
