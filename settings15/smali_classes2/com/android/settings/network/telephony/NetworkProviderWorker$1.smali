.class public final Lcom/android/settings/network/telephony/NetworkProviderWorker$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/network/telephony/NetworkProviderWorker;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/telephony/NetworkProviderWorker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker$1;->this$0:Lcom/android/settings/network/telephony/NetworkProviderWorker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "NetworkProviderWorker"

    const-string p2, "ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkProviderWorker$1;->this$0:Lcom/android/settings/network/telephony/NetworkProviderWorker;

    sget p1, Lcom/android/settings/network/telephony/NetworkProviderWorker;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkProviderWorker;->updateListener$1()V

    :cond_0
    return-void
.end method
