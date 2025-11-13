.class public final Lcom/android/systemui/keyguard/ui/binder/InWindowLauncherAnimationViewBinder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/keyguard/ui/binder/InWindowLauncherAnimationViewBinder;

    invoke-direct {v0}, Lcom/android/systemui/keyguard/ui/binder/InWindowLauncherAnimationViewBinder;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final bind(Lcom/android/systemui/keyguard/ui/viewmodel/InWindowLauncherAnimationViewModel;Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 3

    new-instance v0, Lcom/android/systemui/keyguard/ui/binder/InWindowLauncherAnimationViewBinder$bind$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/keyguard/ui/binder/InWindowLauncherAnimationViewBinder$bind$1;-><init>(Lcom/android/systemui/keyguard/ui/viewmodel/InWindowLauncherAnimationViewModel;Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    invoke-static {p2, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v0, Lcom/android/systemui/keyguard/ui/binder/InWindowLauncherAnimationViewBinder$bind$2;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/keyguard/ui/binder/InWindowLauncherAnimationViewBinder$bind$2;-><init>(Lcom/android/systemui/keyguard/ui/viewmodel/InWindowLauncherAnimationViewModel;Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
