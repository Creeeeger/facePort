.class public final Lcom/android/systemui/qs/bar/VideoCallMicModeBar;
.super Lcom/android/systemui/qs/bar/BarItemImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public fontScale:F

.field public final items:Lkotlin/sequences/Sequence;

.field public final lastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

.field public orientation:I

.field public slotButtonGroup:Landroid/widget/LinearLayout;

.field public final util:Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;Lcom/android/systemui/qs/SecQSDetailController;)V
    .locals 8

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;

    new-instance v0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$util$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$util$1;-><init>(Lcom/android/systemui/qs/bar/VideoCallMicModeBar;)V

    invoke-direct {v6, p1, p3, v0}, Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lkotlin/jvm/functions/Function0;)V

    iput-object v6, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;->util:Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;

    new-instance p3, Lcom/android/systemui/qs/bar/VideoCallEffect;

    new-instance v0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$items$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$items$1;-><init>(Lcom/android/systemui/qs/bar/VideoCallMicModeBar;)V

    invoke-direct {p3, v6, p1, p4, v0}, Lcom/android/systemui/qs/bar/VideoCallEffect;-><init>(Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;Landroid/content/Context;Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;Ljava/lang/Runnable;)V

    new-instance v7, Lcom/android/systemui/qs/bar/VoIPTranslator;

    new-instance v5, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$items$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$items$2;-><init>(Lcom/android/systemui/qs/bar/VideoCallMicModeBar;)V

    move-object v0, v7

    move-object v1, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/bar/VoIPTranslator;-><init>(Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;Ljava/lang/Runnable;)V

    new-instance p4, Lcom/android/systemui/qs/bar/MicMode;

    new-instance v4, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$items$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$items$3;-><init>(Lcom/android/systemui/qs/bar/VideoCallMicModeBar;)V

    new-instance v5, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$items$4;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$items$4;-><init>(Lcom/android/systemui/qs/bar/VideoCallMicModeBar;)V

    move-object v0, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/bar/MicMode;-><init>(Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/android/systemui/qs/SecQSDetailController;)V

    filled-new-array {p3, v7, p4}, [Lcom/android/systemui/qs/bar/VideoCallMicModeBar$VideoCallMicModeBarBase;

    move-result-object p1

    invoke-static {p1}, Lkotlin/sequences/SequencesKt__SequencesKt;->sequenceOf([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;->items:Lkotlin/sequences/Sequence;

    new-instance p1, Lcom/android/systemui/util/ConfigurationState;

    sget-object p2, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->ORIENTATION:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    sget-object p3, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->SCREEN_HEIGHT_DP:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    sget-object p4, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->DISPLAY_DEVICE_TYPE:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    filled-new-array {p2, p3, p4}, [Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/systemui/util/ConfigurationState;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;->lastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mCallback:Lcom/android/systemui/qs/bar/BarController$4;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;->items:Lkotlin/sequences/Sequence;

    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$VideoCallMicModeBarBase;

    invoke-interface {v0}, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$VideoCallMicModeBarBase;->fini()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getBarLayout()I
    .locals 0

    const p0, 0x7f0d03c9

    return p0
.end method

.method public final inflateViews(Landroid/view/ViewGroup;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;->util:Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;

    const v2, 0x7f0d03c9

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;->items:Lkotlin/sequences/Sequence;

    if-eqz p1, :cond_3

    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$VideoCallMicModeBarBase;

    invoke-interface {v3, p1}, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$VideoCallMicModeBarBase;->inflate(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const v2, 0x7f0a0b92

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    sget-object v0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$inflateSlotButtonGroup$1$1;->INSTANCE:Lcom/android/systemui/qs/bar/VideoCallMicModeBar$inflateSlotButtonGroup$1$1;

    new-instance v3, Lkotlin/sequences/TransformingSequence;

    invoke-direct {v3, v1, v0}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v3}, Lkotlin/sequences/SequencesKt___SequencesKt;->filterNotNull(Lkotlin/sequences/Sequence;)Lkotlin/sequences/FilteringSequence;

    move-result-object v0

    new-instance v3, Lkotlin/sequences/FilteringSequence$iterator$1;

    invoke-direct {v3, v0}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    :goto_1
    invoke-virtual {v3}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    move-object v0, v2

    :cond_2
    iput-object v0, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;->slotButtonGroup:Landroid/widget/LinearLayout;

    goto :goto_2

    :cond_3
    move-object p1, v0

    :goto_2
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$VideoCallMicModeBarBase;

    invoke-interface {v0}, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$VideoCallMicModeBarBase;->init()V

    goto :goto_3

    :cond_4
    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$VideoCallMicModeBarBase;

    sget-object v2, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$setClickListeners$1$1;->INSTANCE:Lcom/android/systemui/qs/bar/VideoCallMicModeBar$setClickListeners$1$1;

    invoke-interface {v0, v2}, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$VideoCallMicModeBarBase;->setClickListener(Lkotlin/jvm/functions/Function1;)V

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;->updateBarVisibilities$1()V

    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$VideoCallMicModeBarBase;

    invoke-interface {p1}, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$VideoCallMicModeBarBase;->updateContents()V

    goto :goto_5

    :cond_6
    return-void
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    iget-object v2, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;->lastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    invoke-virtual {v2, p1}, Lcom/android/systemui/util/ConfigurationState;->needToUpdate(Landroid/content/res/Configuration;)Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;->orientation:I

    if-ne v3, v0, :cond_1

    iget v3, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;->fontScale:F

    cmpg-float v3, v3, v1

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;->orientation:I

    iput v1, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;->fontScale:F

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;->updateHeightMargins()V

    invoke-virtual {v2, p1}, Lcom/android/systemui/util/ConfigurationState;->update(Landroid/content/res/Configuration;)V

    :goto_0
    return-void
.end method

.method public final setListening(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mListening:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;->updateHeightMargins()V

    :cond_0
    return-void
.end method

.method public final updateBarVisibilities$1()V
    .locals 9

    sget-object v0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$updateBarVisibilities$1;->INSTANCE:Lcom/android/systemui/qs/bar/VideoCallMicModeBar$updateBarVisibilities$1;

    new-instance v1, Lkotlin/sequences/TransformingSequence;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;->items:Lkotlin/sequences/Sequence;

    invoke-direct {v1, v2, v0}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v1}, Lkotlin/sequences/SequencesKt___SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x2

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v6, "updateBarVisibilities: videoCall: "

    const-string v7, " micMode: "

    const-string v8, " voIPTranslator: "

    invoke-static {v6, v7, v8, v3, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->TAG:Ljava/lang/String;

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/android/systemui/qs/bar/VideoCallMicModeStates;

    invoke-direct {v6, v3, v5, v0}, Lcom/android/systemui/qs/bar/VideoCallMicModeStates;-><init>(ZZZ)V

    invoke-interface {v2}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$VideoCallMicModeBarBase;

    invoke-interface {v7, v6}, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$VideoCallMicModeBarBase;->updateVisibilities(Lcom/android/systemui/qs/bar/VideoCallMicModeStates;)V

    goto :goto_0

    :cond_0
    if-nez v3, :cond_1

    if-nez v0, :cond_1

    if-eqz v5, :cond_2

    :cond_1
    move v1, v4

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/bar/BarItemImpl;->showBar(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;->updateHeightMargins()V

    return-void
.end method

.method public final updateHeightMargins()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    sget-object v4, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$updateHeightMargins$1;->INSTANCE:Lcom/android/systemui/qs/bar/VideoCallMicModeBar$updateHeightMargins$1;

    new-instance v5, Lkotlin/sequences/TransformingSequence;

    iget-object v6, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;->items:Lkotlin/sequences/Sequence;

    invoke-direct {v5, v6, v4}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v5}, Lkotlin/sequences/SequencesKt___SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    new-instance v4, Lcom/android/systemui/qs/bar/VideoCallMicModeStates;

    invoke-direct {v4, v1, v2, v3}, Lcom/android/systemui/qs/bar/VideoCallMicModeStates;-><init>(ZZZ)V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;->util:Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;

    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;->getResources()Lcom/android/systemui/qs/bar/VideoCallMicModeResources;

    move-result-object v2

    invoke-interface {v6}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$VideoCallMicModeBarBase;

    invoke-interface {v5, v0, v4, v2}, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$VideoCallMicModeBarBase;->updateHeightMargins(ZLcom/android/systemui/qs/bar/VideoCallMicModeStates;Lcom/android/systemui/qs/bar/VideoCallMicModeResources;)V

    goto :goto_1

    :cond_2
    invoke-interface {v6}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$VideoCallMicModeBarBase;

    invoke-interface {v2}, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$VideoCallMicModeBarBase;->updateFontScale()V

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;->slotButtonGroup:Landroid/widget/LinearLayout;

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;->getResources()Lcom/android/systemui/qs/bar/VideoCallMicModeResources;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->dividerPadding:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setDividerPadding(I)V

    :goto_3
    return-void
.end method
