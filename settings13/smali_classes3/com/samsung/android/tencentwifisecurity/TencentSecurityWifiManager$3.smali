.class Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$3;
.super Ljava/lang/Object;
.source "TencentSecurityWifiManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->showTencentWifiWarningDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;Landroid/content/Context;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$3;->this$0:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    iput-object p2, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 328
    iget-object p1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$3;->this$0:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->-$$Nest$msetWifiSecurityConfig(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;ZZ)V

    .line 330
    iget-object p1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$3;->this$0:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    invoke-static {p1}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->-$$Nest$fgetmWifiEvaluationService(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)Lcom/samsung/android/tencentwifisecurity/IWifiEvaluationService;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$3;->this$0:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    iget-object p2, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$3;->val$context:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->-$$Nest$misEvaluationContextValid(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 331
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.samsung.android.tencentwifisecurity"

    const-string v1, "com.samsung.android.tencentwifisecurity.WifiEvaluationService"

    .line 332
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    iget-object p2, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$3;->this$0:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    invoke-static {v1}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->-$$Nest$fgetmConn(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {p2, p1, v1, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 335
    iget-object p1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$3;->this$0:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    invoke-static {p1}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->-$$Nest$fgetmBoundContexts(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$3;->val$context:Landroid/content/Context;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p0, "TencentSecurityWifiManager"

    const-string p1, "showTencentWifiWarningDialog bind fail"

    .line 337
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
