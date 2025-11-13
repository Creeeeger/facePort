.class public interface abstract Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static synthetic execute$default(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;J)V
    .locals 6

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;->execute(Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;JJ)V

    return-void
.end method


# virtual methods
.method public abstract execute(Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;JJ)V
.end method

.method public abstract getEmpty()Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;
.end method

.method public abstract getMediaInfo()Lkotlinx/coroutines/flow/Flow;
.end method
