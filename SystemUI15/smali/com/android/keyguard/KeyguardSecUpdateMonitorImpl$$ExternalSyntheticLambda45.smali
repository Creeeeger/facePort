.class public final synthetic Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda45;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda45;->f$0:I

    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda45;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda45;->f$0:I

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda45;->f$1:Z

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onDualDarInnerLockScreenStateChanged(IZ)V

    return-void
.end method
