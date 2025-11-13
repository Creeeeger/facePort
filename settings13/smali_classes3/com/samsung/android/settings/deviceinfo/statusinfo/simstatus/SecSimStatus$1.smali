.class Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$1;
.super Landroid/content/BroadcastReceiver;
.source "SecSimStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$1;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 171
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.samsung.intent.action.SIMHOTSWAP"

    .line 172
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "SecSimStatus"

    const-string p2, "com.samsung.intent.action.SIMHOTSWAP, call finish()"

    .line 173
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$1;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method
