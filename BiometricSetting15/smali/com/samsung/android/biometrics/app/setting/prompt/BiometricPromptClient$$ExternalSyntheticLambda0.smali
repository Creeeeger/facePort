.class public final synthetic Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;

    .line 2
    .line 3
    const/4 v0, 0x5

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->onDismissed(I[B)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
