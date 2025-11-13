.class public final Lcom/android/wm/shell/flexpanel/FlexPanelStartController$H;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/flexpanel/FlexPanelStartController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$H;->this$0:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const v1, 0x14241000

    const/4 v2, 0x1

    const-string v3, "FlexPanelStartController"

    iget-object p0, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$H;->this$0:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    if-eq p1, v2, :cond_4

    const/4 v4, 0x2

    if-eq p1, v4, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string p1, "handleMessage: RECHECK_CONDITION_MSG"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->onFlexModeChanged(Z)V

    goto/16 :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mIsNavBarHidden:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mNavBarGestureEnabled:Z

    if-eqz p1, :cond_2

    const-string p0, "Buttons should not appear when NavBar is Hidden."

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    const-string p1, "display_floating_icon_expand"

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->startFloatingIcon(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "setExpandButton"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Landroid/content/Intent;

    const-string p1, "android.intent.action.EXPAND_FLEX_PANEL"

    invoke-direct {v6, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/multiwindow/MultiWindowUtils;->FLEX_PANEL_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v6, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/high16 v7, 0x42000000    # 32.0f

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p1

    const v0, 0x7f080796

    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->setNavigationBarButton(ILandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_3
    const-string p1, "display_floating_icon_collapse"

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->startFloatingIcon(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "setCollapseButton"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.COLLAPSE_FLEX_PANEL"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/high16 v3, 0x4000000

    invoke-static {v1, v0, p1, v3, v2}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p1

    const v0, 0x7f080795

    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->setNavigationBarButton(ILandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "auto run Flex Panel"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "AutoRun"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mPendingLastAutoRunPackage:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mLastFullscreenPackage:Ljava/lang/String;

    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.intent.action.AUTORUN_FLEX_PANEL"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/multiwindow/MultiWindowUtils;->FLEX_PANEL_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    iget-object p0, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    :goto_0
    return-void
.end method
