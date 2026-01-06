.class Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow$1;
.super Ljava/lang/Object;
.source "BiometricPromptWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->changePromptGUIHelper(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow$1;->this$0:Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow$1;->this$0:Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->access$000(Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow$1;->this$0:Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->access$100(Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;)Landroid/widget/Switch;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow$1;->this$0:Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->access$002(Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;Z)Z

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow$1;->this$0:Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->access$100(Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow$1;->this$0:Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->access$100(Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow$1;->this$0:Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->access$100(Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow$1;->this$0:Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->access$200(Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->access$300(Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;I)V

    :cond_0
    return-void
.end method
