.class public final Lcom/android/systemui/accessibility/FlexPanelInteractor$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/FlexPanelInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/FlexPanelInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor$3;->this$0:Lcom/android/systemui/accessibility/FlexPanelInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p1

    and-int/2addr p1, p6

    const/4 p3, 0x0

    const/4 p4, 0x1

    iget-object p0, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor$3;->this$0:Lcom/android/systemui/accessibility/FlexPanelInteractor;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result p5

    invoke-virtual {p1, p5}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    if-nez p1, :cond_1

    move p1, p4

    goto :goto_0

    :cond_1
    move p1, p3

    :goto_0
    iget-object p5, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mFlexPanelStartController:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    iget-boolean p6, p5, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mIsNavBarHidden:Z

    if-eqz p6, :cond_2

    if-nez p1, :cond_2

    iput-boolean p3, p5, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mIsNavBarHidden:Z

    invoke-virtual {p5, p3}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->onFlexModeChanged(Z)V

    goto :goto_1

    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mIsNavBarForImmersiveSplit:Z

    if-nez p1, :cond_3

    iput-boolean p3, p5, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mIsNavBarHidden:Z

    :cond_3
    :goto_1
    if-eqz p7, :cond_4

    const-string p1, "com.sec.android.app.launcher"

    invoke-virtual {p7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-nez p2, :cond_4

    move p3, p4

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mFlexPanelStartController:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    iget-boolean p2, p1, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mIsTaskBarAppsEnabled:Z

    if-eq p2, p3, :cond_6

    iput-boolean p3, p1, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mIsTaskBarAppsEnabled:Z

    if-eqz p3, :cond_5

    invoke-virtual {p1}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->clearMessages()V

    iget-object p0, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mFlexPanelStartController:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    invoke-virtual {p0}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->clearButton()V

    goto :goto_2

    :cond_5
    invoke-virtual {p1, p4}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->onFlexModeChanged(Z)V

    :cond_6
    :goto_2
    return-void
.end method

.method public final setWindowState(III)V
    .locals 5

    if-nez p1, :cond_7

    const/4 p1, 0x2

    if-ne p2, p1, :cond_7

    iget-object p0, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor$3;->this$0:Lcom/android/systemui/accessibility/FlexPanelInteractor;

    iget-boolean p2, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mNavBarGestureEnabled:Z

    if-nez p2, :cond_0

    goto :goto_3

    :cond_0
    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p3, p1, :cond_2

    if-ne p3, v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, p2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v0

    :goto_1
    const-string v2, "setWindowState: isNavBarHidden="

    const-string v3, ", mIsNavBarHidden="

    invoke-static {v2, v3, v1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mFlexPanelStartController:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    iget-boolean v3, v3, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mIsNavBarHidden:Z

    const-string v4, "FlexPanelInteractor"

    invoke-static {v2, v3, v4}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-eq p3, p1, :cond_4

    if-ne p3, v0, :cond_3

    goto :goto_2

    :cond_3
    move v0, p2

    :cond_4
    :goto_2
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mIsNavBarForImmersiveSplit:Z

    iget-object p0, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mFlexPanelStartController:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    iget-boolean p1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mIsNavBarHidden:Z

    if-ne p1, v1, :cond_5

    return-void

    :cond_5
    iput-boolean v1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mIsNavBarHidden:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->clearButton()V

    goto :goto_3

    :cond_6
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->onFlexModeChanged(Z)V

    :cond_7
    :goto_3
    return-void
.end method

.method public final showTransient(IIZ)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor$3;->this$0:Lcom/android/systemui/accessibility/FlexPanelInteractor;

    iget-object p1, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mFlexPanelStartController:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mIsNavBarHidden:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "showTransient: mIsNavBarHidden="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mFlexPanelStartController:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    iget-boolean p3, p3, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mIsNavBarHidden:Z

    const-string v0, "FlexPanelInteractor"

    invoke-static {p1, p3, v0}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mNavBarGestureEnabled:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mFlexPanelStartController:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->onFlexModeChanged(Z)V

    :cond_1
    return-void
.end method
