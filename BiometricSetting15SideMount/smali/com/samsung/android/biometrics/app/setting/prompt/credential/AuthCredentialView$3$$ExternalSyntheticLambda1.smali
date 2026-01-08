.class public final synthetic Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$3$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$3;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$3;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$3$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$3;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$3$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$3$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$3;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$3$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$3;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->showLockoutMessage(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
