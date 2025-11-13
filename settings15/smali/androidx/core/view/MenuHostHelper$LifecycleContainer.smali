.class public final Landroidx/core/view/MenuHostHelper$LifecycleContainer;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mLifecycle:Landroidx/lifecycle/Lifecycle;

.field public mObserver:Landroidx/lifecycle/LifecycleEventObserver;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/Lifecycle;Landroidx/core/view/MenuHostHelper$$ExternalSyntheticLambda0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/MenuHostHelper$LifecycleContainer;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    iput-object p2, p0, Landroidx/core/view/MenuHostHelper$LifecycleContainer;->mObserver:Landroidx/lifecycle/LifecycleEventObserver;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method
