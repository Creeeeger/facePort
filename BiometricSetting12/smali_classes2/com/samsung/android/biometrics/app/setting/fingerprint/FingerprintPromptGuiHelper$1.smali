.class Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$1;
.super Ljava/lang/Object;
.source "FingerprintPromptGuiHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$FingerprintPromptGuiHelper$1()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->access$500(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    move-result-object v0

    const/16 v1, 0xa

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->sendErrorEventToSystemService(II)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->access$600(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->stop()V

    return-void
.end method

.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->access$000(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->access$100(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->access$200(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->access$300(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->access$400(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$1;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
