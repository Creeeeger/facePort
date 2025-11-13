.class public final synthetic Lcom/android/systemui/qs/buttons/QSPowerButton$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/buttons/QSPowerButton;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/buttons/QSPowerButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSPowerButton$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/qs/buttons/QSPowerButton;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSPowerButton$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/qs/buttons/QSPowerButton;

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSPowerButton;->mTipWindow:Lcom/android/systemui/qs/buttons/QSTooltipWindow;

    invoke-virtual {v0}, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->isTooltipShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSPowerButton;->mTipWindow:Lcom/android/systemui/qs/buttons/QSTooltipWindow;

    iget v1, p0, Lcom/android/systemui/qs/buttons/QSPowerButton;->mToolTipString:I

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->showToolTip(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/buttons/QSButtonsContainer;

    iput-object p0, p1, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mCloseTooltipWindow:Lcom/android/systemui/qs/buttons/QSButtonsContainer$CloseTooltipWindow;

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
