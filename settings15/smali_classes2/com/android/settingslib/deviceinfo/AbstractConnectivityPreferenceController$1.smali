.class public final Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController$1;->this$0:Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController$1;->this$0:Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;

    invoke-virtual {p2}, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;->getConnectivityIntents()[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController$1;->this$0:Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;

    iget-object p1, p0, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;->mHandler:Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController$ConnectivityEventHandler;

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController$ConnectivityEventHandler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p1, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController$ConnectivityEventHandler;->mPreferenceController:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;->mHandler:Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController$ConnectivityEventHandler;

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;->mHandler:Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController$ConnectivityEventHandler;

    const/16 p1, 0x258

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method
