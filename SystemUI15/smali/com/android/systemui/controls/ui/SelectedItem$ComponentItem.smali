.class public final Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;
.super Lcom/android/systemui/controls/ui/SelectedItem;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final appName:Ljava/lang/CharSequence;

.field public final componentInfo:Lcom/android/systemui/controls/controller/ComponentInfo;

.field public final componentName:Landroid/content/ComponentName;

.field public final hasControls:Z

.field public final name:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Lcom/android/systemui/controls/controller/ComponentInfo;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/controls/ui/SelectedItem;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;->appName:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;->componentInfo:Lcom/android/systemui/controls/controller/ComponentInfo;

    iput-object p1, p0, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;->name:Ljava/lang/CharSequence;

    iget-object p1, p2, Lcom/android/systemui/controls/controller/ComponentInfo;->structureInfos:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/controls/controller/StructureInfo;

    iget-object v3, v3, Lcom/android/systemui/controls/controller/StructureInfo;->controls:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v2, v3

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p2, Lcom/android/systemui/controls/controller/ComponentInfo;->structureInfos:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;->hasControls:Z

    iget-object p1, p0, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;->componentInfo:Lcom/android/systemui/controls/controller/ComponentInfo;

    iget-object p1, p1, Lcom/android/systemui/controls/controller/ComponentInfo;->componentName:Landroid/content/ComponentName;

    iput-object p1, p0, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;->componentName:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;

    iget-object v1, p0, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;->appName:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;->appName:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;->componentInfo:Lcom/android/systemui/controls/controller/ComponentInfo;

    iget-object p1, p1, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;->componentInfo:Lcom/android/systemui/controls/controller/ComponentInfo;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getComponentName()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;->componentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public final getName()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;->name:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;->appName:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;->componentInfo:Lcom/android/systemui/controls/controller/ComponentInfo;

    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ComponentInfo;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;->appName:Ljava/lang/CharSequence;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ComponentItem(appName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", componentInfo="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;->componentInfo:Lcom/android/systemui/controls/controller/ComponentInfo;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
