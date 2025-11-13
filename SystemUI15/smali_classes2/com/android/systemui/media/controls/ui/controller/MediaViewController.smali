.class public final Lcom/android/systemui/media/controls/ui/controller/MediaViewController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I

.field public static final GUTS_ANIMATION_DURATION:J


# instance fields
.field public animateNextStateChange:Z

.field public animationDelay:J

.field public animationDuration:J

.field public collapsedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

.field public configurationChangeListener:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda2;

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final configurationListener:Lcom/android/systemui/media/controls/ui/controller/MediaViewController$configurationListener$1;

.field public final context:Landroid/content/Context;

.field public currentEndLocation:I

.field public currentHeight:I

.field public currentStartLocation:I

.field public currentTransitionProgress:F

.field public currentWidth:I

.field public expandedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

.field public firstRefresh:Z

.field public final globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

.field public isGutsVisible:Z

.field public final layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;

.field public final logger:Lcom/android/systemui/media/controls/ui/controller/MediaViewLogger;

.field public final mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final measurement:Lcom/android/systemui/util/animation/MeasurementOutput;

.field public final mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

.field public final mediaHostStatesManager:Lcom/android/systemui/media/controls/ui/controller/MediaHostStatesManager;

.field public final nextNotVisibleValue:I

.field public final prevNotVisibleValue:I

.field public sizeChangedListener:Lkotlin/jvm/functions/Function0;

.field public final stateCallback:Lcom/android/systemui/media/controls/ui/controller/MediaViewController$stateCallback$1;

.field public final tmpKey:Lcom/android/systemui/media/controls/ui/controller/CacheKey;

.field public final tmpState:Lcom/android/systemui/util/animation/TransitionViewState;

.field public final tmpState2:Lcom/android/systemui/util/animation/TransitionViewState;

.field public final tmpState3:Lcom/android/systemui/util/animation/TransitionViewState;

.field public transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

.field public type:Lcom/android/systemui/media/controls/ui/controller/MediaViewController$TYPE;

