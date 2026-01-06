.class public final synthetic Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;

    return-void
.end method


# virtual methods
.method public final onVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPasswordView;->onCredentialVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V

    return-void
.end method
