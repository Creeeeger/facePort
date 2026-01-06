.class Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$3;
.super Ljava/lang/Object;
.source "FingerprintPromptGuiHelper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->setEventListener()V
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

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$3;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->access$900()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$3;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->access$1000(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mDialogLayout.onGlobalLayout: called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$3;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->access$1200(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->access$1102(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;I)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$3;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->access$1200(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->access$1302(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;I)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$3;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->access$1500(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->access$1402(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;I)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$3;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->access$1700(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->access$1602(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;I)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$3;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->access$1300(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$3;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;

    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->access$1400(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$3;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;

    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->access$1600(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$3;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;

    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->access$1900(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07007f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$3;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;

    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->access$2000(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700f8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$3;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;

    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->access$2100(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$3;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;

    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->access$2200(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700ff

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->access$1802(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;I)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$3;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->access$2300(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DialogHeight : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$3;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;

    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->access$1300(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " DescriptionHeight : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$3;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;

    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->access$1800(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$3;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->access$1200(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$3;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->access$2400(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onGlobalLayout: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