.field public final viewStates:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/controls/ui/controller/MediaViewController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-wide/16 v0, 0xea

    sput-wide v0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->GUTS_ANIMATION_DURATION:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/media/controls/ui/controller/MediaHostStatesManager;Lcom/android/systemui/media/controls/ui/controller/MediaViewLogger;Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/media/controls/util/MediaFlags;Lcom/android/systemui/util/settings/GlobalSettings;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->mediaHostStatesManager:Lcom/android/systemui/media/controls/ui/controller/MediaHostStatesManager;

    iput-object p4, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->logger:Lcom/android/systemui/media/controls/ui/controller/MediaViewLogger;

    iput-object p6, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object p7, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    iput-object p8, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->firstRefresh:Z

    new-instance p1, Lcom/android/systemui/util/animation/TransitionLayoutController;

    invoke-direct {p1}, Lcom/android/systemui/util/animation/TransitionLayoutController;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;

    new-instance p4, Lcom/android/systemui/util/animation/MeasurementOutput;

    const/4 p5, 0x0

    invoke-direct {p4, p5, p5}, Lcom/android/systemui/util/animation/MeasurementOutput;-><init>(II)V

    iput-object p4, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->measurement:Lcom/android/systemui/util/animation/MeasurementOutput;

    sget-object p4, Lcom/android/systemui/media/controls/ui/controller/MediaViewController$TYPE;->PLAYER:Lcom/android/systemui/media/controls/ui/controller/MediaViewController$TYPE;

    iput-object p4, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->type:Lcom/android/systemui/media/controls/ui/controller/MediaViewController$TYPE;

    new-instance p4, Ljava/util/LinkedHashMap;

    invoke-direct {p4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p4, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->viewStates:Ljava/util/Map;

    const/4 p4, -0x1

    iput p4, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->currentEndLocation:I

    iput p4, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->currentStartLocation:I

    const/high16 p4, 0x3f800000    # 1.0f

    iput p4, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->currentTransitionProgress:F

    new-instance p4, Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-direct {p4}, Lcom/android/systemui/util/animation/TransitionViewState;-><init>()V

    iput-object p4, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->tmpState:Lcom/android/systemui/util/animation/TransitionViewState;

    new-instance p4, Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-direct {p4}, Lcom/android/systemui/util/animation/TransitionViewState;-><init>()V

    iput-object p4, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->tmpState2:Lcom/android/systemui/util/animation/TransitionViewState;

    new-instance p4, Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-direct {p4}, Lcom/android/systemui/util/animation/TransitionViewState;-><init>()V

    iput-object p4, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->tmpState3:Lcom/android/systemui/util/animation/TransitionViewState;

    new-instance p4, Lcom/android/systemui/media/controls/ui/controller/CacheKey;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/media/controls/ui/controller/CacheKey;-><init>(IIFZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p4, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->tmpKey:Lcom/android/systemui/media/controls/ui/controller/CacheKey;

    new-instance p4, Lcom/android/systemui/media/controls/ui/controller/MediaViewController$scrubbingChangeListener$1;

    invoke-direct {p4, p0}, Lcom/android/systemui/media/controls/ui/controller/MediaViewController$scrubbingChangeListener$1;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaViewController;)V

    new-instance p4, Lcom/android/systemui/media/controls/ui/controller/MediaViewController$enabledChangeListener$1;

    invoke-direct {p4, p0}, Lcom/android/systemui/media/controls/ui/controller/MediaViewController$enabledChangeListener$1;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaViewController;)V

    new-instance p4, Lcom/android/systemui/media/controls/ui/controller/MediaViewController$configurationListener$1;

    invoke-direct {p4, p0}, Lcom/android/systemui/media/controls/ui/controller/MediaViewController$configurationListener$1;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaViewController;)V

    iput-object p4, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->configurationListener:Lcom/android/systemui/media/controls/ui/controller/MediaViewController$configurationListener$1;

    new-instance p5, Lcom/android/systemui/media/controls/ui/controller/MediaViewController$stateCallback$1;

    invoke-direct {p5, p0}, Lcom/android/systemui/media/controls/ui/controller/MediaViewController$stateCallback$1;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaViewController;)V

    iput-object p5, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->stateCallback:Lcom/android/systemui/media/controls/ui/controller/MediaViewController$stateCallback$1;

    new-instance p5, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {p5}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iput-object p5, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->collapsedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    new-instance p5, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {p5}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iput-object p5, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->expandedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object p3, p3, Lcom/android/systemui/media/controls/ui/controller/MediaHostStatesManager;->controllers:Ljava/util/Set;

    invoke-interface {p3, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance p3, Lcom/android/systemui/media/controls/ui/controller/MediaViewController$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/media/controls/ui/controller/MediaViewController$1;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaViewController;)V

    invoke-virtual {p1, p3}, Lcom/android/systemui/util/animation/TransitionLayoutController;->setSizeChangedListener(Lkotlin/jvm/functions/Function2;)V

    check-cast p2, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {p2, p4}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public static calculateWidgetGroupAlphaForSquishiness(Ljava/util/Set;FLcom/android/systemui/util/animation/TransitionViewState;F)F
    .locals 11

    invoke-virtual {p2}, Lcom/android/systemui/util/animation/TransitionViewState;->getMeasureHeight()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/systemui/util/animation/TransitionViewState;->getMeasureHeight()I

    move-result v1

    int-to-float v1, v1

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {p2}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidgetStates()Ljava/util/Map;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/util/animation/WidgetState;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/systemui/util/animation/WidgetState;->getY()F

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Float;->min(FF)F

    move-result v1

    invoke-virtual {v5}, Lcom/android/systemui/util/animation/WidgetState;->getY()F

    move-result v6

    invoke-virtual {v5}, Lcom/android/systemui/util/animation/WidgetState;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v6, v5

    invoke-static {v4, v6}, Ljava/lang/Float;->max(FF)F

    move-result v4

    goto :goto_0

    :cond_1
    cmpg-float v2, v4, p1

    if-nez v2, :cond_2

    float-to-double v5, p1

    sub-float/2addr v4, v1

    float-to-double v7, v4

    const-wide v9, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    double-to-float v4, v5

    :cond_2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidgetStates()Ljava/util/Map;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/animation/WidgetState;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/systemui/util/animation/WidgetState;->getAlpha()F

    move-result v5

    cmpg-float v5, v5, v3

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    sget-object v5, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->Companion:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$Companion;

    int-to-float v6, v0

    div-float v7, v4, v6

    div-float v6, p1, v6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-float v5, p3, v7

    sub-float/2addr v6, v7

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v5, v3, v6}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v5

    sget-object v6, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->TRANSFORM_BEZIER:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v6, v5}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/systemui/util/animation/WidgetState;->setAlpha(F)V

    goto :goto_1

    :cond_5
    return v1
