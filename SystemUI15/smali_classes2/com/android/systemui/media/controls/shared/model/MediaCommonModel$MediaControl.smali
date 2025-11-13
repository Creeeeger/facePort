.class public final Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaControl;
.super Lcom/android/systemui/media/controls/shared/model/MediaCommonModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final canBeRemoved:Z

.field public final isMediaFromRec:Z

.field public final mediaLoadedModel:Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaControl;->mediaLoadedModel:Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;

    iput-boolean p2, p0, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaControl;->canBeRemoved:Z

    iput-boolean p3, p0, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaControl;->isMediaFromRec:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaControl;-><init>(Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;ZZ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaControl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaControl;

    iget-object v1, p1, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaControl;->mediaLoadedModel:Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;

    iget-object v3, p0, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaControl;->mediaLoadedModel:Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaControl;->canBeRemoved:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaControl;->canBeRemoved:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean p0, p0, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaControl;->isMediaFromRec:Z

    iget-boolean p1, p1, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaControl;->isMediaFromRec:Z

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaControl;->mediaLoadedModel:Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;

    invoke-virtual {v0}, Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaControl;->canBeRemoved:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaControl;->isMediaFromRec:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaControl(mediaLoadedModel="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaControl;->mediaLoadedModel:Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", canBeRemoved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaControl;->canBeRemoved:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isMediaFromRec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaControl;->isMediaFromRec:Z

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
