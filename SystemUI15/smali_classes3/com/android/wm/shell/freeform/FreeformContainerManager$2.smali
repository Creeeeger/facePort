.class public final Lcom/android/wm/shell/freeform/FreeformContainerManager$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$2;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "[Manager] onReceive: "

    const-string v0, "FreeformContainer"

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_1
    const-string v2, "com.samsung.intent.action.LELINK_CAST_CONNECTION_CHANGED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_2
    const-string v2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_3
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_5
    const-string v2, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_6
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$2;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerManager;->rebuildAll(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", Restore only minimized container items"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$2;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->sendMessage(I)V

    goto :goto_1

    :pswitch_2
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$2;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    invoke-static {p1}, Lcom/android/wm/shell/freeform/FreeformContainerManager;->-$$Nest$mshouldHideInformation(Lcom/android/wm/shell/freeform/FreeformContainerManager;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$2;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    const/16 p1, 0x19

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->sendMessage(I)V

    goto :goto_1

    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", Collapse minimized container tray"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$2;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    const/16 p1, 0x2a

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->sendMessage(I)V

    :cond_7
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_6
        -0x3f4ab253 -> :sswitch_5
        -0x1808c879 -> :sswitch_4
        0x392cb822 -> :sswitch_3
        0x3e117848 -> :sswitch_2
        0x66cad08e -> :sswitch_1
        0x6a0dd473 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
