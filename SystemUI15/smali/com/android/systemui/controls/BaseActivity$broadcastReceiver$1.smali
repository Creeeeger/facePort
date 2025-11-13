.class public final Lcom/android/systemui/controls/BaseActivity$broadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String;

.field public final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String;

.field public final SYSTEM_DIALOG_REASON_RECENT_APPS_KEY:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/systemui/controls/BaseActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/BaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/BaseActivity$broadcastReceiver$1;->this$0:Lcom/android/systemui/controls/BaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string p1, "reason"

    iput-object p1, p0, Lcom/android/systemui/controls/BaseActivity$broadcastReceiver$1;->SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String;

    const-string p1, "homekey"

    iput-object p1, p0, Lcom/android/systemui/controls/BaseActivity$broadcastReceiver$1;->SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String;

    const-string p1, "recentapps"

    iput-object p1, p0, Lcom/android/systemui/controls/BaseActivity$broadcastReceiver$1;->SYSTEM_DIALOG_REASON_RECENT_APPS_KEY:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/android/systemui/controls/BaseActivity$broadcastReceiver$1;->this$0:Lcom/android/systemui/controls/BaseActivity;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/controls/BaseActivity;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onReceive "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/controls/BaseActivity$broadcastReceiver$1;->SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/controls/BaseActivity$broadcastReceiver$1;->SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/controls/BaseActivity;->onHomeKeyPressed()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/BaseActivity$broadcastReceiver$1;->SYSTEM_DIALOG_REASON_RECENT_APPS_KEY:Ljava/lang/String;

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lcom/android/systemui/controls/BaseActivity;->onRecentAppsKeyPressed()V

    goto :goto_0

    :cond_1
    const-string p0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/controls/BaseActivity;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string p2, "onScreenOff"

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_3
    :goto_0
    return-void
.end method
