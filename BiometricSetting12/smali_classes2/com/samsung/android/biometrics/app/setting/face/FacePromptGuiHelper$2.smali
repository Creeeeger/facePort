.class Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper$2;
.super Ljava/lang/Object;
.source "FacePromptGuiHelper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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

.field final synthetic val$mainLayout:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;Landroid/widget/RelativeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper$2;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;

    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper$2;->val$mainLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper$2;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->access$100(Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper$2;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;

    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->access$200(Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Notch support, setPunchHoleUI"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper$2;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;

    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->access$300(Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper$2;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;

    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->access$400(Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Notch not support"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper$2;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;

    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->access$500(Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper$2;->val$mainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    return-void
.end method
