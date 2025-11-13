.class public final synthetic Lcom/android/systemui/qs/buttons/QSButtonsContainer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/buttons/QSButtonsContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/buttons/QSButtonsContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/buttons/QSButtonsContainer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/buttons/QSButtonsContainer;

    sget v0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mMumButton:Lcom/android/systemui/qs/buttons/QSMumButton;

    iget-object v0, v0, Lcom/android/systemui/qs/buttons/QSMumButton;->mMumAndDexHelper:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;

    invoke-virtual {v0}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->updateMumSwitchVisibility()V

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mMumButton:Lcom/android/systemui/qs/buttons/QSMumButton;

    iget-boolean v3, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mExpanded:Z

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;->setVisibility(I)V

    :cond_1
    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mSettingsButton:Lcom/android/systemui/qs/buttons/QSSettingsButton;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mPowerButton:Lcom/android/systemui/qs/buttons/QSPowerButton;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mEditButton:Lcom/android/systemui/qs/buttons/QSEditButton;

    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->isMassiveLandscape()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mEditButton:Lcom/android/systemui/qs/buttons/QSEditButton;

    invoke-virtual {v3}, Lcom/android/systemui/qs/buttons/QSEditButton;->isSupportEditButton()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mSettingsButton:Lcom/android/systemui/qs/buttons/QSSettingsButton;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mPowerButton:Lcom/android/systemui/qs/buttons/QSPowerButton;

    iget-boolean v3, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mExpanded:Z

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_2

    :cond_5
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mEditButton:Lcom/android/systemui/qs/buttons/QSEditButton;

    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->isMassiveLandscape()Z

    move-result v3

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mExpanded:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mEditButton:Lcom/android/systemui/qs/buttons/QSEditButton;

    invoke-virtual {v3}, Lcom/android/systemui/qs/buttons/QSEditButton;->isSupportEditButton()Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    :cond_7
    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    return-void
.end method
