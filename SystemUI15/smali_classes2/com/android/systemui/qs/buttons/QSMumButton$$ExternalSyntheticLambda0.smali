.class public final synthetic Lcom/android/systemui/qs/buttons/QSMumButton$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shade/PanelTransitionStateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/buttons/QSMumButton;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/buttons/QSMumButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    return-void
.end method


# virtual methods
.method public final onPanelTransitionStateChanged(Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;)V
    .locals 2

    sget v0, Lcom/android/systemui/qs/buttons/QSMumButton;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p1, p1, Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;->enabled:Z

    iput-boolean p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mPanelSplitEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mPanelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->isExpandedOnLockScreen:Z

    if-nez p1, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mPanelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    iget v1, p1, Lcom/android/systemui/shade/SecPanelSplitHelper;->stateOnDown:I

    if-ne v1, v0, :cond_1

    iget p1, p1, Lcom/android/systemui/shade/SecPanelSplitHelper;->stateToChange:I

    if-nez p1, :cond_1

    iput-boolean v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->isExpandedOnLockScreen:Z

    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mMumAndDexHelper:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;

    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->updateMumSwitchVisibility()V

    :cond_1
    :goto_0
    return-void
.end method
