.class Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView$UnlockPatternListener;
.super Ljava/lang/Object;
.source "AuthCredentialPatternView.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockPatternListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView$UnlockPatternListener;-><init>(Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;)V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onPatternCleared()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->access$000(Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->access$200(Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    const-string v0, "BSS_AuthCredentialPatternView"

    const-string v1, "onPatternDetected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;

    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;

    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mPendingLockCheck:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->access$302(Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->access$100(Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;

    invoke-static {v0, p1}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->access$302(Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->access$100(Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public onPatternStart()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->access$100(Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->access$000(Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->access$200(Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
