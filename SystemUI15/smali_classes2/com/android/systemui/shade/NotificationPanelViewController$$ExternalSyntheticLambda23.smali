.class public final synthetic Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/FalsingManager$FalsingTapListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/shade/NotificationPanelViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda23;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    return-void
.end method


# virtual methods
.method public final onAdditionalTapRequired()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda23;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v1, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTapAgainViewController:Lcom/android/systemui/statusbar/phone/TapAgainViewController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/TapAgainViewController;->show()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const v2, 0x7f130d54

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    :goto_0
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_1
    return-void
.end method
