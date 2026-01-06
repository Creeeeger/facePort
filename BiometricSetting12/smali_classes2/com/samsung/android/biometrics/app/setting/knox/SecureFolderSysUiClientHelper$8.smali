.class Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$8;
.super Ljava/lang/Object;
.source "SecureFolderSysUiClientHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->showUninstallDialog()V
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

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$8;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$8;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->access$700(Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xb7

    const/16 v2, 0x729

    invoke-static {v1, v2}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxSamsungAnalyticsLogger;->addEvent(II)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$8;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->access$1000(Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$8;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->access$200(Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnUerCancel(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$8;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->access$100(Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->access$1100(Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;Landroid/content/Context;)V

    return-void
.end method
