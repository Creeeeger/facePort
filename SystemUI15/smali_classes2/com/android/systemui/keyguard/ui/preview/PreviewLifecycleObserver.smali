.class public final Lcom/android/systemui/keyguard/ui/preview/PreviewLifecycleObserver;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public isDestroyedOrDestroying:Z

.field public final mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public onDestroy:Lkotlin/jvm/functions/Function1;

.field public renderer:Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/ui/preview/PreviewLifecycleObserver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/ui/preview/PreviewLifecycleObserver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/preview/PreviewLifecycleObserver;->scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/preview/PreviewLifecycleObserver;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/preview/PreviewLifecycleObserver;->renderer:Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;

    iput-object p4, p0, Lcom/android/systemui/keyguard/ui/preview/PreviewLifecycleObserver;->onDestroy:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static synthetic getOnDestroy$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getRenderer$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/preview/PreviewLifecycleObserver;->onDestroy:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/ui/preview/PreviewLifecycleObserver;->isDestroyedOrDestroying:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/preview/PreviewLifecycleObserver;->renderer:Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/android/systemui/keyguard/ui/preview/PreviewLifecycleObserver;->onDestroy:Lkotlin/jvm/functions/Function1;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x457

    if-eq v3, v4, :cond_4

    const/16 v0, 0x539

    if-eq v3, v0, :cond_2

    invoke-interface {v2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "slot_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/preview/PreviewLifecycleObserver;->renderer:Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardBottomAreaRefactor()V

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->bottomAreaViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;->selectedPreviewSlotId:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Required value was null."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "hide_smart_space"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    new-instance p1, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$hideSmartspace$1;

    invoke-direct {p1, v0, p0}, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$hideSmartspace$1;-><init>(Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;Z)V

    iget-object p0, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->mainHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_0
    return v1

    :cond_6
    :goto_1
    const-string p0, "KeyguardRemotePreviewManager"

    const-string p1, "Renderer/onDestroy should not be null."

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
