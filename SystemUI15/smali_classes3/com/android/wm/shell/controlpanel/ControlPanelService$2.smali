.class public final Lcom/android/wm/shell/controlpanel/ControlPanelService$2;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/ControlPanelService;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/ControlPanelService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/ControlPanelService$2;->this$0:Lcom/android/wm/shell/controlpanel/ControlPanelService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/ControlPanelService$2;->this$0:Lcom/android/wm/shell/controlpanel/ControlPanelService;

    invoke-static {p0}, Lcom/android/wm/shell/controlpanel/ControlPanelService;->-$$Nest$minitSharedPreferences(Lcom/android/wm/shell/controlpanel/ControlPanelService;)V

    return-void
.end method
