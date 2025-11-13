.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$removeAllMediaRunnable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$removeAllMediaRunnable$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getMediaData()Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "60sec timer expired. removeAllMediaRunnable run media : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaOngoingActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getMediaData()Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$removeAllMediaRunnable$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mediaHost:Lcom/android/systemui/media/SecMediaHost;

    sget-object v1, Lcom/android/systemui/media/MediaType;->OA:Lcom/android/systemui/media/MediaType;

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/SecMediaHost;->getMediaPlayerData(Lcom/android/systemui/media/MediaType;)Lcom/android/systemui/media/SecMediaPlayerData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaData()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mediaDataManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

    const-wide/16 v4, 0x0

    invoke-interface {v3, v1, v4, v5, v2}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;->dismissMediaData(Ljava/lang/String;JZ)Z

    goto :goto_0

    :cond_0
    return-void
.end method
