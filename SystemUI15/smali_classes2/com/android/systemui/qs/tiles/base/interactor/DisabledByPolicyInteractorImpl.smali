.class public final Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractorImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractor;


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final restrictedLockProxy:Lcom/android/systemui/qs/tiles/base/interactor/RestrictedLockProxy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/tiles/base/interactor/RestrictedLockProxy;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractorImpl;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractorImpl;->restrictedLockProxy:Lcom/android/systemui/qs/tiles/base/interactor/RestrictedLockProxy;

    iput-object p4, p0, Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractorImpl;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-void
.end method


# virtual methods
.method public final isDisabled(Landroid/os/UserHandle;Ljava/lang/String;Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$filterByPolicy$lambda$9$$inlined$filter$1$2$1;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractorImpl$isDisabled$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractorImpl$isDisabled$2;-><init>(Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractorImpl;Landroid/os/UserHandle;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractorImpl;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {p0, v0, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
