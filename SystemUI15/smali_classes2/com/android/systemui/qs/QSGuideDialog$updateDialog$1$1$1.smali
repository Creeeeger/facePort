.class public final Lcom/android/systemui/qs/QSGuideDialog$updateDialog$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/QSGuideDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSGuideDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSGuideDialog$updateDialog$1$1$1;->this$0:Lcom/android/systemui/qs/QSGuideDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const-string p1, "QSGuideDialog"

    const-string v0, "Clicked and RemoveListener"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/qs/QSGuideDialog$updateDialog$1$1$1;->this$0:Lcom/android/systemui/qs/QSGuideDialog;

    sget v0, Lcom/android/systemui/qs/QSGuideDialog;->$r8$clinit:I

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "PanelSeparateGuideDialogShown"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/qs/QSGuideDialog;->alreadyDialogShown:Z

    iget-object p1, p0, Lcom/android/systemui/qs/QSGuideDialog$updateDialog$1$1$1;->this$0:Lcom/android/systemui/qs/QSGuideDialog;

    iget-object v0, p1, Lcom/android/systemui/qs/QSGuideDialog;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object p1, p1, Lcom/android/systemui/qs/QSGuideDialog;->stateListener:Lcom/android/systemui/qs/QSGuideDialog$stateListener$1;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object p1, p0, Lcom/android/systemui/qs/QSGuideDialog$updateDialog$1$1$1;->this$0:Lcom/android/systemui/qs/QSGuideDialog;

    iget-object v0, p1, Lcom/android/systemui/qs/QSGuideDialog;->shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    iget-object p1, p1, Lcom/android/systemui/qs/QSGuideDialog;->shadeExpansionStateListener:Lcom/android/systemui/qs/QSGuideDialog$shadeExpansionStateListener$1;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->removeExpansionListener(Lcom/android/systemui/shade/ShadeExpansionListener;)V

    iget-object p1, p0, Lcom/android/systemui/qs/QSGuideDialog$updateDialog$1$1$1;->this$0:Lcom/android/systemui/qs/QSGuideDialog;

    iget-object v0, p1, Lcom/android/systemui/qs/QSGuideDialog;->displayManager:Landroid/hardware/display/DisplayManager;

    iget-object p1, p1, Lcom/android/systemui/qs/QSGuideDialog;->displayListener:Lcom/android/systemui/qs/QSGuideDialog$displayListener$1;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    iget-object p1, p0, Lcom/android/systemui/qs/QSGuideDialog$updateDialog$1$1$1;->this$0:Lcom/android/systemui/qs/QSGuideDialog;

    iget-object v0, p1, Lcom/android/systemui/qs/QSGuideDialog;->panelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    iget-object p1, p1, Lcom/android/systemui/qs/QSGuideDialog;->panelTransitionStateListener:Lcom/android/systemui/qs/QSGuideDialog$panelTransitionStateListener$1;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shade/SecPanelSplitHelper;->removeListener(Lcom/android/systemui/shade/PanelTransitionStateListener;)V

    iget-object p0, p0, Lcom/android/systemui/qs/QSGuideDialog$updateDialog$1$1$1;->this$0:Lcom/android/systemui/qs/QSGuideDialog;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSGuideDialog;->dismiss()V

    return-void
.end method
