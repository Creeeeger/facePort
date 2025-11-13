.class public final Lcom/android/systemui/accessibility/FlexModePanel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final mFlexPanelInteractor:Lcom/android/systemui/accessibility/FlexPanelInteractor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/phone/AutoHideController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p2, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    new-instance p2, Lcom/android/systemui/accessibility/FlexPanelInteractor;

    invoke-direct {p2, p1, p3, p4}, Lcom/android/systemui/accessibility/FlexPanelInteractor;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/phone/AutoHideController;)V

    iput-object p2, p0, Lcom/android/systemui/accessibility/FlexModePanel;->mFlexPanelInteractor:Lcom/android/systemui/accessibility/FlexPanelInteractor;

    return-void
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/accessibility/FlexModePanel;->mFlexPanelInteractor:Lcom/android/systemui/accessibility/FlexPanelInteractor;

    iget-object p0, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mFlexPanelStartController:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    iget-object v0, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mHandler:Lcom/android/wm/shell/flexpanel/FlexPanelStartController$H;

    new-instance v1, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/flexpanel/FlexPanelStartController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final start()V
    .locals 0

    return-void
.end method
