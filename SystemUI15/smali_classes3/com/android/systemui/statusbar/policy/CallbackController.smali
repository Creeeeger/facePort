.class public interface abstract Lcom/android/systemui/statusbar/policy/CallbackController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public abstract addCallback(Ljava/lang/Object;)V
.end method

.method public observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/policy/CallbackController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/statusbar/policy/CallbackController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/CallbackController;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-object p2
.end method

.method public abstract removeCallback(Ljava/lang/Object;)V
.end method
