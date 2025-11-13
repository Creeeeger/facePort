.class Lcom/android/settings/datausage/DataUsageSummary$1;
.super Landroid/content/BroadcastReceiver;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageSummary;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$1;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 220
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.samsung.intent.action.SIMHOTSWAP"

    .line 221
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "DataUsageSummary"

    const-string p2, "FINISH : HOTSWAP"

    .line 222
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummary$1;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method
