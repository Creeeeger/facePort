.class Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper$1;
.super Ljava/lang/Object;
.source "FacePromptGuiHelper.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper$1;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper$1;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->access$000(Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnUerCancel(I)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
