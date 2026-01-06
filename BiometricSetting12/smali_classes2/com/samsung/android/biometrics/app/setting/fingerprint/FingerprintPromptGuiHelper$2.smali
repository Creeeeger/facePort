.class Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$2;
.super Ljava/lang/Object;
.source "FingerprintPromptGuiHelper.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->setEventListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field downPressed:Z

.field final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$2;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$2;->downPressed:Z

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$2;->downPressed:Z

    if-nez v1, :cond_1

    iput-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$2;->downPressed:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$2;->downPressed:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$2;->downPressed:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$2;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->access$700(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Handle Back Key"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$2;->downPressed:Z

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$2;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->access$800(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnUerCancel(I)V

    :cond_3
    :goto_0
    return v2
.end method
