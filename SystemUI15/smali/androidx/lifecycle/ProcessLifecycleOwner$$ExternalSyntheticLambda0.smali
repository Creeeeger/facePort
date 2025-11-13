.class public final synthetic Landroidx/lifecycle/ProcessLifecycleOwner$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/lifecycle/ProcessLifecycleOwner;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/ProcessLifecycleOwner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/ProcessLifecycleOwner$$ExternalSyntheticLambda0;->f$0:Landroidx/lifecycle/ProcessLifecycleOwner;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Landroidx/lifecycle/ProcessLifecycleOwner$$ExternalSyntheticLambda0;->f$0:Landroidx/lifecycle/ProcessLifecycleOwner;

    iget v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->resumedCounter:I

    const/4 v1, 0x1

    iget-object v2, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->registry:Landroidx/lifecycle/LifecycleRegistry;

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->pauseSent:Z

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v2, v0}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    :cond_0
    iget v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->startedCounter:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->pauseSent:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v2, v0}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    iput-boolean v1, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->stopSent:Z

    :cond_1
    return-void
.end method
