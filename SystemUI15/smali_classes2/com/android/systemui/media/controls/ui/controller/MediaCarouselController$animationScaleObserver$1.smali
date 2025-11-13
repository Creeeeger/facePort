.class public final Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$animationScaleObserver$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$animationScaleObserver$1;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/database/ContentObserver;-><init>(Ljava/util/concurrent/Executor;I)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$animationScaleObserver$1;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    sget-object p0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

    iget-object v0, p1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mSeekBarObserver:Lcom/android/systemui/media/controls/ui/binder/SeekBarObserver;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object p1, p1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    const-string v2, "animator_duration_scale"

    invoke-interface {p1, v2, v1}, Lcom/android/systemui/util/settings/SettingsProxy;->getFloat(Ljava/lang/String;F)F

    move-result p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, v0, Lcom/android/systemui/media/controls/ui/binder/SeekBarObserver;->animationEnabled:Z

    goto :goto_0

    :cond_2
    return-void
.end method
