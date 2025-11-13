.class public final Lcom/android/systemui/qs/QSPanelHost;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/QSHost$Callback;


# instance fields
.field public applyBarOrderRunnable:Ljava/lang/Runnable;

.field public mBarController:Lcom/android/systemui/qs/bar/BarController;

.field public final mCallbacks:Ljava/util/ArrayList;

.field public final mDemoResetSettingsApplier:Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda16;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mOrientationSupplier:Ljava/util/function/IntSupplier;

.field public final mQsHost:Lcom/android/systemui/qs/QSHost;

.field public final mRecords:Ljava/util/ArrayList;

.field public final mResetSettingsApplier:Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda15;

.field public final mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field public final mTargetView:Lcom/android/systemui/qs/SecQSPanel;

.field public mTileCallbackFunction:Ljava/util/function/Function;

.field public mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

.field public final mType:I

.field public resetBarSettingsRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(ILandroid/view/View;Lcom/android/systemui/qs/QSHost;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/qs/SecQSPanelResourcePicker;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda15;-><init>(Lcom/android/systemui/qs/QSPanelHost;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanelHost;->mResetSettingsApplier:Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda15;

    new-instance v0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda16;-><init>(Lcom/android/systemui/qs/QSPanelHost;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanelHost;->mDemoResetSettingsApplier:Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda16;

    iput p1, p0, Lcom/android/systemui/qs/QSPanelHost;->mType:I

    check-cast p2, Lcom/android/systemui/qs/SecQSPanel;

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanelHost;->mTargetView:Lcom/android/systemui/qs/SecQSPanel;

    iput-object p3, p0, Lcom/android/systemui/qs/QSPanelHost;->mQsHost:Lcom/android/systemui/qs/QSHost;

    iput-object p5, p0, Lcom/android/systemui/qs/QSPanelHost;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelHost;->isHeader()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p3}, Lcom/android/systemui/qs/QSHost;->getQQSTileHost()Lcom/android/systemui/qs/SecQQSTileHost;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/qs/SecQQSTileHost;->mCallbacks:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p3, p0}, Lcom/android/systemui/qs/QSHost;->addCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    :goto_0
    iput-object p4, p0, Lcom/android/systemui/qs/QSPanelHost;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanelHost;->mRecords:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanelHost;->mCallbacks:Ljava/util/ArrayList;

    return-void
.end method

.method public static orientationConvertToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "land"

    return-object p0

    :cond_1
    const-string p0, "port"

    return-object p0

    :cond_2
    const-string/jumbo p0, "undef"

    return-object p0
.end method


# virtual methods
.method public final addBarTiles(II)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelHost;->mQsHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v1, p2, p1}, Lcom/android/systemui/qs/QSHost;->getBarTilesByType(II)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda3;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/QSPanelHost;I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda14;

    invoke-direct {v2, v3, p0, v0}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda14;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addBarTiles: type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " tileRecords="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " orientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "QSPanelHost"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda20;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda20;-><init>(I)V

    const-string p2, "SmartViewBar"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/qs/QSPanelHost;->addTilesToBar(Ljava/util/List;Lcom/android/internal/util/ToBooleanFunction;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda20;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda20;-><init>(I)V

    const-string p2, "BottomBar"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/qs/QSPanelHost;->addTilesToBar(Ljava/util/List;Lcom/android/internal/util/ToBooleanFunction;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda20;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda20;-><init>(I)V

    const-string p2, "BrightnessVolumeBar"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/qs/QSPanelHost;->addTilesToBar(Ljava/util/List;Lcom/android/internal/util/ToBooleanFunction;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda20;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda20;-><init>(I)V

    const-string p2, "TopBar"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/qs/QSPanelHost;->addTilesToBar(Ljava/util/List;Lcom/android/internal/util/ToBooleanFunction;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final addTilesToBar(Ljava/util/List;Lcom/android/internal/util/ToBooleanFunction;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelHost;->getBarItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda25;

    const/4 v2, 0x1

    invoke-direct {v1, p2, v2}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda25;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda6;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda31;-><init>(Lcom/android/systemui/qs/QSPanelHost;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final createTileView(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelHost;->mTargetView:Lcom/android/systemui/qs/SecQSPanel;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelHost;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    if-eqz p2, :cond_0

    new-instance p0, Lcom/android/systemui/qs/tileimpl/NoLabelTileView;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/tileimpl/NoLabelTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/SecQSPanelResourcePicker;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelHost;->mQsHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p0, p2}, Lcom/android/systemui/qs/QSHost;->isLargeBarTile(Ljava/lang/String;)Z

    move-result p2

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/android/systemui/qs/QSHost;->isNoBgLargeTile(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/systemui/qs/QSHost;->isBrightnessVolumeBarTile(Ljava/lang/String;)Z

    move-result p0

    if-eqz p2, :cond_1

    new-instance p0, Lcom/android/systemui/qs/tileimpl/LargeTileView;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/qs/tileimpl/LargeTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Z)V

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    new-instance p0, Lcom/android/systemui/qs/tileimpl/NoLabelTileView;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/tileimpl/NoLabelTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/SecQSPanelResourcePicker;)V

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/android/systemui/qs/tileimpl/LabelTileView;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/tileimpl/LabelTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/SecQSPanelResourcePicker;)V

    :goto_0
    return-object p0
.end method

.method public final getBarItems()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelHost;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    if-nez v0, :cond_0

    const-string p0, "QSPanelHost"

    const-string v0, "getBarItems: mBarController is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelHost;->isHeader()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelHost;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mCollapsedBarItems:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelHost;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mExpandedBarItems:Ljava/util/ArrayList;

    :goto_0
    return-object p0
.end method

.method public final getTileView(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTileView;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelHost;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda17;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda17;-><init>(Ljava/lang/String;I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda6;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTileView;

    return-object p0
.end method

.method public final isHeader()Z
    .locals 1

    iget p0, p0, Lcom/android/systemui/qs/QSPanelHost;->mType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final onTilesChanged()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelHost;->setTiles()V

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelHost;->mCallbacks:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda5;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final resetSettings()V
    .locals 3

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/systemui/util/SettingsHelper;->setPanelSplit(Z)V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->setPanelSplitReversed(Z)V

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelHost;->resetBarSettingsRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public final setBarsToPanel(Ljava/util/List;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelHost;->mTargetView:Lcom/android/systemui/qs/SecQSPanel;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelHost;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mUpdateAnimatorsRunner:Ljava/lang/Runnable;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method public final setTiles()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelHost;->mTargetView:Lcom/android/systemui/qs/SecQSPanel;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelHost;->mOrientationSupplier:Ljava/util/function/IntSupplier;

    invoke-interface {v1}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelHost;->mOrientationSupplier:Ljava/util/function/IntSupplier;

    invoke-interface {v1}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    :goto_0
    sget-boolean v2, Lcom/android/systemui/QpRune;->QUICK_PANEL_DEBUG_LOG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setTiles orientation = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/systemui/qs/QSPanelHost;->orientationConvertToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", controller.orientation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanelHost;->mOrientationSupplier:Ljava/util/function/IntSupplier;

    invoke-interface {v3}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v3

    invoke-static {v3}, Lcom/android/systemui/qs/QSPanelHost;->orientationConvertToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", view.orientation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v3}, Lcom/android/systemui/qs/QSPanelHost;->orientationConvertToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QSPanelHost"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelHost;->isHeader()Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanelHost;->mQsHost:Lcom/android/systemui/qs/QSHost;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanelHost;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v2, v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v2}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getQuickQsTileNum(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelHost;->isHeader()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Lcom/android/systemui/qs/QSHost;->getQQSTileHost()Lcom/android/systemui/qs/SecQQSTileHost;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/qs/SecQQSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Lcom/android/systemui/qs/QSHost;->getTiles()Ljava/util/Collection;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    int-to-long v3, v0

    invoke-interface {v2, v3, v4}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelHost;->isHeader()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v3}, Lcom/android/systemui/qs/QSHost;->getQQSTileHost()Lcom/android/systemui/qs/SecQQSTileHost;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/qs/SecQQSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    goto :goto_2

    :cond_4
    invoke-interface {v3}, Lcom/android/systemui/qs/QSHost;->getTiles()Ljava/util/Collection;

    move-result-object v2

    :goto_2
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_3
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanelHost;->mRecords:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanelHost;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget v2, p0, Lcom/android/systemui/qs/QSPanelHost;->mType:I

    if-nez v2, :cond_5

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/qs/QSPanelHost;->addBarTiles(II)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/qs/QSPanelHost;->addBarTiles(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/qs/QSPanelHost;->addBarTiles(II)V

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/qs/QSPanelHost;->addBarTiles(II)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelHost;->getBarItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/QSPanelHost;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelHost;->mRecords:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda0;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelHost;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    if-eqz p0, :cond_6

    invoke-interface {p0}, Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;->updateResources()Z

    :cond_6
    return-void
.end method
