.class Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager$1;
.super Landroid/content/BroadcastReceiver;
.source "UsageDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;)V
    .locals 0

    .line 639
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 642
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 643
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->changeTime()V

    goto :goto_0

    .line 645
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 646
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->changeTimeZone()V

    goto :goto_0

    .line 648
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 649
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->changeDate()V

    :cond_2
    :goto_0
    return-void
.end method
