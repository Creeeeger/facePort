.class Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow$2;
.super Ljava/lang/Object;
.source "BiometricPromptWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->initAvailableBioTypes(Z)V
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

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow$2;->this$0:Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow$2;->this$0:Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->access$100(Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->access$202(Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;I)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow$2;->this$0:Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->access$400(Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow$2;->this$0:Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->access$100(Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow$2;->this$0:Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;

    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->access$100(Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow$2;->this$0:Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->access$100(Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow$2;->this$0:Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->access$600(Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;)Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow$2;->this$0:Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->access$500(Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow$2;->this$0:Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;

    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->access$200(Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->customizeSwitch(II)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow$2;->this$0:Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;

    invoke-static {v0, v3}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->access$002(Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;Z)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow$2;->this$0:Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->access$200(Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;->access$300(Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;I)V

    :goto_1
    return-void
.end method
