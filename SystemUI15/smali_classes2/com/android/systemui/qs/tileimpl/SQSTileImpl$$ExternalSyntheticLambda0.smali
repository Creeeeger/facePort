.class public final synthetic Lcom/android/systemui/qs/tileimpl/SQSTileImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tileimpl/SQSTileImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tileimpl/SQSTileImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tileimpl/SQSTileImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tileimpl/SQSTileImpl;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    return-void
.end method
