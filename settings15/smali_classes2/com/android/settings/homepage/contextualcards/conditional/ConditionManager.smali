.class public final Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field final mCardControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;",
            ">;"
        }
    .end annotation
.end field

.field public mIsListeningToStateChange:Z

.field public final mListener:Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mCardControllers:Ljava/util/List;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mListener:Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;

    new-instance p2, Lcom/android/settings/homepage/contextualcards/conditional/AirplaneModeConditionController;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/homepage/contextualcards/conditional/AirplaneModeConditionController;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/android/settings/homepage/contextualcards/conditional/BackgroundDataConditionController;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/homepage/contextualcards/conditional/BackgroundDataConditionController;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/android/settings/homepage/contextualcards/conditional/BatterySaverConditionController;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/homepage/contextualcards/conditional/BatterySaverConditionController;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/android/settings/homepage/contextualcards/conditional/HotspotConditionController;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/homepage/contextualcards/conditional/HotspotConditionController;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/android/settings/homepage/contextualcards/conditional/NightDisplayConditionController;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/homepage/contextualcards/conditional/NightDisplayConditionController;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/android/settings/homepage/contextualcards/conditional/RingerVibrateConditionController;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/homepage/contextualcards/conditional/RingerVibrateConditionController;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/android/settings/homepage/contextualcards/conditional/RingerMutedConditionController;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/homepage/contextualcards/conditional/RingerMutedConditionController;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final getController(J)Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;
    .locals 3

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mCardControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;

    invoke-interface {v0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;->getId()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot find controller for "

    invoke-static {p1, p2, v0}, Landroidx/viewpager2/widget/ViewPager2$$ExternalSyntheticOutline0;->m(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onConditionChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mListener:Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->onConditionsChanged()V

    :cond_0
    return-void
.end method

.method public final startMonitoringStateChange()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mIsListeningToStateChange:Z

    if-eqz v0, :cond_0

    const-string v0, "ConditionManager"

    const-string v1, "Already listening to condition state changes, skipping monitor setup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mIsListeningToStateChange:Z

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mCardControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;

    invoke-interface {v1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;->startMonitoringStateChange()V

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->onConditionChanged()V

    return-void
.end method
