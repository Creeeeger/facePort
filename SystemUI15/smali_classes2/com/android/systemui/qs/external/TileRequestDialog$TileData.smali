.class public final Lcom/android/systemui/qs/external/TileRequestDialog$TileData;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final appName:Ljava/lang/CharSequence;

.field public final callingUid:I

.field public final icon:Landroid/graphics/drawable/Icon;

.field public final label:Ljava/lang/CharSequence;

.field public final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/qs/external/TileRequestDialog$TileData;->callingUid:I

    iput-object p2, p0, Lcom/android/systemui/qs/external/TileRequestDialog$TileData;->appName:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/android/systemui/qs/external/TileRequestDialog$TileData;->label:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/systemui/qs/external/TileRequestDialog$TileData;->icon:Landroid/graphics/drawable/Icon;

    iput-object p5, p0, Lcom/android/systemui/qs/external/TileRequestDialog$TileData;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/qs/external/TileRequestDialog$TileData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/qs/external/TileRequestDialog$TileData;

    iget v1, p1, Lcom/android/systemui/qs/external/TileRequestDialog$TileData;->callingUid:I

    iget v3, p0, Lcom/android/systemui/qs/external/TileRequestDialog$TileData;->callingUid:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileRequestDialog$TileData;->appName:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/systemui/qs/external/TileRequestDialog$TileData;->appName:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileRequestDialog$TileData;->label:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/systemui/qs/external/TileRequestDialog$TileData;->label:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileRequestDialog$TileData;->icon:Landroid/graphics/drawable/Icon;

    iget-object v3, p1, Lcom/android/systemui/qs/external/TileRequestDialog$TileData;->icon:Landroid/graphics/drawable/Icon;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileRequestDialog$TileData;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/systemui/qs/external/TileRequestDialog$TileData;->packageName:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/qs/external/TileRequestDialog$TileData;->callingUid:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/qs/external/TileRequestDialog$TileData;->appName:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/controls/controller/ControlInfo$$ExternalSyntheticOutline0;->m(IILjava/lang/CharSequence;)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/qs/external/TileRequestDialog$TileData;->label:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/controls/controller/ControlInfo$$ExternalSyntheticOutline0;->m(IILjava/lang/CharSequence;)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/qs/external/TileRequestDialog$TileData;->icon:Landroid/graphics/drawable/Icon;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileRequestDialog$TileData;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileRequestDialog$TileData;->appName:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/systemui/qs/external/TileRequestDialog$TileData;->label:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/systemui/qs/external/TileRequestDialog$TileData;->icon:Landroid/graphics/drawable/Icon;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TileData(callingUid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/systemui/qs/external/TileRequestDialog$TileData;->callingUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", appName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", label="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", icon="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", packageName="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileRequestDialog$TileData;->packageName:Ljava/lang/String;

    const-string v0, ")"

    invoke-static {v3, p0, v0}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
