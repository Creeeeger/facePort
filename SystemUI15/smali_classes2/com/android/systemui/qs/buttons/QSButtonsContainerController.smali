.class public final Lcom/android/systemui/qs/buttons/QSButtonsContainerController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private final mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public final mSettingsValueList:[Landroid/net/Uri;


# direct methods
.method public static $r8$lambda$sgux4KK4mXMVCKnJbWX2C18Qu0k(Lcom/android/systemui/qs/buttons/QSButtonsContainerController;Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainerController;->mSettingsValueList:[Landroid/net/Uri;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onChanged() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QSButtonsContainerController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/qs/buttons/QSButtonsContainer$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/buttons/QSButtonsContainer$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/buttons/QSButtonsContainer;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/buttons/QSButtonsContainer;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/qs/SecQSPanelController;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/net/Uri;

    const-string v0, "emergency_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainerController;->mSettingsValueList:[Landroid/net/Uri;

    new-instance p1, Lcom/android/systemui/qs/buttons/QSButtonsContainerController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/buttons/QSButtonsContainerController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/buttons/QSButtonsContainerController;)V

    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainerController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iput-object p2, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainerController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/buttons/QSButtonsContainer;

    const p2, 0x7f0a03e8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/buttons/QSEditButton;

    iput-object p3, p1, Lcom/android/systemui/qs/buttons/QSEditButton;->mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;

    const p1, 0x7f0a07ac

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/buttons/QSMumButton;

    iput-object p4, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mMainHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final closeQSTooltip()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mCloseTooltipWindow:Lcom/android/systemui/qs/buttons/QSButtonsContainer$CloseTooltipWindow;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/qs/buttons/QSButtonsContainer$CloseTooltipWindow;->closeTooltip()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mCloseTooltipWindow:Lcom/android/systemui/qs/buttons/QSButtonsContainer$CloseTooltipWindow;

    :cond_0
    return-void
.end method

.method public final onViewAttached()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainerController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainerController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainerController;->mSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method public final onViewDetached()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainerController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainerController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method

.method public final setListening(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;

    iget-boolean v1, v0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mListening:Z

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, v0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mListening:Z

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mMumButton:Lcom/android/systemui/qs/buttons/QSMumButton;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/buttons/QSMumButton;->setListening(Z)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;

    iget-boolean p1, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mExpanded:Z

    if-ne p1, p2, :cond_2

    goto :goto_2

    :cond_2
    iput-boolean p2, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mExpanded:Z

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mMumButton:Lcom/android/systemui/qs/buttons/QSMumButton;

    iget-boolean v0, p1, Lcom/android/systemui/qs/buttons/QSMumButton;->mExpanded:Z

    if-ne v0, p2, :cond_3

    goto :goto_1

    :cond_3
    iput-boolean p2, p1, Lcom/android/systemui/qs/buttons/QSMumButton;->mExpanded:Z

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/android/systemui/qs/buttons/QSMumButton;->isExpandedOnLockScreen:Z

    :cond_4
    :goto_1
    new-instance p1, Lcom/android/systemui/qs/buttons/QSButtonsContainer$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/buttons/QSButtonsContainer$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/buttons/QSButtonsContainer;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :goto_2
    return-void
.end method
