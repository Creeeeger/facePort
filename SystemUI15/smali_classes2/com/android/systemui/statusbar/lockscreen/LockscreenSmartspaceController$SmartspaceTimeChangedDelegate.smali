.class public final Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$SmartspaceTimeChangedDelegate;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$TimeChangedDelegate;


# instance fields
.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public keyguardUpdateMonitorCallback:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$SmartspaceTimeChangedDelegate$register$1;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$SmartspaceTimeChangedDelegate;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method


# virtual methods
.method public final register(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$SmartspaceTimeChangedDelegate;->keyguardUpdateMonitorCallback:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$SmartspaceTimeChangedDelegate$register$1;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$SmartspaceTimeChangedDelegate;->unregister()V

    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$SmartspaceTimeChangedDelegate$register$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$SmartspaceTimeChangedDelegate$register$1;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$SmartspaceTimeChangedDelegate;->keyguardUpdateMonitorCallback:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$SmartspaceTimeChangedDelegate$register$1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$SmartspaceTimeChangedDelegate;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final unregister()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$SmartspaceTimeChangedDelegate;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$SmartspaceTimeChangedDelegate;->keyguardUpdateMonitorCallback:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$SmartspaceTimeChangedDelegate$register$1;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$SmartspaceTimeChangedDelegate;->keyguardUpdateMonitorCallback:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$SmartspaceTimeChangedDelegate$register$1;

    return-void
.end method
