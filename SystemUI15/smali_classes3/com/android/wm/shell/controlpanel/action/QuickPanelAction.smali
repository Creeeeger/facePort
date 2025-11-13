.class public final Lcom/android/wm/shell/controlpanel/action/QuickPanelAction;
.super Lcom/android/wm/shell/controlpanel/action/MenuActionType;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/controlpanel/action/MenuActionType;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/action/QuickPanelAction;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static createAction(Landroid/content/Context;)Lcom/android/wm/shell/controlpanel/action/QuickPanelAction;
    .locals 1

    new-instance v0, Lcom/android/wm/shell/controlpanel/action/QuickPanelAction;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/controlpanel/action/QuickPanelAction;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final doControlAction(Ljava/lang/String;Lcom/android/wm/shell/controlpanel/GridUIManager;)V
    .locals 1

    iget-object p2, p0, Lcom/android/wm/shell/controlpanel/action/QuickPanelAction;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->isQuickPanelPressAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/action/QuickPanelAction;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "sem_statusbar"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/SemStatusBarManager;

    invoke-virtual {p1}, Landroid/app/SemStatusBarManager;->isPanelExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/app/SemStatusBarManager;->collapsePanels()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/action/QuickPanelAction;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->isKidsMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.sec.kidsplat.quickpanel.PANEL_OPEN"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "open_from_menu"

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/SemStatusBarManager;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/app/SemStatusBarManager;->expandNotificationsPanel()V

    :cond_3
    :goto_0
    return-void
.end method
