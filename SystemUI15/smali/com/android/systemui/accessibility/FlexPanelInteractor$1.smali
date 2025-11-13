.class public final Lcom/android/systemui/accessibility/FlexPanelInteractor$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/DesktopManager$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/FlexPanelInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/FlexPanelInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor$1;->this$0:Lcom/android/systemui/accessibility/FlexPanelInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/16 v3, 0x32

    iget-object p0, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor$1;->this$0:Lcom/android/systemui/accessibility/FlexPanelInteractor;

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getState()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object p1, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mFlexPanelStartController:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    iput-boolean v1, p1, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mDesktopMode:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getState()I

    move-result p1

    if-ne p1, v3, :cond_1

    iget-object p1, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mFlexPanelStartController:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mDesktopMode:Z

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mFlexPanelStartController:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->onFlexModeChanged(Z)V

    :cond_1
    return-void
.end method
