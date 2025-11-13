.class public final synthetic Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBiometricToastViewStateUpdater:Ljava/util/function/Consumer;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
