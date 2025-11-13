.class Lcom/samsung/android/settings/datausage/SecBillingCycleSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "SecBillingCycleSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleSettings$1;->this$0:Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.samsung.intent.action.SIMHOTSWAP"

    .line 37
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 38
    invoke-static {}, Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FINISH : HOTSWAP"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleSettings$1;->this$0:Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method
