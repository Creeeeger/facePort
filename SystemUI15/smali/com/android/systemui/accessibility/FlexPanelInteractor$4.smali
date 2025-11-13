.class public final Lcom/android/systemui/accessibility/FlexPanelInteractor$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/AutoHideUiElement;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/FlexPanelInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/FlexPanelInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor$4;->this$0:Lcom/android/systemui/accessibility/FlexPanelInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hide()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor$4;->this$0:Lcom/android/systemui/accessibility/FlexPanelInteractor;

    iget-boolean v0, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mNavBarGestureEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mFlexPanelStartController:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mIsNavBarHidden:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hide: mIsNavBarHidden="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mFlexPanelStartController:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    iget-boolean v1, v1, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mIsNavBarHidden:Z

    const-string v2, "FlexPanelInteractor"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mIsNavBarForImmersiveSplit:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mFlexPanelStartController:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mIsNavBarHidden:Z

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isFlexPanelEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mFlexPanelStartController:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    invoke-virtual {p0}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->clearButton()V

    :cond_2
    return-void
.end method

.method public final isVisible()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final synchronizeState()V
    .locals 0

    return-void
.end method
