.class public final Lcom/android/systemui/qs/tiles/FlashlightTile$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/FlashlightTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.sec.android.systemui.action.FLASHLIGHT_OFF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "level"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string/jumbo v0, "status"

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x5

    if-gt p1, v0, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    iput-boolean v2, p1, Lcom/android/systemui/qs/tiles/FlashlightTile;->mIsLowBattery:Z

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->-$$Nest$fgetmSettingsHelper(Lcom/android/systemui/qs/tiles/FlashlightTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    iget-object p2, p2, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    check-cast p2, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    iget-object p2, p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f1306d6

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/tiles/FlashlightTile;->showWarningMessage(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->setFlashlight(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    iput-boolean v1, p1, Lcom/android/systemui/qs/tiles/FlashlightTile;->mIsLowBattery:Z

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mSecFlashlightController:Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mIsLowBattery:Z

    iput-boolean p0, p1, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mIsLowBattery:Z

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    iget-object p2, p2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v0, "onReceive : "

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->setFlashlight(Z)V

    :cond_4
    :goto_2
    return-void
.end method
