.class public final Lcom/android/systemui/keyguard/DisplayLifecycle$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/DisplayLifecycle;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/DisplayLifecycle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/DisplayLifecycle$1;->this$0:Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle$1;->this$0:Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->addDisplay(I)V

    new-instance v0, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda4;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/keyguard/DisplayLifecycle;II)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle$1;->this$0:Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateDisplay id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayLifecycle"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->addDisplay(I)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "updateDisplay return - display is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->updateCacheVariables(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    invoke-interface {v0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda4;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/keyguard/DisplayLifecycle;II)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle$1;->this$0:Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda4;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/keyguard/DisplayLifecycle;II)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
