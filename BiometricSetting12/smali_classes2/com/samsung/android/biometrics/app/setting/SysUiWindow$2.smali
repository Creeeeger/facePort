.class Lcom/samsung/android/biometrics/app/setting/SysUiWindow$2;
.super Ljava/lang/Object;
.source "SysUiWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->checkWindowFocus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/SysUiWindow;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/SysUiWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow$2;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow$2;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow$2;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow$2;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->access$100(Lcom/samsung/android/biometrics/app/setting/SysUiWindow;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow$2;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->hasPendingRemove()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow$2;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onWindowFocusChanged: ignore, Pending Remove"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow$2;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow$2;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->access$100(Lcom/samsung/android/biometrics/app/setting/SysUiWindow;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
