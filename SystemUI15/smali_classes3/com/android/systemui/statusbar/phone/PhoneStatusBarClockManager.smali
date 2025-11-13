.class public final Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mClockBlocked:Z

.field public mClockPosition:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

.field public final mClockView:Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;

.field public final mGrandParentView:Landroid/view/ViewGroup;

.field public mIndicatorGarden:Lcom/android/systemui/statusbar/phone/IndicatorGarden;

.field public final mIndicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

.field public mIsChangedClockPosition:Z

.field public mLeftContainer:Landroid/view/ViewGroup;

.field public mMiddleContainer:Landroid/view/ViewGroup;

.field public mRightContainer:Landroid/view/ViewGroup;

.field public final mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->NONE:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockPosition:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockBlocked:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mIsChangedClockPosition:Z

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mGrandParentView:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mIndicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockView:Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;

    return-void
.end method


# virtual methods
.method public final addClockView(Landroid/view/ViewGroup;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockView:Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final getClockWidth()I
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockView:Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result p0

    add-int/2addr p0, v2

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public final updateQuickStarStyle()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    invoke-virtual {v1}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->isLeftClockPosition()Z

    move-result v1

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    invoke-virtual {v2}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->isMiddleClockPosition()Z

    move-result v2

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    invoke-virtual {v3}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->isRightClockPosition()Z

    move-result v3

    const-string v4, "clock"

    check-cast v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    invoke-virtual {v0, v4}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->isBlocked(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockBlocked:Z

    const-string/jumbo v0, "updateQuickStarStyle() left:"

    const-string v4, ", middle:"

    const-string v5, ", right:"

    invoke-static {v0, v4, v5, v1, v2}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mClockBlocked:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockBlocked:Z

    const-string v5, "[QuickStar]PhoneStatusBarClockManager"

    invoke-static {v0, v4, v5}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockPosition:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->LEFT:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockPosition:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->RIGHT:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockPosition:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->MIDDLE:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockPosition:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->NONE:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockPosition:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockPosition:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    if-eq v0, v1, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mIsChangedClockPosition:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->updateResources()V

    :cond_3
    return-void
.end method

.method public final updateResources()V
    .locals 4

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateResources() mGrandParentView is null ? "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mGrandParentView:Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsChangedClockPosition:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mIsChangedClockPosition:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mClockPosition:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockPosition:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "[QuickStar]PhoneStatusBarClockManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mGrandParentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockView:Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;

    if-nez v0, :cond_2

    goto :goto_5

    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mIsChangedClockPosition:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mLeftContainer:Landroid/view/ViewGroup;

    const/16 v3, 0x8

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mMiddleContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockView:Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mRightContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockView:Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockPosition:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_7

    const/4 v2, 0x3

    if-eq v0, v2, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mLeftContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->addClockView(Landroid/view/ViewGroup;)V

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->addClockView(Landroid/view/ViewGroup;)V

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mMiddleContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->addClockView(Landroid/view/ViewGroup;)V

    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mIndicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mIndicatorGarden:Lcom/android/systemui/statusbar/phone/IndicatorGarden;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$onGardenOnLayout$1;

    invoke-direct {v3, v0, v2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$onGardenOnLayout$1;-><init>(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mIsChangedClockPosition:Z

    :cond_8
    :goto_5
    return-void
.end method
