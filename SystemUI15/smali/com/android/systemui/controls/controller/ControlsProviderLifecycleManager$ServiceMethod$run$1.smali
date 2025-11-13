.class public final Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod$run$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod$run$1;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod$run$1;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    sget v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->BIND_FLAGS:I

    const-string v0, "couldn\'t call through binder"

    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->unbindAndCleanup(Ljava/lang/String;)V

    return-void
.end method
