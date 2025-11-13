.class public final Lcom/android/systemui/controls/ui/SelectedItem$StructureItem;
.super Lcom/android/systemui/controls/ui/SelectedItem;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final componentName:Landroid/content/ComponentName;

.field public final hasControls:Z

.field public final name:Ljava/lang/CharSequence;

.field public final structure:Lcom/android/systemui/controls/controller/StructureInfo;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/StructureInfo;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/controls/ui/SelectedItem;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/SelectedItem$StructureItem;->structure:Lcom/android/systemui/controls/controller/StructureInfo;

    iget-object v0, p1, Lcom/android/systemui/controls/controller/StructureInfo;->structure:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/systemui/controls/ui/SelectedItem$StructureItem;->name:Ljava/lang/CharSequence;

    iget-object v0, p1, Lcom/android/systemui/controls/controller/StructureInfo;->controls:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    iget-object p1, p1, Lcom/android/systemui/controls/controller/StructureInfo;->componentName:Landroid/content/ComponentName;

    iput-object p1, p0, Lcom/android/systemui/controls/ui/SelectedItem$StructureItem;->componentName:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/controls/ui/SelectedItem$StructureItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/controls/ui/SelectedItem$StructureItem;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SelectedItem$StructureItem;->structure:Lcom/android/systemui/controls/controller/StructureInfo;

    iget-object p1, p1, Lcom/android/systemui/controls/ui/SelectedItem$StructureItem;->structure:Lcom/android/systemui/controls/controller/StructureInfo;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getComponentName()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SelectedItem$StructureItem;->componentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public final getName()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SelectedItem$StructureItem;->name:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SelectedItem$StructureItem;->structure:Lcom/android/systemui/controls/controller/StructureInfo;

    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/StructureInfo;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StructureItem(structure="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SelectedItem$StructureItem;->structure:Lcom/android/systemui/controls/controller/StructureInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
