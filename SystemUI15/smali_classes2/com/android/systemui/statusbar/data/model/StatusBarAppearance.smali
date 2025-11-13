.class public final Lcom/android/systemui/statusbar/data/model/StatusBarAppearance;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final appearanceRegions:Ljava/util/List;

.field public final bounds:Lcom/android/systemui/statusbar/phone/BoundsPair;

.field public final mode:Lcom/android/systemui/statusbar/data/model/StatusBarMode;

.field public final navbarColorManagedByIme:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/data/model/StatusBarMode;Lcom/android/systemui/statusbar/phone/BoundsPair;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/data/model/StatusBarMode;",
            "Lcom/android/systemui/statusbar/phone/BoundsPair;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/internal/view/AppearanceRegion;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/data/model/StatusBarAppearance;->mode:Lcom/android/systemui/statusbar/data/model/StatusBarMode;

    iput-object p2, p0, Lcom/android/systemui/statusbar/data/model/StatusBarAppearance;->bounds:Lcom/android/systemui/statusbar/phone/BoundsPair;

    iput-object p3, p0, Lcom/android/systemui/statusbar/data/model/StatusBarAppearance;->appearanceRegions:Ljava/util/List;

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/data/model/StatusBarAppearance;->navbarColorManagedByIme:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/data/model/StatusBarAppearance;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/data/model/StatusBarAppearance;

    iget-object v1, p1, Lcom/android/systemui/statusbar/data/model/StatusBarAppearance;->mode:Lcom/android/systemui/statusbar/data/model/StatusBarMode;

    iget-object v3, p0, Lcom/android/systemui/statusbar/data/model/StatusBarAppearance;->mode:Lcom/android/systemui/statusbar/data/model/StatusBarMode;

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/data/model/StatusBarAppearance;->bounds:Lcom/android/systemui/statusbar/phone/BoundsPair;

    iget-object v3, p1, Lcom/android/systemui/statusbar/data/model/StatusBarAppearance;->bounds:Lcom/android/systemui/statusbar/phone/BoundsPair;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/data/model/StatusBarAppearance;->appearanceRegions:Ljava/util/List;

    iget-object v3, p1, Lcom/android/systemui/statusbar/data/model/StatusBarAppearance;->appearanceRegions:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/data/model/StatusBarAppearance;->navbarColorManagedByIme:Z

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/data/model/StatusBarAppearance;->navbarColorManagedByIme:Z

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/data/model/StatusBarAppearance;->mode:Lcom/android/systemui/statusbar/data/model/StatusBarMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/data/model/StatusBarAppearance;->bounds:Lcom/android/systemui/statusbar/phone/BoundsPair;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/BoundsPair;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/data/model/StatusBarAppearance;->appearanceRegions:Ljava/util/List;

    invoke-static {v0, v2, v1}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(Ljava/util/List;II)I

    move-result v0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/data/model/StatusBarAppearance;->navbarColorManagedByIme:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/data/model/StatusBarAppearance;->appearanceRegions:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "StatusBarAppearance(mode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/data/model/StatusBarAppearance;->mode:Lcom/android/systemui/statusbar/data/model/StatusBarMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", bounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/data/model/StatusBarAppearance;->bounds:Lcom/android/systemui/statusbar/phone/BoundsPair;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", appearanceRegions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", navbarColorManagedByIme="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/data/model/StatusBarAppearance;->navbarColorManagedByIme:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
