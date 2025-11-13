.class public final Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final callingAppUid:I

.field public final componentName:Landroid/content/ComponentName;

.field public final defaultTileIcon:Landroid/graphics/drawable/Icon;

.field public final defaultTileLabel:Ljava/lang/CharSequence;

.field public final hasPendingBind:Z

.field public final isToggleable:Z

.field public final tile:Landroid/service/quicksettings/Tile;

.field public final user:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/os/UserHandle;Landroid/content/ComponentName;Landroid/service/quicksettings/Tile;ZIZLjava/lang/CharSequence;Landroid/graphics/drawable/Icon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->user:Landroid/os/UserHandle;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->componentName:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->tile:Landroid/service/quicksettings/Tile;

    iput-boolean p4, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->isToggleable:Z

    iput p5, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->callingAppUid:I

    iput-boolean p6, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->hasPendingBind:Z

    iput-object p7, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->defaultTileLabel:Ljava/lang/CharSequence;

    iput-object p8, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->defaultTileIcon:Landroid/graphics/drawable/Icon;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->user:Landroid/os/UserHandle;

    iget-object v3, p1, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->user:Landroid/os/UserHandle;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->componentName:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->componentName:Landroid/content/ComponentName;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->tile:Landroid/service/quicksettings/Tile;

    iget-object v3, p1, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->tile:Landroid/service/quicksettings/Tile;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->isToggleable:Z

    iget-boolean v3, p1, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->isToggleable:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->callingAppUid:I

    iget v3, p1, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->callingAppUid:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->hasPendingBind:Z

    iget-boolean v3, p1, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->hasPendingBind:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->defaultTileLabel:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->defaultTileLabel:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->defaultTileIcon:Landroid/graphics/drawable/Icon;

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->defaultTileIcon:Landroid/graphics/drawable/Icon;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->user:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->tile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->isToggleable:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->callingAppUid:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->hasPendingBind:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->defaultTileLabel:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/controls/controller/ControlInfo$$ExternalSyntheticOutline0;->m(IILjava/lang/CharSequence;)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->defaultTileIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->user:Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->componentName:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->tile:Landroid/service/quicksettings/Tile;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->defaultTileLabel:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->defaultTileIcon:Landroid/graphics/drawable/Icon;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "CustomTileDataModel(user="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", componentName="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", tile="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isToggleable="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->isToggleable:Z

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", callingAppUid="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->callingAppUid:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", hasPendingBind="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->hasPendingBind:Z

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", defaultTileLabel="

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", defaultTileIcon="

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
