.class public Lcom/samsung/vekit/Content/Audio;
.super Lcom/samsung/vekit/Content/Content;
.source "Audio.java"

# interfaces
.implements Lcom/samsung/vekit/Interface/AudioSegmentInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/vekit/Content/Content;",
        "Lcom/samsung/vekit/Interface/AudioSegmentInterface<",
        "Lcom/samsung/vekit/Content/Audio;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist audioSegmentMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/vekit/Common/Object/AudioSegment;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist filePath:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/vekit/Common/Type/ContentType;->AUDIO:Lcom/samsung/vekit/Common/Type/ContentType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/vekit/Content/Content;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ContentType;ILjava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Content/Audio;->audioSegmentMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public blacklist addAudioSegment(Ljava/lang/String;Lcom/samsung/vekit/Common/Object/AudioSegment;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Content/Audio;->audioSegmentMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist clearAudioSegment()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Content/Audio;->audioSegmentMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public blacklist getAudioSegment(Ljava/lang/String;)Lcom/samsung/vekit/Common/Object/AudioSegment;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Content/Audio;->audioSegmentMap:Ljava/util/HashMap;

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

    iget-object v0, p0, Lcom/samsung/vekit/Content/Audio;->audioSegmentMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public blacklist getAudioSegmentMapSize()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Content/Audio;->audioSegmentMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Content/Audio;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist removeAudioSegment(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Content/Audio;->audioSegmentMap:Ljava/util/HashMap;

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

    iput-object p1, p0, Lcom/samsung/vekit/Content/Audio;->audioSegmentMap:Ljava/util/HashMap;

    return-void
.end method

.method public blacklist setDuration(J)Lcom/samsung/vekit/Content/Audio;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Content/Content;->setDuration(J)Lcom/samsung/vekit/Content/Content;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Content/Audio;

    return-object v0
.end method

.method public bridge synthetic blacklist setDuration(J)Lcom/samsung/vekit/Content/Content;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Content/Audio;->setDuration(J)Lcom/samsung/vekit/Content/Audio;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setFilePath(Ljava/lang/String;)Lcom/samsung/vekit/Content/Audio;
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Content/Audio;->filePath:Ljava/lang/String;

    return-object p0
.end method
