.class Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper$3;
.super Ljava/lang/Object;
.source "FacePromptGuiHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->setEventListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper$3;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper$3;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->access$600(Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper$3;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->access$700(Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;)Landroid/hardware/SensorPrivacyManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper$3;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->access$700(Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;)Landroid/hardware/SensorPrivacyManager;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v2, v1}, Landroid/hardware/SensorPrivacyManager;->setSensorPrivacy(IIZ)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper$3;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->access$900(Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;)Landroid/widget/Button;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper$3;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;

    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->access$800(Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f100046

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper$3;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;

    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->access$602(Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper$3;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->access$1000(Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;)Landroid/widget/Button;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper$3;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->access$1100(Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper$3;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;

    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->access$1200(Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper$3;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->access$1400(Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper$3;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;

    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->access$1300(Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper$3;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->access$300(Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper$3;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->access$1500(Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    move-result-object v0

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnButtonPressed(II)V

    return-void
.end method
