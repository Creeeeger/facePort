.class public interface abstract Lcom/samsung/vekit/Interface/AudioSegmentInterface;
.super Ljava/lang/Object;
.source "AudioSegmentInterface.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract blacklist addAudioSegment(Ljava/lang/String;Lcom/samsung/vekit/Common/Object/AudioSegment;)V
.end method

.method public abstract blacklist clearAudioSegment()V
.end method

.method public abstract blacklist getAudioSegment(Ljava/lang/String;)Lcom/samsung/vekit/Common/Object/AudioSegment;
.end method

.method public abstract blacklist getAudioSegmentMap()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/vekit/Common/Object/AudioSegment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getAudioSegmentMapSize()I
.end method

.method public abstract blacklist removeAudioSegment(Ljava/lang/String;)V
.end method

.method public abstract blacklist setAudioSegmentMap(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/vekit/Common/Object/AudioSegment;",
            ">;)V"
        }
    .end annotation
.end method
