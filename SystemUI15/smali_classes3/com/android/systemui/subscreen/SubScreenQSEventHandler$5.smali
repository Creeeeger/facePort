.class public final Lcom/android/systemui/subscreen/SubScreenQSEventHandler$5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$5;->this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinishedWakingUp()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$5;->this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->-$$Nest$fputmInSleep(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;Z)V

    return-void
.end method

.method public final onStartedGoingToSleep()V
    .locals 1

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$5;->this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    invoke-static {p0, v0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->-$$Nest$fputmInSleep(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;Z)V

    invoke-static {p0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->-$$Nest$fgetmPanelExpandedSupplier(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)Ljava/util/function/BooleanSupplier;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->-$$Nest$fgetmCollapsePanelRunnable(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
