.class public Lcom/samsung/vekit/Item/FragmentAudioItem;
.super Lcom/samsung/vekit/Item/Item;
.source "FragmentAudioItem.java"


# static fields
.field public static final blacklist TARGET_DURATION_GAP:I = 0x7d0


# instance fields
.field private blacklist bodyFragmentCount:I

.field private blacklist enableAnimation:Z

.field private blacklist enableAutoDuration:Z

.field private blacklist enableOutro:Z

.field private blacklist volume:I


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/samsung/vekit/Common/Type/ItemType;->FRAGMENT_AUDIO:Lcom/samsung/vekit/Common/Type/ItemType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/vekit/Item/Item;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ItemType;ILjava/lang/String;)V

    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/vekit/Item/FragmentAudioItem;->volume:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/vekit/Item/FragmentAudioItem;->enableOutro:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/vekit/Item/FragmentAudioItem;->enableAnimation:Z

    iput-boolean v0, p0, Lcom/samsung/vekit/Item/FragmentAudioItem;->enableAutoDuration:Z

    iput v1, p0, Lcom/samsung/vekit/Item/FragmentAudioItem;->bodyFragmentCount:I

    return-void
.end method

.method private blacklist appendBodyCount(J)V
    .locals 11

    iget-object v0, p0, Lcom/samsung/vekit/Item/FragmentAudioItem;->content:Lcom/samsung/vekit/Content/Content;

    check-cast v0, Lcom/samsung/vekit/Content/FragmentAudio;

    invoke-virtual {v0}, Lcom/samsung/vekit/Content/FragmentAudio;->getOutroDuration()J

    move-result-wide v1

    sub-long v1, p1, v1

    iget-wide v3, p0, Lcom/samsung/vekit/Item/FragmentAudioItem;->duration:J

    sub-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/vekit/Content/FragmentAudio;->getBodyDurationList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    :goto_0
    cmp-long v9, v3, v5

    if-lez v9, :cond_1

    iget v9, p0, Lcom/samsung/vekit/Item/FragmentAudioItem;->bodyFragmentCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/samsung/vekit/Item/FragmentAudioItem;->bodyFragmentCount:I

    rem-int/2addr v9, v8

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long/2addr v3, v9

    goto :goto_0

    :cond_1
    return-void
.end method

.method private blacklist calculateContentDuration()J
    .locals 12

    iget-object v0, p0, Lcom/samsung/vekit/Item/FragmentAudioItem;->content:Lcom/samsung/vekit/Content/Content;

    check-cast v0, Lcom/samsung/vekit/Content/FragmentAudio;

    invoke-virtual {v0}, Lcom/samsung/vekit/Content/FragmentAudio;->getIntroDuration()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/samsung/vekit/Content/FragmentAudio;->getOutroDuration()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-virtual {v0}, Lcom/samsung/vekit/Content/FragmentAudio;->getBodyDurationList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    return-wide v1

    :cond_0
    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/samsung/vekit/Item/FragmentAudioItem;->duration:J

    sub-long/2addr v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const/4 v8, 0x0

    iput v8, p0, Lcom/samsung/vekit/Item/FragmentAudioItem;->bodyFragmentCount:I

    :goto_0
    iget-wide v8, p0, Lcom/samsung/vekit/Item/FragmentAudioItem;->duration:J

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    add-long/2addr v10, v1

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    cmp-long v8, v8, v6

    if-gez v8, :cond_1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v1, v8

    iget-wide v8, p0, Lcom/samsung/vekit/Item/FragmentAudioItem;->duration:J

    sub-long/2addr v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    add-int/lit8 v5, v5, 0x1

    rem-int/2addr v5, v4

    iget v8, p0, Lcom/samsung/vekit/Item/FragmentAudioItem;->bodyFragmentCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/samsung/vekit/Item/FragmentAudioItem;->bodyFragmentCount:I

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/samsung/vekit/Item/FragmentAudioItem;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "contentDuration is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1
.end method

