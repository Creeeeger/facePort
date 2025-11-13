.class public Lcom/samsung/vekit/Item/VideoItem;
.super Lcom/samsung/vekit/Item/Item;
.source "VideoItem.java"

# interfaces
.implements Lcom/samsung/vekit/Interface/AudioSegmentInterface;
.implements Lcom/samsung/vekit/Interface/SpeakerIDInfoInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/vekit/Item/Item;",
        "Lcom/samsung/vekit/Interface/AudioSegmentInterface<",
        "Lcom/samsung/vekit/Item/VideoItem;",
        ">;",
        "Lcom/samsung/vekit/Interface/SpeakerIDInfoInterface<",
        "Lcom/samsung/vekit/Item/VideoItem;",
        ">;"
    }
.end annotation


# instance fields
.field protected blacklist audioSegmentMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/vekit/Common/Object/AudioSegment;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist enableDeflicker:Z

.field protected blacklist enableFRC:Z

.field protected blacklist endContentTime:J

.field protected blacklist fadeInDuration:J

.field protected blacklist fadeOutDuration:J

.field protected blacklist filter:Lcom/samsung/vekit/Common/Object/Filter;

.field protected blacklist filterIntensity:F

.field protected blacklist filterOption:Lcom/samsung/vekit/Common/Object/FilterOption;

.field protected blacklist opacity:F

.field protected blacklist pcmInfoListener:Lcom/samsung/vekit/Listener/PcmInfoListener;

.field protected blacklist speakerIDInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist startContentTime:J

.field protected blacklist toneInfo:Lcom/samsung/vekit/Common/Object/ToneInfo;

.field protected blacklist volume:I


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/samsung/vekit/Common/Type/ItemType;->VIDEO:Lcom/samsung/vekit/Common/Type/ItemType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/vekit/Item/Item;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ItemType;ILjava/lang/String;)V

    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/vekit/Item/VideoItem;->volume:I

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/samsung/vekit/Item/VideoItem;->filterIntensity:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/vekit/Item/VideoItem;->opacity:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/vekit/Item/VideoItem;->enableDeflicker:Z

    iput-boolean v0, p0, Lcom/samsung/vekit/Item/VideoItem;->enableFRC:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/vekit/Item/VideoItem;->fadeInDuration:J

    iput-wide v0, p0, Lcom/samsung/vekit/Item/VideoItem;->fadeOutDuration:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->audioSegmentMap:Ljava/util/HashMap;

    new-instance v0, Lcom/samsung/vekit/Common/Object/ToneInfo;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/ToneInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->toneInfo:Lcom/samsung/vekit/Common/Object/ToneInfo;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->speakerIDInfoMap:Ljava/util/HashMap;

    new-instance v0, Lcom/samsung/vekit/Common/Object/FilterOption;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/FilterOption;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->filterOption:Lcom/samsung/vekit/Common/Object/FilterOption;

    return-void
.end method


