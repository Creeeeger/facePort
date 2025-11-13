.class public final Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;


# instance fields
.field public final mContext:Landroid/content/Context;

.field private mDateFormatChangedListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public mPanelState:I

.field public mQuickStarDateStringFormat:Ljava/lang/String;

.field public mQuickStarDateStringPattern:Ljava/lang/String;

.field public final mRingBellOfTowerRunnable:Ljava/lang/Runnable;

.field public final mSecondTick:Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper$1;

.field public mSecondsHandler:Landroid/os/Handler;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public mShouldShowSecondsClockByQuickStar:Z

.field public final mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;Ljava/lang/Runnable;Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper$1;-><init>(Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mSecondTick:Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper$1;

    new-instance v0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper$2;-><init>(Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mDateFormatChangedListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mRingBellOfTowerRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-void
.end method


# virtual methods
.method public final getQuickStarDateViewText()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mQuickStarDateStringFormat:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getQuickStarDateFormat()I

    move-result v0

    const-string v1, ""

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mContext:Landroid/content/Context;

    const v4, 0x7f130e9e

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mQuickStarDateStringPattern:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mContext:Landroid/content/Context;

    const v4, 0x7f130f67

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mQuickStarDateStringPattern:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mContext:Landroid/content/Context;

    const v4, 0x7f130f64

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mQuickStarDateStringPattern:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mContext:Landroid/content/Context;

    const v4, 0x7f130f65

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mQuickStarDateStringPattern:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/text/SimpleDateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v2

    check-cast v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    const-string v4, "\\W?[Yy]+\\W?"

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mQuickStarDateStringPattern:Ljava/lang/String;

    :goto_0
    if-ne v0, v3, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mQuickStarDateStringPattern:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mQuickStarDateStringFormat:Ljava/lang/String;

    goto :goto_1

    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mQuickStarDateStringPattern:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mQuickStarDateStringFormat:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mQuickStarDateStringFormat:Ljava/lang/String;

    return-object v1

    :cond_5
    :goto_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mQuickStarDateStringFormat:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final init()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    check-cast v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    const-string v1, "QSClockBellTower"

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->registerSubscriber(Ljava/lang/String;Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mDateFormatChangedListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const-string/jumbo v3, "quickstar_indicator_clock_date_format"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;

    new-instance v1, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;)V

    iget-object p0, v0, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;->expansionStateListeners$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateChangeEvent;

    invoke-virtual {v0}, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;->getRepository()Lcom/android/systemui/shade/data/repository/SecPanelExpansionStateRepository;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/shade/data/repository/SecPanelExpansionStateRepository;->panelState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateChangeEvent;-><init>(I)V

    return-void
.end method

.method public final shouldShowSecondsClock()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mShouldShowSecondsClockByQuickStar:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mPanelState:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final updateQuickStarStyle()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    check-cast v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->shouldShowSecondsClock()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateQuickStarStyle() shouldShowSecondsClock("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mShouldShowSecondsClockByQuickStar:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " >> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QSClockBellTower"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mShouldShowSecondsClockByQuickStar:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mShouldShowSecondsClockByQuickStar:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->updateSecondsClockHandler()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mRingBellOfTowerRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final updateSecondsClockHandler()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->shouldShowSecondsClock()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mSecondTick:Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper$1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mSecondsHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mSecondsHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mSecondsHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mSecondsHandler:Landroid/os/Handler;

    :cond_1
    :goto_0
    return-void
.end method
