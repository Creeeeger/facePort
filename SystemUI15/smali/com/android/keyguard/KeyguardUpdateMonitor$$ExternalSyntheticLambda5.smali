.class public final synthetic Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor$2;IZ)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda5;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda5;->f$2:I

    iput-boolean p3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda5;->f$1:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;ZI)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda5;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda5;->f$1:Z

    iput p3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda5;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda5;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;

    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda5;->f$2:I

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda5;->f$1:Z

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricEnabledForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1, p0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object p0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$2$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$2$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda5;->f$1:Z

    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda5;->f$2:I

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    invoke-virtual {v2, p0, v1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logReportSuccessfulBiometricUnlock(IZ)V

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulBiometricUnlock(ZI)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
