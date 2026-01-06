.class Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow$1;
.super Landroid/content/BroadcastReceiver;
.source "KnoxAuthCredentialWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->registerBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow$1;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow$1;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->access$000(Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow$1;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;->access$100(Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnUerCancel(I)V

    :cond_0
    return-void
.end method