.end method

.method private static synthetic getTransitionLayout$annotations()V
    .locals 0

    return-void
.end method

.method public static squishViewState$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Lcom/android/systemui/util/animation/TransitionViewState;F)Lcom/android/systemui/util/animation/TransitionViewState;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/android/systemui/util/animation/TransitionViewState;->copy$default(Lcom/android/systemui/util/animation/TransitionViewState;Lcom/android/systemui/util/animation/TransitionViewState;ILjava/lang/Object;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/animation/TransitionViewState;->getMeasureHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/animation/TransitionViewState;->setHeight(I)V

    sget-object v1, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->Companion:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->backgroundIds:Ljava/util/Set;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidgetStates()Ljava/util/Map;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/animation/WidgetState;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lcom/android/systemui/util/animation/WidgetState;->setHeight(I)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->Companion:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->expandedBottomActionIds:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/android/systemui/util/animation/TransitionViewState;->getMeasureHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1, p0, p1}, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->calculateWidgetGroupAlphaForSquishiness(Ljava/util/Set;FLcom/android/systemui/util/animation/TransitionViewState;F)F

    sget-object v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->detailIds:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/android/systemui/util/animation/TransitionViewState;->getMeasureHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1, p0, p1}, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->calculateWidgetGroupAlphaForSquishiness(Ljava/util/Set;FLcom/android/systemui/util/animation/TransitionViewState;F)F

    sget-object v0, Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;->Companion:Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;->mediaTitlesAndSubtitlesIds:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/android/systemui/util/animation/TransitionViewState;->getMeasureHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1, p0, p1}, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->calculateWidgetGroupAlphaForSquishiness(Ljava/util/Set;FLcom/android/systemui/util/animation/TransitionViewState;F)F

    move-result v0

    sget-object v1, Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;->mediaContainersIds:Ljava/util/Set;

    invoke-static {v1, v0, p0, p1}, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->calculateWidgetGroupAlphaForSquishiness(Ljava/util/Set;FLcom/android/systemui/util/animation/TransitionViewState;F)F

    return-object p0
.end method


# virtual methods
.method public final attach(Lcom/android/systemui/util/animation/TransitionLayout;Lcom/android/systemui/media/controls/ui/controller/MediaViewController$TYPE;)V
    .locals 8

    const-string v0, "attach "

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v2, "MediaViewController#attach"

    invoke-static {v2}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->loadLayoutForType(Lcom/android/systemui/media/controls/ui/controller/MediaViewController$TYPE;)V

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->logger:Lcom/android/systemui/media/controls/ui/controller/MediaViewLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->currentStartLocation:I

    iget v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->currentEndLocation:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v5, Lcom/android/systemui/media/controls/ui/controller/MediaViewLogger$logMediaLocation$2;->INSTANCE:Lcom/android/systemui/media/controls/ui/controller/MediaViewLogger$logMediaLocation$2;

    iget-object v2, v2, Lcom/android/systemui/media/controls/ui/controller/MediaViewLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v6, "MediaView"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v4, v5, v7}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p2, v5, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    move-object p2, v4

    check-cast p2, Lcom/android/systemui/log/LogMessageImpl;

    iput v0, p2, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    iput v3, p2, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    invoke-virtual {v2, v4}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    iget-object p2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;

    invoke-virtual {p2, p1}, Lcom/android/systemui/util/animation/TransitionLayoutController;->attach(Lcom/android/systemui/util/animation/TransitionLayout;)V

    iget v4, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->currentEndLocation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, -0x1

    if-ne v4, p1, :cond_2

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    iget v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->currentStartLocation:I

    iget v5, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->currentTransitionProgress:F

    const/4 v7, 0x0

    const/4 v6, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->setCurrentState(IIFZZ)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_4
    throw p0
.end method

