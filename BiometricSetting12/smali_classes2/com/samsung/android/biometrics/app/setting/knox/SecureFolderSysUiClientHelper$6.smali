.class Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$6;
.super Ljava/lang/Object;
.source "SecureFolderSysUiClientHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->showForgotPasswordDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$6;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$6;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->access$700(Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x64

    const/16 v2, 0x3eb

    invoke-static {v1, v2}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxSamsungAnalyticsLogger;->addEvent(II)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$6;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->access$100(Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$6;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->access$100(Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;)Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f1000dc

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$6;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->access$200(Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnUerCancel(I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$6;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->access$900(Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;ZZ)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_0
    return-void
.end method
