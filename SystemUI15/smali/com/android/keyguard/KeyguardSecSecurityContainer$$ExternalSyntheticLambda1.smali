.class public final synthetic Lcom/android/keyguard/KeyguardSecSecurityContainer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget p1, Lcom/android/keyguard/KeyguardSecSecurityContainer;->$r8$clinit:I

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setDisableBiometricBySecurityDialog(Z)V

    return-void
.end method
