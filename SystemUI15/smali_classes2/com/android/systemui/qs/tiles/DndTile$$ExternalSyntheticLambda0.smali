.class public final synthetic Lcom/android/systemui/qs/tiles/DndTile$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/DndTile;

.field public final synthetic f$1:Landroid/view/ContextThemeWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/DndTile;Landroid/view/ContextThemeWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/DndTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/DndTile$$ExternalSyntheticLambda0;->f$1:Landroid/view/ContextThemeWrapper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/DndTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile$$ExternalSyntheticLambda0;->f$1:Landroid/view/ContextThemeWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/settingslib/notification/EnableZenModeDialog;

    invoke-direct {v1, p0}, Lcom/android/settingslib/notification/EnableZenModeDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->createDialog()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Landroid/app/Dialog;)V

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->registerDismissListener(Landroid/app/Dialog;)V

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setWindowOnTop(Landroid/app/Dialog;Z)V

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setDialogSize(Landroid/app/Dialog;)V

    new-instance v1, Lcom/android/systemui/qs/tiles/DndTile$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/DndTile$$ExternalSyntheticLambda1;-><init>(Landroid/app/Dialog;)V

    iget-object p0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, v0, Lcom/android/systemui/qs/tiles/DndTile;->mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    invoke-interface {p0}, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;->collapsePanels()V

    return-void
.end method
