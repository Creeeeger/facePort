.class public final Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;
.super Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final controlViewModel:Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;

.field public final immediatelyUpdateUi:Z

.field public final instanceId:Lcom/android/internal/logging/InstanceId;

.field public final isMediaFromRec:Z

.field public final onAdded:Lkotlin/jvm/functions/Function1;

.field public final onRemoved:Lkotlin/jvm/functions/Function1;

.field public final onUpdated:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lcom/android/internal/logging/InstanceId;ZLcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/logging/InstanceId;",
            "Z",
            "Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            "Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;->instanceId:Lcom/android/internal/logging/InstanceId;

    iput-boolean p2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;->immediatelyUpdateUi:Z

    iput-object p3, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;->controlViewModel:Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;

    iput-object p4, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;->onAdded:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;->onRemoved:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;->onUpdated:Lkotlin/jvm/functions/Function1;

    iput-boolean p7, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;->isMediaFromRec:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/internal/logging/InstanceId;ZLcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v8, v0

    goto :goto_0

    :cond_0
    move/from16 v8, p7

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;-><init>(Lcom/android/internal/logging/InstanceId;ZLcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Z)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;->instanceId:Lcom/android/internal/logging/InstanceId;

    iget-object v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;->instanceId:Lcom/android/internal/logging/InstanceId;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;->immediatelyUpdateUi:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;->immediatelyUpdateUi:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;->controlViewModel:Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;

    iget-object v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;->controlViewModel:Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;->onAdded:Lkotlin/jvm/functions/Function1;

    iget-object v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;->onAdded:Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;->onRemoved:Lkotlin/jvm/functions/Function1;

    iget-object v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;->onRemoved:Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;->onUpdated:Lkotlin/jvm/functions/Function1;

    iget-object v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;->onUpdated:Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-boolean p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;->isMediaFromRec:Z

    iget-boolean p1, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;->isMediaFromRec:Z

    if-eq p0, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getOnRemoved()Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;->onRemoved:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;->instanceId:Lcom/android/internal/logging/InstanceId;

    invoke-virtual {v0}, Lcom/android/internal/logging/InstanceId;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;->immediatelyUpdateUi:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;->controlViewModel:Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;->onAdded:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;->onRemoved:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;->onUpdated:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;->isMediaFromRec:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;->instanceId:Lcom/android/internal/logging/InstanceId;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MediaControl(instanceId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", immediatelyUpdateUi="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;->immediatelyUpdateUi:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", controlViewModel="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;->controlViewModel:Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", onAdded="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;->onAdded:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", onRemoved="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;->onRemoved:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", onUpdated="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;->onUpdated:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isMediaFromRec="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaControl;->isMediaFromRec:Z

    const-string v0, ")"

    invoke-static {v1, p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
