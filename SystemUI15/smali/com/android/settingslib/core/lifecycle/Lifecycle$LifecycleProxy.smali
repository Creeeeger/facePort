.class public final Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/core/lifecycle/Lifecycle;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;->this$0:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/settingslib/core/lifecycle/Lifecycle;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;-><init>(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method


# virtual methods
.method public onLifecycleEvent(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 4
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_ANY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    sget-object p1, Lcom/android/settingslib/core/lifecycle/Lifecycle$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x0

    iget-object p0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;->this$0:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    const-string p0, "LifecycleObserver"

    const-string p1, "Should not receive an \'ANY\' event!"

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :pswitch_1
    iget-object p1, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    if-ge p2, p1, :cond_3

    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/wifi/WifiTracker;

    instance-of v1, v0, Lcom/android/settingslib/wifi/WifiTracker;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_1
    if-ge p2, p1, :cond_3

    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/wifi/WifiTracker;

    instance-of v1, v0, Lcom/android/settingslib/wifi/WifiTracker;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->onStop()V

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :pswitch_3
    iget-object p1, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_2
    if-ge p2, p1, :cond_3

    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/wifi/WifiTracker;

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :pswitch_4
    iget-object p1, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_3
    if-ge p2, p1, :cond_3

    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/wifi/WifiTracker;

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :pswitch_5
    iget-object p1, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_4
    if-ge p2, p1, :cond_3

    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/wifi/WifiTracker;

    instance-of v1, v0, Lcom/android/settingslib/wifi/WifiTracker;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#OnStart"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->onStart()V

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_3
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
