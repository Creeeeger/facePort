.class Lcom/samsung/android/biometrics/app/setting/SysUiWindow$1;
.super Ljava/lang/Object;
.source "SysUiWindow.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->addView()V
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

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow$1;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onViewAttachedToWindow$0$SysUiWindow$1()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow$1;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "removeView: pending"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow$1;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->removeView()V

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow$1;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->access$000(Lcom/samsung/android/biometrics/app/setting/SysUiWindow;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow$1;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mH:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/SysUiWindow$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiWindow$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow$1;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    invoke-virtual {v0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->onAttachedToWindow(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow$1;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->access$100(Lcom/samsung/android/biometrics/app/setting/SysUiWindow;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow$1;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow$1;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->access$100(Lcom/samsung/android/biometrics/app/setting/SysUiWindow;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
