.class Lcom/android/systemui/util/QsResetSettingsManager$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/QsResetSettingsManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/QsResetSettingsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/QsResetSettingsManager$1;->this$0:Lcom/android/systemui/util/QsResetSettingsManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "QsResetSettingsManager"

    if-eqz p2, :cond_0

    const-string p1, "Soft reset Started"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/util/QsResetSettingsManager$1;->this$0:Lcom/android/systemui/util/QsResetSettingsManager;

    invoke-virtual {p0}, Lcom/android/systemui/util/QsResetSettingsManager;->runReset()V

    goto :goto_0

    :cond_0
    const-string p2, "com.samsung.sea.rm.DEMO_RESET_STARTED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Demo reset Started"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/util/QsResetSettingsManager$1;->this$0:Lcom/android/systemui/util/QsResetSettingsManager;

    invoke-static {p1}, Lcom/android/systemui/util/QsResetSettingsManager;->-$$Nest$fgetmContext(Lcom/android/systemui/util/QsResetSettingsManager;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isShopDemo(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/util/QsResetSettingsManager$1;->this$0:Lcom/android/systemui/util/QsResetSettingsManager;

    invoke-virtual {p0}, Lcom/android/systemui/util/QsResetSettingsManager;->runDemoReset()V

    :cond_1
    :goto_0
    return-void
.end method
