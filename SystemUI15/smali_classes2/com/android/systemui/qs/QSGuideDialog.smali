.class public final Lcom/android/systemui/qs/QSGuideDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public alreadyDialogShown:Z

.field public final commandQueueCallbacks:Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;

.field public currentOrientation:I

.field public final displayListener:Lcom/android/systemui/qs/QSGuideDialog$displayListener$1;

.field public final displayManager:Landroid/hardware/display/DisplayManager;

.field public final executor:Ljava/util/concurrent/Executor;

.field public firstExpanded:Z

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final lazyUnlockedScreenOffAnimationController:Ldagger/Lazy;

.field public final panelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

.field public final panelTransitionStateListener:Lcom/android/systemui/qs/QSGuideDialog$panelTransitionStateListener$1;

.field public final resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final shadeExpansionStateListener:Lcom/android/systemui/qs/QSGuideDialog$shadeExpansionStateListener$1;

.field public final shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

.field public final stateListener:Lcom/android/systemui/qs/QSGuideDialog$stateListener$1;

.field public statusBarState:I

.field public final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/QSGuideDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSGuideDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;Lcom/android/systemui/shade/SecPanelSplitHelper;Lcom/android/systemui/util/SettingsHelper;Ldagger/Lazy;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/shade/ShadeExpansionStateManager;",
            "Lcom/android/systemui/qs/SecQSPanelResourcePicker;",
            "Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;",
            "Lcom/android/systemui/shade/SecPanelSplitHelper;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    const v0, 0x7f1402ae

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/android/systemui/qs/QSGuideDialog;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p3, p0, Lcom/android/systemui/qs/QSGuideDialog;->shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    iput-object p4, p0, Lcom/android/systemui/qs/QSGuideDialog;->resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iput-object p5, p0, Lcom/android/systemui/qs/QSGuideDialog;->commandQueueCallbacks:Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;

    iput-object p6, p0, Lcom/android/systemui/qs/QSGuideDialog;->panelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    iput-object p7, p0, Lcom/android/systemui/qs/QSGuideDialog;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-object p8, p0, Lcom/android/systemui/qs/QSGuideDialog;->lazyUnlockedScreenOffAnimationController:Ldagger/Lazy;

    iput-object p9, p0, Lcom/android/systemui/qs/QSGuideDialog;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p10, p0, Lcom/android/systemui/qs/QSGuideDialog;->executor:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/android/systemui/qs/QSGuideDialog$panelTransitionStateListener$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/QSGuideDialog$panelTransitionStateListener$1;-><init>(Lcom/android/systemui/qs/QSGuideDialog;)V

    iput-object p2, p0, Lcom/android/systemui/qs/QSGuideDialog;->panelTransitionStateListener:Lcom/android/systemui/qs/QSGuideDialog$panelTransitionStateListener$1;

    new-instance p2, Lcom/android/systemui/qs/QSGuideDialog$stateListener$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/QSGuideDialog$stateListener$1;-><init>(Lcom/android/systemui/qs/QSGuideDialog;)V

    iput-object p2, p0, Lcom/android/systemui/qs/QSGuideDialog;->stateListener:Lcom/android/systemui/qs/QSGuideDialog$stateListener$1;

    new-instance p2, Lcom/android/systemui/qs/QSGuideDialog$shadeExpansionStateListener$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/QSGuideDialog$shadeExpansionStateListener$1;-><init>(Lcom/android/systemui/qs/QSGuideDialog;)V

    iput-object p2, p0, Lcom/android/systemui/qs/QSGuideDialog;->shadeExpansionStateListener:Lcom/android/systemui/qs/QSGuideDialog$shadeExpansionStateListener$1;

    new-instance p2, Lcom/android/systemui/qs/QSGuideDialog$displayListener$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/QSGuideDialog$displayListener$1;-><init>(Lcom/android/systemui/qs/QSGuideDialog;)V

    iput-object p2, p0, Lcom/android/systemui/qs/QSGuideDialog;->displayListener:Lcom/android/systemui/qs/QSGuideDialog$displayListener$1;

    const-string p2, "display"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/systemui/qs/QSGuideDialog;->displayManager:Landroid/hardware/display/DisplayManager;

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/systemui/qs/QSGuideDialog;->statusBarState:I

    iput p1, p0, Lcom/android/systemui/qs/QSGuideDialog;->currentOrientation:I

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 1

    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 p0, 0x3

    const-string v0, " "

    invoke-static {p0, v0}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "QSGuideDialog"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/QSGuideDialog;->currentOrientation:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/qs/QSGuideDialog;->currentOrientation:I

    iget-object p1, p0, Lcom/android/systemui/qs/QSGuideDialog;->executor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/systemui/qs/QSGuideDialog$onConfigurationChanged$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSGuideDialog$onConfigurationChanged$1;-><init>(Lcom/android/systemui/qs/QSGuideDialog;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/systemui/qs/QSGuideDialog;->currentOrientation:I

    return-void
.end method

.method public final start()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSGuideDialog;->updateDialog()V

    iget-object v0, p0, Lcom/android/systemui/qs/QSGuideDialog;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSGuideDialog;->statusBarState:I

    iget-object v1, p0, Lcom/android/systemui/qs/QSGuideDialog;->stateListener:Lcom/android/systemui/qs/QSGuideDialog$stateListener$1;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSGuideDialog;->stateListener:Lcom/android/systemui/qs/QSGuideDialog$stateListener$1;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSGuideDialog;->shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    iget-object v1, p0, Lcom/android/systemui/qs/QSGuideDialog;->shadeExpansionStateListener:Lcom/android/systemui/qs/QSGuideDialog$shadeExpansionStateListener$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->removeExpansionListener(Lcom/android/systemui/shade/ShadeExpansionListener;)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSGuideDialog;->shadeExpansionStateListener:Lcom/android/systemui/qs/QSGuideDialog$shadeExpansionStateListener$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addExpansionListener(Lcom/android/systemui/shade/ShadeExpansionListener;)Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    iget-object v0, p0, Lcom/android/systemui/qs/QSGuideDialog;->displayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/systemui/qs/QSGuideDialog;->displayListener:Lcom/android/systemui/qs/QSGuideDialog$displayListener$1;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSGuideDialog;->displayListener:Lcom/android/systemui/qs/QSGuideDialog$displayListener$1;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSGuideDialog;->panelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/QSGuideDialog;->panelTransitionStateListener:Lcom/android/systemui/qs/QSGuideDialog$panelTransitionStateListener$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/SecPanelSplitHelper;->removeListener(Lcom/android/systemui/shade/PanelTransitionStateListener;)V

    iget-object p0, p0, Lcom/android/systemui/qs/QSGuideDialog;->panelTransitionStateListener:Lcom/android/systemui/qs/QSGuideDialog$panelTransitionStateListener$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->addListener(Lcom/android/systemui/shade/PanelTransitionStateListener;)V

    return-void
.end method

.method public final textColorChanged(Landroid/widget/TextView;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSGuideDialog;->resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->isNightMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0605a1

    goto :goto_0

    :cond_0
    const p0, 0x7f0605a2

    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final updateDialog()V
    .locals 7

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "PanelSeparateGuideDialogShown"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSGuideDialog;->alreadyDialogShown:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d02ff

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070dd0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    const v1, 0x7f0a037d

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSGuideDialog;->textColorChanged(Landroid/widget/TextView;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/QSGuideDialog;->resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->isNightMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f080e0c

    goto :goto_0

    :cond_1
    const v4, 0x7f080e0b

    :goto_0
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/util/RecoilEffectUtil;->getRecoilSmallAnimator(Landroid/content/Context;)Landroid/animation/StateListAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    new-instance v3, Lcom/android/systemui/qs/QSGuideDialog$updateDialog$1$1$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/QSGuideDialog$updateDialog$1$1$1;-><init>(Lcom/android/systemui/qs/QSGuideDialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a097a

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/QSGuideDialog;->panelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {v4}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isReversed()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/qs/QSGuideDialog;->resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->isNightMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    const v4, 0x7f08072f

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/qs/QSGuideDialog;->panelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {v4}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isReversed()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/qs/QSGuideDialog;->resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->isNightMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    const v4, 0x7f080c07

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/qs/QSGuideDialog;->panelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {v4}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isReversed()Z

    move-result v4

    if-eqz v4, :cond_4

    const v4, 0x7f080c08

    goto :goto_1

    :cond_4
    const v4, 0x7f08072e

    :goto_1
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/QSGuideDialog;->resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v4, v4, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v4}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getQSGuideImageWidth(Landroid/content/Context;)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/QSGuideDialog;->resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, v4, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v4}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getQSGuideImageHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v1, 0x7f0a097b

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/QSGuideDialog;->panelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {v4}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isReversed()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/qs/QSGuideDialog;->resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->isNightMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    const v4, 0x7f080731

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/qs/QSGuideDialog;->panelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {v4}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isReversed()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/qs/QSGuideDialog;->resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->isNightMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_6

    const v4, 0x7f080c09

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/android/systemui/qs/QSGuideDialog;->panelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {v4}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isReversed()Z

    move-result v4

    if-eqz v4, :cond_7

    const v4, 0x7f080c0a

    goto :goto_2

    :cond_7
    const v4, 0x7f080730

    :goto_2
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/QSGuideDialog;->resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v4, v4, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v4}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getQSGuideImageWidth(Landroid/content/Context;)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/QSGuideDialog;->resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, v4, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v4}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getQSGuideImageHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v1, 0x7f0a097c

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/systemui/qs/QSGuideDialog;->resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, v4, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v4}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getQSGuideContainerMargin(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    const v1, 0x7f0a097d

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/systemui/qs/QSGuideDialog;->resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, v4, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v4}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getQSGuideContainerMargin(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    const v1, 0x7f0a097e

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSGuideDialog;->textColorChanged(Landroid/widget/TextView;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/QSGuideDialog;->panelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {v4}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isReversed()Z

    move-result v4

    const v5, 0x7f1310b3

    const v6, 0x7f1310d5

    if-eqz v4, :cond_8

    move v4, v6

    goto :goto_3

    :cond_8
    move v4, v5

    :goto_3
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a097f

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSGuideDialog;->textColorChanged(Landroid/widget/TextView;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/QSGuideDialog;->panelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {v4}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isReversed()Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_4

    :cond_9
    move v5, v6

    :goto_4
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a0979

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSGuideDialog;->textColorChanged(Landroid/widget/TextView;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/QSGuideDialog;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isPanelSplitReversed()Z

    move-result v4

    if-eqz v4, :cond_a

    const v4, 0x7f130e51

    goto :goto_5

    :cond_a
    const v4, 0x7f130e50

    :goto_5
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0a0978

    invoke-virtual {v0, v3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_MASSIVE:Z

    if-eqz v1, :cond_c

    invoke-virtual {v0, v3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/QSGuideDialog;->resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->isNightMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_b

    const v3, 0x7f080e0e

    goto :goto_6

    :cond_b
    const v3, 0x7f080e0d

    :goto_6
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    :cond_c
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f070dc2

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    new-instance v4, Landroid/view/SemBlurInfo$Builder;

    invoke-direct {v4, v2}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/QSGuideDialog;->resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->isNightMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v2, 0x7c

    goto :goto_7

    :cond_d
    const/16 v2, 0x6d

    :goto_7
    invoke-virtual {v4, v2}, Landroid/view/SemBlurInfo$Builder;->setColorCurvePreset(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/SemBlurInfo$Builder;->setBackgroundCornerRadius(F)Landroid/view/SemBlurInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object v1

    invoke-virtual {v0, v3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    :goto_8
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v2, p0, Lcom/android/systemui/qs/QSGuideDialog;->resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object p0, p0, Lcom/android/systemui/qs/QSGuideDialog;->panelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isQSState()Z

    move-result p0

    iget-object v2, v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v2}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v2

    invoke-virtual {v2, v3, p0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getQSGuideWidth(Landroid/content/Context;Z)I

    move-result p0

    const/4 v2, -0x2

    invoke-virtual {v1, p0, v2}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    const/16 v2, 0x11

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    :cond_e
    return-void
.end method
