.class public final Lcom/android/wm/shell/controlpanel/action/QuickSettingsAction;
.super Lcom/android/wm/shell/controlpanel/action/MenuActionType;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/controlpanel/action/MenuActionType;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/action/QuickSettingsAction;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static createAction(Landroid/content/Context;)Lcom/android/wm/shell/controlpanel/action/QuickSettingsAction;
    .locals 1

    new-instance v0, Lcom/android/wm/shell/controlpanel/action/QuickSettingsAction;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/controlpanel/action/QuickSettingsAction;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final doControlAction(Ljava/lang/String;Lcom/android/wm/shell/controlpanel/GridUIManager;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/action/QuickSettingsAction;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "sem_statusbar"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/SemStatusBarManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/SemStatusBarManager;->expandQuickSettingsPanel()V

    :cond_0
    return-void
.end method