.method public varargs loadAnimator(Landroid/content/Context;ILandroid/view/animation/Interpolator;[Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 6

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    array-length v0, p4

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p4, v2

    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    check-cast v4, Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    invoke-virtual {v5, p3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object p1
.end method

.method public final loadLayoutForType(Lcom/android/systemui/media/controls/ui/controller/MediaViewController$TYPE;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->type:Lcom/android/systemui/media/controls/ui/controller/MediaViewController$TYPE;

    sget-object v0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->collapsedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->context:Landroid/content/Context;

    const v1, 0x7f17000c

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->expandedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->context:Landroid/content/Context;

    const v1, 0x7f17000d

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->collapsedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->context:Landroid/content/Context;

    const v1, 0x7f17000e

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->expandedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->context:Landroid/content/Context;

    const v1, 0x7f17000f

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->refreshState()V

    return-void
.end method

.method public final obtainViewState(Lcom/android/systemui/media/controls/ui/view/MediaHostState;Z)Lcom/android/systemui/util/animation/TransitionViewState;
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    const/4 v0, 0x0

    if-eqz p1, :cond_15

    invoke-interface {p1}, Lcom/android/systemui/media/controls/ui/view/MediaHostState;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_d

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->isGutsVisible:Z

    invoke-interface {p1}, Lcom/android/systemui/media/controls/ui/view/MediaHostState;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/util/animation/MeasurementInput;->getHeightMeasureSpec()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->tmpKey:Lcom/android/systemui/media/controls/ui/controller/CacheKey;

    iput v2, v4, Lcom/android/systemui/media/controls/ui/controller/CacheKey;->heightMeasureSpec:I

    invoke-interface {p1}, Lcom/android/systemui/media/controls/ui/view/MediaHostState;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/systemui/util/animation/MeasurementInput;->getWidthMeasureSpec()I

    move-result v2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    iput v2, v4, Lcom/android/systemui/media/controls/ui/controller/CacheKey;->widthMeasureSpec:I

    invoke-interface {p1}, Lcom/android/systemui/media/controls/ui/view/MediaHostState;->getExpansion()F

    move-result v2

    iput v2, v4, Lcom/android/systemui/media/controls/ui/controller/CacheKey;->expansion:F

    iput-boolean v1, v4, Lcom/android/systemui/media/controls/ui/controller/CacheKey;->gutsVisible:Z

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->viewStates:Ljava/util/Map;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/animation/TransitionViewState;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_4

    invoke-interface {p1}, Lcom/android/systemui/media/controls/ui/view/MediaHostState;->getSquishFraction()F

    move-result p0

    cmpg-float p0, p0, v2

    if-gtz p0, :cond_3

    if-nez p2, :cond_3

    invoke-interface {p1}, Lcom/android/systemui/media/controls/ui/view/MediaHostState;->getSquishFraction()F

    move-result p0

    invoke-static {v1, p0}, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->squishViewState$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Lcom/android/systemui/util/animation/TransitionViewState;F)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1

    :cond_4
    iget v1, v4, Lcom/android/systemui/media/controls/ui/controller/CacheKey;->widthMeasureSpec:I

    iget v5, v4, Lcom/android/systemui/media/controls/ui/controller/CacheKey;->heightMeasureSpec:I

    iget v6, v4, Lcom/android/systemui/media/controls/ui/controller/CacheKey;->expansion:F

    iget-boolean v4, v4, Lcom/android/systemui/media/controls/ui/controller/CacheKey;->gutsVisible:Z

    new-instance v7, Lcom/android/systemui/media/controls/ui/controller/CacheKey;

    invoke-direct {v7, v1, v5, v6, v4}, Lcom/android/systemui/media/controls/ui/controller/CacheKey;-><init>(IIFZ)V

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    if-nez v1, :cond_5

    return-object v0

    :cond_5
    invoke-interface {p1}, Lcom/android/systemui/media/controls/ui/view/MediaHostState;->getExpansion()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    invoke-interface {p1}, Lcom/android/systemui/media/controls/ui/view/MediaHostState;->getExpansion()F

    move-result v0

    cmpg-float v0, v0, v2

    if-nez v0, :cond_14

    :goto_2
    invoke-interface {p1}, Lcom/android/systemui/media/controls/ui/view/MediaHostState;->getExpansion()F

    move-result v0

    cmpg-float v0, v0, v2

    if-nez v0, :cond_8

    invoke-interface {p1}, Lcom/android/systemui/media/controls/ui/view/MediaHostState;->getExpandedMatchesParentHeight()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070e08

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_3
    invoke-virtual {p0, v3}, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->setBackgroundHeights(I)V

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/android/systemui/media/controls/ui/view/MediaHostState;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/android/systemui/media/controls/ui/view/MediaHostState;->getExpansion()F

    move-result v4

    cmpl-float v1, v4, v1

    if-lez v1, :cond_9

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->expandedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    goto :goto_4

    :cond_9
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->collapsedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    :goto_4
    new-instance v4, Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-direct {v4}, Lcom/android/systemui/util/animation/TransitionViewState;-><init>()V

    invoke-virtual {v0, v3, v1, v4}, Lcom/android/systemui/util/animation/TransitionLayout;->calculateViewState(Lcom/android/systemui/util/animation/MeasurementInput;Landroidx/constraintlayout/widget/ConstraintSet;Lcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->type:Lcom/android/systemui/media/controls/ui/controller/MediaViewController$TYPE;

    sget-object v3, Lcom/android/systemui/media/controls/ui/controller/MediaViewController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_b

    const/4 v4, 0x2

    if-ne v1, v4, :cond_a

    sget-object v1, Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;->Companion:Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;->controlsIds:Ljava/util/Set;

    goto :goto_5

    :cond_a
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_b
    sget-object v1, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->Companion:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->controlsIds:Ljava/util/Set;

    :goto_5
    sget-object v4, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;->Companion:Lcom/android/systemui/media/controls/ui/view/GutsViewHolder$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;->ids:Ljava/util/Set;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v0}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidgetStates()Ljava/util/Map;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/util/animation/WidgetState;

    if-eqz v5, :cond_c

    iget-boolean v8, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->isGutsVisible:Z

    if-eqz v8, :cond_d

    goto :goto_7

    :cond_d
    invoke-virtual {v5}, Lcom/android/systemui/util/animation/WidgetState;->getAlpha()F

    move-result v6

    :goto_7
    invoke-virtual {v5, v6}, Lcom/android/systemui/util/animation/WidgetState;->setAlpha(F)V

    iget-boolean v6, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->isGutsVisible:Z

    if-eqz v6, :cond_e

    move v6, v3

    goto :goto_8

    :cond_e
    invoke-virtual {v5}, Lcom/android/systemui/util/animation/WidgetState;->getGone()Z

    move-result v6

    :goto_8
    invoke-virtual {v5, v6}, Lcom/android/systemui/util/animation/WidgetState;->setGone(Z)V

    goto :goto_6

    :cond_f
    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidgetStates()Ljava/util/Map;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/util/animation/WidgetState;

    if-eqz v4, :cond_10

    iget-boolean v5, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->isGutsVisible:Z

    if-eqz v5, :cond_11

    invoke-virtual {v4}, Lcom/android/systemui/util/animation/WidgetState;->getAlpha()F

    move-result v5

    goto :goto_a

    :cond_11
    move v5, v6

    :goto_a
    invoke-virtual {v4, v5}, Lcom/android/systemui/util/animation/WidgetState;->setAlpha(F)V

    iget-boolean v5, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->isGutsVisible:Z

    if-eqz v5, :cond_12

    invoke-virtual {v4}, Lcom/android/systemui/util/animation/WidgetState;->getGone()Z

    move-result v5

    goto :goto_b

    :cond_12
    move v5, v3

    :goto_b
    invoke-virtual {v4, v5}, Lcom/android/systemui/util/animation/WidgetState;->setGone(Z)V

    goto :goto_9

    :cond_13
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->viewStates:Ljava/util/Map;

    invoke-interface {p0, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_14
    invoke-interface {p1}, Lcom/android/systemui/media/controls/ui/view/MediaHostState;->copy()Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->setExpansion(F)V

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->obtainViewState(Lcom/android/systemui/media/controls/ui/view/MediaHostState;Z)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object v4

    invoke-interface {p1}, Lcom/android/systemui/media/controls/ui/view/MediaHostState;->copy()Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->setExpansion(F)V

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->obtainViewState(Lcom/android/systemui/media/controls/ui/view/MediaHostState;Z)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object v5

    invoke-interface {p1}, Lcom/android/systemui/media/controls/ui/view/MediaHostState;->getExpansion()F

    move-result v6

    iget-object v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/android/systemui/util/animation/TransitionLayoutController;->getInterpolatedState$default(Lcom/android/systemui/util/animation/TransitionLayoutController;Lcom/android/systemui/util/animation/TransitionViewState;Lcom/android/systemui/util/animation/TransitionViewState;FLcom/android/systemui/util/animation/TransitionViewState;ILjava/lang/Object;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object v0

    :goto_c
    invoke-interface {p1}, Lcom/android/systemui/media/controls/ui/view/MediaHostState;->getSquishFraction()F

    move-result p0

    cmpg-float p0, p0, v2

    if-gtz p0, :cond_15

    if-nez p2, :cond_15

    invoke-interface {p1}, Lcom/android/systemui/media/controls/ui/view/MediaHostState;->getSquishFraction()F

    move-result p0

    invoke-static {v0, p0}, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->squishViewState$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Lcom/android/systemui/util/animation/TransitionViewState;F)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object p0

    return-object p0

    :cond_15
    :goto_d
    return-object v0
.end method

.method public final refreshState()V
    .locals 7

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "MediaViewController#refreshState"

    invoke-static {v1}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->viewStates:Ljava/util/Map;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    iget-boolean v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->firstRefresh:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->mediaHostStatesManager:Lcom/android/systemui/media/controls/ui/controller/MediaHostStatesManager;

    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/controller/MediaHostStatesManager;->mediaHostStates:Ljava/util/Map;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/controls/ui/view/MediaHostState;

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->obtainViewState(Lcom/android/systemui/media/controls/ui/view/MediaHostState;Z)Lcom/android/systemui/util/animation/TransitionViewState;

    goto :goto_0

    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->firstRefresh:Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    iget v2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->currentStartLocation:I

    iget v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->currentEndLocation:I

    iget v4, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->currentTransitionProgress:F

    const/4 v6, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->setCurrentState(IIFZZ)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_3
    return-void

    :goto_2
    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_4
    throw p0
.end method

.method public final setBackgroundHeights(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->type:Lcom/android/systemui/media/controls/ui/controller/MediaViewController$TYPE;

    sget-object v1, Lcom/android/systemui/media/controls/ui/controller/MediaViewController$TYPE;->PLAYER:Lcom/android/systemui/media/controls/ui/controller/MediaViewController$TYPE;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->Companion:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->backgroundIds:Ljava/util/Set;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;->Companion:Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;->backgroundId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    :goto_0
    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->expandedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->getConstraint(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v1

    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final setCollapsedLayout(Landroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->collapsedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    return-void
.end method

.method public final setCurrentState(IIFZZ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v8, p5

    iget-object v4, v0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->mediaHostStatesManager:Lcom/android/systemui/media/controls/ui/controller/MediaHostStatesManager;

    iget-object v5, v0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->logger:Lcom/android/systemui/media/controls/ui/controller/MediaViewLogger;

    iget-object v6, v0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;

    const-string/jumbo v7, "setCurrentState (progress "

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v10, "MediaViewController#setCurrentState"

    invoke-static {v10}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iput v2, v0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->currentEndLocation:I

    iput v1, v0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->currentStartLocation:I

    iput v3, v0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->currentTransitionProgress:F

    const-string/jumbo v10, "setCurrentState"

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v12, Lcom/android/systemui/media/controls/ui/controller/MediaViewLogger$logMediaLocation$2;->INSTANCE:Lcom/android/systemui/media/controls/ui/controller/MediaViewLogger$logMediaLocation$2;

    iget-object v13, v5, Lcom/android/systemui/media/controls/ui/controller/MediaViewLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v14, "MediaView"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v11, v12, v15}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v10, v12, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    move-object v10, v11

    check-cast v10, Lcom/android/systemui/log/LogMessageImpl;

    iput v1, v10, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    iput v2, v10, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    invoke-virtual {v13, v11}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-boolean v10, v0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->animateNextStateChange:Z

    const/4 v11, 0x0

    if-eqz v10, :cond_1

    if-nez p4, :cond_1

    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    move v10, v11

    :goto_0
    iget-object v12, v4, Lcom/android/systemui/media/controls/ui/controller/MediaHostStatesManager;->mediaHostStates:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    check-cast v12, Ljava/util/LinkedHashMap;

    invoke-virtual {v12, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/media/controls/ui/view/MediaHostState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v12, :cond_3

    if-eqz v9, :cond_2

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_2
    return-void

    :cond_3
    :try_start_1
    iget-object v4, v4, Lcom/android/systemui/media/controls/ui/controller/MediaHostStatesManager;->mediaHostStates:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    check-cast v4, Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/media/controls/ui/view/MediaHostState;

    invoke-virtual {v0, v12, v8}, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->obtainViewState(Lcom/android/systemui/media/controls/ui/view/MediaHostState;Z)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v13, :cond_5

    if-eqz v9, :cond_4

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_4
    return-void

    :cond_5
    :try_start_2
    iget-object v14, v0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->tmpState2:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-virtual {v0, v13, v2, v14}, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->updateViewStateSize(Lcom/android/systemui/util/animation/TransitionViewState;ILcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6, v2}, Lcom/android/systemui/util/animation/TransitionLayoutController;->setMeasureState(Lcom/android/systemui/util/animation/TransitionViewState;)V

    iput-boolean v11, v0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->animateNextStateChange:Z

    iget-object v11, v0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v11, :cond_7

    if-eqz v9, :cond_6

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_6
    return-void

    :cond_7
    :try_start_3
    invoke-virtual {v0, v4, v8}, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->obtainViewState(Lcom/android/systemui/media/controls/ui/view/MediaHostState;Z)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object v11

    iget-object v13, v0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->tmpState3:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-virtual {v0, v11, v1, v13}, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->updateViewStateSize(Lcom/android/systemui/util/animation/TransitionViewState;ILcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object v1

    invoke-interface {v12}, Lcom/android/systemui/media/controls/ui/view/MediaHostState;->getVisible()Z

    move-result v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v13, v0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->tmpState:Lcom/android/systemui/util/animation/TransitionViewState;

    if-nez v11, :cond_9

    if-eqz v1, :cond_c

    if-eqz v4, :cond_c

    :try_start_4
    invoke-interface {v4}, Lcom/android/systemui/media/controls/ui/view/MediaHostState;->getVisible()Z

    move-result v11

    if-nez v11, :cond_8

    goto :goto_1

    :cond_8
    invoke-interface {v4}, Lcom/android/systemui/media/controls/ui/view/MediaHostState;->getDisappearParameters()Lcom/android/systemui/util/animation/DisappearParameters;

    move-result-object v2

    invoke-virtual {v6, v1, v2, v3, v13}, Lcom/android/systemui/util/animation/TransitionLayoutController;->getGoneState(Lcom/android/systemui/util/animation/TransitionViewState;Lcom/android/systemui/util/animation/DisappearParameters;FLcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object v1

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_9
    const/high16 v11, 0x3f800000    # 1.0f

    if-eqz v4, :cond_a

    invoke-interface {v4}, Lcom/android/systemui/media/controls/ui/view/MediaHostState;->getVisible()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-interface {v12}, Lcom/android/systemui/media/controls/ui/view/MediaHostState;->getDisappearParameters()Lcom/android/systemui/util/animation/DisappearParameters;

    move-result-object v1

    sub-float/2addr v11, v3

    invoke-virtual {v6, v2, v1, v11, v13}, Lcom/android/systemui/util/animation/TransitionLayoutController;->getGoneState(Lcom/android/systemui/util/animation/TransitionViewState;Lcom/android/systemui/util/animation/DisappearParameters;FLcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object v1

    goto :goto_2

    :cond_a
    cmpg-float v4, v3, v11

    if-nez v4, :cond_b

    goto :goto_1

    :cond_b
    if-nez v1, :cond_d

    :cond_c
    :goto_1
    move-object v1, v2

    goto :goto_2

    :cond_d
    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-nez v4, :cond_e

    goto :goto_2

    :cond_e
    invoke-virtual {v6, v1, v2, v3, v13}, Lcom/android/systemui/util/animation/TransitionLayoutController;->getInterpolatedState(Lcom/android/systemui/util/animation/TransitionViewState;Lcom/android/systemui/util/animation/TransitionViewState;FLcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object v1

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/systemui/util/animation/TransitionViewState;->getHeight()I

    move-result v4

    invoke-virtual {v5, v3, v4, v2}, Lcom/android/systemui/media/controls/ui/controller/MediaViewLogger;->logMediaSize(IILjava/lang/String;)V

    iget-object v2, v0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;

    iget-wide v4, v0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->animationDuration:J

    iget-wide v6, v0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->animationDelay:J

    move-object v0, v2

    move/from16 v2, p4

    move v3, v10

    move/from16 v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/util/animation/TransitionLayoutController;->setState(Lcom/android/systemui/util/animation/TransitionViewState;ZZJJZ)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v9, :cond_f

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_f
    return-void

    :goto_3
    if-eqz v9, :cond_10

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_10
    throw v0
.end method

.method public final setExpandedLayout(Landroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->expandedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    return-void
.end method

.method public final updateViewStateSize(Lcom/android/systemui/util/animation/TransitionViewState;ILcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;
    .locals 2

    if-eqz p1, :cond_5

    invoke-virtual {p1, p3}, Lcom/android/systemui/util/animation/TransitionViewState;->copy(Lcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->mediaHostStatesManager:Lcom/android/systemui/media/controls/ui/controller/MediaHostStatesManager;

    iget-object v0, p3, Lcom/android/systemui/media/controls/ui/controller/MediaHostStatesManager;->mediaHostStates:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/controls/ui/view/MediaHostState;

    iget-object p3, p3, Lcom/android/systemui/media/controls/ui/controller/MediaHostStatesManager;->carouselSizes:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p3, Ljava/util/LinkedHashMap;

    invoke-virtual {p3, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/util/animation/MeasurementOutput;

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getMeasureHeight()I

    move-result p3

    invoke-virtual {p2}, Lcom/android/systemui/util/animation/MeasurementOutput;->getMeasuredHeight()I

    move-result v1

    if-ne p3, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getMeasureWidth()I

    move-result p3

    invoke-virtual {p2}, Lcom/android/systemui/util/animation/MeasurementOutput;->getMeasuredWidth()I

    move-result v1

    if-eq p3, v1, :cond_4

    :cond_1
    invoke-virtual {p2}, Lcom/android/systemui/util/animation/MeasurementOutput;->getMeasuredHeight()I

    move-result p3

    invoke-virtual {p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getMeasureHeight()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/android/systemui/util/animation/TransitionViewState;->setMeasureHeight(I)V

    invoke-virtual {p2}, Lcom/android/systemui/util/animation/MeasurementOutput;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getMeasureWidth()I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/util/animation/TransitionViewState;->setMeasureWidth(I)V

    invoke-virtual {p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getMeasureHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/util/animation/TransitionViewState;->setHeight(I)V

    invoke-virtual {p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getMeasureWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/util/animation/TransitionViewState;->setWidth(I)V

    sget-object p2, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->Companion:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->backgroundIds:Ljava/util/Set;

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidgetStates()Ljava/util/Map;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/util/animation/WidgetState;

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getHeight()I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/android/systemui/util/animation/WidgetState;->setHeight(I)V

    invoke-virtual {p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidth()I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/android/systemui/util/animation/WidgetState;->setWidth(I)V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/android/systemui/media/controls/ui/view/MediaHostState;->getSquishFraction()F

    move-result p2

    const/high16 p3, 0x3f800000    # 1.0f

    cmpg-float p2, p2, p3

    if-gtz p2, :cond_4

    invoke-interface {v0}, Lcom/android/systemui/media/controls/ui/view/MediaHostState;->getSquishFraction()F

    move-result p2

    invoke-static {p1, p2}, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->squishViewState$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Lcom/android/systemui/util/animation/TransitionViewState;F)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object p1

    :cond_4
    invoke-virtual {p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getHeight()I

    move-result p3

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->logger:Lcom/android/systemui/media/controls/ui/controller/MediaViewLogger;

    const-string/jumbo v0, "update to carousel"

    invoke-virtual {p0, p2, p3, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaViewLogger;->logMediaSize(IILjava/lang/String;)V

    return-object p1

    :cond_5
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
