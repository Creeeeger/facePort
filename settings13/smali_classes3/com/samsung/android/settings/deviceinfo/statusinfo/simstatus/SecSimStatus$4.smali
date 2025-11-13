.class Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$4;
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

    .line 878
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$4;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "SecSimStatus"

    const-string v0, "IntentFilter CellBroadcastIntents.ACTION_AREA_INFO_UPDATED"

    .line 881
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.telephony.action.AREA_INFO_UPDATED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const-string v0, "android.telephony.extra.SLOT_INDEX"

    .line 883
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$4;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;

    invoke-static {p2}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->-$$Nest$fgetmCurrentSlotId(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;)I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 885
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$4;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->-$$Nest$mupdateAreaInfoText(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;)V

    :cond_0
    return-void
.end method
