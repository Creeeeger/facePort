.class public final Lcom/android/keyguard/KeyguardKnoxGuardViewController$7;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$7;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "wifi_state"

    const/4 v0, 0x4

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$7;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    iget-object p2, p2, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mWifiButton:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz p2, :cond_1

    const-string p2, "WIFI_STATE_CHANGED_ACTION received : enabled = "

    const-string v0, " visibility :"

    invoke-static {p2, v0, p1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$7;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mWifiButton:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "KeyguardKnoxGuardView"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$7;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mWifiButton:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$7;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f13091e

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->showToast(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$7;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mWifiButton:Lcom/android/systemui/widget/SystemUIImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method
