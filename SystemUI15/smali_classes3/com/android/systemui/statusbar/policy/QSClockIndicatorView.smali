.class public final Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;
.super Lcom/android/systemui/statusbar/policy/QSClock;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;


# instance fields
.field public callers:Ljava/lang/String;

.field public clockVisibleByUser:Z

.field private settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public slimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/QSClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, ""

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;->callers:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;->clockVisibleByUser:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final calculateVisibility()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByPolicy:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;->clockVisibleByUser:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getDateText(Lcom/android/systemui/statusbar/policy/QSClockBellSound;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ko"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;->isTurnOnShowingDateByQuickStar()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;->isTurnOnShowingDateByQuickStar()Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, p1, Lcom/android/systemui/statusbar/policy/QSClockBellSound;->QuickStarDateText:Ljava/lang/String;

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    iget-object p0, p1, Lcom/android/systemui/statusbar/policy/QSClockBellSound;->ShortDateText:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object p0, p1, Lcom/android/systemui/statusbar/policy/QSClockBellSound;->DateText:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public final isTurnOnShowingDateByQuickStar()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;->slimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->showDateClock()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final notifyTimeChanged(Lcom/android/systemui/statusbar/policy/QSClockBellSound;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;->slimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    iget-object v1, p1, Lcom/android/systemui/statusbar/policy/QSClockBellSound;->TimeContentDescription:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->showAmPmClock()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/QSClockBellSound;->TimeText:Ljava/lang/String;

    :goto_0
    sget-boolean v2, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SHOW_DATE:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v5, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2, v5}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isShowDate()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;->isTurnOnShowingDateByQuickStar()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;->isTurnOnShowingDateByQuickStar()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "  "

    goto :goto_1

    :cond_3
    const-string v2, "   "

    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v5

    if-ne v5, v3, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;->getDateText(Lcom/android/systemui/statusbar/policy/QSClockBellSound;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;->getDateText(Lcom/android/systemui/statusbar/policy/QSClockBellSound;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;->isTurnOnShowingDateByQuickStar()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f070ebb

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f07148d

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;->slimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    if-eqz v5, :cond_6

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    invoke-virtual {v5}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->isLeftClockPosition()Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v2

    move v2, v4

    goto :goto_4

    :cond_6
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;->slimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    if-eqz v5, :cond_7

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    invoke-virtual {v5}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->isRightClockPosition()Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v4

    goto :goto_4

    :cond_7
    move v2, v4

    move v5, v2

    :goto_4
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0, v2, v1, v5, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByPolicy:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;->clockVisibleByUser:Z

    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_8

    goto :goto_5

    :cond_8
    move v3, v4

    :goto_5
    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;->callers:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "StatusBar clock="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " notifyTimeChanged("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") clockVisibleByPolicy="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", clockVisibleByUser="

    const-string v0, ", visible="

    invoke-static {v5, v1, p1, v2, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", parent="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " caller="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QSClock"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-static {}, Landroid/graphics/Typeface;->semIsDefaultFontStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "sec"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    const/16 v2, 0x2bc

    invoke-static {v0, v2, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onDarkChanged(Ljava/util/ArrayList;FI)V
    .locals 0

    invoke-static {p1, p0, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Ljava/util/Collection;Landroid/view/View;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final setDependencies(Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;->slimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-void
.end method

.method public final setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/QSClock;->setVisibility(I)V

    const/4 p1, 0x5

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;->callers:Ljava/lang/String;

    return-void
.end method
