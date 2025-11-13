.class public final Lcom/android/wm/shell/flexpanel/FlexPanelStartController$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/flexpanel/FlexPanelStartController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$2;->this$0:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "com.samsung.systemui.statusbar.EXPANDED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v3, "com.samsung.systemui.statusbar.COLLAPSED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_0

    :sswitch_2
    const-string v3, "ResponseAxT9Info"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$2;->this$0:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    iput-boolean v0, p1, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mIsQuickPanelShowing:Z

    invoke-virtual {p1}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->clearMessages()V

    iget-object p0, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$2;->this$0:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    invoke-virtual {p0}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->clearButton()V

    goto :goto_1

    :pswitch_1
    iget-object p0, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$2;->this$0:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    iput-boolean v1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mIsQuickPanelShowing:Z

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->onFlexModeChanged(Z)V

    goto :goto_1

    :pswitch_2
    const-string p1, "AxT9IME.isVisibleWindow"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$2;->this$0:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    iput-boolean v0, p1, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mIsImeShowing:Z

    invoke-virtual {p1}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->clearMessages()V

    iget-object p0, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$2;->this$0:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    invoke-virtual {p0}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->clearButton()V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$2;->this$0:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    iput-boolean v1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mIsImeShowing:Z

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->onFlexModeChanged(Z)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x30c324d5 -> :sswitch_2
        0x9468bc0 -> :sswitch_1
        0x70549e10 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
