.class Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper$1;
.super Ljava/lang/Object;
.source "BiometricPromptGuiHelper.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper$1;->this$0:Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper$1;->this$0:Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;

    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper$1;->this$0:Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;

    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper$1;->this$0:Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;

    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mDescriptionText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
