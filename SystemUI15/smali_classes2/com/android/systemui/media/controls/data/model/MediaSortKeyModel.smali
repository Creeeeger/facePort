.class public final Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final active:Z

.field public final instanceId:Lcom/android/internal/logging/InstanceId;

.field public final isPlaying:Ljava/lang/Boolean;

.field public final isPrioritizedRec:Z

.field public final isResume:Z

.field public final lastActive:J

.field public final notificationKey:Ljava/lang/String;

.field public final playbackLocation:I

.field public final updateTime:J


# direct methods
.method public constructor <init>()V
    .locals 14

    const/16 v12, 0x1ff

    const/4 v13, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;-><init>(ZLjava/lang/Boolean;IZZJLjava/lang/String;JLcom/android/internal/logging/InstanceId;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/Boolean;IZZJLjava/lang/String;JLcom/android/internal/logging/InstanceId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;->isPrioritizedRec:Z

    iput-object p2, p0, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;->isPlaying:Ljava/lang/Boolean;

    iput p3, p0, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;->playbackLocation:I

    iput-boolean p4, p0, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;->active:Z

    iput-boolean p5, p0, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;->isResume:Z

    iput-wide p6, p0, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;->lastActive:J

    iput-object p8, p0, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;->notificationKey:Ljava/lang/String;

    iput-wide p9, p0, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;->updateTime:J

    iput-object p11, p0, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;->instanceId:Lcom/android/internal/logging/InstanceId;

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/Boolean;IZZJLjava/lang/String;JLcom/android/internal/logging/InstanceId;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move-object v3, v4

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move/from16 v5, p3

    :goto_2
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    move/from16 v6, p4

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    goto :goto_4

    :cond_4
    move/from16 v2, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_5

    move-wide v10, v8

    goto :goto_5

    :cond_5
    move-wide/from16 v10, p6

    :goto_5
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_6

    move-object v7, v4

    goto :goto_6

    :cond_6
    move-object/from16 v7, p8

    :goto_6
    and-int/lit16 v12, v0, 0x80

    if-eqz v12, :cond_7

    goto :goto_7

    :cond_7
    move-wide/from16 v8, p9

    :goto_7
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    goto :goto_8

    :cond_8
    move-object/from16 v4, p11

    :goto_8
    move p1, v1

    move-object p2, v3

    move/from16 p3, v5

    move/from16 p4, v6

    move/from16 p5, v2

    move-wide/from16 p6, v10

    move-object/from16 p8, v7

    move-wide/from16 p9, v8

    move-object/from16 p11, v4

    invoke-direct/range {p0 .. p11}, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;-><init>(ZLjava/lang/Boolean;IZZJLjava/lang/String;JLcom/android/internal/logging/InstanceId;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;

    iget-boolean v1, p1, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;->isPrioritizedRec:Z

    iget-boolean v3, p0, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;->isPrioritizedRec:Z

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;->isPlaying:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;->isPlaying:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;->playbackLocation:I

    iget v3, p1, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;->playbackLocation:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;->active:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;->active:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;->isResume:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;->isResume:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;->lastActive:J

    iget-wide v5, p1, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;->lastActive:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;->notificationKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;->notificationKey:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;->updateTime:J

    iget-wide v5, p1, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;->updateTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_9

    return v2

    :cond_9
    iget-object p0, p0, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;->instanceId:Lcom/android/internal/logging/InstanceId;

    iget-object p1, p1, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;->instanceId:Lcom/android/internal/logging/InstanceId;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;->isPrioritizedRec:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;->isPlaying:Ljava/lang/Boolean;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget v3, p0, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;->playbackLocation:I

    invoke-static {v3, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-boolean v3, p0, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;->active:Z

    invoke-static {v0, v1, v3}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;->isResume:Z

    invoke-static {v0, v1, v3}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-wide v3, p0, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;->lastActive:J

    invoke-static {v0, v1, v3, v4}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;->notificationKey:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-wide v3, p0, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;->updateTime:J

    invoke-static {v0, v1, v3, v4}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;->instanceId:Lcom/android/internal/logging/InstanceId;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/logging/InstanceId;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;->instanceId:Lcom/android/internal/logging/InstanceId;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MediaSortKeyModel(isPrioritizedRec="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;->isPrioritizedRec:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isPlaying="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;->isPlaying:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", playbackLocation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;->playbackLocation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", active="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;->active:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isResume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;->isResume:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", lastActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;->lastActive:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", notificationKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;->notificationKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", updateTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;->updateTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", instanceId="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
