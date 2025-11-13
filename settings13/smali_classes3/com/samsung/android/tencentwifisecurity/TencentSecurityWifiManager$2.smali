.class Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$2;
.super Ljava/lang/Object;
.source "TencentSecurityWifiManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$2;->this$0:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 131
    iget-object p1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$2;->this$0:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    invoke-static {p2}, Lcom/samsung/android/tencentwifisecurity/IWifiEvaluationService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/tencentwifisecurity/IWifiEvaluationService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->-$$Nest$fputmWifiEvaluationService(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;Lcom/samsung/android/tencentwifisecurity/IWifiEvaluationService;)V

    .line 133
    iget-object p1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$2;->this$0:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    invoke-static {p1}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->-$$Nest$fgetmWifiEvaluationService(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)Lcom/samsung/android/tencentwifisecurity/IWifiEvaluationService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 135
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$2;->this$0:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    invoke-static {p1}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->-$$Nest$fgetmWifiEvaluationService(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)Lcom/samsung/android/tencentwifisecurity/IWifiEvaluationService;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$2;->this$0:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    invoke-static {p2}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->-$$Nest$fgetmEvaluationCallback(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)Lcom/samsung/android/tencentwifisecurity/IWifiEvaluationCallback;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/samsung/android/tencentwifisecurity/IWifiEvaluationService;->registerEvaluationCallback(Lcom/samsung/android/tencentwifisecurity/IWifiEvaluationCallback;)V

    .line 136
    iget-object p0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$2;->this$0:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    invoke-static {p0}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->-$$Nest$fgetmWifiEvaluationService(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)Lcom/samsung/android/tencentwifisecurity/IWifiEvaluationService;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/tencentwifisecurity/IWifiEvaluationService;->startSecurityEvaluation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 138
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 145
    iget-object p1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$2;->this$0:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->-$$Nest$fputmWifiEvaluationService(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;Lcom/samsung/android/tencentwifisecurity/IWifiEvaluationService;)V

    .line 146
    iget-object p0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$2;->this$0:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    invoke-static {p0}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->-$$Nest$fgetmBoundContexts(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method
