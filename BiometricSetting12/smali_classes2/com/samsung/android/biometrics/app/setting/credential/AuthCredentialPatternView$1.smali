.class Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView$1;
.super Ljava/lang/Object;
.source "AuthCredentialPatternView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView$1;->this$0:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView$1;->this$0:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->access$000(Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView$1;->this$0:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->access$000(Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView$1;->this$0:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->access$100(Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView$1;->this$0:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->access$100(Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void
.end method
