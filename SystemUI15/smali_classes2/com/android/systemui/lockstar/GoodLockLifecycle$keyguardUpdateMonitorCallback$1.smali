.class public final Lcom/android/systemui/lockstar/GoodLockLifecycle$keyguardUpdateMonitorCallback$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/lockstar/GoodLockLifecycle;


# direct methods
.method public constructor <init>(Lcom/android/systemui/lockstar/GoodLockLifecycle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/lockstar/GoodLockLifecycle$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/lockstar/GoodLockLifecycle;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPackageAdded(Ljava/lang/String;)V
    .locals 2

    const-string v0, "onPackageAdded: "

    const-string v1, "GoodLockLifecycle"

    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardPluginControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/android/systemui/lockstar/GoodLockLifecycle;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/lockstar/GoodLockLifecycle$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/lockstar/GoodLockLifecycle;

    invoke-virtual {p0, p1}, Lcom/android/systemui/lockstar/GoodLockLifecycle;->updateGoodLockInstalledState(Ljava/lang/String;)V

    return-void
.end method

.method public final onPackageChanged(Ljava/lang/String;)V
    .locals 2

    const-string v0, "onPackageChanged: "

    const-string v1, "GoodLockLifecycle"

    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardPluginControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/android/systemui/lockstar/GoodLockLifecycle;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/lockstar/GoodLockLifecycle$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/lockstar/GoodLockLifecycle;

    invoke-virtual {p0, p1}, Lcom/android/systemui/lockstar/GoodLockLifecycle;->updateGoodLockInstalledState(Ljava/lang/String;)V

    return-void
.end method

.method public final onPackageRemoved(Ljava/lang/String;Z)V
    .locals 1

    const-string p2, "onPackageRemoved: "

    const-string v0, "GoodLockLifecycle"

    invoke-static {p2, p1, v0}, Lcom/android/keyguard/KeyguardPluginControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget p2, Lcom/android/systemui/lockstar/GoodLockLifecycle;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/lockstar/GoodLockLifecycle$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/lockstar/GoodLockLifecycle;

    invoke-virtual {p0, p1}, Lcom/android/systemui/lockstar/GoodLockLifecycle;->updateGoodLockInstalledState(Ljava/lang/String;)V

    return-void
.end method
