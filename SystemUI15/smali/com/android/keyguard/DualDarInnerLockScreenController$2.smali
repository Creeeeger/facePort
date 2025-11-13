.class public final Lcom/android/keyguard/DualDarInnerLockScreenController$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/DualDarInnerLockScreenController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$2;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$2;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    iget-object p1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$2;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    iget-object p1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method
