.class Lcom/samsung/android/settings/display/NewModePreview$9;
.super Landroid/content/BroadcastReceiver;
.source "NewModePreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/NewModePreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/NewModePreview;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/NewModePreview;)V
    .locals 0

    .line 958
    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$9;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 962
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 963
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 964
    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview$9;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p2}, Lcom/android/settingslib/Utils;->getBatteryLevel(Landroid/content/Intent;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fputmBatteryLevel(Lcom/samsung/android/settings/display/NewModePreview;I)V

    :cond_0
    return-void
.end method
