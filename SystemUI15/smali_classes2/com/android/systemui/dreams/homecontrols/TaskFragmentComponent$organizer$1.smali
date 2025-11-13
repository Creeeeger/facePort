.class public final Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent$organizer$1;
.super Landroid/window/TaskFragmentOrganizer;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent$organizer$1;->this$0:Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent;

    invoke-direct {p0, p2}, Landroid/window/TaskFragmentOrganizer;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final onTransactionReady(Landroid/window/TaskFragmentTransaction;)V
    .locals 6

    iget-object p0, p0, Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent$organizer$1;->this$0:Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {p1}, Landroid/window/TaskFragmentTransaction;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    :pswitch_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TaskFragmentTransaction$Change;

    invoke-virtual {v2}, Landroid/window/TaskFragmentTransaction$Change;->getTaskFragmentInfo()Landroid/window/TaskFragmentInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/window/TaskFragmentInfo;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent;->fragmentToken:Landroid/os/Binder;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/window/TaskFragmentTransaction$Change;->getType()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent;->hide:Lkotlin/jvm/functions/Function0;

    packed-switch v4, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Landroid/window/TaskFragmentTransaction$Change;->getType()I

    move-result p1

    const-string v0, "Unknown TaskFragmentEvent="

    invoke-static {p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :pswitch_2
    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent;->onInfoChangedCallback:Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent;->fragmentToken:Landroid/os/Binder;

    new-instance v4, Landroid/window/TaskFragmentOperation$Builder;

    const/16 v5, 0xd

    invoke-direct {v4, v5}, Landroid/window/TaskFragmentOperation$Builder;-><init>(I)V

    invoke-virtual {v4}, Landroid/window/TaskFragmentOperation$Builder;->build()Landroid/window/TaskFragmentOperation;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/window/WindowContainerTransaction;->addTaskFragmentOperation(Landroid/os/IBinder;Landroid/window/TaskFragmentOperation;)Landroid/window/WindowContainerTransaction;

    iget-object v2, p0, Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent;->onCreateCallback:Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/window/TaskFragmentTransaction;->getTransactionToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x6

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent;->organizer:Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent$organizer$1;

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/window/TaskFragmentOrganizer;->onTransactionHandled(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;IZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
