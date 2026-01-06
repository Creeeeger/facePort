.class Lcom/samsung/android/biometrics/app/setting/SysUiWindow$3;
.super Landroid/content/BroadcastReceiver;
.source "SysUiWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->registerBroadcastReceiverForSystemDialog()V
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

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow$3;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow$3;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION: CLOSE_SYSTEM_DIALOG: reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "reason"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow$3;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow$3;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnUerCancel(I)V

    :cond_0
    return-void
.end method
