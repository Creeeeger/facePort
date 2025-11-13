.class public final Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$displayWindowListener$1;
.super Landroid/view/IDisplayWindowListener$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$displayWindowListener$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;

    invoke-direct {p0}, Landroid/view/IDisplayWindowListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public final onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method public final onFixedRotationFinished(I)V
    .locals 0

    return-void
.end method

.method public final onFixedRotationStarted(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$displayWindowListener$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;

    const-string v1, "onFixedRotationStarted "

    const-string v2, ", "

    invoke-static {p1, p2, v1, v2}, Landroidx/compose/foundation/text/HeightInLinesModifierKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->DEBUG:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->DEBUG:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "KeyguardFixedRotation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$displayWindowListener$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$displayWindowListener$1$onFixedRotationStarted$1;

    invoke-direct {v0, p2, p0}, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$displayWindowListener$1$onFixedRotationStarted$1;-><init>(ILcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onKeepClearAreasChanged(ILjava/util/List;Ljava/util/List;)V
    .locals 0

    return-void
.end method
