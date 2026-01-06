.class public final synthetic Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;

    return-void
.end method


# virtual methods
.method public final onVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPasswordView;->onCredentialVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V

    return-void
.end method
