.class public final Lcom/android/wm/shell/controlpanel/action/FlexPanelSettingsAction;
.super Lcom/android/wm/shell/controlpanel/action/MenuActionType;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/controlpanel/action/MenuActionType;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/action/FlexPanelSettingsAction;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static createAction(Landroid/content/Context;)Lcom/android/wm/shell/controlpanel/action/FlexPanelSettingsAction;
    .locals 1

    new-instance v0, Lcom/android/wm/shell/controlpanel/action/FlexPanelSettingsAction;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/controlpanel/action/FlexPanelSettingsAction;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final doControlAction(Ljava/lang/String;Lcom/android/wm/shell/controlpanel/GridUIManager;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/action/FlexPanelSettingsAction;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.samsung.settings.FLEX_PANEL_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const p2, 0x10008000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