# virtual methods
.method public blacklist addAudioSegment(Ljava/lang/String;Lcom/samsung/vekit/Common/Object/AudioSegment;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->audioSegmentMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic blacklist addRegion(Lcom/samsung/vekit/Common/Object/Region;)Lcom/samsung/vekit/Item/Item;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/VideoItem;->addRegion(Lcom/samsung/vekit/Common/Object/Region;)Lcom/samsung/vekit/Item/VideoItem;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addRegion(Lcom/samsung/vekit/Common/Object/Region;)Lcom/samsung/vekit/Item/VideoItem;
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/vekit/Item/Item;->addRegion(Lcom/samsung/vekit/Common/Object/Region;)Lcom/samsung/vekit/Item/Item;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Item/VideoItem;

    return-object v0
.end method

.method public blacklist addSpeakerIDInfo(Ljava/lang/String;Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->speakerIDInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist checkValidContent(Lcom/samsung/vekit/Content/Content;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/vekit/Content/Content;->getContentType()Lcom/samsung/vekit/Common/Type/ContentType;

    move-result-object v0

    sget-object v1, Lcom/samsung/vekit/Common/Type/ContentType;->VIDEO:Lcom/samsung/vekit/Common/Type/ContentType;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "isInvalidElement : please set video(content)."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist clearAudioSegment()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->audioSegmentMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public bridge synthetic blacklist clearRegions()Lcom/samsung/vekit/Item/Item;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/vekit/Item/VideoItem;->clearRegions()Lcom/samsung/vekit/Item/VideoItem;

    move-result-object v0

    return-object v0
.end method

.method public blacklist clearRegions()Lcom/samsung/vekit/Item/VideoItem;
    .locals 1

    invoke-super {p0}, Lcom/samsung/vekit/Item/Item;->clearRegions()Lcom/samsung/vekit/Item/Item;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Item/VideoItem;

    return-object v0
.end method

.method public blacklist clearSpeakerIDInfo()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->speakerIDInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public blacklist getAudioSegment(Ljava/lang/String;)Lcom/samsung/vekit/Common/Object/AudioSegment;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->audioSegmentMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/Object/AudioSegment;

    return-object v0
.end method

.method public blacklist getAudioSegmentMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/vekit/Common/Object/AudioSegment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->audioSegmentMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public blacklist getAudioSegmentMapSize()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->audioSegmentMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getEndContentTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/vekit/Item/VideoItem;->endContentTime:J

    return-wide v0
.end method

.method public blacklist getFadeInDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/vekit/Item/VideoItem;->fadeInDuration:J

    return-wide v0
.end method

.method public blacklist getFadeOutDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/vekit/Item/VideoItem;->fadeOutDuration:J

    return-wide v0
.end method

.method public blacklist getFilter()Lcom/samsung/vekit/Common/Object/Filter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->filter:Lcom/samsung/vekit/Common/Object/Filter;

    return-object v0
.end method

.method public blacklist getFilterIntensity()F
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Item/VideoItem;->filterIntensity:F

    return v0
.end method

.method public blacklist getFilterOption()Lcom/samsung/vekit/Common/Object/FilterOption;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->filterOption:Lcom/samsung/vekit/Common/Object/FilterOption;

    return-object v0
.end method

.method public blacklist getMeshType()Lcom/samsung/vekit/Common/Type/MeshType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->meshType:Lcom/samsung/vekit/Common/Type/MeshType;

    return-object v0
.end method

.method public blacklist getOpacity()F
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Item/VideoItem;->opacity:F

    return v0
.end method

.method public blacklist getPcmInfoListener()Lcom/samsung/vekit/Listener/PcmInfoListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->pcmInfoListener:Lcom/samsung/vekit/Listener/PcmInfoListener;

    return-object v0
.end method

.method public blacklist getSpeakerIDInfo(Ljava/lang/String;)Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->speakerIDInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;

    return-object v0
.end method

.method public blacklist getSpeakerIDInfoMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->speakerIDInfoMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public blacklist getSpeakerIDInfoMapSize()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->speakerIDInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getStartContentTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/vekit/Item/VideoItem;->startContentTime:J

    return-wide v0
.end method

.method public blacklist getToneIntensity(Lcom/samsung/vekit/Common/Type/ToneType;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->toneInfo:Lcom/samsung/vekit/Common/Object/ToneInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/Common/Object/ToneInfo;->getTone(Lcom/samsung/vekit/Common/Type/ToneType;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public blacklist getVolume()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Item/VideoItem;->volume:I

    return v0
.end method

.method public blacklist isEnableDeflicker()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/vekit/Item/VideoItem;->enableDeflicker:Z

    return v0
.end method

.method public blacklist isEnableFRC()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/vekit/Item/VideoItem;->enableFRC:Z

    return v0
.end method

.method synthetic blacklist lambda$loadAudioSegment$0$com-samsung-vekit-Item-VideoItem(Ljava/lang/String;Lcom/samsung/vekit/Common/Object/AudioSegment;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->audioSegmentMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/samsung/vekit/Common/Object/AudioSegment;->clone()Lcom/samsung/vekit/Common/Object/AudioSegment;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist loadAudioSegment()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->TAG:Ljava/lang/String;

    const-string v1, "loadAudioSegment()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->content:Lcom/samsung/vekit/Content/Content;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->TAG:Ljava/lang/String;

    const-string v1, "Failed loadAudioSegment(), content is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->audioSegmentMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->content:Lcom/samsung/vekit/Content/Content;

    check-cast v0, Lcom/samsung/vekit/Content/Video;

    invoke-virtual {v0}, Lcom/samsung/vekit/Content/Video;->getAudioSegmentMap()Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Lcom/samsung/vekit/Item/VideoItem$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/vekit/Item/VideoItem$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/vekit/Item/VideoItem;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    invoke-virtual {p0}, Lcom/samsung/vekit/Item/VideoItem;->update()V

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist removeAudioSegment(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->audioSegmentMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic blacklist removeRegion(Lcom/samsung/vekit/Common/Object/Region;)Lcom/samsung/vekit/Item/Item;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/VideoItem;->removeRegion(Lcom/samsung/vekit/Common/Object/Region;)Lcom/samsung/vekit/Item/VideoItem;

    move-result-object p1

    return-object p1
.end method

.method public blacklist removeRegion(Lcom/samsung/vekit/Common/Object/Region;)Lcom/samsung/vekit/Item/VideoItem;
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/vekit/Item/Item;->removeRegion(Lcom/samsung/vekit/Common/Object/Region;)Lcom/samsung/vekit/Item/Item;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Item/VideoItem;

    return-object v0
.end method

.method public blacklist removeSpeakerIDInfo(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->speakerIDInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist setAudioSegmentMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/vekit/Common/Object/AudioSegment;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/vekit/Item/VideoItem;->audioSegmentMap:Ljava/util/HashMap;

    return-void
.end method

.method public bridge synthetic blacklist setContent(Lcom/samsung/vekit/Content/Content;)Lcom/samsung/vekit/Item/Item;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/VideoItem;->setContent(Lcom/samsung/vekit/Content/Content;)Lcom/samsung/vekit/Item/VideoItem;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setContent(Lcom/samsung/vekit/Content/Content;)Lcom/samsung/vekit/Item/VideoItem;
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/VideoItem;->checkValidContent(Lcom/samsung/vekit/Content/Content;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-super {p0, p1}, Lcom/samsung/vekit/Item/Item;->setContent(Lcom/samsung/vekit/Content/Content;)Lcom/samsung/vekit/Item/Item;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Item/VideoItem;

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/vekit/Item/VideoItem;->TAG:Ljava/lang/String;

    const-string v2, "setContent: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0
.end method

.method public bridge synthetic blacklist setDuration(J)Lcom/samsung/vekit/Item/Item;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Item/VideoItem;->setDuration(J)Lcom/samsung/vekit/Item/VideoItem;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setDuration(J)Lcom/samsung/vekit/Item/VideoItem;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Item/Item;->setDuration(J)Lcom/samsung/vekit/Item/Item;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Item/VideoItem;

    return-object v0
.end method

.method public blacklist setEnableDeflicker(Z)Lcom/samsung/vekit/Item/VideoItem;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/vekit/Item/VideoItem;->enableDeflicker:Z

    return-object p0
.end method

.method public blacklist setEnableFRC(Z)Lcom/samsung/vekit/Item/VideoItem;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/vekit/Item/VideoItem;->enableFRC:Z

    return-object p0
.end method

.method public blacklist setEndContentTime(J)Lcom/samsung/vekit/Item/VideoItem;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/vekit/Item/VideoItem;->endContentTime:J

    return-object p0
.end method

.method public blacklist setFadeInDuration(J)Lcom/samsung/vekit/Item/VideoItem;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/vekit/Item/VideoItem;->fadeInDuration:J

    return-object p0
.end method

.method public blacklist setFadeOutDuration(J)Lcom/samsung/vekit/Item/VideoItem;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/vekit/Item/VideoItem;->fadeOutDuration:J

    return-object p0
.end method

.method public bridge synthetic blacklist setFilter(Lcom/samsung/vekit/Common/Object/Filter;)Lcom/samsung/vekit/Item/Item;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/VideoItem;->setFilter(Lcom/samsung/vekit/Common/Object/Filter;)Lcom/samsung/vekit/Item/VideoItem;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setFilter(Lcom/samsung/vekit/Common/Object/Filter;)Lcom/samsung/vekit/Item/VideoItem;
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Item/VideoItem;->filter:Lcom/samsung/vekit/Common/Object/Filter;

    return-object p0
.end method

.method public bridge synthetic blacklist setFilterIntensity(F)Lcom/samsung/vekit/Item/Item;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/VideoItem;->setFilterIntensity(F)Lcom/samsung/vekit/Item/VideoItem;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setFilterIntensity(F)Lcom/samsung/vekit/Item/VideoItem;
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Item/VideoItem;->filterIntensity:F

    return-object p0
.end method

.method public blacklist setFilterOption(Lcom/samsung/vekit/Common/Object/FilterOption;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Item/VideoItem;->filterOption:Lcom/samsung/vekit/Common/Object/FilterOption;

    return-void
.end method

.method public blacklist setMeshType(Lcom/samsung/vekit/Common/Type/MeshType;)Lcom/samsung/vekit/Item/VideoItem;
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Item/VideoItem;->meshType:Lcom/samsung/vekit/Common/Type/MeshType;

    return-object p0
.end method

.method public bridge synthetic blacklist setOpacity(F)Lcom/samsung/vekit/Common/Object/Element;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/VideoItem;->setOpacity(F)Lcom/samsung/vekit/Item/VideoItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setOpacity(F)Lcom/samsung/vekit/Item/Item;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/VideoItem;->setOpacity(F)Lcom/samsung/vekit/Item/VideoItem;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setOpacity(F)Lcom/samsung/vekit/Item/VideoItem;
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Item/VideoItem;->opacity:F

    return-object p0
.end method

.method public bridge synthetic blacklist setPadding(J)Lcom/samsung/vekit/Item/Item;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Item/VideoItem;->setPadding(J)Lcom/samsung/vekit/Item/VideoItem;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setPadding(J)Lcom/samsung/vekit/Item/VideoItem;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Item/Item;->setPadding(J)Lcom/samsung/vekit/Item/Item;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Item/VideoItem;

    return-object v0
.end method

.method public bridge synthetic blacklist setParent(Lcom/samsung/vekit/Layer/Layer;)Lcom/samsung/vekit/Item/Item;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/VideoItem;->setParent(Lcom/samsung/vekit/Layer/Layer;)Lcom/samsung/vekit/Item/VideoItem;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setParent(Lcom/samsung/vekit/Layer/Layer;)Lcom/samsung/vekit/Item/VideoItem;
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/vekit/Item/Item;->setParent(Lcom/samsung/vekit/Layer/Layer;)Lcom/samsung/vekit/Item/Item;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Item/VideoItem;

    return-object v0
.end method

.method public blacklist setPcmInfoListener(Lcom/samsung/vekit/Listener/PcmInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Item/VideoItem;->pcmInfoListener:Lcom/samsung/vekit/Listener/PcmInfoListener;

    return-void
.end method

.method public blacklist setSpeakerIDInfoMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/vekit/Item/VideoItem;->speakerIDInfoMap:Ljava/util/HashMap;

    return-void
.end method

.method public bridge synthetic blacklist setSpeed(F)Lcom/samsung/vekit/Item/Item;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/VideoItem;->setSpeed(F)Lcom/samsung/vekit/Item/VideoItem;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSpeed(F)Lcom/samsung/vekit/Item/VideoItem;
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/vekit/Item/Item;->setSpeed(F)Lcom/samsung/vekit/Item/Item;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Item/VideoItem;

    return-object v0
.end method

.method public blacklist setStartContentTime(J)Lcom/samsung/vekit/Item/VideoItem;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/vekit/Item/VideoItem;->startContentTime:J

    return-object p0
.end method

.method public bridge synthetic blacklist setToneIntensity(Lcom/samsung/vekit/Common/Type/ToneType;I)Lcom/samsung/vekit/Item/Item;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Item/VideoItem;->setToneIntensity(Lcom/samsung/vekit/Common/Type/ToneType;I)Lcom/samsung/vekit/Item/VideoItem;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setToneIntensity(Lcom/samsung/vekit/Common/Type/ToneType;I)Lcom/samsung/vekit/Item/VideoItem;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem;->toneInfo:Lcom/samsung/vekit/Common/Object/ToneInfo;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/vekit/Common/Object/ToneInfo;->setTone(Lcom/samsung/vekit/Common/Type/ToneType;I)V

    return-object p0
.end method

.method public blacklist setVolume(I)Lcom/samsung/vekit/Item/VideoItem;
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Item/VideoItem;->volume:I

    return-object p0
.end method
