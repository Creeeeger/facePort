.class public final Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;
.super Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final immediatelyUpdateUi:Z

.field public final instanceId:Lcom/android/internal/logging/InstanceId;


# direct methods
.method public constructor <init>(Lcom/android/internal/logging/InstanceId;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;->instanceId:Lcom/android/internal/logging/InstanceId;

    iput-boolean p2, p0, Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;->immediatelyUpdateUi:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/internal/logging/InstanceId;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;-><init>(Lcom/android/internal/logging/InstanceId;Z)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;

    iget-object v1, p0, Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;->instanceId:Lcom/android/internal/logging/InstanceId;

    iget-object v3, p1, Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;->instanceId:Lcom/android/internal/logging/InstanceId;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean p0, p0, Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;->immediatelyUpdateUi:Z

    iget-boolean p1, p1, Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;->immediatelyUpdateUi:Z

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getInstanceId()Lcom/android/internal/logging/InstanceId;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;->instanceId:Lcom/android/internal/logging/InstanceId;

    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;->instanceId:Lcom/android/internal/logging/InstanceId;

    invoke-virtual {v0}, Lcom/android/internal/logging/InstanceId;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;->immediatelyUpdateUi:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;->instanceId:Lcom/android/internal/logging/InstanceId;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Loaded(instanceId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", immediatelyUpdateUi="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;->immediatelyUpdateUi:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