.method private blacklist updateOptions()V
    .locals 10

    iget-object v0, p0, Lcom/samsung/vekit/Item/FragmentAudioItem;->content:Lcom/samsung/vekit/Content/Content;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/vekit/Item/FragmentAudioItem;->TAG:Ljava/lang/String;

    const-string v1, "Content is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/vekit/Item/FragmentAudioItem;->calculateContentDuration()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/vekit/Item/FragmentAudioItem;->duration:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-gtz v6, :cond_1

    iget-object v4, p0, Lcom/samsung/vekit/Item/FragmentAudioItem;->TAG:Ljava/lang/String;

    const-string v5, "contentDuration is 0 or negative"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x7d0

    cmp-long v6, v6, v8

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-gtz v6, :cond_3

    iput-boolean v8, p0, Lcom/samsung/vekit/Item/FragmentAudioItem;->enableOutro:Z

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    move v7, v8

    :cond_2
    iput-boolean v7, p0, Lcom/samsung/vekit/Item/FragmentAudioItem;->enableAnimation:Z

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/samsung/vekit/Item/FragmentAudioItem;->appendBodyCount(J)V

    iput-boolean v7, p0, Lcom/samsung/vekit/Item/FragmentAudioItem;->enableOutro:Z

    iput-boolean v8, p0, Lcom/samsung/vekit/Item/FragmentAudioItem;->enableAnimation:Z

    :goto_0
    iget-object v4, p0, Lcom/samsung/vekit/Item/FragmentAudioItem;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateOptions() => duration : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/samsung/vekit/Item/FragmentAudioItem;->duration:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " enableOutro : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/samsung/vekit/Item/FragmentAudioItem;->enableOutro:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " enableAnimation : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/samsung/vekit/Item/FragmentAudioItem;->enableAnimation:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist checkValidContent(Lcom/samsung/vekit/Content/Content;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/vekit/Content/Content;->getContentType()Lcom/samsung/vekit/Common/Type/ContentType;

    move-result-object v0

    sget-object v1, Lcom/samsung/vekit/Common/Type/ContentType;->FRAGMENT_AUDIO:Lcom/samsung/vekit/Common/Type/ContentType;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "isInvalidElement : please set fragment_audio(content)."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getEnableAnimation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/vekit/Item/FragmentAudioItem;->enableAnimation:Z

    return v0
.end method

.method public blacklist getVolume()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Item/FragmentAudioItem;->volume:I

    return v0
.end method

.method public blacklist isEnableAutoDuration()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/vekit/Item/FragmentAudioItem;->enableAutoDuration:Z

    return v0
.end method

.method public blacklist isEnableOutro()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/vekit/Item/FragmentAudioItem;->enableOutro:Z

    return v0
.end method

.method public blacklist setContent(Lcom/samsung/vekit/Content/Content;)Lcom/samsung/vekit/Item/FragmentAudioItem;
    .locals 4

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/FragmentAudioItem;->checkValidContent(Lcom/samsung/vekit/Content/Content;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-super {p0, p1}, Lcom/samsung/vekit/Item/Item;->setContent(Lcom/samsung/vekit/Content/Content;)Lcom/samsung/vekit/Item/Item;

    iget-wide v0, p0, Lcom/samsung/vekit/Item/FragmentAudioItem;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/vekit/Item/FragmentAudioItem;->updateOptions()V

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/vekit/Item/FragmentAudioItem;->TAG:Ljava/lang/String;

    const-string v2, "setContent: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0
.end method

.method public bridge synthetic blacklist setContent(Lcom/samsung/vekit/Content/Content;)Lcom/samsung/vekit/Item/Item;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/FragmentAudioItem;->setContent(Lcom/samsung/vekit/Content/Content;)Lcom/samsung/vekit/Item/FragmentAudioItem;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setDuration(J)Lcom/samsung/vekit/Item/FragmentAudioItem;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Item/Item;->setDuration(J)Lcom/samsung/vekit/Item/Item;

    invoke-direct {p0}, Lcom/samsung/vekit/Item/FragmentAudioItem;->updateOptions()V

    return-object p0
.end method

.method public bridge synthetic blacklist setDuration(J)Lcom/samsung/vekit/Item/Item;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Item/FragmentAudioItem;->setDuration(J)Lcom/samsung/vekit/Item/FragmentAudioItem;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setEnableAnimation(Z)Lcom/samsung/vekit/Item/FragmentAudioItem;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/vekit/Item/FragmentAudioItem;->enableAnimation:Z

    return-object p0
.end method

.method public blacklist setEnableAutoDuration(Z)Lcom/samsung/vekit/Item/FragmentAudioItem;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/vekit/Item/FragmentAudioItem;->enableAutoDuration:Z

    return-object p0
.end method

.method public blacklist setEnableOutro(Z)Lcom/samsung/vekit/Item/FragmentAudioItem;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/vekit/Item/FragmentAudioItem;->enableOutro:Z

    return-object p0
.end method

.method public blacklist setPadding(J)Lcom/samsung/vekit/Item/FragmentAudioItem;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Item/Item;->setPadding(J)Lcom/samsung/vekit/Item/Item;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Item/FragmentAudioItem;

    return-object v0
.end method

.method public bridge synthetic blacklist setPadding(J)Lcom/samsung/vekit/Item/Item;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Item/FragmentAudioItem;->setPadding(J)Lcom/samsung/vekit/Item/FragmentAudioItem;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setParent(Lcom/samsung/vekit/Layer/Layer;)Lcom/samsung/vekit/Item/FragmentAudioItem;
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/vekit/Item/Item;->setParent(Lcom/samsung/vekit/Layer/Layer;)Lcom/samsung/vekit/Item/Item;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Item/FragmentAudioItem;

    return-object v0
.end method

.method public bridge synthetic blacklist setParent(Lcom/samsung/vekit/Layer/Layer;)Lcom/samsung/vekit/Item/Item;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/FragmentAudioItem;->setParent(Lcom/samsung/vekit/Layer/Layer;)Lcom/samsung/vekit/Item/FragmentAudioItem;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setVolume(I)Lcom/samsung/vekit/Item/FragmentAudioItem;
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Item/FragmentAudioItem;->volume:I

    return-object p0
.end method
