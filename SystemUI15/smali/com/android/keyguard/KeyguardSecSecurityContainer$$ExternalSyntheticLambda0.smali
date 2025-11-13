.class public final synthetic Lcom/android/keyguard/KeyguardSecSecurityContainer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;

.field public final synthetic f$1:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecSecurityContainer;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$$ExternalSyntheticLambda0;->f$1:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$$ExternalSyntheticLambda0;->f$1:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget p2, Lcom/android/keyguard/KeyguardSecSecurityContainer;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x0

    invoke-interface {p0, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setDisableBiometricBySecurityDialog(Z)V

    iget-object p0, p1, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewMode:Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;->reset()V

    iput-boolean p2, p1, Lcom/android/keyguard/KeyguardSecurityContainer;->mDisappearAnimRunning:Z

    return-void
.end method
